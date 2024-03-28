import TootSDK

extension Account {

  // ideally check on CredentialAccount source which works on 4.2
  // otherwise fallback to plain account which works on 4.3
  public var isHidingCollections: Bool {
    source?.hideCollections ?? hideCollections ?? false
  }

}
