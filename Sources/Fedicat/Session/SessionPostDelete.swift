import TootSDK

extension Session {

  public func delete(_ post: Post) async throws -> Post {
    let post = try await client.delete(post)
    post.content = "*deleted*"  // localize
    return post
  }
}
