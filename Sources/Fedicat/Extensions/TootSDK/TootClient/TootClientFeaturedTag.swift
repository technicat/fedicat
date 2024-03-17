import TootSDK

extension TootClient {

  /// https://docs.joinmastodon.org/methods/featured_tags/#get
  public func getFeaturedTags(of account: Account) async throws -> [FeaturedTag] {
    try await getFeaturedTags(forUser: account.id)
  }

  /// https://docs.joinmastodon.org/methods/featured_tags/#feature
  public func feature(_ tag: Tag) async throws -> FeaturedTag {
    try await feature(tag: tag.name)
  }

  public func feature(tag name: String) async throws -> FeaturedTag {
    try await featureTag(name: name)
  }

  /// https://docs.joinmastodon.org/methods/featured_tags/#unfeature
  public func unFeature(_ tag: FeaturedTag) async throws {
    try await unfeatureTag(id: tag.id)
  }
}
