import TootSDK

extension Session {

  public var canFollowTag: Bool {
    isAuth && supportsTagFollow
  }
    
    public var supportsTagFollow: Bool {
      platform?.supportsFollowTag ?? false
    }

  @MainActor func add(follow tag: Tag) {
    followedTags[tag.name] = tag
  }

  @MainActor func remove(follow tag: Tag) {
    followedTags[tag.name] = nil
  }

  // maybe MainActor?
  public var followedTagsArray: [Tag] {
    followedTags.map(\.1)
  }

  //  @ObservationIgnored
  //  var followedTagsSorted: [Tag] {
  //    followedTagsArray.sorted(by: <)
  //  }

  @discardableResult
  public func follow(tag name: String) async throws -> Tag {
    let tag = try await client.follow(tag: name)
    await add(follow: tag)
    return tag
  }

  public func follow(tag: Tag) async throws -> Tag {
    try await follow(tag: tag.name)
  }

  public func unFollow(tag name: String) async throws -> Tag {
    let tag = try await client.unFollow(tag: name)
    await remove(follow: tag)
    return tag
  }

  public func unFollow(tag: Tag) async throws -> Tag {
    try await unFollow(tag: tag.name)
  }

  /// https://docs.joinmastodon.org/methods/followed_tags/
  public func getFollowedTags(_ page: PagedInfo? = nil) async throws -> PagedResult<
    [Tag]
  > {
    let result = try await client.getFollowedTags(page, limit: followedTagsPageLimit)
    for tag in result.result {
      await add(follow: tag)
    }
    return result
  }
    
    private var followedTagsPageLimit: Int? {
        platform?.followedTagsPageLimit
    }

  public func getAllFollowedTags() async throws {
    try await client.getPages { page in try await getFollowedTags(page) }
  }
}
