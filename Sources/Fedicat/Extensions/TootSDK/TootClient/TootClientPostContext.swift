import TootSDK

extension TootClient {

  /// https://docs.joinmastodon.org/methods/statuses/#context
  public func getContext(of post: Post) async throws -> Context {
    try await getContext(id: post.id)
  }
}
