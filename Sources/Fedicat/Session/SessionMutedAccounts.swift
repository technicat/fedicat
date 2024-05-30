import TootSDK

extension Session {

  public func getMutedAccounts(_ page: PagedInfo? = nil) async throws
    -> PagedResult<[Account]>
  {
    let result = try await client.getMutedAccounts(
      page,
      limit: mutedAccountsLimit)
    await addAccounts(result.result)
    return result
  }

  private var mutedAccountsLimit: Int {
    platform?.mutedAccountsLimit ?? 0
  }
    
    public var supportsMutedAccounts: Bool {
      mutedAccountsLimit > 0
    }
}
