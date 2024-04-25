import TootSDK

extension TootSDK.List: Comparable {

  public static func < (lhs: TootSDK.List, rhs: TootSDK.List) -> Bool {
    lhs.title < rhs.title
  }
}
