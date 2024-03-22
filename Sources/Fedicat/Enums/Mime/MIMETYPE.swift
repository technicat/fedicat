import Foundation

// should just be for images, e.g. ImageMIME?
public enum MIMEType: String, CaseIterable, Codable {
  // image mime types supported by mastodon for attachments
  // (media_attachment.rb)
  case imageAVIF = "image/avif"
  case imageGIF = "image/gif"
  case imageHEIC = "image/heic"
  case imageHEIF = "image/heif"
  case imageJPEG = "image/jpeg"
  case imageWebP = "image/webp"
}
