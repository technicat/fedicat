import TootSDK

extension Post {

  public var isPublic: Bool {
    visibility == .public
  }

  public var isUnlisted: Bool {
    visibility == .unlisted
  }

  public var isVisible: Bool {
    isPublic || isUnlisted
  }

}
