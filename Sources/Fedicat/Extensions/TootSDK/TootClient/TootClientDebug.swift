import TootSDK

extension TootClient {

  public var debug: Bool {
    get {
      debugInstance || debugResponses || debugRequests
    }
    set {
      debugInstance = newValue
      debugRequests = newValue
      debugResponses = newValue
    }
  }
}
