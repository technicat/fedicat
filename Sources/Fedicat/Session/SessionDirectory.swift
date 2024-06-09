import TootSDK

extension Session {

  public var supportsDirectory: Bool {
    directoryLimit > 0
  }

  public func getLocalDirectory(
    offset: Int? = nil,
    order: ProfileDirectoryParams.Order? = nil,
    limit: Int? = nil
  ) async throws -> [Account] {
    let accounts = try await client.getLocalDirectory(
      order: order,
      offset: offset,
      limit: limit
    )
    await addAccounts(accounts)
    return accounts
  }

  public func getGlobalDirectory(
    offset: Int? = nil,
    order: ProfileDirectoryParams.Order? = nil,
    limit: Int? = nil
  ) async throws -> [Account] {
    let accounts = try await client.getGlobalDirectory(
      order: order,
      offset: offset,
      limit: limit)
    await addAccounts(accounts)
    return accounts
  }

  private var directoryLimit: Int {
    platform?.directoryLimit(isAuth) ?? 0
  }
}
