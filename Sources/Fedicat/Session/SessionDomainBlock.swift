import TootSDK

extension Session {

    // check limit
  public var supportsDomainBlocks: Bool {
    isAuth && (platform?.supportsDomainBlocks ?? false)
  }

  public var canBlockDomains: Bool {
    isAuth && supportsDomainBlocks
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

  private var blockedDomainsLimit: Int? {
      platform?.blockedDomainsLimit
//    switch client.flavour {
//    //    case .pixelfed:
//    //      return 40
//    default:
//      // use max limit to minimize queries
//      return 200
//    }
  }

  public func blockDomain(in account: Account) async throws {
    guard let domain = account.domain else {
        // we're going to check at the UI level anyway
     // throw SessionError.noDomain
        return
    }
    try await block(domain: domain)
  }
}
