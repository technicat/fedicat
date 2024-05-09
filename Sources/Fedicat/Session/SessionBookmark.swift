import TootSDK

extension Session {

  public var canBookmark: Bool {
    isAuth && supportsBookmark
  }

  public func canBookmark(_ post: Post) -> Bool {
    isAuth && supportsBookmark && (!(platform is Friendica) || !post.isReply)
  }

  public var supportsBookmark: Bool {
    platform?.supports(.bookmarks) ?? false
  }

  @discardableResult
  public func bookmark(_ post: Post) async throws -> Post {
    guard !post.isBooked else {
      return post
    }
    return try await client.bookmark(post)
  }

  @discardableResult
  public func unBookmark(_ post: Post) async throws -> Post {
    guard post.isBooked else {
      return post
    }
    return try await client.unBookmark(post)
  }
}
