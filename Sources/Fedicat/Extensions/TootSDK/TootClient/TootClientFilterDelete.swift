import TootSDK

extension TootClient {

  /// https://docs.joinmastodon.org/methods/filters/#delete
  public func delete(_ filter: Filter) async throws {
    try await deleteFilter(id: filter.id)
  }
}
