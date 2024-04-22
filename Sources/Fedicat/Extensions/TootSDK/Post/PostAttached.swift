import TootSDK

    extension Post: Attached {
    
    public var attachments: [MediaAttachment] {
        mediaAttachments
    }
}
