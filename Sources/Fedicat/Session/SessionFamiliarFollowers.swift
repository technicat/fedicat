import TootSDK

extension Session {

  public var canReadFamiliarFollowers: Bool {
    isAuth && supportsFamiliarFollowers
  }

  public var supportsFamiliarFollowers: Bool {
    platform?.supportsFamiliarFollowers ?? false
  }

  public func getFamiliarFollowers(of account: Account) async throws -> [Account] {
    let accounts = try await client.getFamiliarFollowers(of: account)
    await addAccounts(accounts)
    return accounts
  }
}
