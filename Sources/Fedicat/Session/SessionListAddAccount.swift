import TootSDK

extension Session {

  /// add account to list
  public func add(to list: List, account: Account) async throws {
    try await client.add(to: list, account: account)
  }

  // todo - add multiple-account version?

}
