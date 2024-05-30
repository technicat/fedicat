import TootSDK

extension Session {

  public var supportsPostLanguages: Bool {
    !languages.isEmpty
  }

  public var supportsPostDefaultLanguage: Bool {
    platform?.supportsPostDefaultLanguage ?? false
  }

  public var supportsPostDefaultSensitive: Bool {
    platform?.supportsPostDefaultSensitive ?? false
  }

  public var supportsPostDefaultVisibility: Bool {
    platform?.supportsPostDefaultVisibility ?? false
  }

  public var supportsSpoiler: Bool {
    platform?.supportsSpoiler ?? false
  }

  public var supportsPostDefaults: Bool {
    supportsUpdateAccount
      && (supportsPostDefaultLanguage || supportsPostDefaultSensitive
        || supportsPostDefaultVisibility)
  }

  public var languages: ISOCodes {
    platform?.languages ?? []
  }
}
