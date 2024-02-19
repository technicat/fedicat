import TootSDK

extension Post {

  public var isRepliable: Bool {
    !account.isBot
  }

  public var isReply: Bool {
    // also can check inReplyToId
    inReplyToAccountId != nil
  }

  public var hasReplies: Bool {
    repliesCount > 0
  }

}
