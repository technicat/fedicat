import TootSDK

/// https://docs.joinmastodon.org/methods/directory/
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

  public func getLocalDirectory(
    order: ProfileDirectoryParams.Order? = nil,
    offset: Int? = nil,
    limit: Int? = nil
  ) async throws -> [Account] {
    try await getProfileDirectory(
      order: order,
      local: true,
      offset: offset,
      limit: limit
    )
  }

  public func getGlobalDirectory(
    order: ProfileDirectoryParams.Order? = nil,
    offset: Int? = nil,
    limit: Int? = nil
  ) async throws -> [Account] {
    try await getProfileDirectory(
      order: order,
      local: false,
      offset: offset,
      limit: limit
    )
  }
}
