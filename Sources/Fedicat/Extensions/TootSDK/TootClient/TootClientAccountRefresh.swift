import TootSDK

extension TootClient {

  public func refresh(_ account: Account) async throws -> Account {
    try await getAccount(by: account.id)
  }
}
