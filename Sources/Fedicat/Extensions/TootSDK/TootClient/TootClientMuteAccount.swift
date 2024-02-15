import TootSDK

extension TootClient {

  public func mute(
    _ account: Account,
    params: MuteAccountParams? = nil
  ) async throws -> Relationship {
    try await muteAccount(by: account.id, params: params)
  }

  public func unMute(_ account: Account) async throws -> Relationship {
    try await unmuteAccount(by: account.id)
  }
}
