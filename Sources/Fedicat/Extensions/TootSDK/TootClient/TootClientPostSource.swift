import TootSDK

extension TootClient {

  public func getSource(of post: Post) async throws -> PostSource {
    try await getPostSource(id: post.id)
  }
}
