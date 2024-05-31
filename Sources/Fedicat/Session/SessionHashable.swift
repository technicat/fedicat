import Foundation

extension Session: Equatable, Hashable {
  public static func == (lhs: Session, rhs: Session) -> Bool {
    lhs.client == rhs.client
  }

  public func hash(into hasher: inout Hasher) {
    hasher.combine(client)
  }

}
