import TootSDK

extension TootClient {

  /// https://docs.joinmastodon.org/methods/lists/#delete
  public func delete(_ list: List) async throws {
    try await deleteList(id: list.id)
  }
}
