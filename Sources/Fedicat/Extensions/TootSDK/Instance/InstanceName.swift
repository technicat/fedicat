import TootSDK

extension Instance {

  public var name: String? {
    title ?? uri
  }
}
