import Foundation
import TootSDK

extension Poll.Option: Identifiable {

  public var id: String {
    title
  }
}
