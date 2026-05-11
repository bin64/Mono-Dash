import AppIntents
import CryptoKit
import Security
import SwiftUI
import WidgetKit

private let appGroupId = "group.cc.boring-lab.monodash"
private let keychainAccessGroup = "53R8Z6YBWK.cc.boring-lab.monodash.widget"
private let keychainService = "MonoDashServerWidget"
private let serversKey = "server_widget_servers"
private let snapshotsKey = "server_widget_snapshots"
private let errorsKey = "server_widget_errors"
private let settingsKey = "server_widget_settings"
private let widgetKind = "ServerStatusWidget"

private func l10n(_ key: String) -> String {
  NSLocalizedString(key, bundle: .main, comment: "")
}

private func l10nFormat(_ key: String, _ arguments: CVarArg...) -> String {
  String(format: l10n(key), locale: Locale.current, arguments: arguments)
}

struct WidgetServer: Codable, Identifiable, Hashable {
  let id: Int
  let name: String?
  let displayName: String
  let host: String
  let port: Int
  let isHttps: Bool
  let allowInsecureConnections: Bool?
  let sortIndex: Int

  var title: String {
    if let name, !name.isEmpty { return name }
    return displayName
  }

  var baseURL: URL? {
    URL(string: "\(isHttps ? "https" : "http")://\(host):\(port)")
  }
}

struct WidgetSettings: Codable {
  let requestTimeoutSeconds: Int
  let customHeaders: [String: String]

  static let fallback = WidgetSettings(
    requestTimeoutSeconds: 60,
    customHeaders: [:]
  )
}

struct ServerSnapshot: Codable, Identifiable {
  let id: Int
  let name: String?
  let displayName: String
  let host: String
  let port: Int
  let isHttps: Bool
  let allowInsecureConnections: Bool?
  let sortIndex: Int
  let title: String
  let subtitle: String
  let osName: String
  let uptimeSeconds: Int?
  let cpuPercent: Double
  let memoryPercent: Double
  let diskPercent: Double?
  let websiteCount: Int
  let databaseCount: Int
  let appCount: Int
  let taskCount: Int
  let netBytesSent: Int64
  let netBytesRecv: Int64
  let uploadBytesPerSecond: Double
  let downloadBytesPerSecond: Double
  let totalTrafficBytes: Int64
  let latencyMs: Int
  let updatedAt: Date
}

struct WidgetStore {
  private static var defaults: UserDefaults? {
    UserDefaults(suiteName: appGroupId)
  }

  static func servers() -> [WidgetServer] {
    guard
      let string = defaults?.string(forKey: serversKey),
      let data = string.data(using: .utf8),
      let servers = try? JSONDecoder().decode([WidgetServer].self, from: data)
    else { return [] }
    return servers.sorted { $0.sortIndex < $1.sortIndex }
  }

  static func settings() -> WidgetSettings {
    guard
      let string = defaults?.string(forKey: settingsKey),
      let data = string.data(using: .utf8),
      let settings = try? JSONDecoder().decode(WidgetSettings.self, from: data)
    else { return .fallback }
    return settings
  }

  static func snapshots() -> [String: ServerSnapshot] {
    guard
      let string = defaults?.string(forKey: snapshotsKey),
      let data = string.data(using: .utf8),
      let snapshots = try? decoder.decode([String: ServerSnapshot].self, from: data)
    else { return [:] }
    return snapshots
  }

  static func saveSnapshot(_ snapshot: ServerSnapshot) {
    var snapshots = snapshots()
    snapshots[String(snapshot.id)] = snapshot
    saveSnapshots(snapshots)
    clearError(serverId: snapshot.id)
  }

  static func selectedServer(id: String?) -> WidgetServer? {
    let servers = servers()
    return servers.first { String($0.id) == id } ?? servers.first
  }

  static func selectedSnapshot(id: String?) -> (WidgetServer?, ServerSnapshot?) {
    let server = selectedServer(id: id)
    let snapshot = server.flatMap { snapshots()[String($0.id)] }
    return (server, snapshot)
  }

