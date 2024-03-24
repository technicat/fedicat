import TootSDK

extension TootClient {

  /// todo - add mediaAttributes
  /// todo - add poll
  /// https://docs.joinmastodon.org/methods/statuses/#edit
  public func update(
    _ post: Post, text: String, spoiler: String? = nil, sensitive: Bool? = nil,
    language: String? = nil,
    media: [MediaAttachment]? = nil, poll: CreatePoll? = nil
  ) async throws -> Post {
    let params = EditPostParams(
      post: text,
      spoilerText: spoiler,
      sensitive: sensitive,
      language: language,
      mediaIds: media?.map { $0.id },
      poll: poll)
    return try await editPost(id: post.id, params)
  }
}
