import TootSDK

extension HashtagTimelineQuery {

  public init(for tag: Tag, onlyMedia: Bool? = nil) {
    self.init(tag: tag.name, onlyMedia: onlyMedia)
  }
}
