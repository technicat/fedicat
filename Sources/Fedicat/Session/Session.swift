import Foundation
import TootSDK

/// a fediverse session with enough state to support the UI
/// (somewhat application specific, of course, in the choise of saved state)
/// /// an app should be able to manage, switch among, and resume multiple Sessions
/// ideally the UI should not deal with TootClient directly
/// but instead go through Session for all queries
@Observable
public class Session {

  @ObservationIgnored
  public let client: TootClient

  public var instance: InstanceV1?
  public var platform: Platform?
  public var account: Account?
  public var timeline: Timeline = .home

  // so we can use for suggestions/completions
  // could be hash like followedTags
  // or set but no advantage yet
  @ObservationIgnored
  public var featuredTags: [FeaturedTag] = []

  @ObservationIgnored
  public var suggestedTags: [Tag] = []

  // so we can list in timeline menu
  // and also include in post composer
  public var followedTags: [String: Tag] = [:]

  public var followedAccounts: [String: Account] = [:]

  // so we can list in timeline menu
  public var lists: [String: TootSDK.List] = [:]

  // so we can choose translation target
  public var translations: Translations = [:]

  // so we know if we have announcements
  public var announcements: [Announcement] = []

  // so we know if we have scheduled posts
  // not perfect, delete scheduled post doesn't clear
  public var hasSchedule: Bool = false

  // so we know if we have scheduled posts
  // not perfect, delete scheduled post doesn't clear
  // public var hasNotifications: Bool = false

  // cache
  @ObservationIgnored
  public var accounts: [Account.ID: Account] = [:]

  public init(_ client: TootClient) {
    self.client = client
  }
}
