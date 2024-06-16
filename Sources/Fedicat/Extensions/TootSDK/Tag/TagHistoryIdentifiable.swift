import Foundation
import TootSDK

extension Tag.History: Identifiable {

  public var id: Date {
    day
  }
}
