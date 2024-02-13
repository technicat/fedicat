import Foundation
import TootSDK

extension Post {

  public var hasLanguage: Bool {
    language != nil
  }

  public var languageCode: Locale.LanguageCode? {
    guard let lang = language else {
      return nil
    }
    return Locale.LanguageCode(lang)  // preprocess string?
  }
}
