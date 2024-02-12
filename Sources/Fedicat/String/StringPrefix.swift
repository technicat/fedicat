import RegexBuilder

@available(macOS 13, *)
@available(iOS 16, *)
extension String {

  public var hashName: String {
    "#\(self)"
  }

  public var atName: String {
    "@\(self)"
  }
}
