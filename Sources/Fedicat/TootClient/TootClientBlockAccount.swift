import TootSDK

extension TootClient {

  public func block(_ account: Account) async throws -> Relationship {
    try await blockAccount(by: account.id)
  }

  public func unBlock(_ account: Account) async throws -> Relationship {
    try await unblockAccount(by: account.id)
  }
}
