import TootSDK

extension Post {

  public var isFiltered: Bool {
    if let filters = filtered {
      return !filters.isEmpty
    } else {
      return false
    }
  }
}
