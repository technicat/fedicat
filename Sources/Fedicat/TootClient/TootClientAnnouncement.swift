import TootSDK

extension TootClient {

  // in practice, just acts as mark as read
  public func delete(_ announce: Announcement) async throws {
    try await dismissAnnouncement(id: announce.id)
  }
}
