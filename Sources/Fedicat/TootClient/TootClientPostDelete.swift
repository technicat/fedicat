import TootSDK

extension TootClient {

  public func delete(_ post: Post) async throws -> Post {
    do {
      let post = try await deletePost(id: post.id)
      return post
    } catch is DecodingError {  // friendica returns []
      let post = Post(from: post)
      post.content = nil  // should clear other stuff?
      return post
    }
  }
}

