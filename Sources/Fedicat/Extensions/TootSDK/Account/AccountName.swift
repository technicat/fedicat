import TootSDK

extension Account {

  public var atName: String {
    acct.atName
  }

  public var name: String {
    displayName ?? userName
  }

  public var userName: String {
    username ?? ""
  }
}
