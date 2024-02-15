import TootSDK

extension FeaturedTag {

  public var tag: Tag {
    Tag(name: name, url: url)
  }
}
