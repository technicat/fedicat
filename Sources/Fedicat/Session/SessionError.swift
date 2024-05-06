import Foundation
import TootSDK

    public enum SessionError: Error, LocalizedError, Equatable {
        case noDomain // 
        case noSecret // 
        case noReblog // should pass post
        case alreadyBoosted //
}
