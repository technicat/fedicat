//import Foundation
//import RegexBuilder
//
//@available(macOS 13, *)
//@available(iOS 16, *)
//extension String {
//
//  public var bfMention: String {
//    replacing(String.mentionRegex, with: { match in "\(match.output.1)**\(match.output.2)**" })
//  }
//
//  private static let mentionRegex = Regex {
//    Capture {
//      ChoiceOf {
//        Anchor.startOfLine
//        One(.whitespace)
//      }
//    }
//    Capture {
//      "@"
//      OneOrMore(.word)
//    }
//  }
//
//}
