import TootSDK

/// https://docs.joinmastodon.org/methods/instance/#activity
extension Session {

  public func getActivity() async throws -> [Activity] {
    try await client.getInstanceActivity()
  }
    
    public var supportsActivity: Bool {
        platform?.supportsInstanceActivity ?? false
    }
}
