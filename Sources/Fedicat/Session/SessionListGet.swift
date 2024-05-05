import TootSDK

extension Session {

  public func getLists() async throws -> [List] {
    let lists = try await client.getLists()
    for list in lists {
      await add(list)
    }
    return lists
  }
}
