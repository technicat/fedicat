import Foundation
import TootSDK

extension Session {

  @discardableResult
  public func update(
    _ post: ScheduledPost,
    date: Date
  ) async throws -> ScheduledPost? {
    try await client.update(post, date: date)
  }
}
