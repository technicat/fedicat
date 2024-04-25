import TootSDK

extension FilterResult: Identifiable {
  public var id: String {
    filter.id
  }
}
