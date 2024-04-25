import Foundation
import TootSDK

extension FeaturedTag: Comparable {
  public static func < (
    lhs: TootSDK.FeaturedTag,
    rhs: TootSDK.FeaturedTag
  ) -> Bool {
      // or could use this
    //  lhs.postsCount < rhs.postsCount
    lhs.name < rhs.name
  }

}
