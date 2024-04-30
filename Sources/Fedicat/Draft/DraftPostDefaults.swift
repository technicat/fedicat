import TootSDK
import Foundation

@Observable
public class DraftPostDefaults {
    
    public var lang: ISOCode = .en
    public var visibility: Post.Visibility = .public
    public var sensitive: Bool = false
    
    @MainActor public func copy(from account: Account) {
        lang = account.defaultLanguage
        sensitive = account.defaultSensitive
        visibility = account.defaultVisibility
    }
    
    public init() {
    }
    
}

