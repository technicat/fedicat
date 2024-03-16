import TootSDK

extension TootClient {

  /// doesn't necessarily delete, marks as read
  /// (doesn't necessarily dismiss, either)
  /// https://docs.joinmastodon.org/methods/announcements/#dismiss
  public func delete(_ announce: Announcement) async throws {
    try await dismissAnnouncement(id: announce.id)
  }

  /// https://docs.joinmastodon.org/methods/announcements/#put-reactions
  public func react(to announce: Announcement, with reaction: AnnouncementReaction) async throws {
    try await addAnnouncementReaction(id: announce.id, name: reaction.name)
  }

  /// https://docs.joinmastodon.org/methods/announcements/#delete-reactions
  public func unReact(to announce: Announcement, with reaction: AnnouncementReaction) async throws {
    try await removeAnnouncementReaction(id: announce.id, name: reaction.name)
  }
}
