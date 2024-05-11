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
    _ account: Account,
    comment: String,
    forward: Bool = false,
    category: ReportCategory,
    posts: [Post],
    rules: [InstanceRule] = []
  ) async throws {
    try await client.report(
      account,
      comment: comment.notBlank,
      forward: orNil(forward, false),
      category: category,
      posts: posts,
      rules: rules)
  }
    
    public func reportPixelfed(
      _ account: Account,
      comment: String,
      forward: Bool = false,
      category: ReportCategory,
      posts: [Post]
    ) async throws {
      try await client.reportPixelfed(
        account,
        comment: comment.notBlank,
        category: category)
    }
    
    public func reportPixelfed(
      _ post: Post,
      comment: String,
      category: ReportCategory
    ) async throws {
      try await client.reportPixelfed(
        post,
        comment: comment.notBlank,
        category: category)
    }
}
