import TootSDK

/// https://docs.joinmastodon.org/methods/instance/#rules
extension Session {

  public func getRules() async throws -> [InstanceRule] {
    try await client.getInstanceRules()
  }

  public var supportsRules: Bool {
    platform?.supportsInstanceRules ?? false
  }
}
