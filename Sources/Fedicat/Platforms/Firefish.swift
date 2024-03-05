import TootSDK

open class Firefish: MastoAPI {

  open override var name: String { "Firefish" }

  open override var reportCats: [ReportCategory] { [] }

  open override var supportsDomainBlocks: Bool { false }

  open override var supportsNotificationDelete: Bool { false }
  open override var supportsNotificationDeleteAll: Bool { false }
  open override var supportsNotificationTypes: Bool { false }

  open override var supportsPostDefaultLanguage: Bool { false }
  open override var supportsPostDefaultSensitive: Bool { false }
  open override var supportsPostDefaultVisibility: Bool { false }
  open override var supportsPublicTimeline: Bool { false }

  open override var supportsSearchAccounts: Bool { false }

  open override var supportsTranslate: Bool { false }
  open override var supportsTranslationLanguages: Bool { false }
  open override var supportsTrendingTags: Bool { false }
}
