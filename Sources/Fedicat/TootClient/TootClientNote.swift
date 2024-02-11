import TootSDK

extension TootClient {

  public func setNote(
    for account: Account,
    _ comment: String
  ) async throws -> Relationship {
    try await setNoteForAccount(
      by: account.id,
      params: SetNoteForAccountParams(comment: comment))
  }
}
