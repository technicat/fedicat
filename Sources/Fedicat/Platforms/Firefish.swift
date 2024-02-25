import TootSDK

open class Firefish: MastoAPI {

  open override var name: String { "Firefish" }
  open override var reportCats: [ReportCategory] { [] }
  open override var supportsDomainBlocks: Bool { false }
  open override var supportsExtendedDescription: Bool { false }
  open override var supportsFilter: Bool { false }
  open override var supportsNotificationDelete: Bool { false }
  open override var supportsNotificationDeleteAll: Bool { false }
  open override var supportsNotificationTypes: Bool { false }
  open override var supportsPublicTimeline: Bool { false }
  open override var supportsReportRules: Bool { false }
  open override var supportsSearchAccounts: Bool { false }
  open override var supportsTranslate: Bool { false }
  open override var supportsTranslationLanguages: Bool { false }
}
