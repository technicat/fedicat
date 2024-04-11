import TootSDK

// https://docs.joinmastodon.org/methods/accounts/#relationships
extension TootClient {

  public func getRelationship(with account: Account, withSuspended: Bool? = nil) async throws -> Relationship? {
      let rships = try await getRelationships(with: [account], withSuspended: withSuspended)
    guard !rships.isEmpty else {  // should check == 1?
      return nil
    }
    return rships.first
  }

  public func getRelationships(with accounts: [Account], withSuspended: Bool? = nil)
    async throws -> [Relationship]
  {
    try await getRelationships(
      by: accounts.map { $0.id }, params: RelationshipParams(withSuspended: withSuspended))
  }
}
