import TootSDK

extension TootClient {

  /// https://docs.joinmastodon.org/methods/statuses/#favourite
  public func fave(_ post: Post) async throws -> Post {
    try await favouritePost(id: post.id)
  }

  /// https://docs.joinmastodon.org/methods/statuses/#unfavourite
  public func unFave(_ post: Post) async throws -> Post {
    try await unfavouritePost(id: post.id)
  }

  /// https://docs.joinmastodon.org/methods/statuses/#favourited_by
  public func getFavers(
    of post: Post,
    _ page: PagedInfo? = nil,
    limit: Int? = nil
  ) async throws -> PagedResult<[Account]> {
    try await getAccountsFavourited(id: post.id, page, limit: limit)
  }
}
