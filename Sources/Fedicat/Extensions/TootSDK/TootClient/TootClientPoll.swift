import TootSDK

extension TootClient {

  /// https://docs.joinmastodon.org/methods/polls/#get
  public func refresh(_ poll: Poll) async throws -> Poll {
    try await getPoll(id: poll.id)
  }

}
