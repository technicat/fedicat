import TootSDK

extension Session {

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
    40
    // platform?.followersPageLimit ?? 0
  }
}
