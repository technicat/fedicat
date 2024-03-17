import TootSDK

// should we rename to appName, appSecret, etc.?
/// https://docs.joinmastodon.org/entities/Application/
extension TootClient {

  public var app: TootApplication? {
    currentApplicationInfo
  }

  public var id: String? {
    app?.clientId
  }

  public var secret: String? {
    app?.clientSecret
  }

  public var website: String? {
    app?.website
  }

  public var name: String? {
    app?.name
  }
}
