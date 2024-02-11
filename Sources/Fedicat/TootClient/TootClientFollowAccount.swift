import TootSDK

extension TootClient {

  public func follow(
    _ account: Account,
    params: FollowAccountParams? = nil
  ) async throws -> Relationship {
    try await followAccount(by: account.id, params: params)
  }

  public func unFollow(_ account: Account) async throws -> Relationship {
    try await unfollowAccount(by: account.id)
  }
}
