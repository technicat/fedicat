import TootSDK

extension Session {
  public var supportsRevoke: Bool {
    platform?.supportsRevoke ?? false
  }

  public func logout() {
    if supportsRevoke {
      Task {
        try await client.logout()
      }
    }
  }
}
