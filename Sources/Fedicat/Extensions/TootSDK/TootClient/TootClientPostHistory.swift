import TootSDK

extension TootClient {

  /// https://docs.joinmastodon.org/methods/statuses/#history
  public func getHistory(of post: Post) async throws -> [PostEdit] {
    try await getHistory(id: post.id)
  }
}
