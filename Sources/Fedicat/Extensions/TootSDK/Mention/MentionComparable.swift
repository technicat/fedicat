import TootSDK

// should this be case-insensitive?
extension Mention: Comparable {
  public static func < (lhs: TootSDK.Mention, rhs: TootSDK.Mention) -> Bool {
    lhs.username < rhs.username
  }

}
