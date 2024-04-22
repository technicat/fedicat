import TootSDK

extension ScheduledPost: Attached {
  public var attachments: [MediaAttachment] {
    mediaAttachments
  }

}
