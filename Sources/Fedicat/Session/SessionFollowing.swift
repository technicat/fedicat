import TootSDK

extension Session {

  public func getFollowedAccounts(
    by account: Account,
    _ page: PagedInfo? = nil
  ) async throws -> PagedResult<[Account]> {
    let result = try await client.getFollowing(
      for: account.id,
      page,
      limit: followedAccountsPageLimit)
    let accounts = result.result
    await addAccounts(accounts)
    for account in accounts {
      await add(follow: account)
    }
    return result
  }

  // todo - get from Platform
  private var followedAccountsPageLimit: Int {
    80
  }

  public func getAllFollowedAccounts() async throws {
    if let account {
      try await client.getPages { page in try await getFollowedAccounts(by: account, page) }
    }
  }
}
