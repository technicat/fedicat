import TootSDK

extension Session {

  public var supportsAdmin: Bool {
    platform?.supportsAdmin ?? false
    // session.client.scopes.contains("admin:read") {
    //adminAccountsPageLimit > 0
  }

  // move the login stuff
  public var canLogin: Bool {
    !isAuth && supportsLogin
  }

  public var supportsLogin: Bool {
    platform?.supportsLogin ?? false
  }

  // just use v2
  public func getAdminAccounts(
    _ origin: AdminAccountOrigin? = nil,
    _ page: PagedInfo? = nil
  ) async throws -> PagedResult<[AdminAccount]> {
    let result = try await client.getAdminAccountsV2(
      params: AdminAccountsV2Params(origin: origin),
      page)
    await addAccounts(result.result)
    return result
  }

  private var adminAccountsPageLimit: Int {
    platform?.adminAccountsV2PageLimit ?? 0
  }

  @discardableResult
  public func approve(_ account: AdminAccount) async throws -> AdminAccount {
    try await client.approve(account)
  }

  @discardableResult
  public func reject(_ account: AdminAccount) async throws -> AdminAccount {
    try await client.reject(account)
  }

  @discardableResult
  public func unsensitive(_ account: AdminAccount) async throws -> AdminAccount {
    try await client.unsensitive(account)
  }

  @discardableResult
  public func unsuspend(_ account: AdminAccount) async throws -> AdminAccount {
    try await client.unsuspend(account)
  }

  @discardableResult
  public func unsilence(_ account: AdminAccount) async throws -> AdminAccount {
    try await client.unsilence(account)
  }
}
