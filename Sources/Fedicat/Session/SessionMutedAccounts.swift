import TootSDK

extension Session {

  public func getMutedAccounts(
    _ page: PagedInfo? = nil,
    limit: Int? = nil
  ) async throws
    -> PagedResult<[MutedAccount]>
  {
    let result = try await client.getMutedAccounts(page, limit: limit)
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
