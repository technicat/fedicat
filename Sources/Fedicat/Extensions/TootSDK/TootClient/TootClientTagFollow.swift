import TootSDK

extension TootClient {

  /// https://docs.joinmastodon.org/methods/tags/#follow
  public func follow(tag name: String) async throws -> Tag {
    try await followTag(name)
  }

  /// https://docs.joinmastodon.org/methods/tags/#unfollow
  public func unFollow(tag name: String) async throws -> Tag {
    try await unfollowTag(name)
  }
}
