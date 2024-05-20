import TootSDK

extension Session {

  public var supportsSearchAccounts: Bool {
    platform?.supportsSearchAccounts ?? false
  }

  public var supportsSearchPosts: Bool {
    platform?.supportsSearchPosts ?? false
  }

  public var supportsSearchTags: Bool {
    platform?.supportsSearchTags ?? false
  }

  // todo - page
  /// https://docs.joinmastodon.org/methods/search/#v2
  public func search(
    _ query: String,
    following: Bool = false,
    excludeUnreviewed: Bool = false
  ) async throws -> Search {
    let result = try await client.search(
      for: query,
      following: following,
      excludeUnreviewed: excludeUnreviewed,
      limit: platform?.searchLimit)
    await addAccounts(result.accounts)
    await addAccounts(result.posts)
    // maybe cache tags
    return result
  }
}
