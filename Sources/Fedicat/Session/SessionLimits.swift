import TootSDK

extension Session {

  public var maxAltChars: Int {
    platform?.maxAltText ?? 1500  // harcoded mastodon limit
  }

  public var maxPostChars: Int? {
    instance?.maxPostChars
  }

  public var maxAttachments: Int? {
    instance?.maxAttachments
  }

  public var minAttachments: Int? {
    platform?.minAttachments
  }
    
    public var charsPerURL: Int? {
      instance?.charsPerURL
    }
    
    public var maxPins: Int? {
      instance?.maxPins
    }
}
