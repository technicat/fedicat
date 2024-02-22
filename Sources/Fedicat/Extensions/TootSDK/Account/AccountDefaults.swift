import TootSDK

extension Account {
    
    public var defaultVisibility: Post.Visibility {
        source?.privacy ?? .public
    }
    
    public var defaultSensitive: Bool {
        source?.sensitive ?? false
    }
    
    public var defaultLanguage: MastoCode {
        guard let lang = source?.language else {
            return .en
        }
        return MastoCode(rawValue: lang) ?? .en
    }
}
