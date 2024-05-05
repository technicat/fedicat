import TootSDK

extension Session {

  public func remove(from list: List, account: Account) async throws {
    try await client.remove(from: list, account: account)
  }
}
