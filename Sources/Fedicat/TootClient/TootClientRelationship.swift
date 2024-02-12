import TootSDK

extension TootClient {

  public func getRelationship(with account: Account) async throws -> Relationship? {
    let rships = try await getRelationships(with: [account])
    guard !rships.isEmpty else {  // should check == 1?
      return nil
    }
    return rships.first
  }

  public func getRelationships(with accounts: [Account]) async throws -> [Relationship] {
    try await getRelationships(by: accounts.map { $0.id })
  }
}
