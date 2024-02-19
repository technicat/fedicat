import TootSDK

extension Post {

  public var hasAltAll: Bool {
    mediaAttachments.isEmpty || mediaAttachments.allSatisfy { $0.hasAltText }
  }

}
