import TootSDK

extension TootClient {
    
    func follow(tag name: String) async throws -> Tag {
      try await followTag(name)
    }
    
    func unFollow(tag name: String) async throws -> Tag {
      try await unfollowTag(name)
    }
}
