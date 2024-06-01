import TootSDK

extension Session {

  @MainActor public func setInstance(_ instance: Instance) {
    self.instance = instance
  }

  /// https://docs.joinmastodon.org/methods/instance/
  @discardableResult
  public func getInstance() async throws -> InstanceV1 {
    let instance = try await client.getInstance()
    await setInstance(instance)
    if needsPlatformUpdate, let platform = instance.platform {
      await setPlatform(platform)
    }
    if let account = instance.contactAccount {
      await addAccount(account)
    }
    return instance
  }

  @discardableResult
  public func getInstanceV2() async throws -> InstanceV2 {
    let instance = try await client.getInstanceV2()
    if let platform = instance.platform {
      await setPlatform(platform)
    }
    if let account = instance.contactAccount {
      await addAccount(account)
    }
    return instance
  }

  public var supportsInstanceV2: Bool {
    platform?.supportsInstanceV2 ?? false
  }
}
