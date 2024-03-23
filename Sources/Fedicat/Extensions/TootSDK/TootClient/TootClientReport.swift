import TootSDK

extension TootClient {
    
    // todo - pass ruleIds
    // firefish doesn't use category or ruleIds
    public func report(
        account: Account,
        comment: String?,
        forward: Bool?,
        category: ReportCategory,
        posts: [Post]
    ) async throws {
        let params = ReportParams(
            accountId: account.id,
            category: category,
            postIds: posts.map { $0.id },
            comment: comment,
            forward: forward)
        try await report(params)
    }
}
