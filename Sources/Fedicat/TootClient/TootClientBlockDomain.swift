import TootSDK

extension TootClient {

  public func block(domain: String) async throws {
    try await userBlockDomain(domain: domain)
  }

  public func unBlock(domain: String) async throws {
    try await userUnblockDomain(domain: domain)
  }
}
