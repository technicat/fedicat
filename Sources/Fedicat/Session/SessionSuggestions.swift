import TootSDK

/// https://docs.joinmastodon.org/methods/suggestions/
extension Session {

  public var canReadSuggestions: Bool {
    isAuth && !suggestionSources.isEmpty
  }

  public var suggestionSources: SuggestionSources {
    platform?.suggestionSources ?? []
  }

  public func getSuggestions() async throws -> [Suggestion] {
    let sugg = try await client.getSuggestions(limit: suggestionsLimit)
    await addAccounts(sugg)
    return sugg
  }

  // todo - get from platform
  private var suggestionsLimit: Int {
    80
  }

  /// https://docs.joinmastodon.org/methods/suggestions/#remove
  public func delete(_ suggestion: Suggestion) async throws {
    // only works with source.past_interactions
    guard suggestion.source == .pastInteractions else {
      return
    }
    try await client.delete(suggestion)
  }
}
