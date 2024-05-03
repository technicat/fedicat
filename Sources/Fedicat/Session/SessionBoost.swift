import TootSDK

extension Session {

  /// some platforms don't properly set isBoosted/isReblogged/isReposted
  public var supportsIsBoosted: Bool {
    platform?.supportsIsBoosted ?? false
  }

  @discardableResult
  public func boost(_ post: Post) async throws -> Post {
    guard !post.isBoosted else {
      return post
    }
    return try await client.boost(post)
  }

  @discardableResult
  public func unBoost(_ post: Post) async throws -> Post {
    guard post.isBoosted || supportsIsBoosted else {
      return post
    }
    return try await client.unBoost(post)
  }
}
