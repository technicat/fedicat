import TootSDK

extension Session {

  // pixelfed bug - nulls reblogged/favourited on like/boost
  public var requiresRefreshAfterBoostLike: Bool {
    // todo - maybe move this to Platform
    platform is Pixelfed
  }

  public func refresh(_ post: Post) async throws -> Post {
    let post = try await client.refresh(post)
    await addAccounts(post)
    return post
  }
}
