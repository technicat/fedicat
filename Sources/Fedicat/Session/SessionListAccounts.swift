import TootSDK

extension Session {

  public func getAccounts(
    in list: List,
    _ page: PagedInfo? = nil
  ) async throws -> PagedResult<[Account]> {
    let result = try await client.getAccounts(
      in: list,
      page,
      limit: listAccountsPageLimit)
    await addAccounts(result.result)
    return result
  }

  private var listAccountsPageLimit: Int {
    platform?.listAccountsPageLimit ?? 0
  }
    
    
    public var supportsList: Bool {
        listAccountsPageLimit > 0
    }
}
