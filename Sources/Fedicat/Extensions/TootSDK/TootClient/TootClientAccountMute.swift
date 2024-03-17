import TootSDK

extension TootClient {

  /// https://docs.joinmastodon.org/methods/accounts/#mute
  public func mute(
    _ account: Account,
    params: MuteAccountParams? = nil
  ) async throws -> Relationship {
    try await muteAccount(by: account.id, params: params)
  }

  /// https://docs.joinmastodon.org/methods/accounts/#unmute
  public func unMute(_ account: Account) async throws -> Relationship {
    try await unmuteAccount(by: account.id)
  }
}
