import TootSDK

/// cache Accounts to avoid 
extension Session {

  public var accountsSorted: [Account] {
    accounts.map(\.1).sorted(by: <)
  }

  @MainActor
  public func addAccount(_ has: Accounted) {
    // accounts[has.account.id] = has.account
    add(has.account)
  }

  @MainActor
  public func add(_ account: Account) {
    accounts[account.id] = account
  }

  @MainActor public func addAccounts(_ accounts: [Accounted]) {
    for account in accounts {
      addAccount(account)
    }
  }

  @MainActor public func addPostAccounts(_ posts: [Post]) {
    for post in posts {
      addAccounts(post)
    }
  }

  @MainActor public func addAccounts(_ post: Post) {
    addAccount(post)
    if let repost = post.repost {
      addAccount(repost)
    }
  }

  @MainActor public func delete(account: Account) {
    accounts[account.id] = nil
  }
}
