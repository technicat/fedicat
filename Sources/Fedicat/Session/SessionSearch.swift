import TootSDK

extension Session {

  public var supportsSearchPosts: Bool {
    platform?.supportsSearchPosts ?? false
  }

  public var supportsSearchAccount: Bool {
    platform?.supportsSearchAccounts ?? false
  }

  // todo - page
    /// https://docs.joinmastodon.org/methods/search/#v2
  public func search(
    _ query: String,
    following: Bool = false,
    excludeUnreviewed: Bool = false
  ) async throws -> Search {
      let result = try await client.search(for: query,
                                           following: following, 
                                           excludeUnreviewed: excludeUnreviewed)
    await addAccounts(result.accounts)
    await addAccounts(result.posts)
    // maybe cache tags
    return result
  }

  public func findAccounts(
    _ query: String,
    order: ProfileDirectoryParams.Order? = nil,
    local: Bool? = nil
  ) async throws -> [Account] {
      let accounts = try await client.findAccounts(
        with: query,
        limit: platform?.searchAccountsLimit,
        order: order,
        local: local
    )
    await addAccounts(accounts)
    return accounts
  }
        
}

