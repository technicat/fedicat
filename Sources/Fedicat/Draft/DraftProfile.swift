import Foundation
import SwiftUI
import TootSDK

@Observable
final public class DraftProfile {

  public var displayName: String = ""
  public var note: String = ""
  public var fields: [ProfileField] = []  // TootField?
  public var avatar: UIImage? = nil
  public var header: UIImage? = nil

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
      for field in source.fields {
          let pfield = ProfileField(name: field.name, value: field.value)
        fields.append(pfield)
      }
    }
  }

  public init() {}
}
