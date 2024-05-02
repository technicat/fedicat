import TootSDK

extension Session {

  public var canVote: Bool {
    isAuth && supportsVote
  }

  public var supportsVote: Bool {
    isAuth && platform?.supportsPollVote ?? false
  }

  @discardableResult
  public func vote(in poll: Poll, for option: Poll.Option) async throws -> Poll {
    try await client.vote(in: poll, for: option)
  }
}
