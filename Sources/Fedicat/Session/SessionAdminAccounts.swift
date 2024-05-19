import TootSDK

extension Session {

  public func getAccountsV1(
    _ page: PagedInfo? = nil
  ) async throws -> PagedResult<[Account]> {
    let result = try await client.getAccountsV1(
      page,
      limit: accountsPageLimit)
    await addAccounts(result.result)
    return result
  }

  public func getAccountsV2(
    _ page: PagedInfo? = nil
  ) async throws -> PagedResult<[Account]> {
    let result = try await client.getAccountsV2(
      page,
      limit: accountsPageLimit)
    await addAccounts(result.result)
    return result
  }

  private var accountsPageLimit: Int {
    40
    // platform?.followersPageLimit ?? 0
  }
}
