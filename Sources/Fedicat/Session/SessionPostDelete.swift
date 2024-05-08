import TootSDK

extension Session {

  @discardableResult
  public func delete(_ post: Post) async throws -> Post {
    if supportsDeleteAndEditPost {
      let post = try await client.deleteAndEdit(post)
      // ideally the post should disappear from view
      // but if not, show that it's really deleted
      post.content = "*deleted*"  // localize
      return post
    } else {
      try await client.delete(post)
      post.content = "*deleted*"  // localize
      return post
    }
  }

  private var supportsDeleteAndEditPost: Bool {
    false  // todo - move to platform
  }
}
