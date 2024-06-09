import TootSDK

/// https://docs.joinmastodon.org/methods/trends/
extension Session {

  public var supportsTrends: Bool {
    supportsTrendingPosts || supportsTrendingTags || supportsTrendingLinks
  }

  public var supportsTrendingPosts: Bool {
    trendingPostsLimit > 0
  }

  public var supportsTrendingTags: Bool {
    trendingTagsLimit > 0
  }

  public var supportsTrendingLinks: Bool {
    trendingLinksLimit > 0
  }

  public func getTrendingPosts(limit: Int? = nil) async throws -> [Post] {
    let posts = try await client.getTrendingPosts(limit: limit)
    await addAccounts(posts)
    return posts
  }

  private var trendingPostsLimit: Int {
    platform?.trendingPostsLimit(isAuth) ?? 0
  }

  public func getTrendingTags() async throws -> [Tag] {
    try await client.getTrendingTags()
    // cache tags?
  }

  private var trendingTagsLimit: Int {
    platform?.trendingTagsLimit(isAuth) ?? 0
  }

  public func getTrendingLinks() async throws -> [TrendingLink] {
    try await client.getTrendingLinks()
  }

  private var trendingLinksLimit: Int {
    platform?.trendingLinksLimit(isAuth) ?? 0
  }
}
