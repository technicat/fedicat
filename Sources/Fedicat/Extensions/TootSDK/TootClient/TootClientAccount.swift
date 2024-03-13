import Foundation
import TootSDK

extension TootClient {

  public func refresh(_ account: Account) async throws -> Account {
    try await getAccount(by: account.id)
  }

  public func updateAccountSettings(
    locked: Bool? = nil,
    bot: Bool? = nil,
    discoverable: Bool? = nil,
    hideCollections: Bool? = nil,
    indexable: Bool? = nil
  ) async throws -> Account {
    let params = UpdateCredentialsParams(
      locked: locked,
      bot: bot,
      discoverable: discoverable,
      hideCollections: hideCollections,
      indexable: indexable)
    return try await updateCredentials(params: params)
  }

  public func updatePostDefaults(
    privacy: Post.Visibility? = nil,
    sensitive: Bool? = nil,
    language: ISOCode? = nil
  ) async throws -> Account {
    let source = UpdateCredentialsParams.Source(
      privacy: privacy,
      sensitive: sensitive,
      language: language?.rawValue)
    let params = UpdateCredentialsParams(
      source: source)
    return try await updateCredentials(params: params)
  }

  public func updateProfile(
    displayName: String? = nil,
    note: String? = nil,
    avatar: Data? = nil,
    avatarMimeType: String? = nil,
    header: Data? = nil,
    headerMimeType: String? = nil,
    fields: [String: UpdateCredentialsParams.Field]? = nil
  ) async throws -> Account {
    let params = UpdateCredentialsParams(
      displayName: displayName,
      note: note,
      avatar: avatar,
      avatarMimeType: avatarMimeType,
      header: header,
      headerMimeType: headerMimeType,
      fieldsAttributes: fields)
    return try await updateCredentials(params: params)
  }

}
