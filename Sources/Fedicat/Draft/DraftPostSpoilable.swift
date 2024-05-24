import TootSDK

extension DraftPost: Spoilable {

  public var spoiler: String? {
    spoilerText.notBlank
  }
}
