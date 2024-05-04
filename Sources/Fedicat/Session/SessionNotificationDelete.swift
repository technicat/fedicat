import TootSDK

extension Session {

  public var supportsNotificationDelete: Bool {
    platform?.supportsNotificationDelete ?? false
  }

  public var supportsNotificationDeleteAll: Bool {
    platform?.supportsNotificationDeleteAll ?? false
  }

  public func delete(_ notification: TootNotification) async throws {
    try await client.delete(notification)
  }

  public func deleteNotifications() async throws {
    try await client.dismissAllNotifications()
    //   hasNotifications = false
  }
}
