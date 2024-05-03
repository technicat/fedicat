import TootSDK

extension Session {

  public var supportsPostHistory: Bool {
    platform?.supportsPostHistory ?? false
  }

  public func getHistory(of post: Post) async throws -> [PostEdit] {
    try await client.getHistory(of: post)
  }
}
