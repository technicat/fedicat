import TootSDK

// kludge for platform special cases
// when we don't want to bother putting them in Platform
extension Session {

  public var isPixelfed: Bool {
    platform is Pixelfed
  }
}
