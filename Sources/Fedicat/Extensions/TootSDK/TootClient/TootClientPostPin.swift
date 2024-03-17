import TootSDK

extension TootClient {

  /// https://docs.joinmastodon.org/methods/statuses/#pin
  public func pin(_ post: Post) async throws -> Post {
    try await pinPost(id: post.id)
  }

  /// https://docs.joinmastodon.org/methods/statuses/#unpin
  public func unPin(_ post: Post) async throws -> Post {
    try await unpinPost(id: post.id)
  }
}
