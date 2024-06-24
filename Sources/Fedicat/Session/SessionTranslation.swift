import TootSDK

// todo - add getTranslation(of: from: in:)
extension Session {

  public var supportsTranslationLanguages: Bool {
    platform?.supportsTranslationLanguages ?? false
  }

  public var canReadTranslationLanguages: Bool {
    // Akkoma requires authentication
    supportsTranslationLanguages && (!(platform is Akkoma) || isAuth)
  }

  public func canTranslate(_ post: Post) -> Bool {
    // platform is Akkoma || // hack
    (canTranslate && (!supportsTranslationLanguages || hasTranslationTargets(for: post)))
  }

  public func hasTranslationTargets(for post: Post) -> Bool {
    translations[post.languageCode] != nil
  }

  public var canTranslate: Bool {
    isAuth && supportsTranslate
    // should check available translations also
  }

  public var hasTranslations: Bool {
    !translations.isEmpty
  }

  public var supportsTranslate: Bool {
    platform?.supportsTranslate ?? false
  }

  public func getTranslation(of post: Post, to language: ISOCode? = nil) async throws -> Translated {
    if platform is Akkoma {
      return try await client.getAkkomaTranslation(of: post, to: language ?? .en)
    } else {
      return try await client.getTranslation(of: post, to: language)
    }
  }

  public func getTranslationTargets(of post: Post) -> [ISOCode] {
    translations[post.languageCode] ?? []
  }
}

