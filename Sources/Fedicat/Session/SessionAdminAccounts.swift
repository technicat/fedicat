import TootSDK

extension Session {
    
    public var supportsAdmin: Bool {
        platform is Mastodon
    }

  public func getAdminAccounts(
    _ page: PagedInfo? = nil
  ) async throws -> PagedResult<[AdminAccount]> {
    let result = try await client.getAdminAccountsV2(
      page,
      limit: adminAccountsPageLimit)
    await addAccounts(result.result)
    return result
  }

  private var adminAccountsPageLimit: Int {
    100
    // platform?.followersPageLimit ?? 0
  }
}
