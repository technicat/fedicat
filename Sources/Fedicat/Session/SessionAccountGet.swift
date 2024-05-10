import TootSDK

extension Session {

  public func refresh(_ account: Account) async throws -> Account {
    let account = try await client.refresh(account)
    await addAccount(account)
    return account
  }

  public func getAccount(_ id: String) async throws -> Account {
    if let account = accounts[id] {
      return account
    } else {
      let account = try await client.getAccount(by: id)
      await addAccount(account)
      return account
    }
  }

  @discardableResult
  public func getAccount() async throws -> Account {
    let account = try await client.getAccount()
    await setAccount(account)
    return account
  }
}
