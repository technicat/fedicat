import TootSDK

/// https://docs.joinmastodon.org/methods/trends/
/// todo - get max limits from Platform
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

  public func getTrendingPosts() async throws -> [Post] {
    let posts = try await client.getTrendingPosts(limit: trendingPostsLimit)
    await addAccounts(posts)
    return posts
  }

  private var trendingPostsLimit: Int {
    platform?.trendingPostsLimit ?? 0
  }

  public func getTrendingTags() async throws -> [Tag] {
    try await client.getTrendingTags(limit: trendingTagsLimit)
    // cache tags?
  }

  private var trendingTagsLimit: Int {
    platform?.trendingTagsLimit ?? 0
  }

  public func getTrendingLinks() async throws -> [TrendingLink] {
    try await client.getTrendingLinks(limit: trendingTagsLimit)
  }

  private var trendingLinksLimit: Int {
    platform?.trendingLinksLimit ?? 0
  }
}
