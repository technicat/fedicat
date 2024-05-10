extension Session {

  // always include domain
  // rename to URI?
  public var acct: String {
    if let user = account?.username {
      "\(user)@\(domain)"
    } else {
      "@\(domain)"
    }
  }
}
