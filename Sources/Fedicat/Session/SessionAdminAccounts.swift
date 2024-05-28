import TootSDK

extension Session {

  public var supportsAdmin: Bool {
    platform is Mastodon
  }

  public func getAdminAccounts(
    _ origin: AdminAccountOrigin? = nil,
    _ page: PagedInfo? = nil
  ) async throws -> PagedResult<[AdminAccount]> {
    let result = try await client.getAdminAccountsV2(
      params: AdminAccountsV2Params(origin: origin),
      page,
      limit: adminAccountsPageLimit)
    await addAccounts(result.result)
    return result
  }

  private var adminAccountsPageLimit: Int {
    200
    // platform?.followersPageLimit ?? 0
  }
}
