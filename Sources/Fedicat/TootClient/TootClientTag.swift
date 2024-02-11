import TootSDK

extension TootClient {

  func refresh(tag name: String) async throws -> Tag {
    try await getTag(name)
  }
}