  static func selectedError(id: String?) -> String? {
    guard let server = selectedServer(id: id) else { return nil }
    return errors()[String(server.id)]
  }

  static func saveError(_ message: String, serverId: Int) {
    var errors = errors()
    errors[String(serverId)] = message
    saveErrors(errors)
  }

  static func clearError(serverId: Int) {
    var errors = errors()
    errors.removeValue(forKey: String(serverId))
    saveErrors(errors)
  }

  static func apiKey(serverId: Int) -> String? {
    let query: [String: Any] = [
      kSecClass as String: kSecClassGenericPassword,
      kSecAttrService as String: keychainService,
      kSecAttrAccount as String: "server_\(serverId)",
      kSecAttrAccessGroup as String: keychainAccessGroup,
      kSecReturnData as String: true,
      kSecMatchLimit as String: kSecMatchLimitOne
    ]

    var result: AnyObject?
    let status = SecItemCopyMatching(query as CFDictionary, &result)
    guard status == errSecSuccess, let data = result as? Data else { return nil }
    return String(data: data, encoding: .utf8)
  }

  private static var decoder: JSONDecoder {
    let decoder = JSONDecoder()
    decoder.dateDecodingStrategy = .iso8601
    return decoder
  }

  private static var encoder: JSONEncoder {
    let encoder = JSONEncoder()
    encoder.dateEncodingStrategy = .iso8601
    return encoder
  }

  private static func saveSnapshots(_ snapshots: [String: ServerSnapshot]) {
    guard
      let data = try? encoder.encode(snapshots),
      let string = String(data: data, encoding: .utf8)
    else { return }
    defaults?.set(string, forKey: snapshotsKey)
  }

  private static func errors() -> [String: String] {
    guard
      let string = defaults?.string(forKey: errorsKey),
      let data = string.data(using: .utf8),
      let errors = try? JSONDecoder().decode([String: String].self, from: data)
    else { return [:] }
    return errors
  }

  private static func saveErrors(_ errors: [String: String]) {
    guard
      let data = try? JSONEncoder().encode(errors),
      let string = String(data: data, encoding: .utf8)
    else { return }
    defaults?.set(string, forKey: errorsKey)
  }
}

final class DashboardFetcher: NSObject, URLSessionDelegate {
  private let allowInsecureConnections: Bool

  init(allowInsecureConnections: Bool) {
    self.allowInsecureConnections = allowInsecureConnections
  }

  func urlSession(
    _ session: URLSession,
    didReceive challenge: URLAuthenticationChallenge,
    completionHandler: @escaping (URLSession.AuthChallengeDisposition, URLCredential?) -> Void
  ) {
    guard
      allowInsecureConnections,
      challenge.protectionSpace.authenticationMethod == NSURLAuthenticationMethodServerTrust,
      let trust = challenge.protectionSpace.serverTrust
    else {
      completionHandler(.performDefaultHandling, nil)
      return
    }
    completionHandler(.useCredential, URLCredential(trust: trust))
  }
}

enum ServerWidgetFetcher {
  static func fetch(server: WidgetServer) async -> ServerSnapshot? {
    guard let baseURL = server.baseURL else {
      WidgetStore.saveError(l10n("widget.error.invalid_url"), serverId: server.id)
      return WidgetStore.selectedSnapshot(id: String(server.id)).1
    }
    guard let apiKey = WidgetStore.apiKey(serverId: server.id), !apiKey.isEmpty else {
      WidgetStore.saveError(l10n("widget.error.missing_api_key"), serverId: server.id)
      return WidgetStore.selectedSnapshot(id: String(server.id)).1
    }

    let previous = WidgetStore.selectedSnapshot(id: String(server.id)).1
    let settings = WidgetStore.settings()
    let start = Date()

    do {
      async let baseJson = request(
        baseURL: baseURL,
        path: "/api/v2/dashboard/base/all/all",
        apiKey: apiKey,
        server: server,
        settings: settings
      )
      async let currentJson = request(
        baseURL: baseURL,
        path: "/api/v2/dashboard/current/all/all",
        apiKey: apiKey,
        server: server,
        settings: settings
      )

      let base = try await baseJson
      let current = try await currentJson
      let latencyMs = max(0, Int(Date().timeIntervalSince(start) * 1000))
      let snapshot = makeSnapshot(
        server: server,
        base: base,
        current: current,
        previous: previous,
        latencyMs: latencyMs,
        updatedAt: Date()
      )
      WidgetStore.saveSnapshot(snapshot)
      return snapshot
    } catch {
      let message = errorMessage(error)
      if let base = try? await request(
        baseURL: baseURL,
        path: "/api/v2/dashboard/base/all/all",
        apiKey: apiKey,
        server: server,
        settings: settings
      ) {
        let current = dictionary(base["currentInfo"])
        let snapshot = makeSnapshot(
          server: server,
          base: base,
          current: current,
          previous: previous,
          latencyMs: max(0, Int(Date().timeIntervalSince(start) * 1000)),
          updatedAt: Date()
        )
        WidgetStore.saveSnapshot(snapshot)
        return snapshot
      }
      WidgetStore.saveError(message, serverId: server.id)
      return previous
    }
  }

