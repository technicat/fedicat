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
}
