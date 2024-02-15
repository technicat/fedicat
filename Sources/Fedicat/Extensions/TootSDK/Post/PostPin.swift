import TootSDK

extension Post {

  public var isPinned: Bool {
    pinned ?? false
  }
}
