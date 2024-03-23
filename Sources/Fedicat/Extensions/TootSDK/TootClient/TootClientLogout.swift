import TootSDK

extension TootClient {

  public func logout() async throws {
    guard let id else {
      // throw?
      return
    }
    guard let secret else {
      // throw?
      return
    }
    try await logout(clientId: id, clientSecret: secret)
  }
}