  private static func request(
    baseURL: URL,
    path: String,
    apiKey: String,
    server: WidgetServer,
    settings: WidgetSettings
  ) async throws -> [String: Any] {
    var components = URLComponents(url: baseURL, resolvingAgainstBaseURL: false)
    components?.path = path
    guard let url = components?.url else { throw URLError(.badURL) }
    var request = URLRequest(url: url)
    request.timeoutInterval = TimeInterval(max(5, min(settings.requestTimeoutSeconds, 300)))
    request.setValue("application/json", forHTTPHeaderField: "Accept")
    request.setValue("application/json", forHTTPHeaderField: "Content-Type")
    request.setValue("MonoDashWidget/1.0", forHTTPHeaderField: "User-Agent")
    for (key, value) in settings.customHeaders where key.lowercased() != "user-agent" {
      request.setValue(value, forHTTPHeaderField: key)
    }

    let timestamp = String(Int(Date().timeIntervalSince1970))
    request.setValue(sign(apiKey: apiKey, timestamp: timestamp), forHTTPHeaderField: "1Panel-Token")
    request.setValue(timestamp, forHTTPHeaderField: "1Panel-Timestamp")

    let delegate = DashboardFetcher(
      allowInsecureConnections: server.allowInsecureConnections == true
    )
    let session = URLSession(
      configuration: .ephemeral,
      delegate: delegate,
      delegateQueue: nil
    )
    let (data, response) = try await session.data(for: request)
    session.finishTasksAndInvalidate()

    if let http = response as? HTTPURLResponse, !(200..<300).contains(http.statusCode) {
      throw FetchError.httpStatus(http.statusCode)
    }
    guard
      let envelope = try JSONSerialization.jsonObject(with: data) as? [String: Any],
      let data = envelope["data"] as? [String: Any]
    else {
      if let envelope = try? JSONSerialization.jsonObject(with: data) as? [String: Any] {
        throw FetchError.apiEnvelope(
          code: int(envelope["code"]),
          message: string(envelope["message"] ?? envelope["msg"])
        )
      }
      throw URLError(.cannotParseResponse)
    }
    if int(envelope["code"]) != 200 {
      throw FetchError.apiEnvelope(
        code: int(envelope["code"]),
        message: string(envelope["message"] ?? envelope["msg"])
      )
    }
    return data
  }

