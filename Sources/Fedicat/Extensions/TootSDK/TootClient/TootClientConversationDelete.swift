import TootSDK

extension TootClient {

  /// https://docs.joinmastodon.org/methods/conversations/#delete
  public func delete(_ conversation: Conversation) async throws {
    try await deleteConversation(id: conversation.id)
  }
}
