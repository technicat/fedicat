import Foundation
import TootSDK

extension Post {

  public var hasLanguage: Bool {
    language != nil // should we validate?
  }

    // not sure we should have a use for this as ISOCode is preferrerd
  public var languageCode: Locale.LanguageCode? {
    guard let language else {
      return nil
    }
    return Locale.LanguageCode(language)  // preprocess string?
  }

  public var languageISOCode: ISOCode? {
    guard let language else {
      return nil
    }
    return ISOCode(rawValue: language)  // preprocess string?
  }
}
