import TootSDK

extension Session {

  public func publish(_ draft: DraftPost) async throws {
    try await upload(draft)
    do {
      if draft.schedule {
        try await publish(later: draft)
      } else {
        try await publish(now: draft)
      }
    }
  }

  // todo - poll
  @discardableResult public func publish(now draft: DraftPost) async throws -> Post {
    try await client.publish(
      text: draft.text,
      replyTo: draft.replyTo,
      media: draft.uploads.orNil,
      sensitive: orNil(draft.isSensitive, false),
      spoilerText: draft.spoiler,
      visibility: draft.visibility,
      language: draft.lang
    )
  }

  // todo - poll
  @discardableResult public func publish(later draft: DraftPost) async throws -> ScheduledPost {
    let post = try await client.schedule(
      text: draft.text,
      replyTo: draft.replyTo,
      media: draft.uploads.orNil,
      sensitive: orNil(draft.isSensitive, false),
      spoilerText: draft.spoiler,
      visibility: draft.visibility,
      language: draft.lang,
      scheduledAt: draft.date)
    hasSchedule = true
    return post
  }
}
