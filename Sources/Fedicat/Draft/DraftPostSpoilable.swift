import TootSDK

@available(iOS 17.0, *)
extension DraftPost: Spoilable {

  public var spoiler: String? {
    spoilerText.notBlank
  }
}
