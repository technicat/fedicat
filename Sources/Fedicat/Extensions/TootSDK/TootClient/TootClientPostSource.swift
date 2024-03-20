import TootSDK

extension TootClient {

  /// https://docs.joinmastodon.org/methods/statuses/#source
  public func getSource(of post: Post) async throws -> PostSource {
    try await getPostSource(id: post.id)
  }
}
