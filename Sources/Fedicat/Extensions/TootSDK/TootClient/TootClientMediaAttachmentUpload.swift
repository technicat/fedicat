import Foundation
import TootSDK

extension TootClient {

  public func upload(_ data: Data, type: MIMEType, text: String?, wait: Int = 0) async throws
    -> UploadedMediaAttachment
  {
    let upload = try await uploadMedia(
      UploadMediaAttachmentParams(
        file: data,
        thumbnail: nil,
        description: text,
        focus: nil), mimeType: type.rawValue)
    if upload.state == .serverProcessing && wait > 0 {
      var media: MediaAttachment?
      repeat {
        try await Task.sleep(for: .seconds(wait))
        media = try await getMedia(from: upload)
      } while media == nil
    }
    return upload
  }
}
