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

  public func getTranslation(of post: Post, to language: ISOCode? = nil) async throws -> Post {
    if platform is Akkoma {
      let translation = try await client.getTranslationAkkoma(of: post, to: language ?? .en)
      return getTranslation(of: post, from: translation)
    } else {
      let translation = try await client.getTranslation(of: post, to: language)
      return getTranslation(of: post, from: translation)
    }
  }

  public func getTranslation(of post: Post, from translation: Translated) -> Post {
    let newPost = Post(from: post)
    newPost.copy(from: translation)
    return newPost
  }

  public func getTranslationTargets(of post: Post) -> [ISOCode] {
    translations[post.languageCode] ?? []
  }
}

extension Post {

  func copy(from translation: Translated) {
    var translated = "<p><em>"
    if let source = translation.sourceLanguage?.localizedLanguageName {
      translated += source
    }
    // todo - localize
    if let target = translation.targetLanguage?.localizedLanguageName {
      translated += "to \(target)"
    }
    translated += " by \(translation.translator)</em></p>"
    translated += "<p>\(translation.html)</p>"
    content = translated
    if let spoiler = translation.spoiler {
      spoilerText = spoiler
    }
    for index in mediaAttachments.indices {
      mediaAttachments[index].description = translation.translatedAttachments[index].description
    }
    if var poll = poll, let tp = translation.translatedPoll {
      for index in poll.options.indices {
        poll.options[index].title = tp.options[index].title
      }
      self.poll = poll
    }
  }

  public func copy(from translation: String) {
    content =
      "<p><em>translated by Apple</em></p><p>\(translation)</p>"
  }

}
