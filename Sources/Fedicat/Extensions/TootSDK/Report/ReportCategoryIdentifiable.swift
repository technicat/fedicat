import TootSDK

extension Report.Category: Identifiable {
  public var id: String {
    rawValue
  }
}
