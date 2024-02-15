import TootSDK

extension TootClient {

  /// call this instead of getInstanceInfo
  /// ensures that client flavour is updated
  public func getInstance() async throws -> Instance {
    let instance = try await getInstanceInfo()
    flavour = instance.flavour
    return instance
  }
}
