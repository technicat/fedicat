import TootSDK

public protocol Platform {

  var name: String { get }
  var languages: [ISOCode] { get }
  var supportsTranslate: Bool { get }
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
extension Platform {

  public var languages: [ISOCode] { [] }
  public var supportsTranslate: Bool { false }

  public var postVis: [Post.Visibility] {
    [.public, .unlisted, .private, .direct]
  }

  public var supportsProfileFields: Bool { true }
  public var supportsMutePost: Bool { true }
  public var supportsIsBoosted: Bool { true }
  public var supportsTrendingPosts: Bool { false }
  public var supportsTrendingTags: Bool { false }
  public var supportsTrendingLinks: Bool { false }
  public var supportsFollowTag: Bool { false }
  public var supportsNotificationTypes: Bool { false }
  public var supportsNotificationDelete: Bool { false }
  public var supportsList: Bool { true }
  public var supportsTagStats: Bool { false }
  public var supportsSearchAccounts: Bool { true }
  public var supportsSearchPosts: Bool { true }
  public var supportsFollowLanguages: Bool { false }
  public var supportsSchedule: Bool { false }
  public var supportsFamiliarFollowers: Bool { false }
  public var supportsFaveTimeline: Bool { true }
  public var supportsReportRules: Bool { true }
  public var supportsPollVote: Bool { true }
  public var supportsRemoveFollower: Bool { false }
  public var supportsExtendedDescription: Bool { false }
  public var supportsProfileHeader: Bool { true }
  public var supportsPublicTimeline: Bool { true }
  public var supportsUpdateAccount: Bool { true }

}
