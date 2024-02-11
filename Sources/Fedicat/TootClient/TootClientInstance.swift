import TootSDK

extension TootClient {

  /// call this instead of getInstanceInfo
  /// ensures that client is updated with flavour
  public func getInstance() async throws -> Instance {
    let instance = try await getInstanceInfo()
    if debugInstance {
      Logger.log.info("flavour: \(instance.flavour.display)")
      Logger.log.info("version: \(instance.version)")
    }
    flavour = instance.flavour
    return instance
  }
}
