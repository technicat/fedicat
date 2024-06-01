import TootSDK

extension Session {

  public var canSchedule: Bool {
    isAuth && supportsSchedule
  }

  public var supportsSchedule: Bool {
    scheduledPageLimit > 0
  }

  public var canScheduleUpdate: Bool {
    isAuth && supportsScheduleUpdate
  }

  public var supportsScheduleUpdate: Bool {
    platform?.supportsScheduleUpdate ?? false
  }

  public func getScheduledPosts(_ page: PagedInfo? = nil) async throws
    -> PagedResult<[ScheduledPost]>
  {
    let result = try await client.getScheduledPosts(page)
    hasSchedule = !(result.result.isEmpty && page == nil)
    return result
  }

  private var scheduledPageLimit: Int {
    platform?.scheduledPageLimit ?? 0
  }

}
