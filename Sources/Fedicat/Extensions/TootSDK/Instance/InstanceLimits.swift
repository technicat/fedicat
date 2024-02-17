import TootSDK

extension Instance {

  public var maxPostChars: Int? {
    configuration?.posts?.maxCharacters
  }

  public var maxAttachments: Int? {
    configuration?.posts?.maxMediaAttachments
  }

  public var maxFeaturedTags: Int? {
    configuration?.accounts?.maxFeaturedTags
  }
}
