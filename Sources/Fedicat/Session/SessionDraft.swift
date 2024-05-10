import TootSDK

extension Session {

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
    if draft.attached.count < minAttachments {
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
