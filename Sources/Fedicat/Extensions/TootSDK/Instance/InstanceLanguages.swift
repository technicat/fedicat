import TootSDK

extension Instance {

  public var hasLanguages: Bool {
    guard let languages else {
      return false
    }
    return !languages.isEmpty
  }
}
