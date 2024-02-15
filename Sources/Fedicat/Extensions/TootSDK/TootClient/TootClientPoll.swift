import TootSDK

extension TootClient {

  public func refresh(_ poll: Poll) async throws -> Poll {
    try await getPoll(id: poll.id)
  }

}
