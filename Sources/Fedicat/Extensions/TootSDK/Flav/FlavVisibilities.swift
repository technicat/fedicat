import TootSDK

extension TootSDKFlavour {

  public var postVisibilities: [Post.Visibility] {
    switch self {
    case .friendica, .pixelfed:
      [.public, .unlisted, .private]
    default:
      Post.Visibility.allCases
    }
  }
}
