import TootSDK

extension Session {

  var supportsPostLanguages: Bool {
    platform?.hasLanguages ?? false
  }

  var supportsPostDefaultLanguage: Bool {
    platform?.supportsPostDefaultLanguage ?? false
  }

  var supportsPostDefaultSensitive: Bool {
    platform?.supportsPostDefaultSensitive ?? false
  }

  var supportsPostDefaultVisibility: Bool {
    platform?.supportsPostDefaultVisibility ?? false
  }

  var supportsPostDefaults: Bool {
    supportsUpdateAccount
      && (supportsPostDefaultLanguage || supportsPostDefaultSensitive
        || supportsPostDefaultVisibility)
  }

  var languages: [ISOCode] {
    platform?.languages ?? []
  }

  public func getContext(_ post: Post) async throws -> Context {
    let context = try await client.getContext(of: post)
    await addPostAccounts(context.ancestors)
    await addPostAccounts(context.descendants)
    return context
  }
}
