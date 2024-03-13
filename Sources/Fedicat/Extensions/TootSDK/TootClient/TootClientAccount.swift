import TootSDK

extension TootClient {

  public func refresh(_ account: Account) async throws -> Account {
    try await getAccount(by: account.id)
  }

  public func updateAccountSettings(
    locked: Bool? = nil,
    bot: Bool? = nil,
    discoverable: Bool? = nil,
    hideCollections: Bool? = nil,
    indexable: Bool? = nil
  ) async throws -> Account {
    let params = UpdateCredentialsParams(
      locked: locked,
      bot: bot,
      discoverable: discoverable,
      hideCollections: hideCollections,
      indexable: indexable)
    return try await updateCredentials(params: params)
  }
}
