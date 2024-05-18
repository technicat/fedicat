import TootSDK

extension Session {

  /// post visibilities available for the platform
  public var postVis: PostVisibilities {
    platform?.postVis ?? []
  }

  /// post visibilities suitable as a default
  public var postVisDefaults: PostVisibilities {
      postVis.subtracting([.direct])
  }

  /// post visibilities available for the platform
  public var boostVis:  PostVisibilities {
    platform?.boostVis ?? []
  }
}
