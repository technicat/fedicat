import Foundation
import TootSDK

extension TootClient {
    
    // todo - pass in thumbnail and focus
    public func upload(
        _ data: Data,
        type: MIMEType,
        description: String? = nil
    ) async throws -> UploadedMediaAttachment {
        try await uploadMedia(
            UploadMediaAttachmentParams(
                file: data,
                thumbnail: nil,
                description: description,
                focus: nil),
            mimeType: type.rawValue)
    }
    
}
