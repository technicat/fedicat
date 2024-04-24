import TootSDK

extension Card: Identifiable {
  public var id: String {
    url
  }
}
