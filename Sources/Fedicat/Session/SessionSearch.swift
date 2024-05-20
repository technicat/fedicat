import TootSDK

/// https://docs.joinmastodon.org/methods/search/
extension Session {

  public var supportsSearchPosts: Bool {
    platform?.supportsSearchPosts ?? false
  }

  public var supportsSearchAccount: Bool {
    platform?.supportsSearchAccounts ?? false
  }

  // todo - page
  public func search(
    _ query: String,
    following: Bool = false,
    excludeUnreviewed: Bool = false
 //   resolve: Bool = false
  ) async throws -> Search {
    let params = SearchParams(
      query: query.trimWSNL,
     // resolve: orNil(resolve, false),
      following: orNil(following, false),
      excludeUnreviewed: orNil(excludeUnreviewed, false))
    let result = try await client.search(params: params)
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
        query,
        limit: platform?.searchAccountsLimit,
        order: order,
        local: local
    )
    await addAccounts(accounts)
    return accounts
  }
        
}

