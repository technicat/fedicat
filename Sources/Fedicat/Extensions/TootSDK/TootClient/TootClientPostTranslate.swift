import TootSDK

extension TootClient {

  /// https://docs.joinmastodon.org/methods/statuses/#translate
  public func getTranslation(of post: Post, in language: ISOCode? = nil) async throws
    -> Translation
  {
    if let language {
      try await getPostTranslation(
        id: post.id,
        params: PostTranslationParams(lang: language.rawValue))
    } else {
      try await getPostTranslation(id: post.id)
    }
  }

}
