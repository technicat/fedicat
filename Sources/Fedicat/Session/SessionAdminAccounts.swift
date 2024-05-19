import TootSDK

extension Session {

  public func getAccountsV1(
    _ page: PagedInfo? = nil
  ) async throws -> PagedResult<[AdminAccount]> {
    let result = try await client.getAccountsV1(
      page,
      limit: adminAccountsPageLimit)
    await addAccounts(result.result)
    return result
  }

  public func getAccountsV2(
    _ page: PagedInfo? = nil
  ) async throws -> PagedResult<[AdminAccount]> {
    let result = try await client.getAccountsV2(
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
