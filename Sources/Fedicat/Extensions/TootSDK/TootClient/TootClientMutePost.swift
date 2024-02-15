import TootSDK

extension TootClient {

  public func mute(_ post: Post) async throws -> Post {
    try await mutePost(id: post.id)
  }

  public func unMute(_ post: Post) async throws -> Post {
    try await unmutePost(id: post.id)
  }
}
