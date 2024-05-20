import TootSDK

/// https://docs.joinmastodon.org/methods/search/
extension Session {
    
    public var supportsSearchAccount: Bool {
      platform?.supportsSearchAccount ?? false
    }

  public func search(
    in account: Account,
    _ query: String
  ) async throws -> Search {
    let result = try await client.search(
      params: SearchParams(
        query: query.trimWSNL,
        type: .posts,
        accountId: account.id))
    await addAccounts(result.accounts)
    await addAccounts(result.posts)
    // maybe cache tags
    return result
  }
}
