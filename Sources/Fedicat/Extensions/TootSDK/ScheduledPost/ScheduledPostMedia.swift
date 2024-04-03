import TootSDK

extension ScheduledPost {

  public var hasMedia: Bool {
    guard let ids = params.mediaIds else {
      return false
    }
    return !ids.isEmpty
  }
}
