import TootSDK

extension Account {

  public var hasFields: Bool {
    !fields.isEmpty
  }

  public var isBot: Bool {
    bot ?? false
  }

  public var isDiscoverable: Bool {
    discoverable ?? false
  }
}
