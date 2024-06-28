import Foundation
import TootSDK
// struct?
//final public class ProfileField: Identifiable {
//
//  public var name: String = ""
//  public var value: String = ""
//
//  public var isEmpty: Bool {
//    name.isBlank && value.isBlank
//  }
//}

public struct ProfileField: Identifiable {
    public var id: String {
        UUID().uuidString
    }

  public var name: String = ""
  public var value: String = ""

  public var isEmpty: Bool {
    name.isBlank && value.isBlank
  }
}
