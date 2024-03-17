import TootSDK

extension TootClient {

  /// https://docs.joinmastodon.org/methods/featured_tags/#get
  public func getFeaturedTags(of account: Account) async throws -> [FeaturedTag] {
    try await getFeaturedTags(forUser: account.id)
  }

}
