import TootSDK

extension TootClient {
    /// doesn't necessarily delete, marks as read
    /// (doesn't necessarily dismiss, either)
    /// https://docs.joinmastodon.org/methods/announcements/#dismiss
    public func delete(_ announce: Announcement) async throws {
        try await dismissAnnouncement(id: announce.id)
    }
}
