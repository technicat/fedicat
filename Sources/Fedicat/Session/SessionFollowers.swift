import TootSDK

extension Session {

  public func getFollowers(
    _ account: Account,
    _ page: PagedInfo? = nil,
    limit: Int? = nil
  ) async throws -> PagedResult<[Account]> {
    let result = try await client.getFollowers(
      of: account,
      page,
      limit: limit)
    await addAccounts(result.result)
    return result
  }

  public var supportsFollowers: Bool {
    followersPageLimit > 0
  }
        
        public var isHidingFollowLists: Bool {
            account?.isHidingFollowLists ?? true
        }

  private var followersPageLimit: Int {
    platform?.followersPageLimit ?? 0
  }
}
