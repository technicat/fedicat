import TootSDK

extension TootClient {

  public func removeFromFollowers(_ account: Account) async throws -> Relationship {
    try await removeAccountFromFollowers(by: account.id)
  }
}
