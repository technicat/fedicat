import TootSDK

extension Session {

  @MainActor public func setInstance(_ instance: Instance) {
    self.instance = instance
    if needsPlatformUpdate, let platform = instance.platform {
      setPlatform(platform)
    }
    if let account = instance.contactAccount {
      addAccount(account)
    }
  }

  /// https://docs.joinmastodon.org/methods/instance/
  @discardableResult
  public func getInstanceV1() async throws -> InstanceV1 {
    let instance = try await client.getInstanceV1()
    await setInstance(instance)
    return instance
  }

  @discardableResult
  public func getInstanceV2() async throws -> InstanceV2 {
    let instance = try await client.getInstanceV2()
    await setInstance(instance)
    return instance
  }

  public var supportsInstanceV2: Bool {
    platform?.supportsInstanceV2 ?? false
  }
}
