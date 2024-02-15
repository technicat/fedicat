import TootSDK

extension UserTimelineQuery {

  public init(for account: Account, onlyMedia: Bool? = nil) {
      self.init(userId: account.id, onlyMedia: onlyMedia)
  }
}
