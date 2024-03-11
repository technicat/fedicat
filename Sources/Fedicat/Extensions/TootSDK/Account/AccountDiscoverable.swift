import TootSDK

extension Account {

  public var isDiscoverable: Bool {
    discoverable ?? false
  }

  public var isHidingCollections: Bool {
    hideCollections ?? false
  }

  public var isIndexable: Bool {
    indexable ?? false
  }
}
