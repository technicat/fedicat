import TootSDK

extension Session {

  public func getPreferences() async throws -> Preferences {
    try await client.getPreferences()
  }
}
