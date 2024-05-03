import TootSDK

extension Session {

  public var supportsRemoveFollower: Bool {
    platform?.supportsRemoveFollower ?? false
  }

  @discardableResult
  public func removeFromFollowers(account: Account) async throws -> Relationship {
    try await client.removeFromFollowers(account)
  }
}
