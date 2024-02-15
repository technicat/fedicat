import TootSDK

extension Post {

  /// totally public
  public var isPublic: Bool {
    visibility == .public
  }

  /// public but not in timelines
  public var isUnlisted: Bool {
    visibility == .unlisted
  }

  /// publicly accessible, i.e. not followers-only or more limited
  /// required for boosting, and translation
  public var isVisible: Bool {
    isPublic || isUnlisted
  }

}
