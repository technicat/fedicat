import TootSDK

extension Tag: Identifiable {

  public var id: String {
    name
  }
}
