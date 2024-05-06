import TootSDK

extension Session {
    
    // move this
    public var supportsFilteredAccounts: Bool {
        supportsMutedAccounts || supportsBlockedAccounts
    }
    
    public var supportsMutedAccounts: Bool {
        platform?.supportsMutedAccounts ?? false
    }

    public var canMuteAccounts: Bool {
      isAuth && supportsMutedAccounts
    }

  @discardableResult
  public func mute(
    _ account: Account,
    notifications: Bool = true,
    duration: Int = 0
  ) async throws -> Relationship {
    return try await client.mute(
      account,
      notifications: notifications,
      duration: duration)
  }

  @discardableResult
  public func unMute(account: Account) async throws -> Relationship {
    try await client.unMute(account)
  }
}
