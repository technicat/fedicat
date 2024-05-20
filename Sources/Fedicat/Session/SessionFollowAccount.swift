import TootSDK

extension Session {

  // todo get from platform
  public var maxFollow: Int {
    guard let account else {
      return 7500
    }
    return max(7500, Int(Float(account.followersCount) * 1.1))
  }

  public var canFollow: Bool {
    guard let account else {
      return false
    }
    return account.followingCount < maxFollow
  }

  public var supportsFollowNotify: Bool {
    platform?.supportsFollowNotify ?? false
  }

  public var supportsFollowLanguages: Bool {
    guard let platform else {
      return false
    }
    return platform.supportsFollowLanguages && platform.hasLanguages
  }

  @MainActor public func add(follow account: Account) {
    followedAccounts[account.id] = account
  }

  @MainActor public func remove(follow account: Account) {
    followedAccounts[account.id] = nil
  }

  public var followedAccountsArray: [Account] {
    followedAccounts.map(\.1)
  }

  @discardableResult
  public func follow(
    _ account: Account,
    includeBoosts: Bool = true,
    onlyLanguages: [ISOCode]? = nil,
    notifyPosts: Bool = false
  ) async throws -> Relationship {
    let rel = try await client.follow(
      account, includeBoosts: includeBoosts, onlyLanguages: onlyLanguages, notifyPosts: notifyPosts)
    // todo - check rel
    await add(follow: account)
    return rel
    //      if isFirefish { // isIceshrimp {
    //          return try await getRship(with: account) ?? rel
    //      } else {
    // return rel
    // }
  }

  @discardableResult
  public func unFollow(_ account: Account) async throws -> Relationship {
    let rel = try await client.unFollow(account)
    await remove(follow: account)
    // todo - check relationship
    return rel
  }

  @discardableResult
  public func follow(uri name: String) async throws -> Relationship {
    try await client.followAccount(uri: name)
  }
}
