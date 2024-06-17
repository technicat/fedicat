import TootSDK

extension Session {

  @MainActor public func setAccount(_ account: CredentialAccount) {
    self.account = account
    addAccount(account)
  }
}
