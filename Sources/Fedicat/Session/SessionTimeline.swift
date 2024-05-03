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
      limit: getTimelineLimit(timeline))
    let posts = result.result
    await addPostAccounts(posts)
    return result
  }

  // todo - get this from platform
  private func getTimelineLimit(_ timeline: Timeline) -> Int {
    switch timeline {
    default:
      // use max limit to minimize queries
      return 40
    }
  }

  public var supportsFaveTimeline: Bool {
    platform?.supportsFaveTimeline ?? false
  }

  public var supportsTagTimeline: Bool {
    platform?.supportsTagTimeline ?? false
  }
}
