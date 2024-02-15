import TootSDK

extension TootClient {
  public func delete(_ notification: TootNotification) async throws {
    try await dismissNotification(id: notification.id)
  }

  public func refresh(_ notification: TootNotification) async throws -> TootNotification {
    try await getNotification(id: notification.id)
  }
}
