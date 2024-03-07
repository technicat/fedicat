import TootSDK

extension TootClient {

  public var debug: Bool {
    get {
      debugInstance || debugResponses || debugRequests
    }
    set {
      if newValue {
        debugOn()
      } else {
        debugOff()
      }
    }
  }
}
