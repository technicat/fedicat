import TootSDK

extension Session {

  @MainActor func setInstance(_ instance: Instance) {
    self.instance = instance
  }

  @MainActor func setPlatform(_ platform: Platform) {
    self.platform = platform
  }

  /// https://docs.joinmastodon.org/methods/instance/
  @discardableResult
  public func getInstance() async throws -> Instance {
    let instance = try await client.getInstance()
    await setInstance(instance)
    await setPlatform(instance.platform)
    if let account = instance.contactAccount {
      await addAccount(account)
    }
    return instance
  }

  @discardableResult
  public func getInstanceV2() async throws -> InstanceV2 {
    let instance = try await client.getInstanceV2()
    //      await setInstance(instance)
    //      await setPlatform(instance.platform)
    //      if let account = instance.contactAccount {
    //        await addAccount(account)
    //      }
    return instance
  }
    
    public var supportsInstanceV2: Bool {
        platform?.supportsInstanceV2 ?? false
    }
}
