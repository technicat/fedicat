import TootSDK

extension Session {

  public var supportsReport: Bool {
    platform?.supportsReport ?? false
  }

  public var supportsReportRules: Bool {
    platform?.supportsReportRules ?? false
  }

  public var reportCategories: [ReportCategory] {
    platform?.reportCats ?? []
  }

  public func report(
    account: Account,
    comment: String,
    forward: Bool = false,
    category: ReportCategory,
    posts: [Post],
    rules: [InstanceRule] = []
  ) async throws {
    try await client.report(
      account: account,
      comment: comment.orNil,
      forward: orNil(forward, false),
      category: category,
      posts: posts,
      rules: rules)
  }
}
