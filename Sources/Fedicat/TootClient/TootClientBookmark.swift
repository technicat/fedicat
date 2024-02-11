import TootSDK

extension TootClient {

  public func bookmark(_ post: Post) async throws -> Post {
    try await bookmarkPost(id: post.id)
  }

  public func unBookmark(_ post: Post) async throws -> Post {
    try await unbookmarkPost(id: post.id)
  }
}
