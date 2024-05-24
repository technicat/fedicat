import SwiftUI
import TootSDK

// add protocols?
@Observable
public class DraftPost {

  public var uploads: [UploadedMediaAttachment] = []
  public var text: String = ""
  public var spoilerText = ""
  public var date = Date.now
  public var attached: [DraftAttachment] = []
  public var schedule: Bool = false
  // should be optional?
  public var lang: ISOCode = .en  // ISO639_1(rawValue: Sys.currentLang!) ?? "en"
  public var isSensitive: Bool = false
  public var visibility: PostVisibility = PostVisibility.public
  public var replyTo: Post? = nil

  public var poll: CreatePoll?

  public var isEmpty: Bool {
    text.isBlank && attached.isEmpty
  }

  @MainActor public func clear() {
    schedule = false
    replyTo = nil
    text = ""
    spoilerText = ""
    attached.removeAll()
    clearUploads()
  }

  @MainActor public func addUpload(_ upload: UploadedMediaAttachment) {
    uploads.append(upload)
  }

  @MainActor public func clearUploads() {
    uploads.removeAll()
  }

  @MainActor public func copyDefaults(from account: Account) {
    isSensitive = account.defaultSensitive
    visibility = account.defaultVisibility
    lang = account.defaultLanguage
  }

  @MainActor public func copy(from post: Post) {
    if let language = post.language, let code = ISOCode(rawValue: language) {
      lang = code
    }
    isSensitive = post.isSensitive
    visibility = post.visibility
    // these don't really do anything, need to get from source
    text = post.text ?? ""
    spoilerText = post.spoilerText
    // todo - copy attachments
  }

  @MainActor public func copy(from schedule: ScheduledPost) {
    if let text = schedule.params.text {
      self.text = text
    }
    if let spoiler = schedule.spoiler {
      spoilerText = spoiler
    }
    self.isSensitive = schedule.isSensitive
    visibility = schedule.params.visibility
    self.schedule = true
    if let date = schedule.scheduledAt {
      self.date = date
    }
  }

  public init() {
  }
}
