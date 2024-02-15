import TootSDK

extension Tag {

  public var isFollowing: Bool {
    following ?? false
  }
}
