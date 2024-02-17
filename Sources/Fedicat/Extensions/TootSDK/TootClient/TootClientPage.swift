import TootSDK

extension TootClient {

  // doesn't need to be in TootClient, really
  // default maxPages is arbitrary, but we don't want go nuts
  public func getPages<T>(maxPages: Int = 5, query: (PagedInfo?) async throws -> PagedResult<T>)
    async throws
  {
    var count = 0
    var page = try await query(nil)
    while page.previousPage != nil && count < maxPages {
      count += 1
      page = try await query(page.previousPage)
    }
  }
}
