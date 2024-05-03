import TootSDK

// https://docs.joinmastodon.org/methods/filters/
extension Session {

  public var canFilter: Bool {
    isAuth && supportsFilter
  }

  public var supportsFilter: Bool {
    platform?.supportsFilter ?? false
  }

  public func getFilters() async throws -> [Filter] {
    try await client.getFilters()
  }

  // func createFilter(_ name: String) async throws -> Filter {
  // try await client.createFilter(params: FilterParams(title: name,
  //  context: [],
  //  filterAction: .warn,
  // expiresIn: nil,
  //  keywordsAttributes: []))
  //  }

  // updateFilter

  public func delete(_ filter: Filter) async throws {
    try await client.delete(filter)
  }
}
