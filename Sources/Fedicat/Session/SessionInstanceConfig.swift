import TootSDK

extension Session {

  public var maxAltChars: Int {
    platform?.maxAltText ?? 1500  // harcoded mastodon limit
  }

  public var maxPostChars: Int? {
    instance?.maxPostChars
  }

  public var maxAttachments: Int? {
    instance?.maxAttachments
  }

  // todo - instance.validPostText, validAttachment

  public func isValid(_ draft: DraftPost) -> Bool {
    !draft.isEmpty && hasValidAttachments(draft) && hasValidText(draft)
  }

  public func hasValidText(_ draft: DraftPost) -> Bool {
    guard let max = maxPostChars else {
      return true
    }
    return draft.text.count <= max
  }

  public func hasValidAttachments(_ draft: DraftPost) -> Bool {
    // platform.minAttachments?
    if (platform is Pixelfed) && draft.attached.isEmpty {
      return false
    }
    if let max = maxAttachments, draft.attached.count > max {
      return false
    }
    for attach in draft.attached {
      if !isValid(attach) {
        return false
      }
    }
    return true
  }

  public func isValid(_ attach: DraftAttachment) -> Bool {
    attach.text.count <= maxAltChars
  }
}
