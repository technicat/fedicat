import TootSDK

extension TootClient {

  public func logout() {
    guard let id else {
      // throw?
      return
    }
    guard let secret else {
      // throw?
      return
    }
    Task {
      try await logout(clientId: id, clientSecret: secret)
    }
  }
}
