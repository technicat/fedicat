import TootSDK

// maybe move this to tootsdk
extension InstanceV1 {

  public var name: String? {
    title ?? uri
  }
}
