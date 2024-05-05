import TootSDK

/// https://docs.joinmastodon.org/methods/instance/#rules
extension Session {

  public func getInstanceRules() async throws -> [InstanceRule] {
    try await client.getInstanceRules()
  }
}
