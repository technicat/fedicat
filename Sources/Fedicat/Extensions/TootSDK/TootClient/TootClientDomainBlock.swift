import TootSDK

extension TootClient {

  /// https://docs.joinmastodon.org/methods/domain_blocks/#block
  public func block(domain: String) async throws {
    try await userBlockDomain(domain: domain)
  }

  /// https://docs.joinmastodon.org/methods/domain_blocks/#unblock
  public func unBlock(domain: String) async throws {
    try await userUnblockDomain(domain: domain)
  }
}
