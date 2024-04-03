import TootSDK

extension ScheduledPost {

  public var isReply: Bool {
    params.inReplyToId != nil
  }
}
