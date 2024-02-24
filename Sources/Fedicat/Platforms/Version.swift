import Foundation

public struct Version {
  public var major: Int
  public var minor: Int
  public var patch: String

  public init(major: Int = 0, minor: Int = 0, patch: String = "") {
self.major = major
self.minor = minor
self.patch = patch
  }
}
