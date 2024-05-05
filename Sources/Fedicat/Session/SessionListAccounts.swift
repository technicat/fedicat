import TootSDK

extension Session {

  public func getAccounts(
    in list: List,
    _ page: PagedInfo? = nil
  ) async throws -> PagedResult<[Account]> {
    let result = try await client.getAccounts(
      in: list,
      page,
      limit: listAccountsLimit)
    await addAccounts(result.result)
    return result
  }

  private var listAccountsLimit: Int { 80 }  // platform
}
