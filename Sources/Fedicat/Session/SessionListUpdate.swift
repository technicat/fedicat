import TootSDK

extension Session {

  @discardableResult
  public func update(
    _ list: List,
    name: String,
    policy: ListRepliesPolicy,
    notHome: Bool
  ) async throws -> List {
    let newlist = try await client.update(
      list,
      name: name, repliesPolicy: policy, exclusive: notHome)
    await add(newlist)
    return newlist
  }
}
