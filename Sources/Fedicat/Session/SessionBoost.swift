import TootSDK

extension Session {

  /// some platforms don't properly set isBoosted/isReblogged/isReposted
  /// used to be all the Misskey forks, not just Sharkey
  public var supportsIsBoosted: Bool {
    !isSharkey
  }

  public func boost(_ post: Post) async throws -> Post {
    guard !post.isBoosted else {
      return post
    }
    return try await client.boost(post)
  }

  public func unBoost(_ post: Post) async throws -> Post {
    guard post.isBoosted || supportsIsBoosted else {
      return post
    }
    return try await client.unBoost(post)
  }
}