  private static func makeSnapshot(
    server: WidgetServer,
    base: [String: Any],
    current: [String: Any],
    previous: ServerSnapshot?,
    latencyMs: Int,
    updatedAt: Date
  ) -> ServerSnapshot {
    let hostname = string(base["hostname"])
    let prettyDistro = string(base["prettyDistro"])
    let ip = string(base["ipV4Addr"])
    let title = !(server.name ?? "").isEmpty ? server.name! : (hostname.isEmpty ? server.displayName : hostname)
    let subtitle = [prettyDistro, ip].filter { !$0.isEmpty }.joined(separator: "  |  ")
    let diskPercent = primaryDiskPercent(current["diskData"])
    let sent = int64(current["netBytesSent"])
    let recv = int64(current["netBytesRecv"])
    let elapsed = previous.map { updatedAt.timeIntervalSince($0.updatedAt) } ?? 0
    let uploadRate = rate(current: sent, previous: previous?.netBytesSent, elapsed: elapsed)
    let downloadRate = rate(current: recv, previous: previous?.netBytesRecv, elapsed: elapsed)

    return ServerSnapshot(
      id: server.id,
      name: server.name,
      displayName: server.displayName,
      host: server.host,
      port: server.port,
      isHttps: server.isHttps,
      allowInsecureConnections: server.allowInsecureConnections,
      sortIndex: server.sortIndex,
      title: title,
      subtitle: subtitle.isEmpty ? "\(server.host):\(server.port)" : subtitle,
      osName: osName(base),
      uptimeSeconds: int(current["uptime"]),
      cpuPercent: double(current["cpuUsedPercent"]),
      memoryPercent: double(current["memoryUsedPercent"]),
      diskPercent: diskPercent,
      websiteCount: int(base["websiteNumber"]),
      databaseCount: int(base["databaseNumber"]),
      appCount: int(base["appInstalledNumber"]),
      taskCount: int(base["cronjobNumber"]),
      netBytesSent: sent,
      netBytesRecv: recv,
      uploadBytesPerSecond: uploadRate,
      downloadBytesPerSecond: downloadRate,
      totalTrafficBytes: sent + recv,
      latencyMs: latencyMs,
      updatedAt: updatedAt
    )
  }

  private static func sign(apiKey: String, timestamp: String) -> String {
    let raw = Data("1panel\(apiKey)\(timestamp)".utf8)
    return Insecure.MD5.hash(data: raw).map { String(format: "%02x", $0) }.joined()
  }

  private static func primaryDiskPercent(_ value: Any?) -> Double? {
    guard let disks = value as? [[String: Any]], !disks.isEmpty else { return nil }
    let disk = disks.first { string($0["path"]) == "/" } ?? disks[0]
    return double(disk["usedPercent"])
  }

  private static func osName(_ base: [String: Any]) -> String {
    let source = [
      string(base["prettyDistro"]),
      string(base["platform"]),
      string(base["platformFamily"]),
      string(base["os"])
    ].joined(separator: " ").lowercased()
    if source.contains("ubuntu") { return "Ubuntu" }
    if source.contains("debian") { return "Debian" }
    if source.contains("centos") { return "CentOS" }
    if source.contains("fedora") { return "Fedora" }
    if source.contains("arch") { return "Arch" }
    if source.contains("suse") { return "openSUSE" }
    let platform = string(base["platform"])
    return platform.isEmpty ? "Linux" : platform
  }

  private static func rate(current: Int64, previous: Int64?, elapsed: TimeInterval) -> Double {
    guard let previous, elapsed > 0, current >= previous else { return 0 }
    return Double(current - previous) / elapsed
  }

  private static func dictionary(_ value: Any?) -> [String: Any] {
    value as? [String: Any] ?? [:]
  }

  private static func string(_ value: Any?) -> String {
    value.map { "\($0)" } ?? ""
  }

  private static func int(_ value: Any?) -> Int {
    if let value = value as? Int { return value }
    if let value = value as? NSNumber { return value.intValue }
    if let value = value as? String { return Int(value) ?? 0 }
    return 0
  }

  private static func int64(_ value: Any?) -> Int64 {
    if let value = value as? Int64 { return value }
    if let value = value as? Int { return Int64(value) }
    if let value = value as? NSNumber { return value.int64Value }
    if let value = value as? String { return Int64(value) ?? 0 }
    return 0
  }

  private static func double(_ value: Any?) -> Double {
    if let value = value as? Double { return value }
    if let value = value as? NSNumber { return value.doubleValue }
    if let value = value as? String { return Double(value) ?? 0 }
    return 0
  }

  private static func errorMessage(_ error: Error) -> String {
    if let error = error as? FetchError {
      return error.message
    }
    if let error = error as? URLError {
      return error.localizedDescription
    }
    return "\(error)"
  }
}

