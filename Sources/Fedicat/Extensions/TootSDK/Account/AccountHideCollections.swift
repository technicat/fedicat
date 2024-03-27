import TootSDK

extension Account {

  public var isHidingCollections: Bool {
      source?.hideCollections ?? hideCollections ?? false
  }

}
