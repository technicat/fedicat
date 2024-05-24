import TootSDK

// todo - add getTranslation(of: from: in:)
extension Session {

  public func canTranslate(_ post: Post) -> Bool {
      platform is Akkoma || // hack
   ( canTranslate && (!supportsTranslationLanguages || hasTranslationTargets(for: post))
     )
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
            return try await getAkkomaTranslation(of: post, to: language ?? .en)
        } else {
            return try await getMastodonTranslation(of: post, to: language)
        }
    }

  public func getMastodonTranslation(of post: Post, to language: ISOCode? = nil) async throws -> Post {
    let translation = try await client.getTranslation(of: post, to: language)
    // todo - handle 403 error, no translation available
    // if we get this to work, we don't need copy (and don't need inits)
    //      post.copy(from: translation)
    //      return post
    let newPost = Post(from: post)
    newPost.copy(from: translation)
    return newPost
  }
    
    public func getAkkomaTranslation(of post: Post, to language: ISOCode) async throws -> Post {
      let translation = try await client.getAkkomaTranslation(of: post, to: language)
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
    
    func copy(from translation: AkkomaTranslation) {
      content =
        "<p><em>translated from \(translation.detectedLanguage.localizedLanguageName)</em></p><p>\(translation.text)</p>"
    }

}
