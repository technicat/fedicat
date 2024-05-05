import TootSDK

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
