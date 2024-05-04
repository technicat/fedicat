import TootSDK

// todo - add getTranslation(of: from: in:)
extension Session {

  public func canTranslate(_ post: Post) -> Bool {
    canTranslate && (!supportsTranslationLanguages || hasTranslationTargets(for: post))
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
    let translation = try await client.getTranslation(of: post, in: language)
    // todo - handle 403 error, no translation available
    let newPost = Post(from: post)
    newPost.copy(from: translation)
    return newPost
  }

  public func getTranslationTargets(of post: Post) -> [ISOCode] {
    translations[post.languageCode] ?? []
  }
}

extension Post {

  func copy(from translation: Translation) {
    content =
      "<p><em>\(translation.detectedSourceLanguage.localizedLanguageName) to \(translation.language.localizedLanguageName) by \(translation.provider)</em></p><p>\(translation.content)</p>"
    spoilerText = translation.spoilerText
    for index in mediaAttachments.indices {
      mediaAttachments[index].description = translation.mediaAttachments[index].description
    }
    if var poll = poll, let tp = translation.poll {
      for index in poll.options.indices {
        poll.options[index].title = tp.options[index].title
      }
      self.poll = poll
    }
  }

}
