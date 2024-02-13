import TootSDK

extension TootClient {
    
    var postVisibilities: [Post.Visibility] {
        switch flavour {
        case .friendica, .pixelfed:
            [.public, .unlisted, .private]
        default:
            Post.Visibility.allCases
        }
    }
}
