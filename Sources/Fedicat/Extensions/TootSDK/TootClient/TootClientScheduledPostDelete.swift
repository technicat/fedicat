import TootSDK

extension TootClient {

  /// https://docs.joinmastodon.org/methods/scheduled_statuses/#cancel
  public func delete(_ post: ScheduledPost) async throws {
    try await deleteScheduledPost(id: post.id)
  }
}
