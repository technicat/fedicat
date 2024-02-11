import TootSDK

extension TootClient {

  public func refresh(tag name: String) async throws -> Tag {
    try await getTag(name)
  }
}
