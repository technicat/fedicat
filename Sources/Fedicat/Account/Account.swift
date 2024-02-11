import TootSDK

extension Account {
    
    public var hasFields: Bool {
        !fields.isEmpty
    }
    
    public var isBot: Bool {
        bot ?? false
    }
    
    public var isDiscoverable: Bool {
        discoverable ?? false
    }
    
    public var isLimited: Bool {
        limited ?? false
    }
    
    public var isMoved: Bool {
        moved != nil
    }
    
    public var isSuspended: Bool {
        suspended ?? false
    }
    
    public var isDeprecated: Bool {
        isSuspended || isLimited || isMoved
    }
}
