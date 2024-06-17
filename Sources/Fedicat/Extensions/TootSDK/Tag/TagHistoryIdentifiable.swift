import Foundation
import TootSDK

extension TagHistory: Identifiable {

  public var id: Date {
    day
  }
}
