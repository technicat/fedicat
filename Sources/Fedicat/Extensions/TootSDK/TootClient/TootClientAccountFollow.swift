import TootSDK

extension TootClient {

  /// https://docs.joinmastodon.org/methods/accounts/#follow
  public func follow(
    _ account: Account,
    includeBoosts: Bool = true,
    onlyLanguages: [ISOCode]? = nil,
    notifyPosts: Bool = false
  ) async throws -> Relationship {
    let params = FollowAccountParams(
      reposts: includeBoosts,
      notify: notifyPosts,
      languages: onlyLanguages?.map { $0.rawValue })
    return try await followAccount(by: account.id, params: params)
  }

  /// https://docs.joinmastodon.org/methods/accounts/#unfollow
  public func unFollow(_ account: Account) async throws -> Relationship {
    try await unfollowAccount(by: account.id)
  }
}
