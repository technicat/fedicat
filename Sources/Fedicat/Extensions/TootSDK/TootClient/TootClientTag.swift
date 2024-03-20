import TootSDK

extension TootClient {

  /// https://docs.joinmastodon.org/methods/tags/#get
  public func refresh(_ tag: Tag) async throws -> Tag {
    try await getTag(tag.name)
  }
}
