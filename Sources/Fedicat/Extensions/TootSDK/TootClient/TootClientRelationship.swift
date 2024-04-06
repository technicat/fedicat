import TootSDK

// https://docs.joinmastodon.org/methods/accounts/#relationships
extension TootClient {

  public func getRelationship(with account: Account) async throws -> Relationship? {
    let rships = try await getRelationships(with: [account], includeSuspended: true)
    guard !rships.isEmpty else {  // should check == 1?
      return nil
    }
    return rships.first
  }

  public func getRelationships(with accounts: [Account], includeSuspended: Bool = false)
    async throws -> [Relationship]
  {
      try await getRelationships(by: accounts.map { $0.id }, params: RelationshipParams(withSuspended: includeSuspended))
  }
}
