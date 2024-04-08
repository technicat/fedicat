import TootSDK

extension Suggestion: Identifiable {
    
  public var id: String {
      // maybe just account is sufficient
      source.rawValue+account.id
  }
}

