import TootSDK

extension TootClient {

  public func getFollowers(
    of account: Account, _ page: PagedInfo? = nil,
    limit: Int? = nil
  ) async throws -> PagedResult<[Account]> {
    try await getFollowers(for: account.id, page, limit: limit)
  }

}
