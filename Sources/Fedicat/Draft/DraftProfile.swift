import Foundation
import SwiftUI
import TootSDK

@Observable
final public class DraftProfile {

  public var displayName: String = ""
  public var note: String = ""
  public var fields: [ProfileField] = []
  public var avatar: UIImage? = nil
  public var header: UIImage? = nil
  public var avatarText: String? = nil
  public var headerText: String? = nil

  public var hasAvatar: Bool {
    avatar != nil
  }

  public var hasHeader: Bool {
    header != nil
  }

  @MainActor public func copy(from account: CredentialAccount) {
    displayName = account.userName
    if let note = account.source?.note {
      self.note = note
    }
    if let source = account.source {
      fields = source.fields.map { ProfileField(name: $0.name, value: $0.value) }
    }
  }

  public init() {}
}
