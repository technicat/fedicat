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
    profileFieldsLimit > 0
  }

  public var supportsProfileImageDelete: Bool {
    platform?.supportsProfileImageDelete ?? false
  }

  public var canDeleteProfileImage: Bool {
    isAuth && supportsProfileImageDelete
  }

  public var profileFieldsLimit: Int {
    instance?.profileFieldsLimit ?? platform?.profileFieldsLimit ?? 0
  }

}
