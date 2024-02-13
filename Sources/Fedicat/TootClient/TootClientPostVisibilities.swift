//
//  File.swift
//  
//
//  Created by Philip Chu on 2/12/24.
//

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
