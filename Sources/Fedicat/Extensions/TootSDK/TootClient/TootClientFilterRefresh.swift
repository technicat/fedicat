import TootSDK

extension TootClient {

  // https://docs.joinmastodon.org/methods/filters/#get-one
  public func refresh(_ filter: Filter) async throws -> Filter {
    try await getFilter(id: filter.id)
  }
}
