import TootSDK

extension HashtagTimelineQuery {

  public init(_ tag: Tag, onlyMedia: Bool? = nil) {
    self.init(tag: tag.name, onlyMedia: onlyMedia)
  }
}

