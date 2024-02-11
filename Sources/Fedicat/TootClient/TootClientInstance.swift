import TootSDK

extension TootClient {

  /// call this instead of getInstanceInfo
  /// ensures that client is updated with flavour
  public func getInstance() async throws -> Instance {
    let instance = try await getInstanceInfo()
    flavour = instance.flavour
    return instance
  }
}
