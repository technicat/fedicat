import TootSDK

extension TootClient {

    /// todo - handle poll
    /// todo - handle pleroma params (contentType and replyToConversationId)
  public func publish(
    post: String,
    mediaIds: [String]? = nil,
    inReplyToId: String? = nil,
    sensitive: Bool? = nil,
    spoilerText: String? = nil,
    visibility: Post.Visibility,
    language: ISOCode
  ) async throws -> Post {
    try await publishPost(
      PostParams(
        post: post,
        mediaIds: mediaIds,
        inReplyToId: inReplyToId,
        sensitive: sensitive,
        spoilerText: spoilerText,
        visibility: visibility,
        language: language.rawValue
      ))
  }
}
