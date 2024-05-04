import TootSDK

extension Session {

  public func getBlockedAccounts(_ page: PagedInfo? = nil) async throws -> PagedResult<
    [Account]
  > {
    let result = try await client.getBlockedAccounts(
      page,
      limit: blockedAccountsLimit)
    await addAccounts(result.result)
    return result
  }

  private var blockedAccountsLimit: Int? {
    platform?.blockedAccountsLimit
  }
}
