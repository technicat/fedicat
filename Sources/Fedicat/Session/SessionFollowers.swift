import TootSDK

extension Session {

  public func getFollowers(_ account: Account, _ page: PagedInfo? = nil
  ) async throws -> PagedResult<[Account]>? {
      guard supportsFollowers else { return nil }
    let result = try await client.getFollowers(
      of: account,
      page,
      limit: followersPageLimit)
    await addAccounts(result.result)
    return result
  }
    
    public var supportsFollowers: Bool {
        followersPageLimit > 0
    }

  private var followersPageLimit: Int {
    platform?.followersPageLimit ?? 0
  }
}
