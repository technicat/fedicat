import TootSDK

extension Session {

  public var supportsBlockedDomains: Bool {
    blockedDomainsLimit > 0
  }

  public var canBlockDomains: Bool {
    isAuth && supportsBlockedDomains
  }

  public func block(domain: String) async throws {
    try await client.block(domain: domain)
  }

  public func unBlock(domain: String) async throws {
    try await client.unBlock(domain: domain)
  }

  public func getBlockedDomains(_ page: PagedInfo? = nil) async throws
    -> PagedResult<[String]>
  {
    try await client.userGetDomainBlocks(
      page,
      limit: blockedDomainsLimit)
  }

  private var blockedDomainsLimit: Int {
    platform?.blockedDomainsLimit ?? 0
  }

  public func blockDomain(in account: Account) async throws {
    guard let domain = account.domain else {
      throw SessionError.noDomain
    }
    try await block(domain: domain)
  }
}
