import Foundation

extension ISOCode: Identifiable {
  public var id: String {
    self.rawValue
  }
}
