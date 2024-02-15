import TootSDK

extension TootField {

  public var isVerified: Bool {
    verifiedAt != nil
  }
}
