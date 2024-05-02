import TootSDK

extension Session {

  @discardableResult
  public func delete(_ post: Post) async throws -> Post {
    let post = try await client.delete(post)
    // ideally the post should disappear from view
    // but if not, show that it's really deleted
    post.content = "*deleted*"  // localize
    return post
  }
}
