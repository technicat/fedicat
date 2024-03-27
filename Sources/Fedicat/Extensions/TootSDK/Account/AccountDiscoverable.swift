import TootSDK

extension Account {

  public var isDiscoverable: Bool {
      source?.discoverable ?? discoverable ?? false
  }

}
