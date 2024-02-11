import TootSDK

extension TootClient {
  public func refresh(_ post: ScheduledPost) async throws -> ScheduledPost? {
    try await getScheduledPost(id: post.id)
  }

  public func delete(_ post: ScheduledPost) async throws {
    try await deleteScheduledPost(id: post.id)
  }
}
