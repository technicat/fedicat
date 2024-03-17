import TootSDK

extension TootClient {

  public func refresh(_ filter: Filter) async throws -> Filter {
    try await getFilter(id: filter.id)
  }
}
