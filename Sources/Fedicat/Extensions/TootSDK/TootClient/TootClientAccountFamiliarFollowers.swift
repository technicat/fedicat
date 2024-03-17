import TootSDK

/// https://docs.joinmastodon.org/methods/accounts/#familiar_followers
extension TootClient {

  public func getFamiliarFollowers(of accounts: [Account]) async throws -> [FamiliarFollowers] {
    try await getFamiliarFollowers(by: accounts.map { $0.id })
  }

  public func getFamiliarFollowers(of account: Account) async throws -> [Account] {
    let result = try await getFamiliarFollowers(of: [account])
    return result[0].accounts
  }
}
