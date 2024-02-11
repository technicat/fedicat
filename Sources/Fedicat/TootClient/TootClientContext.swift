import TootSDK

extension TootClient {

  public func getContext(of post: Post) async throws -> Context {
    try await getContext(id: post.id)
  }
}
