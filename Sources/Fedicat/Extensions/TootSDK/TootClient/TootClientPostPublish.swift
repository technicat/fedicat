import TootSDK

extension TootClient {

    /// todo - handle poll
    /// todo - handle pleroma params (contentType and replyToConversationId)
  public func publish(
    text: String,
    replyTo: Post? = nil,
    mediaIds: [String]? = nil,
    sensitive: Bool? = nil,
    spoilerText: String? = nil,
    visibility: Post.Visibility,
    language: ISOCode
  ) async throws -> Post {
    try await publishPost(
      PostParams(
        post: text,
        mediaIds: mediaIds,
        inReplyToId: replyTo?.id,
        sensitive: sensitive,
        spoilerText: spoilerText,
        visibility: visibility,
        language: language.rawValue
      ))
  }
}
