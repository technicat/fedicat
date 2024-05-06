import TootSDK

extension Session {

  public var supportsDirectory: Bool {
    platform?.supportsDirectory ?? false
  }

  public var supportsPublicDirectory: Bool {
    // todo - move this to platform
    supportsDirectory && !(platform is Mitra)
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

  private var directoryLimit: Int? {
    platform?.directoryLimit
  }
}
