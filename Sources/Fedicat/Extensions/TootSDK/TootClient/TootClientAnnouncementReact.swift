import TootSDK

extension TootClient {

  /// https://docs.joinmastodon.org/methods/announcements/#put-reactions
  public func react(to announce: Announcement, with reaction: AnnouncementReaction) async throws {
    try await addAnnouncementReaction(id: announce.id, name: reaction.name)
  }

  /// https://docs.joinmastodon.org/methods/announcements/#delete-reactions
  public func unReact(to announce: Announcement, with reaction: AnnouncementReaction) async throws {
    try await removeAnnouncementReaction(id: announce.id, name: reaction.name)
  }
}
