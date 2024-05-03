import TootSDK

extension Session {

  public func delete(_ post: ScheduledPost) async throws {
    try await client.delete(post)
  }
}
