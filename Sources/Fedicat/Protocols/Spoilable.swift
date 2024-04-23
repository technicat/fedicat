import Foundation

extension Spoilable {
    
    public var hasSpoiler: Bool {
        // ok if whitespace, just the presence indicates a spoiler
        spoiler != nil
    }
}

public protocol Spoilable  {

    var spoiler: String? { get }
}
