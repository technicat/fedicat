import Foundation
import TootSDK

extension TootSDK.List: Comparable {

  public static func < (lhs: TootSDK.List, rhs: TootSDK.List) -> Bool {
      lhs.title.caseInsensitiveCompare(rhs.title) == ComparisonResult.orderedAscending
  }
}
