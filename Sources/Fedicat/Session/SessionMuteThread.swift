import TootSDK

/// https://docs.joinmastodon.org/methods/statuses/#mute
/// todo - rename in TootSDK and Platform, also?
extension Session {

  public var canMuteThread: Bool {
    isAuth && supportsMuteThread
  }

  public var supportsMuteThread: Bool {
    platform?.supportsMutePost ?? false
  }

  public func muteThread(of post: Post) async throws -> Post {
    guard !post.isMuted else {
      return post
    }
    return try await client.mute(post)
  }

  public func unMuteThread(of post: Post) async throws -> Post {
    guard post.isMuted else {
      return post
    }
    return try await client.unMute(post)
  }
}
