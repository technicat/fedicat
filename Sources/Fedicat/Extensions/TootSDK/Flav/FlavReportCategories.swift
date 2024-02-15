import TootSDK

extension TootSDKFlavour {
  public var reportCategories: [ReportCategory] {
    switch self {
    case .firefish:
      return []
    case .pixelfed:
      return Array(ReportCategory.pixelfedSupported)
    default:
      return Array(ReportCategory.mastodonSupported)
    }
  }
}
