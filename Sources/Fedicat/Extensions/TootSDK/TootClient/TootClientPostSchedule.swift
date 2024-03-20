import Foundation
import TootSDK

extension TootClient {

    /// todo - handle poll
    /// todo - handle pleroma params (contentType and replyToConversationId)
    /// todo - handle idempotent
  public func schedule(
    text: String,
    mediaIds: [String]? = nil,
    inReplyToId: String? = nil,
    sensitive: Bool? = nil,
    spoilerText: String? = nil,
    visibility: Post.Visibility,
    language: ISOCode,
    scheduledAt: Date
  ) async throws -> ScheduledPost {
    try await schedulePost(
      ScheduledPostParams(
        text: text,
        mediaIds: mediaIds,
        sensitive: sensitive,
        spoilerText: spoilerText,
        visibility: visibility,
        language: language.rawValue,
        scheduledAt: scheduledAt,
        inReplyToId: inReplyToId
      ))
  }
}
