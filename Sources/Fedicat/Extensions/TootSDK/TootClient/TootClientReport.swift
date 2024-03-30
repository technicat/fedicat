import TootSDK

extension TootClient {

  public func report(
    account: Account,
    comment: String?,
    forward: Bool?,
    category: ReportCategory,
    posts: [Post] = [],
    rules: [InstanceRule] = []
  ) async throws {
    let params = ReportParams(
      accountId: account.id,
      category: category,
      postIds: posts.map { $0.id },
      comment: comment,
      forward: forward,
      ruleIds: category == .violation ? rules.map { Int($0.id) ?? 0 } : [])
    try await report(params)
  }
}
