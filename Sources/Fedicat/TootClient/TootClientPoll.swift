import TootSDK

extension TootClient {

  public func refresh(_ poll: Poll) async throws -> Poll {
    getPoll(id: poll.id)
  }

}