enum FetchError: Error {
  case httpStatus(Int)
  case apiEnvelope(code: Int, message: String)

  var message: String {
    switch self {
    case .httpStatus(let code):
      return "HTTP \(code)"
    case .apiEnvelope(let code, let message):
      return message.isEmpty ? l10nFormat("widget.error.api_code", code) : message
    }
  }
}

struct ServerEntity: AppEntity, Identifiable {
  static var typeDisplayRepresentation = TypeDisplayRepresentation(
    name: LocalizedStringResource("widget.intent.server.type")
  )
  static var defaultQuery = ServerEntityQuery()

  let id: String
  let name: String

  var displayRepresentation: DisplayRepresentation {
    DisplayRepresentation(title: LocalizedStringResource(stringLiteral: name))
  }
}

struct ServerEntityQuery: EntityStringQuery {
  func entities(for identifiers: [ServerEntity.ID]) async throws -> [ServerEntity] {
    WidgetStore.servers()
      .filter { identifiers.contains(String($0.id)) }
      .map { ServerEntity(id: String($0.id), name: $0.title) }
  }

  func entities(matching string: String) async throws -> [ServerEntity] {
    WidgetStore.servers()
      .filter { string.isEmpty || $0.title.localizedCaseInsensitiveContains(string) }
      .map { ServerEntity(id: String($0.id), name: $0.title) }
  }

  func suggestedEntities() async throws -> [ServerEntity] {
    WidgetStore.servers().map { ServerEntity(id: String($0.id), name: $0.title) }
  }
}

enum ServerWidgetCardStyle: String, AppEnum {
  case simple

  static var typeDisplayRepresentation = TypeDisplayRepresentation(
    name: LocalizedStringResource("widget.card.style.type")
  )
  static var caseDisplayRepresentations: [ServerWidgetCardStyle: DisplayRepresentation] = [
    .simple: DisplayRepresentation(title: LocalizedStringResource("widget.card.style.simple"))
  ]
}

struct ServerSelectionIntent: WidgetConfigurationIntent {
  static var title = LocalizedStringResource("widget.intent.server.title")
  static var description = IntentDescription("widget.intent.server.description")

  @Parameter(title: "widget.intent.server.parameter")
  var server: ServerEntity?

  @Parameter(title: "widget.intent.style.parameter", default: .simple)
  var cardStyle: ServerWidgetCardStyle

  static var parameterSummary: some ParameterSummary {
    Summary("Show \(\.$server) as \(\.$cardStyle)")
  }
}

struct RefreshServerIntent: AppIntent {
  static var title = LocalizedStringResource("widget.intent.refresh.title")

  @Parameter(title: "widget.intent.refresh.server_id")
  var serverId: String

  init() {
    serverId = ""
  }

  init(serverId: String) {
    self.serverId = serverId
  }

  func perform() async throws -> some IntentResult {
    if let server = WidgetStore.selectedServer(id: serverId) {
      _ = await ServerWidgetFetcher.fetch(server: server)
      WidgetCenter.shared.reloadTimelines(ofKind: widgetKind)
    }
    return .result()
  }
}

struct ServerEntry: TimelineEntry {
  let date: Date
  let server: WidgetServer?
  let snapshot: ServerSnapshot?
  let errorMessage: String?
  let cardStyle: ServerWidgetCardStyle
}

struct ServerStatusProvider: AppIntentTimelineProvider {
  func placeholder(in context: Context) -> ServerEntry {
    ServerEntry(
      date: Date(),
      server: WidgetServer(
        id: 1,
        name: "Mono Dash",
        displayName: "Mono Dash",
        host: "127.0.0.1",
        port: 10086,
        isHttps: true,
        allowInsecureConnections: false,
        sortIndex: 0
      ),
      snapshot: ServerSnapshot(
        id: 1,
        name: "Mono Dash",
        displayName: "Mono Dash",
        host: "127.0.0.1",
        port: 10086,
        isHttps: true,
        allowInsecureConnections: false,
        sortIndex: 0,
        title: "Mono Dash",
        subtitle: "Ubuntu  |  10.0.0.2",
        osName: "Ubuntu",
        uptimeSeconds: 183_600,
        cpuPercent: 24,
        memoryPercent: 58,
        diskPercent: 43,
        websiteCount: 4,
        databaseCount: 2,
        appCount: 8,
        taskCount: 3,
        netBytesSent: 1_200_000_000,
        netBytesRecv: 8_600_000_000,
        uploadBytesPerSecond: 52_000,
        downloadBytesPerSecond: 380_000,
        totalTrafficBytes: 9_800_000_000,
        latencyMs: 86,
        updatedAt: Date()
      ),
      errorMessage: nil,
      cardStyle: .simple
    )
  }

