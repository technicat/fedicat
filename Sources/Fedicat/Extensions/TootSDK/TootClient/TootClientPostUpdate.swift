import TootSDK

extension TootClient {
    
    /// todo - add language (4.0.0)
    /// https://docs.joinmastodon.org/methods/statuses/#edit
    public func update(
        _ post: Post, text: String, spoiler: String? = nil, sensitive: Bool? = nil, media: [MediaAttachment]? = nil, poll: CreatePoll? = nil
    ) async throws -> Post {
        let params = EditPostParams(
            post: text,
            spoilerText: spoiler,
            sensitive: sensitive,
            mediaIds: media?.map { $0.id })
        return try await editPost(id: post.id, params)
    }
}
