import TootSDK

/// https://docs.joinmastodon.org/methods/featured_tags/
extension Session {

  public var canViewFeaturedTags: Bool {
    supportsFeaturedTags
  }

  public var supportsFeaturedTags: Bool {
    platform?.supportsFeaturedTags ?? false
  }

  public var canCreateFeaturedTags: Bool {
    isAuth && supportsFeaturedTags
  }

  private func setFeaturedTags(_ tags: [FeaturedTag]) {
    featuredTags = tags
  }

  // is this default ok? remove?
  public var maxFeaturedTags: Int {
    instance?.maxFeaturedTags ?? 10
  }

  public var hasMaxFeaturedTags: Bool {
    featuredTags.count == maxFeaturedTags
  }

  public var featuredTagsAvailable: Int {
    maxFeaturedTags - featuredTags.count
  }

  public func isFeaturedTag(_ tag: Tag) -> Bool {
    featuredTags.contains(where: { $0.name == tag.name })
  }

  public func getFeaturedTags(_ account: Account) async throws -> [FeaturedTag] {
    let tags = try await client.getFeaturedTags(of: account)
    if isMe(account) {
      setFeaturedTags(tags)
    }
    return tags
  }

  @discardableResult
  public func getFeaturedTags() async throws -> [FeaturedTag] {
    let tags = try await client.getFeaturedTags()
    setFeaturedTags(tags)
    return tags
  }

  @discardableResult
  public func feature(tag name: String) async throws -> FeaturedTag {
    try await client.feature(tag: name)
  }

  @discardableResult
  public func feature(_ tag: Tag) async throws -> FeaturedTag {
    try await client.feature(tag)
  }

  public func unFeature(_ tag: FeaturedTag) async throws {
    try await client.unFeature(tag)
  }
}
