import TootSDK

extension Session {

  public var supportsPostSource: Bool {
    platform?.supportsPostSource ?? false
  }

  public func getSource(of post: Post) async throws -> PostSource {
    try await client.getSource(of: post)
  }
}
