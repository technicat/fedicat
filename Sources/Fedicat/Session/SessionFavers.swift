import TootSDK

extension Session {

  public func getFavers(
    of post: Post,
    _ page: PagedInfo? = nil
  ) async throws -> PagedResult<[Account]> {
    let result = try await client.getFavers(
      of: post,
      page,
      limit: faversPageLimit)
    await addAccounts(result.result)
    return result
  }

  private var faversPageLimit: Int { 80 }  // todo - get from Platform
}
