open class Friendica: MastoAPI {

  open override var name: String { "Friendica" }
  open override var supportsBookmark: Bool { true }
  open override var supportsDomainBlocks: Bool { false }
  open override var supportsUpdateAccount: Bool { false }
  open override var languages: [ISOCode] { ISOCode.allCases }
  open override var supportsFollowTag: Bool { true }
  open override var supportsSchedule: Bool { true }
  open override var supportsPollVote: Bool { false }

}
