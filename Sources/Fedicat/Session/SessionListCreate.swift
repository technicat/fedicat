import TootSDK

extension Session {

  public func create(
    list name: String,
    policy: ListRepliesPolicy = .followed,
    notHome: Bool
  ) async throws {
    let list = try await client.create(list: name, repliesPolicy: policy, exclusive: notHome)
    await add(list)
  }
}
