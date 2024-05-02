import TootSDK

extension Session {

  public var isAuth: Bool {
    !client.isAnonymous
  }
}