  func snapshot(
    for configuration: ServerSelectionIntent,
    in context: Context
  ) async -> ServerEntry {
    guard let server = WidgetStore.selectedServer(id: configuration.server?.id) else {
      return ServerEntry(
        date: Date(),
        server: nil,
        snapshot: nil,
        errorMessage: nil,
        cardStyle: configuration.cardStyle
      )
    }
    let snapshot = context.isPreview
      ? WidgetStore.selectedSnapshot(id: String(server.id)).1
      : await ServerWidgetFetcher.fetch(server: server)
    return ServerEntry(
      date: Date(),
      server: server,
      snapshot: snapshot,
      errorMessage: WidgetStore.selectedError(id: String(server.id)),
      cardStyle: configuration.cardStyle
    )
  }

  func timeline(
    for configuration: ServerSelectionIntent,
    in context: Context
  ) async -> Timeline<ServerEntry> {
    guard let server = WidgetStore.selectedServer(id: configuration.server?.id) else {
      return Timeline(
        entries: [
          ServerEntry(
            date: Date(),
            server: nil,
            snapshot: nil,
            errorMessage: nil,
            cardStyle: configuration.cardStyle
          )
        ],
        policy: .after(Date().addingTimeInterval(900))
      )
    }

    let snapshot = await ServerWidgetFetcher.fetch(server: server)
    let entry = ServerEntry(
      date: Date(),
      server: server,
      snapshot: snapshot,
      errorMessage: WidgetStore.selectedError(id: String(server.id)),
      cardStyle: configuration.cardStyle
    )
    return Timeline(entries: [entry], policy: .after(Date().addingTimeInterval(900)))
  }
}

struct ServerStatusWidgetEntryView: View {
  @Environment(\.widgetFamily) private var family
  let entry: ServerEntry

  var body: some View {
    Group {
      if let snapshot = entry.snapshot {
        switch entry.cardStyle {
        case .simple:
          simpleServerCard(snapshot)
        }
      } else if let server = entry.server {
        fallbackCard(server, errorMessage: entry.errorMessage)
      } else {
        emptyCard
      }
    }
    .containerBackground(.background, for: .widget)
  }

  private func simpleServerCard(_ snapshot: ServerSnapshot) -> some View {
    let isSmall = family == .systemSmall
    return VStack(alignment: .leading, spacing: isSmall ? 6 : 11) {
      simpleHeader(snapshot)
      metricRows(snapshot)
      Divider()
      trafficTotalsRow(snapshot)
    }
    .padding(.horizontal, isSmall ? 12 : 16)
    .padding(.top, isSmall ? 10 : 18)
    .padding(.bottom, isSmall ? 10 : 16)
    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
  }

  private func fallbackCard(_ server: WidgetServer, errorMessage: String?) -> some View {
    VStack(alignment: .leading, spacing: 12) {
      header(
        title: server.title,
        subtitle: l10n("widget.fallback.waiting"),
        osName: "Linux",
        latencyMs: nil
      )
      Text(errorMessage ?? (WidgetStore.apiKey(serverId: server.id) == nil ? l10n("widget.fallback.open_app") : l10n("widget.fallback.tap_refresh")))
        .font(.footnote.weight(.medium))
        .foregroundStyle(.secondary)
        .lineLimit(3)
      Spacer(minLength: 0)
      Button(intent: RefreshServerIntent(serverId: String(server.id))) {
        Label(l10n("widget.action.refresh"), systemImage: "arrow.clockwise")
          .font(.caption.weight(.semibold))
      }
      .buttonStyle(.bordered)
    }
    .padding(16)
  }

