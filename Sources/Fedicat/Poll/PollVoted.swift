import TootSDK

extension Poll {
    public var hasVoted: Bool {
        voted ?? false
    }
}
