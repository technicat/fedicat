import TootSDK

extension TootClient {

  /// https://docs.joinmastodon.org/methods/directory/
  public func getLocalDirectory(
    order: ProfileDirectoryParams.Order? = nil,
    offset: Int? = nil,
    limit: Int? = nil
  ) async throws -> [Account] {
    try await getProfileDirectory(
      params: ProfileDirectoryParams(order: order, local: true),
      offset: offset,
      limit: limit
    )
  }

  /// https://docs.joinmastodon.org/methods/directory/
  public func getGlobalDirectory(
    order: ProfileDirectoryParams.Order? = nil,
    offset: Int? = nil,
    limit: Int? = nil
  ) async throws -> [Account] {
    try await getProfileDirectory(
      params: ProfileDirectoryParams(order: order, local: false),
      offset: offset,
      limit: limit
    )
  }
}
