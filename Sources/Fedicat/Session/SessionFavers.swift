import TootSDK

extension Session {

  public var supportsFavers: Bool {
    faversPageLimit > 0
  }

  public func getFavers(
    of post: Post, _ page: PagedInfo? = nil
  ) async throws -> PagedResult<[Account]> {
    let result = try await client.getFavers(of: post, page)
    await addAccounts(result.result)
    return result
  }

  private var faversPageLimit: Int {
    platform?.faversPageLimit ?? 0
  }
}
