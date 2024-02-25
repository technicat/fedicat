import Foundation

extension Version: Comparable {
  public static func < (lhs: Version, rhs: Version) -> Bool {
    lhs.major < rhs.major
      || (lhs.major == rhs.major
        && (lhs.minor < rhs.minor || lhs.minor == rhs.minor && lhs.patch < rhs.patch))
  }

  public static func == (lhs: Version, rhs: Version) -> Bool {
    lhs.major == rhs.major && lhs.minor == rhs.minor && lhs.patch == rhs.patch
  }

}
