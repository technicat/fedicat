import TootSDK

extension TootClient {

  /// https://docs.joinmastodon.org/methods/statuses/#get
  public func refresh(_ post: Post) async throws -> Post {
    try await getPost(id: post.id)
  }
}
