import TootSDK

extension Session {

  public func getContext(_ post: Post) async throws -> Context {
    let context = try await client.getContext(of: post)
    await addPostAccounts(context.ancestors)
    await addPostAccounts(context.descendants)
    return context
  }
}
