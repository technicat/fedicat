import TootSDK

extension Session {

  public func react(to announce: Announcement, with reaction: AnnouncementReaction) async throws {
    try await client.react(to: announce, with: reaction)
  }

  public func unReact(to announce: Announcement, with reaction: AnnouncementReaction) async throws {
    try await client.unReact(to: announce, with: reaction)
  }
}
