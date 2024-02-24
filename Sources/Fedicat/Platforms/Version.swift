import Foundation

public struct Version {
  public var major: Int
  public var minor: Int
  public var patch: String

// todo - make patch an Int
  public init(_ major: Int, _ minor: Int, _ patch: String = "") {
    self.major = major
    self.minor = minor
    self.patch = patch
  }
}
