import TootSDK

extension Session {

  public func getBlockedAccounts(_ page: PagedInfo? = nil) async throws -> PagedResult<
    [Account]
  > {
    let result = try await client.getBlockedAccounts(
      page,
      limit: blockedAccountsLimit)
    await addAccounts(result.result)
    return result
  }

  private var blockedAccountsLimit: Int {
    switch client.flavour {
//    case .pixelfed:
//      return 40
    default:
      // use max limit to minimize queries
      return 80
    }
  }
}
