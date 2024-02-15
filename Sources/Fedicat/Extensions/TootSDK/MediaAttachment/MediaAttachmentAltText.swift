import TootSDK

extension MediaAttachment {

  public var hasAltText: Bool {
    description != nil  // should check whitespace
  }
}
