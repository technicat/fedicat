import TootSDK

extension Session {

  public var supportsPostEdit: Bool {
    platform?.supportsPostEdit ?? false
  }

  public var supportsPostEditLanguage: Bool {
    platform?.supportsPostEditLanguage ?? false
  }

  // todo - poll
  // todo - attachments
  public func update(_ post: Post, draft: DraftPost) async throws -> Post {
    // try await upload(draft)
    try await client.update(
      post, text: draft.text,
      spoiler: draft.spoiler,
      sensitive: orNil(draft.isSensitive, false),
      language: draft.lang.rawValue,
      media: post.attachments.orNil)
    //  media: draft.uploaded)
  }
}
