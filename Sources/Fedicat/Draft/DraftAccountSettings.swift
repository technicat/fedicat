import Foundation
import SwiftSys
import SwiftUI
import TootSDK

@Observable
public class DraftAccountSettings {

  public var locked: Bool = false
  public var bot: Bool = false
  public var discoverable: Bool = false
  public var hideCollections: Bool = false
  public var indexable: Bool = false

  @MainActor public func copy(from account: CredentialAccount) {
    locked = account.locked
    bot = account.isBot
    discoverable = account.isDiscoverable
    hideCollections = account.isHidingCollections
    indexable = account.isIndexable
  }

  public init() {}
}
