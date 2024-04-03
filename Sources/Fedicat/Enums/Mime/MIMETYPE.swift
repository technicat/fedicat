import Foundation

public enum MIMEType: String, CaseIterable, Codable {
  // image mime types supported by mastodon for attachments
  // (media_attachment.rb)
  case avif = "image/avif"
  case gif = "image/gif"
  case heic = "image/heic"
  case heif = "image/heif"
  case jpeg = "image/jpeg"
  case webp = "image/webp"
  case mp4 = "video/mp4"
  case webm = "video/webm"
}
