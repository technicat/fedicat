import TootSDK

extension TootClient {

  public func getHistory(of post: Post) async throws -> [PostEdit] {
    try await getHistory(id: post.id)
  }
}
