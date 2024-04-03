import TootSDK

extension ScheduledPost {
    
    public var isSensitive: Bool {
        params.sensitive ?? false
    }
}
