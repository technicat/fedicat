import TootSDK

/// https://docs.joinmastodon.org/methods/markers/
extension Session {

  public var supportsMarkers: Bool {
    isAuth && platform?.supportsMarkers ?? false
  }

  public func getHomeMarker() async throws -> Marker? {
    try await client.getMarker(for: MarkerTimeline.home)
  }

  public func getNotificationsMarker() async throws -> Marker? {
    try await client.getMarker(for: MarkerTimeline.notifications)
  }

  public func saveHomeMarker(_ readID: String) async throws {
    try await client.updateMarkers(homeLastReadId: readID)
  }

  public func saveNotificationsMarker(_ readID: String) async throws {
    try await client.updateMarkers(notificationsLastReadId: readID)
  }
}
