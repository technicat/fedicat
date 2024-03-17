import TootSDK

extension TootClient {

  /// https://docs.joinmastodon.org/methods/lists/#get-one
  public func refresh(_ list: List) async throws -> List {
    try await getList(id: list.id)
  }
}
