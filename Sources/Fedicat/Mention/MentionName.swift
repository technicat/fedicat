import TootSDK

extension Mention {

  public var atUser: String {
    "@\(username)"
  }

  public var atAcct: String {
    "@\(acct)"
  }
}
