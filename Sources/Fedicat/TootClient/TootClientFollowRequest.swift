import TootSDK

extension TootClient {

  public func acceptFollow(from account: Account) async throws {
    try await acceptFollowRequest(id: account.id)
  }

  public func rejectFollow(from account: Account) async throws {
    try await rejectFollowRequest(id: account.id)
  }
}
