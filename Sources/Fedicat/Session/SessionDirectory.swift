import TootSDK

extension Session {

  public var supportsDirectory: Bool {
    directoryLimit > 0
  }

  public var supportsPublicDirectory: Bool {
    supportsDirectory && (platform?.supportsPublicDirectory ?? false)
  }

  public func getLocalDirectory(
    offset: Int? = nil,
    order: ProfileDirectoryParams.Order? = nil
  ) async throws -> [Account] {
    let accounts = try await client.getLocalDirectory(
      order: order,
      offset: offset,
      limit: directoryLimit
    )
    await addAccounts(accounts)
    return accounts
  }

  public func getGlobalDirectory(
    offset: Int? = nil,
    order: ProfileDirectoryParams.Order? = nil
  ) async throws -> [Account] {
    let accounts = try await client.getGlobalDirectory(
      order: order,
      offset: offset,
      limit: directoryLimit
    )
    await addAccounts(accounts)
    return accounts
  }

  private var directoryLimit: Int {
    platform?.directoryLimit ?? 0
  }
}
