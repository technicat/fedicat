import Foundation
import TootSDK

extension Account: Comparable {

  public static func < (lhs: TootSDK.Account, rhs: TootSDK.Account) -> Bool {
    lhs.userName.caseInsensitiveCompare(rhs.userName) == ComparisonResult.orderedAscending
  }
}
