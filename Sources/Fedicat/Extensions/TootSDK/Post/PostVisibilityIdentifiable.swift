import TootSDK

extension Post.Visibility: Identifiable {
  public var id: String {
    rawValue
  }
}
