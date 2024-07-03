import TootSDK

extension Session {

  public var maxAltChars: Int? {
      instance?.descriptionLimit ?? platform?.maxAltText
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

  public var maxPollOptions: Int? {
    instance?.maxPollOptions
  }

  public var maxPollChars: Int? {
    instance?.maxPollChars
  }

  public var minPollExpiration: Int? {
    instance?.minPollExpiration
  }

  public var maxPollExpiration: Int? {
    instance?.maxPollExpiration
  }

  public var imageSizeLimit: Int? {
    instance?.imageSizeLimit
  }

  public var imageMatrixLimit: Int? {
    instance?.configuration?.mediaAttachments?.imageMatrixLimit
  }

  public var videoSizeLimit: Int? {
    instance?.videoSizeLimit
  }

  public var videoMatrixLimit: Int? {
    instance?.configuration?.mediaAttachments?.videoMatrixLimit
  }

  public var videoFrameRateLimit: Int? {
    instance?.configuration?.mediaAttachments?.videoFrameRateLimit
  }

  public var supportedMIMETypes: [MIMEType]? {
    instance?.configuration?.mediaAttachments?.supportedMimeTypes
  }
}
