import TootSDK

extension Session {

  public func getFollowRequests(_ page: PagedInfo? = nil) async throws
    -> PagedResult<[Account]>
  {
    let result = try await client.getFollowRequests(page, limit: followRequestPageLimit)
    await addAccounts(result.result)
    return result
  }

  private var followRequestPageLimit: Int { 80 }  // todo - get from platform

  public func acceptFollow(from account: Account) async throws {
    try await client.acceptFollow(from: account)
  }

  public func rejectFollow(from account: Account) async throws {
    try await client.rejectFollow(from: account)
  }
}
