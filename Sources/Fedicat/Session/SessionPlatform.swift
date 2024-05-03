import TootSDK

// to support platform special case kludges
// when we don't want to bother putting them in Platform
// but shouldn't be necessary
extension Session {

  public var isPixelfed: Bool {
    platform is Pixelfed
  }
}
