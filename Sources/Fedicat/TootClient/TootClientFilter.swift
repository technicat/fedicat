import TootSDK

extension TootClient {

    public func delete(_ filter: Filter) async throws {
      try await deleteFilter(id: filter.id)
    }
}
