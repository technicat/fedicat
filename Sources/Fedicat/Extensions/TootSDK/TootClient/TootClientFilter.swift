import TootSDK

extension TootClient {

  public func delete(_ filter: Filter) async throws {
    try await deleteFilter(id: filter.id)
  }

  public func refresh(_ filter: Filter) async throws -> Filter {
    try await getFilter(id: filter.id)
  }
}
