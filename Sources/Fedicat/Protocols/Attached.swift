import TootSDK

public protocol Attached {

  var attachments: [MediaAttachment] { get }
}

extension Attached {

  public var hasAttachments: Bool {
    !attachments.isEmpty
  }

}
