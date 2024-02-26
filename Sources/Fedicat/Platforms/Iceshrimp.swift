// rewriting in the engine in .NET
// so maybe separate from firefish at that point
// or create a new IceshrimpNET class
open class Iceshrimp: Firefish {

  open override var name: String { "Iceshrimp" }
  open override var supportsTrendingTags: Bool { true }
}
