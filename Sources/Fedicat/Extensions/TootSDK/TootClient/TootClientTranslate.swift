import TootSDK

extension TootClient {

  public func getPostTranslation(id: String, in language: String) async throws -> Translation {
    try await getPostTranslation(
      id: id,
      params: PostTranslationParams(lang: language))
  }

  public func getTranslation(of post: Post, in language: String) async throws -> Translation {
    try await getPostTranslation(
      id: post.id,
      in: language)
  }

  public func getTranslation(of post: Post, in language: MastoCode? = nil) async throws
    -> Translation
  {
    if let language {
      try await getTranslation(
        of: post,
        in: language.rawValue)
    } else {
        try await getPostTranslation(id: post.id)
    }
  }

}
