import TootSDK

public protocol Platform {

  /// platform name, e.g. Mastodon, Pleroma...
  var name: String { get }
  /// post languages (maybe rename)
  var languages: [ISOCode] { get }
  /// post visibilities
  var postVis: [Post.Visibility] { get }
  /// (problem) report categories
  var reportCats: [ReportCategory] { get }

  var supportsAnnouncements: Bool { get }
  /// mark announcement as read
  var supportsAnnouncementMark: Bool { get }

  /// bookmark posts
  var supportsBookmark: Bool { get }
  ///  specify account is a bot
  var supportsBot: Bool { get }

  /// listed in instance profile directory
  var supportsDiscoverable: Bool { get }
  /// block domains
  var supportsDomainBlocks: Bool { get }

  var supportsExtendedDescription: Bool { get }

  var supportsFamiliarFollowers: Bool { get }
  var supportsFaveTimeline: Bool { get }
  var supportsFilter: Bool { get }

  var supportsFollowLanguages: Bool { get }
  var supportsFollowNotify: Bool { get }
  var supportsFollowTag: Bool { get }

  /// hide followers/followees
  var supportsHideCollections: Bool { get }
  /// turn post searchability on/off
  var supportsIndexable: Bool { get }
  /// a kludge for some platforms (Sharkey) not setting boosted after boosting
  var supportsIsBoosted: Bool { get }

  var supportsList: Bool { get }

  var supportsMutePost: Bool { get }

  /// delete single notification
  var supportsNotificationDelete: Bool { get }
  /// delete all notifications
  var supportsNotificationDeleteAll: Bool { get }
  var supportsNotificationTypes: Bool { get }

  var supportsPollVote: Bool { get }
  var supportsPostDefaultLanguage: Bool { get }
  var supportsPostDefaultSensitive: Bool { get }
  var supportsPostDefaultVisibility: Bool { get }

  var supportsPostEdit: Bool { get }
  var supportsPostEditLanguage: Bool { get }

  var supportsPostSource: Bool { get }

  var supportsProfileFields: Bool { get }
  var supportsProfileDirectory: Bool { get }
  var supportsProfileHeader: Bool { get }
  var supportsPublicTimeline: Bool { get }

  var supportsRemoveFollower: Bool { get }
  var supportsReportRules: Bool { get }
  var supportsRevoke: Bool { get }

  var supportsSchedule: Bool { get }
  var supportsSearchAccounts: Bool { get }
  var supportsSearchPosts: Bool { get }
  var supportsSuggestions: Bool { get }

  var supportsTagStats: Bool { get }
  var supportsTagTimeline: Bool { get }
  var supportsTranslate: Bool { get }
  var supportsTranslationLanguages: Bool { get }
  var supportsTrendingPosts: Bool { get }
  var supportsTrendingTags: Bool { get }
  var supportsTrendingLinks: Bool { get }

  var supportsUpdateAccount: Bool { get }
}
