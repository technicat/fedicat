import TootSDK

extension Post {

  public var isFaved: Bool {
    favourited ?? false
  }

  public var hasFaves: Bool {
    favouritesCount > 0
  }

}
