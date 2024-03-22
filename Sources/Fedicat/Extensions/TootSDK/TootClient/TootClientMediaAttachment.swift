import TootSDK

extension TootClient {
    public func getMedia(_ media: UploadedMediaAttachment) async throws -> MediaAttachment? {
        try await getMedia(id: media.id)
    }
    
    public func refresh(_ media: MediaAttachment) async throws -> MediaAttachment? {
        try await getMedia(id: media.id)
    }
}
