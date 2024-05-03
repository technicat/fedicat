import TootSDK

extension Session {

  public func getBoosters(
    of post: Post,
    _ page: PagedInfo? = nil
  ) async throws -> PagedResult<[Account]> {
    let result = try await client.getBoosters(
      of: post,
      page, limit: boosterPageLimit)
    await addAccounts(result.result)
    return result
  }

  public var boosterPageLimit: Int {
    platform?.boosterPageLimit ?? 80
  }
}
