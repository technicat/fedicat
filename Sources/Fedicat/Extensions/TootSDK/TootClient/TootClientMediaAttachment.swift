import Foundation
import TootSDK

extension TootClient {
  public func getMedia(from media: UploadedMediaAttachment) async throws -> MediaAttachment? {
    try await getMedia(id: media.id)
  }

  public func refresh(_ media: MediaAttachment) async throws -> MediaAttachment? {
    try await getMedia(id: media.id)
  }

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
