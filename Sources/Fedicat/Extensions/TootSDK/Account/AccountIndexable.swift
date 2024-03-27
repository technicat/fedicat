import TootSDK

extension Account {

  public var isIndexable: Bool {
      source?.indexable ?? indexable ?? false
  }
}
