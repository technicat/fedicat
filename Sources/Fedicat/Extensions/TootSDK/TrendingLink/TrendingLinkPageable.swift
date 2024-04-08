import TootSDK

extension TrendingLink: Pageable {
}

extension TrendingLink: Identifiable {

  public var id: String {
    url
  }
}
