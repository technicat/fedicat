import TootSDK

/// https://docs.joinmastodon.org/methods/announcements/
extension Session {

  public var canReadAnnouncements: Bool {
    isAuth && supportsAnnouncements
  }

  public var supportsAnnouncements: Bool {
    platform?.supportsAnnouncements ?? false
  }

  public var hasAnnounce: Bool {
    !announcements.isEmpty
  }

  public func getAnnouncements() async throws -> [Announcement] {
    // can't tell withDismissed param works, ignore it for now
    let list = try await client.getAnnouncements()
    announcements = list
    return list
  }
}

