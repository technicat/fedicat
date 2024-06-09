import TootSDK

/// https://docs.joinmastodon.org/methods/suggestions/
extension Session {

  public var canReadSuggestions: Bool {
      // todo - move auth check
    isAuth && supportsSuggestions
  }
    
    public var supportsSuggestions: Bool {
      suggestionsLimit > 0
    }

  public var suggestionSources: SuggestionSources {
    platform?.suggestionSources ?? []
  }

  public func getSuggestions(limit: Int? = nil) async throws -> [Suggestion] {
      let sugg = try await client.getSuggestions(limit: limit)
    await addAccounts(sugg)
    return sugg
  }

  private var suggestionsLimit: Int {
    platform?.suggestionsLimit ?? 0
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
