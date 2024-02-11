import TootSDK

extension TootClient {

  public func endorse(_ account: Account) async throws -> Relationship {
    try await pinAccount(by: account.id)
  }

  public func unEndorse(_ account: Account) async throws -> Relationship {
    try await unpinAccount(by: account.id)
  }
}
