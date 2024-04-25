import TootSDK

// maybe move this to tootsdk
extension Instance {

  public var name: String? {
    title ?? uri
  }
}
