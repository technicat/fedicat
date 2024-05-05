import TootSDK

// doesn't seem like it does anything now (no way to display endorsed accounts)
// but keep it around until it's officially deprecated?
extension Session {

  public var supportsEndorse: Bool {
    false
  }

  public func endorse(_ account: Account) async throws -> Relationship {
    try await client.endorse(account)
  }

  public func unEndorse(_ account: Account) async throws -> Relationship {
    try await client.unEndorse(account)
  }
}
