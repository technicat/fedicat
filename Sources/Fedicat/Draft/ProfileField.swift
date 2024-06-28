import Foundation
import TootSDK

final public class ProfileField: Identifiable {

  public init(name: String, value: String) {
    self.name = name
    self.value = value
  }

  public var name: String = ""
  public var value: String = ""

  public var isEmpty: Bool {
    name.isBlank && value.isBlank
  }
}
