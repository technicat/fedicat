import Foundation
import SwiftSys
import SwiftUI
import TootSDK

@Observable
public class DraftProfile {

  public var displayName: String = ""
  public var note: String = ""
  public var fields: [ProfileField] = []  // TootField?
  public var avatar: UIImage?
  public var header: UIImage?

  public var hasAvatar: Bool {
    avatar != nil
  }

  public var hasHeader: Bool {
    header != nil
  }

  @MainActor public func copy(from account: Account) {
    displayName = account.userName
    if let note = account.source?.note {
      self.note = note
    }
    if let source = account.source {
      for field in source.fields {
        let pfield = ProfileField()
        pfield.name = field.name
        pfield.value = field.value
        fields.append(pfield)
      }
    }
  }
    
    public init() {}
}
