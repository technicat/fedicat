import Foundation
import SwiftUI

extension UIImage {

  public func jpeg(_ compression: CGFloat = 0.0) -> Data? {
    jpegData(compressionQuality: compression)
  }
}
