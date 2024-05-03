import TootSDK

extension Session {

  public var supportsBot: Bool {
    platform?.supportsBot ?? false
  }

  public var supportsDiscoverable: Bool {
    platform?.supportsDiscoverable ?? false
  }

  public var supportsHideCollections: Bool {
    platform?.supportsHideCollections ?? false
  }

  public var supportsIndexable: Bool {
    platform?.supportsIndexable ?? false
  }

  public var supportsProfileFields: Bool {
    platform?.supportsProfileFields ?? false
  }

  public var supportsProfileImageDelete: Bool {
    platform?.supportsProfileImageDelete ?? false
  }

  public var canDeleteProfileImage: Bool {
    isAuth && supportsProfileImageDelete
  }
}
