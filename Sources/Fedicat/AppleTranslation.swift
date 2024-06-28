import TootSDK

/// Translation using system Apple Translation (iOS 17.4) with the replace callback
/// Just translating the post content
/// but could do some UI maneuvering to translate more
/// e.g. concatenate post components (poll, attachments, spoiler) for translation then separate result
/// or require the user to perform translations separately on each component
/// iOS 18 in-app translation will provide more flexibility
/// could name this more generic e.g. SimpleTranslation
public struct AppleTranslation: Translated {

  public init(text: String) {
    html = text
  }

  public let translatedPoll: TootSDK.Translation.Poll? = nil

  public let translatedAttachments: [TootSDK.Translation.MediaAttachment] = []

  public let sourceLanguage: ISOCode? = nil

  public let translator: String? = "Apple"

  public let targetLanguage: ISOCode? = nil

  public var html: String?

  public let spoiler: String? = nil

}
