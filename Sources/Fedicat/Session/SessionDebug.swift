import TootSDK

extension Session {

  // debug anything in Session?
  public var debug: Bool {
    get {
      client.debug
    }
    set {
      client.debug = newValue
    }
  }
}
