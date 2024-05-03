import TootSDK

extension Session {

  public var canSchedule: Bool {
    isAuth && supportsSchedule
  }

  public var supportsSchedule: Bool {
    platform?.supportsSchedule ?? false
  }

  public var canScheduleUpdate: Bool {
    isAuth && supportsScheduleUpdate
  }

  public var supportsScheduleUpdate: Bool {
    platform?.supportsScheduleUpdate ?? false
  }

}
