import TootSDK

extension TootClient {

  public func pin(_ post: Post) async throws -> Post {
    try await pinPost(id: post.id)
  }

  public func unPin(_ post: Post) async throws -> Post {
    try await unpinPost(id: post.id)
  }
}
