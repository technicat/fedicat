import TootSDK

// to support platform special case kludges
// when we don't want to bother putting them in Platform
extension Session {

  public var isPixelfed: Bool {
    platform is Pixelfed
  }

  public var isSharkey: Bool {
    platform is Sharkey
  }
}
