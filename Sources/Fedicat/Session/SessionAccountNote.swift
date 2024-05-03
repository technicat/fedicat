import TootSDK

extension Session {

  public var canNote: Bool {
    isAuth && supportsNote
  }

  public var supportsNote: Bool {
    platform?.supportsNote ?? false
  }

  public func setNote(
    for account: Account,
    _ comment: String
  ) async throws -> Relationship {
    try await client.setNote(for: account, comment)
  }
}
