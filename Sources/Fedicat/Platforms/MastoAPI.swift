import TootSDK

// maybe should be a protocol
open class MastoAPI: Platform {

  open var version: Version

  public init(_ version: Version) {
    self.version = version
  }

  open var name: String { "Mastodon API" }

  open var requiresInstanceAuth: Bool { version >= Version(3, 0) }

  open var supportsAnnouncements: Bool { version >= Version(3, 1) }
  open var supportsAnnouncementMark: Bool { version >= Version(3, 1) }

  open var supportsBookmark: Bool { version >= Version(3, 1) }
  open var supportsBot: Bool { version >= Version(2, 4) }

  open var supportsConversation: Bool { version >= Version(2, 6) }

  open var supportsDiscoverable: Bool { version >= Version(4, 2) }
  open var supportsDomainBlocks: Bool { version >= Version(0, 4) }

  open var supportsExtendedDescription: Bool { version >= Version(4, 0) }

  open var supportsFamiliarFollowers: Bool { version >= Version(3, 5) }
  open var supportsFaveTimeline: Bool { true }
  open var supportsFeaturedTags: Bool { version >= Version(3, 0) }
  open var supportsFilter: Bool { version >= Version(4, 0) }
  open var supportsFollowLanguages: Bool { version >= Version(4, 0) }
  open var supportsFollowNotify: Bool { version >= Version(3, 3) }
  open var supportsFollowTag: Bool { version >= Version(4, 0) }

  /// https://docs.joinmastodon.org/methods/accounts/#update_credentials
  open var supportsHideCollections: Bool { version >= Version(4, 2) }
  /// https://docs.joinmastodon.org/methods/accounts/#update_credentials
  open var supportsIndexable: Bool { version >= Version(4, 2) }

  /// V1 instance
  open var supportsInstance: Bool { version >= Version(1, 1) }
  open var supportsInstanceConfig: Bool { version >= Version(3, 4, 2) }
  open var supportsInstanceConfigAccount: Bool { version >= Version(4, 0) }
  open var supportsInstanceInvites: Bool { version >= Version(3, 1, 4) }
  open var supportsInstanceRules: Bool { version >= Version(3, 4) }

  open var supportsInstanceV2: Bool { version >= Version(4, 0) }

  open var supportsList: Bool { version >= Version(2, 1) }
  open var supportsListReplyPolicy: Bool { version >= Version(3, 3) }
  open var supportsListExclusive: Bool { version >= Version(4, 2) }

  open var supportsMarkers: Bool { version >= Version(3, 0) }
  open var supportsMutePost: Bool { version >= Version(1, 4, 2) }

  // https://docs.joinmastodon.org/methods/accounts/#note
  open var supportsNote: Bool { version >= Version(3, 2) }

  open var supportsNotificationDelete: Bool { version >= Version(1, 3) }
  open var supportsNotificationDeleteAll: Bool { true }
  open var supportsNotificationTypes: Bool { true }

  // https://docs.joinmastodon.org/methods/accounts/#statuses
  open var supportsPins: Bool { version >= Version(1, 6) }

  open var supportsPollVote: Bool { version >= Version(2, 8) }  // supportsPoll

  // https://docs.joinmastodon.org/methods/statuses/#edit
  open var supportsPostEdit: Bool { version >= Version(3, 5) }
  open var supportsPostEditLanguage: Bool { version >= Version(4, 0) }
  // https://docs.joinmastodon.org/methods/statuses/#history
  open var supportsPostHistory: Bool { version >= Version(3, 5) }

  open var supportsProfileFields: Bool { version >= Version(2, 4) }
  open var supportsProfileDirectory: Bool { version >= Version(4, 0) }
  open var supportsProfileHeader: Bool { true }
  open var supportsProfileImageDelete: Bool { version >= Version(4, 2) }

  // private public timeline supported with 3.0.90
  open var supportsPublicTimeline: Bool { true }

  open var supportsPostDefaultLanguage: Bool { version >= Version(2, 4, 2) }
  open var supportsPostDefaultSensitive: Bool { version >= Version(2, 4) }
  open var supportsPostDefaultVisibility: Bool { version >= Version(2, 4) }

  // https://docs.joinmastodon.org/methods/statuses/#source
  open var supportsPostSource: Bool { version >= Version(3, 5) }

  open var supportsRelationshipWithSuspended: Bool { version >= Version(4, 3) }
  open var supportsRemoveFollower: Bool { version >= Version(3, 5) }
  open var supportsReportRules: Bool { version >= Version(4, 0) }

  open var supportsRevoke: Bool { true }

  open var supportsSchedule: Bool { version >= Version(2, 7) }
  open var supportsSearchPosts: Bool { version >= Version(2, 4, 1) }

  open var supportsTagStats: Bool { version >= Version(2, 4, 1) }
  open var supportsTagTimeline: Bool { true }

  open var supportsTranslate: Bool { version >= Version(4, 0) }
  open var supportsTranslationLanguages: Bool { version >= Version(4, 2) }

  open var supportsTrendingLinks: Bool { version >= Version(3, 5) }
  open var supportsTrendingPosts: Bool { version >= Version(3, 5) }
  open var supportsTrendingTags: Bool { version >= Version(3, 0) }

  open var supportsUpdateAccount: Bool { version >= Version(1, 4, 1) }

  open var supportsIsBoosted: Bool { true }

  open var supportsSearchAccounts: Bool { true }

  open var languages: [ISOCode] { [] }

  open var postVis: [Post.Visibility] {
    [.public, .unlisted, .private, .direct]
  }

  let reportCats35: [ReportCategory] = [
    .spam,
    .violation,
    .other,
  ]

  let reportCats42: [ReportCategory] = [
    .legal
  ]

  open var reportCats: [ReportCategory] {
    var cats: [ReportCategory] = []
    if version >= Version(3, 5) {
      cats = cats + reportCats35
    }
    if version >= Version(4, 2) {
      cats = reportCats42 + cats
      return cats
    }
    return cats
  }

  // v2
  open var suggestionSources: [Suggestion.Source] {
    version >= Version(3, 4, 0)
      ? [
        .staff,
        .pastInteractions,
        .global,
      ] : []
  }

}
