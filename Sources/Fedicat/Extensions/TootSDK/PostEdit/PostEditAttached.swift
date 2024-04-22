import TootSDK

extension PostEdit: Attached {

  public var attachments: [MediaAttachment] {
    mediaAttachments
  }
}
