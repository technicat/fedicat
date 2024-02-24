import TootSDK

public protocol Platform {

  var name: String { get }
  var languages: [ISOCode] { get }
  var postVis: [Post.Visibility] { get }
  var reportCats: [ReportCategory] { get }
  var supportsTranslate: Bool { get }
  var supportsTranslationLanguages: Bool { get }
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
  var supportsNotificationDeleteAll: Bool { get }
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
