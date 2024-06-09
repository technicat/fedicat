import TootSDK

extension Session {

  public func getFollowRequests(_ page: PagedInfo? = nil,
                                limit: Int? = nil) async throws
    -> PagedResult<[Account]>
  {
      let result = try await client.getFollowRequests(page, limit: limit)
    await addAccounts(result.result)
    return result
  }

  public var supportsFollowRequests: Bool {
    followRequestPageLimit > 0
  }

  private var followRequestPageLimit: Int {
    platform?.followRequestPageLimit ?? 0
  }

  public func acceptFollow(from account: Account) async throws {
    try await client.acceptFollow(from: account)
  }

  public func rejectFollow(from account: Account) async throws {
    try await client.rejectFollow(from: account)
  }
}
