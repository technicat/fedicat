import TootSDK

/// https://docs.joinmastodon.org/methods/markers/
extension Session {

  public var supportsMarkers: Bool {
    isAuth && platform?.supportsMarkers ?? false
  }

  public func getHomeMarker() async throws -> Marker? {
    try await getMarker(Marker.Timeline.home)
  }

  public func getNotificationsMarker() async throws -> Marker? {
    try await getMarker(Marker.Timeline.notifications)
  }

  private func getMarker(_ timeline: Marker.Timeline) async throws -> Marker? {
    let markers = try await client.getMarkers(for: Set([timeline]))
    return markers[timeline]
  }

  public func saveHomeMarker(_ readID: String) async throws {
    try await client.updateMarkers(homeLastReadId: readID)
  }

  public func saveNotificationsMarker(_ readID: String) async throws {
    try await client.updateMarkers(notificationsLastReadId: readID)
  }
}
