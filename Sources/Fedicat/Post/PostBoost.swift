import TootSDK

extension Post {

  public var isBoost: Bool {
    repost != nil
  }

  public var isBoosted: Bool {
    reposted ?? false
  }

  public var hasBoosts: Bool {
    repostsCount > 0
  }

}
