import TootSDK

extension TootClient {

  public func refresh(_ tag: Tag) async throws -> Tag {
    try await getTag(tag.name)
  }
}
