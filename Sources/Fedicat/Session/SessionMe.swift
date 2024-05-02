import TootSDK

extension Session {

  // Accounted?
  public func isMe(_ account: Account) -> Bool {
    self.account?.isSame(as: account) ?? false
  }

  public func isMe(_ mention: Mention) -> Bool {
    account?.isMentioned(by: mention) ?? false
  }

  public func isMy(_ post: Post) -> Bool {
    isMe(post.account)
  }

  public func mentionsMe(in post: Post) -> Bool {
    account?.isMentioned(by: post) ?? false
  }
}
