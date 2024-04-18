import TootSDK

extension Instance {

  public var hasRules: Bool {
    guard let rules else {
      return false
    }
    return !rules.isEmpty
  }

}
