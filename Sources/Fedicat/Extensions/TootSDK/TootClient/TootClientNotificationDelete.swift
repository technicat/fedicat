import TootSDK

extension TootClient {

  /// https://docs.joinmastodon.org/methods/notifications/#dismiss
  public func delete(_ notification: TootNotification) async throws {
    try await dismissNotification(id: notification.id)
  }
}
