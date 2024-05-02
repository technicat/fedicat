import TootSDK

extension Session {

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

  public func getMutedAccounts(_ page: PagedInfo? = nil) async throws
    -> PagedResult<[Account]>
  {
    let result = try await client.getMutedAccounts(
      page,
      limit: orNil(mutedAccountsLimit, 40))
    await addAccounts(result.result)
    return result
  }

  private var mutedAccountsLimit: Int {
    // this was originally here because pixelfed had a max of 40
    // use max limit to minimize queries
    // we could get this from Platform
    return 80
  }
}
