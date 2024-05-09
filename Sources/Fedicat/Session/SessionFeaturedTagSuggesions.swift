import TootSDK

/// https://docs.joinmastodon.org/methods/featured_tags/
extension Session {

  public func getFeaturedTagsSuggestions() async throws -> [Tag] {
    let tags = try await client.getFeaturedTagsSuggestions()
    suggestedTags = tags
    return tags
  }
}