  private var emptyCard: some View {
    VStack(alignment: .leading, spacing: 10) {
      Image(systemName: "server.rack")
        .font(.title2.weight(.semibold))
        .foregroundStyle(.secondary)
      Text(l10n("widget.empty.title"))
        .font(.headline)
      Text(l10n("widget.empty.subtitle"))
        .font(.footnote.weight(.medium))
        .foregroundStyle(.secondary)
      Spacer(minLength: 0)
    }
    .padding(16)
  }

  private func simpleHeader(_ snapshot: ServerSnapshot) -> some View {
    header(
      title: snapshot.title,
      subtitle: simpleSubtitle(snapshot),
      osName: snapshot.osName,
      latencyMs: snapshot.latencyMs,
      serverId: snapshot.id
    )
  }

  private func header(
    title: String,
    subtitle: String,
    osName: String,
    latencyMs: Int?,
    serverId: Int? = nil
  ) -> some View {
    let isSmall = family == .systemSmall
    let resolvedSubtitle = isSmall && latencyMs != nil
      ? "\(subtitle.isEmpty ? "--" : subtitle) · \(latencyMs!)ms"
      : subtitle

    return HStack(spacing: 10) {
      osIcon(osName)

      VStack(alignment: .leading, spacing: 3) {
        Text(title)
          .font(.headline.weight(.bold))
          .lineLimit(1)
        Text(resolvedSubtitle.isEmpty ? "--" : resolvedSubtitle)
          .font(.caption2.weight(.medium))
          .foregroundStyle(.secondary)
          .lineLimit(1)
      }

      Spacer(minLength: 0)

      if let latencyMs, !isSmall {
        Text("\(latencyMs)ms")
          .font(.caption2.weight(.bold))
          .foregroundStyle(latencyMs > 500 ? .orange : .green)
          .padding(.horizontal, 7)
          .padding(.vertical, 4)
          .background((latencyMs > 500 ? Color.orange : Color.green).opacity(0.1), in: RoundedRectangle(cornerRadius: 6))
      }

      if let serverId {
        Button(intent: RefreshServerIntent(serverId: String(serverId))) {
          Image(systemName: "arrow.clockwise")
            .font(.caption.weight(.bold))
            .foregroundStyle(.secondary)
            .frame(width: 24, height: 24)
            .background(.secondary.opacity(0.08), in: RoundedRectangle(cornerRadius: 6))
        }
        .buttonStyle(.plain)
      }
    }
  }

  private func metricRows(_ snapshot: ServerSnapshot) -> some View {
    VStack(spacing: family == .systemSmall ? 4 : 8) {
      metric(label: "CPU", value: snapshot.cpuPercent, tint: usageColor(snapshot.cpuPercent))
      metric(label: l10n("widget.metric.memory"), value: snapshot.memoryPercent, tint: usageColor(snapshot.memoryPercent))
      if let diskPercent = snapshot.diskPercent {
        metric(label: l10n("widget.metric.disk"), value: diskPercent, tint: usageColor(diskPercent))
      }
    }
  }

  private func metric(label: String, value: Double, tint: Color) -> some View {
    HStack(spacing: 8) {
      Text(label)
        .font(.caption2.weight(.bold))
        .foregroundStyle(.secondary)
        .frame(width: 30, alignment: .leading)
      GeometryReader { proxy in
        ZStack(alignment: .leading) {
          Capsule().fill(.secondary.opacity(0.14))
          Capsule()
            .fill(tint)
            .frame(width: proxy.size.width * min(max(value, 0), 100) / 100)
        }
      }
      .frame(height: 6)
      Text(percent(value))
        .font(.caption2.monospacedDigit().weight(.semibold))
        .frame(width: 36, alignment: .trailing)
    }
  }

