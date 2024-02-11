import TootSDK

extension TootClient {

  public func getFollowers(
    of account: Account, _ page: PagedInfo? = nil,
    limit: Int? = nil
  ) async throws -> PagedResult<[Account]> {
    try await getFollowers(for: account.id, page, limit: limit)
  }

  public func getFamiliarFollowers(of accounts: [Account]) async throws -> [FamiliarFollowers] {
    try await getFamiliarFollowers(by: accounts.map { $0.id })
  }

  public func getFamiliarFollowers(of account: Account) async throws -> [Account] {
    let result = try await getFamiliarFollowers(of: [account])
    return result[0].accounts
  }
}
