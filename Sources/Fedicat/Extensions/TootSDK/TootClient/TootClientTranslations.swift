import TootSDK

extension TootClient {

  public func getTranslationCodes() async throws -> Translations {
    let map = try await getTranslationLanguages()
    var translations: Translations = [:]
    for (key, value) in map {
      if let source = ISOCode(rawValue: key) {
        translations[source] = value.compactMap { ISOCode(rawValue: $0) }
      }
    }
    return translations
  }
}
