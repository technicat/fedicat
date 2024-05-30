import Foundation
import TootSDK

extension Session {

  public var canReadLists: Bool {
    isAuth && supportsList
  }

  public var supportsListReplyPolicy: Bool {
    platform?.supportsListReplyPolicy ?? false
  }

  public var supportsListExclusive: Bool {
    platform?.supportsListExclusive ?? false
  }

  @MainActor public func add(_ list: List) {
    lists[list.id] = list
  }

  @MainActor public func remove(_ list: List) {
    lists[list.id] = nil
  }

  @ObservationIgnored
  public var hasList: Bool {
    lists.isEmpty
  }

  private var listsArray: [List] {
    lists.map(\.1)
  }

  @ObservationIgnored
  public var listsSorted: [List] {
    listsArray.sorted(by: <)
  }

  // use sets?
  public func lists(minus list: [List]) -> [List] {
    listsArray.filter { !list.contains($0) }
  }
}
