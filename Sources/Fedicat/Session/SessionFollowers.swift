import TootSDK

extension Session {

  public func getFollowers(
    _ account: Account,
    _ page: PagedInfo? = nil
  ) async throws -> PagedResult<[Account]> {
    let result = try await client.getFollowers(
      of: account,
      page,
      limit: followersPageLimit)
    await addAccounts(result.result)
    return result
  }

  private var followersPageLimit: Int { 40 }  // todo - get from platform
}
