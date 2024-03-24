import TootSDK

extension Account {

  public func isSame(as account: Account) -> Bool {
    id == account.id
  }
}
