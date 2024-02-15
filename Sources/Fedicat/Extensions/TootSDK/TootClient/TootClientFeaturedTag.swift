import TootSDK

extension TootClient {

  public func getFeaturedTags(of account: Account) async throws -> [FeaturedTag] {
    try await getFeaturedTags(forUser: account.id)
  }

}
