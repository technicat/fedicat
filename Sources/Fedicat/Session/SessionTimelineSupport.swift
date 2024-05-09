import TootSDK

extension Session {

  public var supportsPublicTimeline: Bool {
    platform?.supportsPublicTimeline ?? false
  }

  public func supports(_ timeline: Timeline) -> Bool {
    platform?.supports(timeline) ?? false
  }
}
