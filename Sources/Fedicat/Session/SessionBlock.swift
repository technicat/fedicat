import TootSDK

extension Session {

  public var canBlockAccounts: Bool {
    isAuth && supportsBlockedAccounts
  }

  @discardableResult
  public func block(_ account: Account) async throws -> Relationship {
    try await client.block(account)
  }

  @discardableResult
  public func unBlock(_ account: Account) async throws -> Relationship {
    try await client.unBlock(account)
  }
}
