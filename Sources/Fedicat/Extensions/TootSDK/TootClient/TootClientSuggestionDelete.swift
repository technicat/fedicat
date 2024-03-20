import TootSDK

extension TootClient {

  // only works with source.past_interactions
  public func delete(_ suggestion: Suggestion) async throws {
    try await removeSuggestion(id: suggestion.account.id)
  }
}
