import TootSDK

extension Session {

  public var supportsBlockedAccounts: Bool {
    platform?.supportsBlockedDomains ?? false
  }

  public var canBlockAccounts: Bool {
    isAuth && supportsBlockedDomains
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
