import TootSDK

extension TootClient {

  public func delete(_ announce: Announcement) async throws {
    try await dismissAnnouncement(id: announce.id)
  }

  public func react(to announce: Announcement, with reaction: AnnouncementReaction) async throws {
    try await addAnnouncementReaction(id: announce.id, name: reaction.name)
  }

  public func unReact(to announce: Announcement, with reaction: AnnouncementReaction) async throws {
    try await removeAnnouncementReaction(id: announce.id, name: reaction.name)
  }
}
