import TootSDK

public class MastoAPI: Platform {

  public var version: Version

  public init(_ version: Version) {
    //  Logger.log.info("api \(version.dot)")
    self.version = version
  }

  public var name: String { "Mastodon API" }
  public var supportsAnnouncements: Bool { version >= Version(3, 1) }
  public var supportsAnnouncementMark: Bool { version >= Version(3, 1) }
  public var supportsBookmark: Bool { version >= Version(3, 1) }
  public var supportsConversation: Bool { version >= Version(2, 6) }
  public var supportsDomainBlocks: Bool { version >= Version(0, 4) }
  public var supportsExtendedDescription: Bool { version >= Version(4, 0) }
  public var supportsFamiliarFollowers: Bool { version >= Version(3, 5) }
  public var supportsFilter: Bool { version >= Version(4, 0) }
  public var supportsFollowTag: Bool { version >= Version(4, 0) }
  public var supportsMutePost: Bool { version >= Version(1, 4, 2) }
  public var supportsNotificationDelete: Bool { version >= Version(1, 3) }
  public var supportsNotificationDeleteAll: Bool { true }
  public var supportsNotificationTypes: Bool { true }
  public var supportsProfileDirectory: Bool { version >= Version(4, 0) }
  public var supportsRemoveFollower: Bool { version >= Version(3, 5) }
  public var supportsSearchPosts: Bool { version >= Version(2, 4, 1) }
  public var supportsTagStats: Bool { version >= Version(2, 4, 1) }
  public var supportsTranslate: Bool { version >= Version(4, 0) }
  public var supportsTranslationLanguages: Bool { version >= Version(4, 2) }
  public var supportsTrendingLinks: Bool { version >= Version(3, 5) }
  public var supportsTrendingPosts: Bool { version >= Version(3, 5) }
  public var supportsTrendingTags: Bool { version >= Version(3, 0) }
  public var supportsUpdateAccount: Bool { version >= Version(1, 4, 1) }

  public var supportsProfileFields: Bool { true }
  public var supportsIsBoosted: Bool { true }

  public var supportsList: Bool { true }

  public var supportsSearchAccounts: Bool { true }

  public var supportsFollowLanguages: Bool { false }
  public var supportsSchedule: Bool { false }
  public var supportsFaveTimeline: Bool { true }
  public var supportsReportRules: Bool { true }
  public var supportsPollVote: Bool { true }
  public var supportsProfileHeader: Bool { true }
  public var supportsPublicTimeline: Bool { true }

  public var languages: [ISOCode] { [] }

  public var postVis: [Post.Visibility] {
    [.public, .unlisted, .private, .direct]
  }

  public var reportCats: [ReportCategory] {
    [
      .spam,
      .other,
      .violation,
    ]
  }

}
