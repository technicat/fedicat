import TootSDK

extension Session {

  public var canPinPost: Bool {
    isAuth && supportsPins
  }

  public var supportsPins: Bool {
    platform?.supportsPins ?? false
  }

  @discardableResult
  public func pin(_ post: Post) async throws -> Post {
    guard !post.isPinned else {
      return post
    }
    return try await client.pin(post)
  }

  @discardableResult
  public func unPin(_ post: Post) async throws -> Post {
    guard post.isPinned else {
      return post
    }
    return try await client.unPin(post)
  }
}
