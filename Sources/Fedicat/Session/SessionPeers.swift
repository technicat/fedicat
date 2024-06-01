import TootSDK

extension Session {

  public func getPeers() async throws
    -> [String]
  {
    try await client.getInstancePeers()
  }
}
