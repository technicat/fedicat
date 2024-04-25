import Foundation
import TootSDK

extension Tag: Comparable {

  static public func < (lhs: Tag, rhs: Tag) -> Bool {
    lhs.name.caseInsensitiveCompare(rhs.name) == ComparisonResult.orderedAscending
  }
}
