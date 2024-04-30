import Foundation
import SwiftUI
import Vision

extension UIImage {
 
  public func jpeg(_ compression: CGFloat = 0.0) -> Data? {
    jpegData(compressionQuality: compression)
  }
}
