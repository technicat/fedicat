import TootSDK

// can't tell that this actually works
// and there's no API to query endorsed accounts for a profile
// should we rename this to pin?
extension TootClient {

  /// https://docs.joinmastodon.org/methods/accounts/#pin
  public func endorse(_ account: Account) async throws -> Relationship {
    try await pinAccount(by: account.id)
  }

  /// https://docs.joinmastodon.org/methods/accounts/#unpin
  public func unEndorse(_ account: Account) async throws -> Relationship {
    try await unpinAccount(by: account.id)
  }
}
