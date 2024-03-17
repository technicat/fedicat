import TootSDK

extension TootClient {
  /// doesn't necessarily dismiss, acts more like mark as read
  /// https://docs.joinmastodon.org/methods/announcements/#dismiss
  public func delete(_ announce: Announcement) async throws {
    try await dismissAnnouncement(id: announce.id)
  }
}
