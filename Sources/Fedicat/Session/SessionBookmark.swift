import TootSDK

extension Session {

  public var canBookmark: Bool {
    isAuth && supportsBookmark
  }

  public func canBookmark(_ post: Post) -> Bool {
    isAuth && supportsBookmark && (supportsBookmarkReply || !post.isReply)
  }

  // todo - move to platform
  public var supportsBookmarkReply: Bool {
    !(platform is Friendica)
  }

  public var supportsBookmark: Bool {
    supports(.bookmarks)
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
