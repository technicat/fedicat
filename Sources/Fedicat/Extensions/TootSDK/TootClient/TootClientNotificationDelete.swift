import TootSDK

extension TootClient {

  /// https://docs.joinmastodon.org/methods/notifications/#dismiss
  public func delete(_ notification: TootNotification) async throws {
    try await dismissNotification(id: notification.id)
  }

  /// https://docs.joinmastodon.org/methods/notifications/#clear
  public func deleteNotifications() async throws {
    try await dismissAllNotifications()
  }
}
