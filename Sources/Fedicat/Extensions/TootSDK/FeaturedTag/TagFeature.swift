import TootSDK

extension TootClient {
  public func feature(_ tag: Tag) async throws -> FeaturedTag {
    try await feature(tag: tag.name)
  }

  public func unFeature(_ tag: FeaturedTag) async throws {
    try await unfeatureTag(id: tag.id)
  }

  public func feature(tag name: String) async throws -> FeaturedTag {
    return try await featureTag(name: name)
  }
}
