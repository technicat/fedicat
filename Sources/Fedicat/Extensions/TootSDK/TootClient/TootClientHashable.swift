import TootSDK

extension TootClient: Hashable {

  public func hash(into hasher: inout Hasher) {
    hasher.combine(instanceURL)
  }
}
