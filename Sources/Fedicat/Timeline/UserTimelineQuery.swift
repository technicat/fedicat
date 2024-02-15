import TootSDK

extension UserTimelineQuery {

  public init(for account: Account, onlyMedia: Bool? = nil, onlyPins pinned: Bool? = nil) {
      self.init(userId: account.id, onlyMedia: onlyMedia, pinned: pinned)
  }
}
