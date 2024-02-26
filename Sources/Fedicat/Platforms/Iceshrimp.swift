// rewriting in the engine in .NET
// so maybe separate from firefish at that point
// or create a new IceshrimpNET class
open class Iceshrimp: Firefish {

  open override var name: String { "Iceshrimp" }
  open override var supportsExtendedDescription: Bool { false }
  open override var supportsFilter: Bool { false }
  open override var supportsFollowTag: Bool { false }
  open override var supportsReportRules: Bool { false }
  open override var supportsTrendingTags: Bool { true }
}
