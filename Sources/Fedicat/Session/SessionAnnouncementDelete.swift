import TootSDK

/// https://docs.joinmastodon.org/methods/announcements/
extension Session {

  public var supportsAnnounceRead: Bool {
    platform?.supportsAnnouncementMark ?? false
  }

  // rename to markRead? or dismiss?
  public func delete(_ announce: Announcement) async throws {
    try await client.delete(announce)
  }
}
