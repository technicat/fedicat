import TootSDK

extension Session {

  @MainActor public func setAccount(_ account: Account) {
    self.account = account
    addAccount(account)
  }
}
