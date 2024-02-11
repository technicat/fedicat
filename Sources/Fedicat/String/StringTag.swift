import RegexBuilder

@available(macOS 13, *)
@available(iOS 16, *)
extension String {

  private static let hashtagRegex = Regex {
    Capture {
      ChoiceOf {
        Anchor.startOfLine
        One(.whitespace)
      }
    }
    Capture {
      "#"
      OneOrMore(.word)
    }
  }
  .anchorsMatchLineEndings()
  .wordBoundaryKind(.default)

  public var bfTag: String {
    replacing(String.hashtagRegex, with: { match in "\(match.output.1)**\(match.output.2)**" })
  }

  public var hashName: String {
    "#\(self)"
  }

  public var atName: String {
    "@\(self)"
  }
}
