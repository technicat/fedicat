import Foundation
import TootSDK

public class ProfileField: Identifiable {

  public var name: String = ""
  public var value: String = ""

  public var isEmpty: Bool {
    name.isBlank && value.isBlank
  }
}
