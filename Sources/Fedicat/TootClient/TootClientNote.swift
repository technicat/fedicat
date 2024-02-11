import TootSDK

extension TootClient {

  public func setNoteForAccount(
    by id: String,
    comment: String
  ) async throws -> Relationship {
    try await setNoteForAccount(
      by: id,
      params: SetNoteForAccountParams(comment: comment))
  }
}
