import TootSDK

extension Session {

  public func getLists(containing account: Account) async throws -> [List] {
    let lists = try await client.getLists(containing: account)
    for list in lists {
      await add(list)  // necessary?
    }
    return lists
  }
}
