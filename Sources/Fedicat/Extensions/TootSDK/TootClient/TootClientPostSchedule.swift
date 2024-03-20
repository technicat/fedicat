import Foundation
import TootSDK

extension TootClient {

    /// todo - handle poll
    /// todo - handle pleroma params (contentType and replyToConversationId)
    /// todo - handle idempotency
  public func schedule(
    text: String,
    replyTo: Post? = nil,
    media: [UploadedMediaAttachment]? = nil,
    sensitive: Bool? = nil,
    spoilerText: String? = nil,
    visibility: Post.Visibility,
    language: ISOCode,
    scheduledAt: Date
  ) async throws -> ScheduledPost {
    try await schedulePost(
      ScheduledPostParams(
        text: text,
        mediaIds: media?.map { $0.id },
        sensitive: sensitive,
        spoilerText: spoilerText,
        visibility: visibility,
        language: language.rawValue,
        scheduledAt: scheduledAt,
        inReplyToId: replyTo?.id
      ))
  }
}
