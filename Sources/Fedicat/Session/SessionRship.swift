import TootSDK

extension Session {

  public var supportsRelationshipWithSuspended: Bool {
    platform?.supportsRelationshipWithSuspended ?? false
  }

  public func getRship(with account: Account) async throws -> Relationship? {
    try await client.getRelationship(
      with: account, withSuspended: supportsRelationshipWithSuspended)
  }
}
