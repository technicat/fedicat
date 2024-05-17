import TootSDK

extension Session {

  /// post visibilities available for the platform
  public var postVis: [Post.Visibility] {
    platform?.postVis ?? []
  }

  /// post visibilities suitable as a default
  public var postVisDefaults: [Post.Visibility] {
    postVis.filter { $0 != .direct }
  }

  /// post visibilities available for the platform
  public var boostVis: [Post.Visibility] {
    platform?.boostVis ?? []
  }
}
