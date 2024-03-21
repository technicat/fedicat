import Foundation
import TootSDK

extension TootClient {

  /// https://docs.joinmastodon.org/methods/scheduled_statuses/#update
  public func update(
    _ post: ScheduledPost,
    date: Date
  ) async throws -> ScheduledPost? {
    return try await updateScheduledPostDate(
      id: post.id,
      ScheduledPostParams(
        visibility: .direct,  // kludge, not used
        scheduledAt: date
      ))
  }
}
