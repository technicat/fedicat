import TootSDK

extension Session {

  public func delete(_ list: List) async throws {
    // todo - check list of lists
    try await client.delete(list)
    await remove(list)
  }
}
