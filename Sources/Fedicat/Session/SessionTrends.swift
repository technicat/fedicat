import TootSDK

/// https://docs.joinmastodon.org/methods/trends/
/// todo - check max
/// todo - offset
extension Session {

  public var supportsTrends: Bool {
    supportsTrendingPosts || supportsTrendingTags || supportsTrendingLinks
  }

  public var supportsTrendingPosts: Bool {
    platform?.supportsTrendingPosts ?? false
  }

  public var supportsTrendingTags: Bool {
    platform?.supportsTrendingTags ?? false
  }

  public var supportsTrendingLinks: Bool {
    platform?.supportsTrendingLinks ?? false
  }

  public func getTrendingPosts(limit: Int = 40) async throws -> [Post] {
    let posts = try await client.getTrendingPosts(limit: orNil(limit, 20))
    await addAccounts(posts)
    return posts
  }

  public func getTrendingTags(limit: Int = 20) async throws -> [Tag] {
    try await client.getTrendingTags(limit: orNil(limit, 10))
    // cache tags?
  }

  public func getTrendingLinks(limit: Int = 20) async throws -> [TrendingLink] {
    try await client.getTrendingLinks(limit: orNil(limit, 10))
  }
}
