import TootSDK

extension Post {

  public var hasContext: Bool {
    isReply || hasReplies
  }
}
