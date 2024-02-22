import TootSDK

extension TootClient {

  public func follow(
    _ account: Account,
    params: FollowAccountParams? = nil
  ) async throws -> Relationship {
    try await followAccount(by: account.id, params: params)
  }

  public func follow(
    _ account: Account,
    reposts: Bool = true,
    notify: Bool = false,
    languages: [String]? = []
  ) async throws -> Relationship {
    try await follow(
      account,
      params: FollowAccountParams(
        reposts: reposts,
        notify: notify,
        languages: languages))
  }

  public func follow(
    _ account: Account,
    reposts: Bool = true,
    notify: Bool = false,
    languages: [ISOCode]? = nil
  ) async throws -> Relationship {
    try await follow(
      account, reposts: reposts, notify: notify,
      languages: languages?.map { $0.rawValue })
  }

  public func unFollow(_ account: Account) async throws -> Relationship {
    try await unfollowAccount(by: account.id)
  }
}
