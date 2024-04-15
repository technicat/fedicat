import TootSDK

extension Poll {

  public var isVotable: Bool {
    !hasExpired && !hasFinishedVoting
  }

  public var hasVoted: Bool {
    voted ?? false
  }

  public var hasFinishedVoting: Bool {
    hasVoted && isSingleChoice
  }

  public func index(of option: Poll.Option) -> Int? {
    options.firstIndex(of: option)
  }

  public func didVote(for index: Int) -> Bool {
    ownVotes?.contains(index) ?? false
  }

  public func didVote(for option: Poll.Option) -> Bool {
    guard let index = index(of: option) else {
      return false
    }
    return didVote(for: index)
  }
}
