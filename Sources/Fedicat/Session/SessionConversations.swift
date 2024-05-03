import TootSDK

extension Session {

  public func getConversations(_ page: PagedInfo? = nil) async throws
    -> PagedResult<[Conversation]>
  {
    let result = try await client.getConversations(
      page,
      limit: conversationsPageLimit)
    for convo in result.result {
      await addAccounts(convo.accounts)
    }
    return result
  }

  // todo - get from Platform
  private var conversationsPageLimit: Int {
    40
  }

  public func delete(_ conversation: Conversation) async throws {
    try await client.delete(conversation)
  }

  @discardableResult
  public func mark(_ conversation: Conversation) async throws -> Conversation {
    try await client.mark(conversation)
  }
}
