import TootSDK

extension TootClient {

  /// https://docs.joinmastodon.org/methods/statuses/#bookmark
  public func bookmark(_ post: Post) async throws -> Post {
    try await bookmarkPost(id: post.id)
  }

  /// https://docs.joinmastodon.org/methods/statuses/#unbookmark
  public func unBookmark(_ post: Post) async throws -> Post {
    try await unbookmarkPost(id: post.id)
  }
}
