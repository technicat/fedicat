import TootSDK

extension TootClient {

  /// https://docs.joinmastodon.org/methods/accounts/#get
  public func refresh(_ account: Account) async throws -> Account {
    try await getAccount(by: account.id)
  }
}
