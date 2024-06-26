import TootSDK

extension Session {

  @MainActor public func setTimeline(_ timeline: Timeline) {
    self.timeline = timeline
  }

  public func getTimeline(
    _ timeline: Timeline,
    _ page: PagedInfo? = nil,
    limit: Int? = nil
  ) async throws -> PagedResult<[Post]> {
    let result = try await client.getTimeline(
      timeline,
      pageInfo: page,
      limit: limit)
    let posts = result.result
    await addPostAccounts(posts)
    return result
  }

  private func getPageLimit(for timeline: Timeline) -> Int {
    platform?.getLimit(for: timeline, isAuth) ?? 0
  }

  public func supports(_ timeline: Timeline) -> Bool {
    getPageLimit(for: timeline) > 0
  }
}
