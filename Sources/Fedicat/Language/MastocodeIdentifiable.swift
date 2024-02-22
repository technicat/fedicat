import Foundation

extension MastoCode: Identifiable {
  public var id: String {
    self.rawValue
  }
}
