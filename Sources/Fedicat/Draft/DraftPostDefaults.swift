import Foundation
import TootSDK

@Observable
public class DraftPostDefaults {

  public var lang: ISOCode = .en
  public var visibility: PostVisibility = .public
  public var sensitive: Bool = false

  @MainActor public func copy(from account: CredentialAccount) {
    lang = account.defaultLanguage
    sensitive = account.defaultSensitive
    visibility = account.defaultVisibility
  }

  public init() {
  }

}
