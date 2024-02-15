import TootSDK

extension TootClient {

  public func follow(tag name: String) async throws -> Tag {
    try await followTag(name)
  }

  public func unFollow(tag name: String) async throws -> Tag {
    try await unfollowTag(name)
  }
}
