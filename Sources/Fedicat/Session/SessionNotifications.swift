import TootSDK

extension Session {

  public var supportsNotificationTypes: Bool {
    platform?.hasNotificationTypes ?? false
  }

  public var notificationTypes: NotificationTypes {
    platform?.notificationTypes ?? []
  }

  public func supportsNotificationTypes(_ types: NotificationTypes) -> NotificationTypes {
    notificationTypes.intersection(types)
  }

  public func notNotificationTypes(_ types: NotificationTypes) -> NotificationTypes {
    notificationTypes.subtracting(types)
  }

  public func getNotifications(
    with types: NotificationTypes,
    _ page: PagedInfo? = nil
  ) async throws -> PagedResult<[TootNotification]> {
    // friendica requires exclusion types
    // or you just end up getting everything
    // doesn't seem to hurt elsewhere
    let result = try await client.getNotifications(
      with: types, without: notNotificationTypes(types),
      page,
      limit: notificationsPageLimit)
    let notes = result.result
    // assume no boosts
    for note in notes {
      await addAccount(note)
      if let post = note.post {
        await addAccount(post)
      }
    }
    return result
  }

  private var notificationsPageLimit: Int? {
    platform?.notificationsPageLimit
  }

}
