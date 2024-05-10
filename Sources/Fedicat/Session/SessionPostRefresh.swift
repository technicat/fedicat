import TootSDK

extension Session {

  // pixelfed bug - nulls reblogged/favourited on like/boost
  public var requiresRefreshAfterBoostLike: Bool {
    // todo - maybe move this to Platform
    requiresRefreshAfterBoost || requiresRefreshAfterBoost
  }

  public var requiresRefreshAfterBoost: Bool {
      platform?.requiresRefreshAfterBoost ?? false
  }

    // rename to fave
  public var requiresRefreshAfterLike: Bool {
      platform?.requiresRefreshAfterFave ?? false
  }

  public func refresh(_ post: Post) async throws -> Post {
    let post = try await client.refresh(post)
    await addAccounts(post)
    return post
  }
}
