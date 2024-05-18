import TootSDK

extension Session {

  public var supportsReport: Bool {
    platform?.supportsReport ?? false
  }

  public var supportsReportRules: Bool {
    platform?.supportsReportRules ?? false
  }

  public var reportCategories: ReportCats {
    platform?.reportCats ?? []
  }

  public func report(
    _ account: Account,
    comment: String,
    forward: Bool = false,
    category: Report.Category,
    rules: [InstanceRule] = []
  ) async throws {
    try await client.report(
      account,
      comment: comment.notBlank,
      forward: orNil(forward, false),
      category: category,
      rules: rules)
  }

  public func report(
    _ post: Post,
    comment: String,
    forward: Bool = false,
    category: Report.Category,
    rules: [InstanceRule] = []
  ) async throws {
    try await client.report(
      post.account,
      comment: comment.notBlank,
      forward: orNil(forward, false),
      category: category,
      posts: [post],
      rules: rules)
  }

  public func reportPixelfed(
    _ account: Account,
    comment: String,
    category: Report.Category
  ) async throws {
    try await client.reportPixelfed(
      account,
      comment: comment.notBlank,
      category: category)
  }

  public func reportPixelfed(
    _ post: Post,
    comment: String,
    category: Report.Category
  ) async throws {
    try await client.reportPixelfed(
      post,
      comment: comment.notBlank,
      category: category)
  }
}
