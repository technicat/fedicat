import TootSDK

extension Session {

  /// convenience function to fetch multiple pages
  /// default maxPages is arbitrary, but we don't want go nuts
  func getPages<T>(maxPages: Int = 5, query: (PagedInfo?) async throws -> PagedResult<T>?)
    async throws
  {
    var count = 0
    var page = try await query(nil)
    while let prev = page?.previousPage, count < maxPages {
      count += 1
      page = try await query(prev)
    }
  }
}
