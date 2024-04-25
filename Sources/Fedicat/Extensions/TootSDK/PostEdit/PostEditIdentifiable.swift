import Foundation
import TootSDK

extension PostEdit: Identifiable {

  public var id: Date {
    createdAt ?? Date()
  }
}
