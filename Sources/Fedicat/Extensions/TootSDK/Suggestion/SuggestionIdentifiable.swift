import TootSDK

extension Suggestion: Identifiable {
    
  public var id: String {
      // maybe just account is sufficient
      // but just in case
      source.rawValue+account.id
  }
}

