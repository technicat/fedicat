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

  public func getTranslation(of post: Post) async throws -> Translation {
    try await getPostTranslation(
      id: post.id)
  }
}
