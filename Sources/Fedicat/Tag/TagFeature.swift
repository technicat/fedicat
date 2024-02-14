import TootSDK

extension TootClient {
  func feature(_ tag: Tag) async throws -> FeaturedTag {
    try await feature(tag: tag.name)
  }

  func unFeature(_ tag: FeaturedTag) async throws {
    try await unfeatureTag(id: tag.id)
  }

  func feature(tag name: String) async throws -> FeaturedTag {
    return try await featureTag(name: name)
  }
}