  private func trafficTotalsRow(_ snapshot: ServerSnapshot) -> some View {
    HStack(spacing: 8) {
      trafficTotal(l10n("widget.traffic.up"), snapshot.netBytesSent, systemImage: "arrow.up")
      separatorDot
      trafficTotal(l10n("widget.traffic.down"), snapshot.netBytesRecv, systemImage: "arrow.down")
      separatorDot
      trafficTotal(l10n("widget.traffic.total"), snapshot.totalTrafficBytes, systemImage: "sum")
    }
    .lineLimit(1)
    .minimumScaleFactor(0.82)
  }

  private func trafficTotal(
    _ label: String,
    _ value: Int64,
    systemImage: String
  ) -> some View {
    HStack(spacing: 3) {
      Image(systemName: systemImage)
        .font(.caption.weight(.bold))
        .foregroundStyle(.secondary)
      Text(label)
        .font(.caption.weight(.semibold))
        .foregroundStyle(.secondary)
      Text(bytes(value))
        .font(.caption.monospacedDigit().weight(.bold))
    }
  }

  private var separatorDot: some View {
    Text("·")
      .font(.caption.weight(.bold))
      .foregroundStyle(.tertiary)
  }

  private func simpleSubtitle(_ snapshot: ServerSnapshot) -> String {
    let uptime = formatUptime(snapshot.uptimeSeconds ?? 0)
    if !snapshot.osName.isEmpty {
      return uptime.isEmpty ? snapshot.osName : "\(snapshot.osName) · \(uptime)"
    }
    let pieces = snapshot.subtitle.components(separatedBy: "  |  ")
    let os = pieces.first?.isEmpty == false ? pieces[0] : "--"
    return uptime.isEmpty ? os : "\(os) · \(uptime)"
  }

  private func usageColor(_ value: Double) -> Color {
    if value >= 85 { return .red }
    if value >= 60 { return .orange }
    return .green
  }

  private func osIcon(_ value: String) -> some View {
    Image(osAssetName(value))
      .resizable()
      .scaledToFit()
      .frame(width: 34, height: 34)
  }

  private func osAssetName(_ value: String) -> String {
    let source = value.lowercased()
    if source.contains("ubuntu") { return "Ubuntu" }
    if source.contains("debian") { return "Debian" }
    if source.contains("centos") { return "CentOS" }
    if source.contains("fedora") { return "Fedora" }
    if source.contains("arch") { return "Arch Linux" }
    if source.contains("suse") { return "openSUSE" }
    return "Linux"
  }

  private func percent(_ value: Double) -> String {
    let clamped = min(max(value, 0), 100)
    return clamped >= 10
      ? "\(Int(clamped.rounded()))%"
      : String(format: "%.1f%%", clamped)
  }

  private func bytes(_ value: Int64) -> String {
    let units = ["B", "KB", "MB", "GB", "TB"]
    var amount = Double(max(value, 0))
    var index = 0
    while amount >= 1024, index < units.count - 1 {
      amount /= 1024
      index += 1
    }
    return amount >= 10 || index == 0
      ? "\(Int(amount.rounded()))\(units[index])"
      : String(format: "%.1f%@", amount, units[index])
  }

  private func formatUptime(_ seconds: Int) -> String {
    guard seconds > 0 else { return "" }
    let days = seconds / 86_400
    let hours = (seconds % 86_400) / 3_600
    let minutes = (seconds % 3_600) / 60
    if days > 0 { return l10nFormat("widget.uptime.days_hours", days, hours) }
    if hours > 0 { return l10nFormat("widget.uptime.hours_minutes", hours, minutes) }
    return l10nFormat("widget.uptime.minutes", minutes)
  }
}

struct ServerStatusWidget: Widget {
  let kind = widgetKind

  var body: some WidgetConfiguration {
    AppIntentConfiguration(
      kind: kind,
      intent: ServerSelectionIntent.self,
      provider: ServerStatusProvider()
    ) { entry in
      ServerStatusWidgetEntryView(entry: entry)
    }
    .configurationDisplayName("widget.display.name")
    .description("widget.display.description")
    .supportedFamilies([.systemSmall, .systemMedium])
    .contentMarginsDisabled()
  }
}

@main
struct ServerStatusWidgetBundle: WidgetBundle {
  var body: some Widget {
    ServerStatusWidget()
  }
}
