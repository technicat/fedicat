import TootSDK

extension TootClient {

  public func refresh(_ notification: TootNotification) async throws -> TootNotification {
    try await getNotification(id: notification.id)
  }
}
