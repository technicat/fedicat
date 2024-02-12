import TootSDK

extension Post {

  public var isBooked: Bool {
    bookmarked ?? false
  }
}
