import TootSDK

public protocol Platform {

  var name: String { get }
  var languages: [ISOCode] { get }
  var supportsTranslate: Bool { get }
  var supportsTranslationLanguages: Bool { get }
  var postVis: [Post.Visibility] { get }
  var reportCats: [ReportCategory] { get }

  var supportsProfileFields: Bool { get }
  var supportsAnnouncements: Bool { get }
  var supportsAnnouncementMark: Bool { get }
  var supportsBookmark: Bool { get }
  var supportsMutePost: Bool { get }
  var supportsIsBoosted: Bool { get }
  var supportsTrendingPosts: Bool { get }
  var supportsTrendingTags: Bool { get }
  var supportsTrendingLinks: Bool { get }
  var supportsFollowTag: Bool { get }
  var supportsNotificationTypes: Bool { get }
  var supportsNotificationDelete: Bool { get }
  var supportsList: Bool { get }
  var supportsTagStats: Bool { get }
  var supportsSearchAccounts: Bool { get }
  var supportsSearchPosts: Bool { get }
  var supportsFollowLanguages: Bool { get }
  var supportsSchedule: Bool { get }
  var supportsFamiliarFollowers: Bool { get }
  var supportsFaveTimeline: Bool { get }
  var supportsFilter: Bool { get }
  var supportsProfileDirectory: Bool { get }
  var supportsReportRules: Bool { get }
  var supportsDomainBlocks: Bool { get }
  var supportsRemoveFollower: Bool { get }
  var supportsExtendedDescription: Bool { get }
  var supportsProfileHeader: Bool { get }
  var supportsPublicTimeline: Bool { get }
  var supportsUpdateAccount: Bool { get }

}

// defaults
public extension Platform {

  var languages: [ISOCode] { [] }
  var supportsTranslate: Bool { false }

  var postVis: [Post.Visibility] {
    [.public, .unlisted, .private, .direct]
  }

  var supportsProfileFields: Bool { true }
  var supportsIsBoosted: Bool { true }
  var supportsFollowTag: Bool { false }
  var supportsNotificationTypes: Bool { false }
  var supportsNotificationDelete: Bool { false }
  var supportsList: Bool { true }
  var supportsTagStats: Bool { false }
  var supportsSearchAccounts: Bool { true }
  var supportsSearchPosts: Bool { true }
  var supportsFollowLanguages: Bool { false }
  var supportsSchedule: Bool { false }
  var supportsFamiliarFollowers: Bool { false }
  var supportsFaveTimeline: Bool { true }
  var supportsReportRules: Bool { true }
  var supportsPollVote: Bool { true }
  var supportsRemoveFollower: Bool { false }
  var supportsProfileHeader: Bool { true }
  var supportsPublicTimeline: Bool { true }
  var supportsUpdateAccount: Bool { true }

}
