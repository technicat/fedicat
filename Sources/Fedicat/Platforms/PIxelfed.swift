import TootSDK

open class Pixelfed: MastoAPI {

  open override var name: String { "Pixelfed" }
  open override var supportsProfileFields: Bool { false }
  open override var supportsFollowTag: Bool { true }
  open override var supportsNotificationDelete: Bool { false }
  open override var supportsNotificationDeleteAll: Bool { false }
  open override var supportsNotificationTypes: Bool { false }
  open override var supportsList: Bool { false }
  open override var supportsSearchAccounts: Bool { false }
  open override var supportsSearchPosts: Bool { false }
  open override var supportsProfileHeader: Bool { false }
  open override var supportsPublicTimeline: Bool { false }
  open override var supportsTrendingLinks: Bool { false }
  open override var supportsTrendingPosts: Bool { false }
  open override var supportsTrendingTags: Bool { false }
  open override var reportCats: [ReportCategory] {
    [
      .spam,
      .sensitive,
      .abusive,
      .underage,
      .violence,
      .copyright,
      .impersonation,
      .scam,
      .terrorism,
    ]
  }

}
