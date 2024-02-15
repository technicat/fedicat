import TootSDK

extension Account {

  public var domain: String? {
    let pieces = acct.components(separatedBy: "@")
    guard pieces.count > 1 else {
      return nil
    }
    return pieces[1]
  }

  public var isRemote: Bool {
    domain != nil
    // todo - check for whitespace/empty string?
  }
}
