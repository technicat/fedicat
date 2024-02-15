import Foundation
import TootSDK

extension Tag {

  public var uses: Int {
    guard let history else {
      return 0
    }
    return history.reduce(
      0,
      { x, y in
        x + (Int(y.uses) ?? 0)
      })
  }

  public var accounts: Int {
    guard let history else {
      return 0
    }
    return history.reduce(
      0,
      { x, y in
        x + (Int(y.accounts) ?? 0)
      })
  }
}
