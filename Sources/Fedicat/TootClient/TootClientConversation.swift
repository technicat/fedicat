import TootSDK

extension TootClient {
  public func delete(_ conversation: Conversation) async throws {
    try await deleteConversation(id: conversation.id)
  }

  public func markRead(_ conversation: Conversation) async throws -> Conversation {
    try await setConversationAsRead(id: conversation.id)
  }
}
