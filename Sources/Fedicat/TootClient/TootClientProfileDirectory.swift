import TootSDK

// todo - split into getLocal and getGlobal?
extension TootClient {

  public func getProfileDirectory(
    order: ProfileDirectoryParams.Order? = nil,
    local: Bool? = nil,
    offset: Int? = nil,
    limit: Int? = nil
  ) async throws -> [Account] {
    try await getProfileDirectory(
      params: ProfileDirectoryParams(order: order, local: local),
      offset: offset,
      limit: limit
    )
  }
}
