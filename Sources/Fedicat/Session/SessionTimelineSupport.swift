import TootSDK

extension Session {

  public var supportsPublicTimeline: Bool {
    platform?.supportsPublicTimeline ?? false
  }
}
