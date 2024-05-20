import TootSDK

extension Session {

  public var supportsFindAccounts: Bool {
    platform?.supportsFindAccounts ?? false
  }

  public func findAccounts(
    _ query: String,
    order: ProfileDirectoryParams.Order? = nil,
    local: Bool? = nil
  ) async throws -> [Account] {
    let accounts = try await client.findAccounts(
      with: query,
      limit: platform?.findAccountsLimit,
      order: order,
      local: local
    )
    await addAccounts(accounts)
    return accounts
  }

}
