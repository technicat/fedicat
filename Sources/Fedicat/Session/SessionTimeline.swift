import TootSDK

extension Session {

  @MainActor public func setTimeline(_ timeline: Timeline) {
    self.timeline = timeline
  }

  public func getTimeline(
    _ timeline: Timeline,
    _ page: PagedInfo? = nil
  ) async throws -> PagedResult<[Post]> {
    let result = try await client.getTimeline(
      timeline,
      pageInfo: page,
      limit: getPageLimit(for: timeline))
    let posts = result.result
    await addPostAccounts(posts)
    return result
  }

  private func getPageLimit(for timeline: Timeline) -> Int? {
      platform?.getLimit(for: timeline)
  }

  public var supportsFaveTimeline: Bool {
      platform?.supports(Timeline.favourites) ?? false
  }

  public var supportsTagTimeline: Bool {
    platform?.supportsTagTimeline ?? false
  }
}
