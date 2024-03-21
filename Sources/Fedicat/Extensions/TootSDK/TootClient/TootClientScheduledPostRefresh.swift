import TootSDK

extension TootClient {

  /// https://docs.joinmastodon.org/methods/scheduled_statuses/#get-one
  public func refresh(_ post: ScheduledPost) async throws -> ScheduledPost? {
    try await getScheduledPost(id: post.id)
  }

}
