import TootSDK

extension Session {

  @discardableResult
  public func fave(_ post: Post) async throws -> Post {
    guard !post.isFaved else {
      return post
    }
    return try await client.fave(post)
  }

  @discardableResult
  public func unFave(_ post: Post) async throws -> Post {
    guard post.isFaved else {
      return post
    }
    return try await client.unFave(post)
  }
}
