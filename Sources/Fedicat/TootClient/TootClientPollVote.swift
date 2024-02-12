import Foundation  // IndexSet
import TootSDK

extension TootClient {

  public func vote(in poll: Poll, for choices: IndexSet) async throws -> Poll {
    try await votePoll(id: poll.id, choices: choices)
  }

  public func vote(in poll: Poll, for index: Int) async throws -> Poll {
    try await vote(in: poll, for: IndexSet(integer: index))
  }

  public func vote(in poll: Poll, for option: Poll.Option) async throws -> Poll {
    guard let index = poll.index(of: option) else {
      return poll
    }
    return try await vote(in: poll, for: index)
  }

}
