import TootSDK

extension Session {

    /// works with short lists, but long lists (thousands) crash, so it's not really usable
    /// https://docs.joinmastodon.org/methods/instance/#peers
  public func getPeers() async throws
    -> [String]
  {
    try await client.getInstancePeers()
  }
}
