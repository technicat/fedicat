import TootSDK

extension Session {

  @discardableResult
  public func block(_ account: Account) async throws -> Relationship {
    try await client.block(account)
  }

  @discardableResult
  public func unBlock(_ account: Account) async throws -> Relationship {
    try await client.unBlock(account)
  }
}
