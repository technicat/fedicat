import TootSDK

extension TootClient {

  /// https://docs.joinmastodon.org/methods/accounts/#note
  public func setNote(
    for account: Account,
    _ comment: String
  ) async throws -> Relationship {
    try await setNoteForAccount(
      by: account.id,
      params: SetNoteForAccountParams(comment: comment))
  }
}
