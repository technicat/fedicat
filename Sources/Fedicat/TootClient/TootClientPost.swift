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

  public func refresh(_ post: Post) async throws -> Post {
    try await getPost(id: post.id)
  }

  public func getHistory(of post: Post) async throws -> [PostEdit] {
    try await getHistory(id: post.id)
  }

  public func getSource(of post: Post) async throws -> PostSource {
    try await getPostSource(id: post.id)
  }
}
