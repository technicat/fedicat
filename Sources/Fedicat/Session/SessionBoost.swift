import TootSDK

extension Session {

  /// some platforms don't properly set isBoosted/isReblogged/isReposted
  public var supportsIsBoosted: Bool {
    platform?.supportsIsBoosted ?? false
  }

  @discardableResult
  public func boost(_ post: Post) async throws -> Post {
    guard !post.isBoosted else {
        // assume we don't allow/want multiple boosts
        // even though some (like Sharkey) seem to allow it
        // probably inadvertently
        return post 
    }
    let post = try await client.boost(post)
      // mastodon spec says the boosted post is in the reblog field
    // of the boosting post which is returned
      // but some like Pixelfed return the boosted post
      let boosted = post.displayPost
      return boosted
  }

  @discardableResult
  public func unBoost(_ post: Post) async throws -> Post {
    guard post.isBoosted || supportsIsBoosted else {
      return post
    }
    return try await client.unBoost(post)
  }
}
