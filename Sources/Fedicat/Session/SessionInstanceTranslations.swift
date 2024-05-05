import TootSDK

/// https://docs.joinmastodon.org/methods/instance/#rules
//extension Session {
//
//  public func getInstanceRules() async throws -> [InstanceRule] {
//    try await client.getInstanceRules()
//  }
//}

extension Session {

  public func getTranslationLanguages() async throws -> Translations {
    let map = try await client.getTranslationCodes()  //Languages()
    await setTranslations(map)
    return map
  }

  @MainActor func setTranslations(_ map: Translations) {
    translations = map
  }

  public var translationSources: [ISOCode] {
    translations.map(\.0)
  }
}
