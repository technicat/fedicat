import TootSDK

extension Session {

  public func getBoosters(
    of post: Post,
    _ page: PagedInfo? = nil,
    limit: Int = 80
  ) async throws -> PagedResult<[Account]> {
    let result = try await client.getBoosters(
      of: post,
      page, limit: orNil(limit, 40))
    await addAccounts(result.result)
    return result
  }
}
