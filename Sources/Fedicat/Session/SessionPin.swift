import TootSDK

extension Session {

  public var supportsPins: Bool {
    platform?.supportsPins ?? false
  }

  public func pin(_ post: Post) async throws -> Post {
    guard !post.isPinned else {
      return post
    }
    return try await client.pin(post)
  }

  public func unPin(_ post: Post) async throws -> Post {
    guard post.isPinned else {
      return post
    }
    return try await client.unPin(post)
  }
}
