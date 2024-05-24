import TootSDK

/// https://docs.joinmastodon.org/methods/search/
extension Session {

  public var supportsSearchAccount: Bool {
    platform?.supportsSearchAccount ?? false
  }

  public func search(for query: String, in account: Account) async throws -> Search {
    let result = try await client.search(for: query, in: account)
    await addAccounts(result.accounts)
    await addAccounts(result.posts)
    // maybe cache tags
    return result
  }
}
