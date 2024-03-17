import TootSDK

extension TootClient {

  /// should use the same verb for notifications and announcements
  /// https://docs.joinmastodon.org/methods/conversations/#read
  public func mark(_ conversation: Conversation) async throws -> Conversation {
    try await setConversationAsRead(id: conversation.id)
  }
}
