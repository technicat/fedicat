import TootSDK

extension Session {

  public var needsPlatformUpdate: Bool {
    return platform?.needsUpdate ?? true
  }

  @MainActor public func setPlatform(_ platform: Platform) {
    self.platform = platform
  }
}
