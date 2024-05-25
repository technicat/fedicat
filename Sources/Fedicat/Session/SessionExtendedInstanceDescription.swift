import TootSDK

/// https://docs.joinmastodon.org/methods/instance/#extended_description
extension Session {

  public func getExtendedDescription() async throws -> ExtendedDescription {
    try await client.getExtendedDescription()
  }

  public var supportsExtendedDescription: Bool {
    platform?.supportsInstanceExtendedDescription ?? false
  }
}
