import TootSDK

extension Post {

  public var isReply: Bool {
    // also can check inReplyToId
    inReplyToAccountId != nil
  }

  public var hasReplies: Bool {
    repliesCount > 0
  }

}
