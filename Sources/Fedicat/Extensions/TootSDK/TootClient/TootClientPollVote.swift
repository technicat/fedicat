import Foundation  // IndexSet
import TootSDK

/// https://docs.joinmastodon.org/methods/polls/#vote
extension TootClient {

  /// fedicat handles multiple choice by voting for each option individually
  /// if we need to batch, then support passing a collection of options
  public func vote(in poll: Poll, for option: Poll.Option) async throws -> Poll {
    guard let index = poll.index(of: option) else {
      return poll
    }
    return try await votePoll(id: poll.id, choices: IndexSet(integer: index))
  }

}
