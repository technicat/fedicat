import TootSDK

extension TootClient {

  /// todo - handle pleroma params (contentType and replyToConversationId)
  /// https://docs.joinmastodon.org/methods/statuses/#create
  public func publish(
    text: String,
    replyTo: Post? = nil,
    media: [UploadedMediaAttachment]? = nil,
    poll: CreatePoll? = nil,
    sensitive: Bool? = nil,
    spoilerText: String? = nil,
    visibility: Post.Visibility,
    language: ISOCode
  ) async throws -> Post {
    try await publishPost(
      PostParams(
        post: text,
        mediaIds: media?.map { $0.id },
        poll: poll,
        inReplyToId: replyTo?.id,
        sensitive: sensitive,
        spoilerText: spoilerText,
        visibility: visibility,
        language: language.rawValue
      ))
  }
}
