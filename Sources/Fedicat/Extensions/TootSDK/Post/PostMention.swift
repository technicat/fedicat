import TootSDK

extension Post {

  public var hasMentions: Bool {
    !mentions.isEmpty
  }

}
