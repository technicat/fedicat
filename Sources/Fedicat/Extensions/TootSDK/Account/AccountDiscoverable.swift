import TootSDK

extension Account {

  public var isDiscoverable: Bool {
    discoverable ?? false
  }

  public var isIndexable: Bool {
    indexable ?? false
  }
}
