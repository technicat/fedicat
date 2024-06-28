import TootSDK

extension Session {

  public var supportsUpdateAccount: Bool {
    platform?.supportsUpdateAccount ?? false
  }

  @discardableResult
  public func update(_ settings: DraftAccountSettings) async throws -> CredentialAccount {
    let account = try await client.updateAccountSettings(
      locked: settings.locked,
      bot: settings.bot,
      discoverable: settings.discoverable,
      hideCollections: settings.hideCollections,
      indexable: settings.indexable)
    await setAccount(account)
    return account
  }

  @discardableResult
  public func updatePixelfed(_ settings: DraftAccountSettings) async throws -> CredentialAccount {
    let account = try await client.updatePixelfedAccountSettings(
      locked: settings.locked)
    await setAccount(account)
    return account
  }

  @discardableResult
  public func update(_ profile: DraftProfile) async throws -> CredentialAccount {
    let account = try await client.updateProfile(
      displayName: profile.displayName,
      note: profile.note,
      avatar: profile.avatar?.jpeg(),
      avatarMimeType: .imageJpeg,
      header: profile.header?.jpeg(),
      headerMimeType: .imageJpeg
    )
    await setAccount(account)
    return account
  }

  // todo - use DraftPixelfedProfile
  @discardableResult
  public func updatePixelfed(_ profile: DraftProfile) async throws -> CredentialAccount {
    let account = try await client.updateProfilePixelfed(
      displayName: profile.displayName,
      note: profile.note,
      avatar: profile.avatar?.jpeg()  // or png
    )
    await setAccount(account)
    return account
  }

    @discardableResult
  public func updateFields(_ profile: DraftProfile) async throws -> CredentialAccount {
      let fields = profile.fields.filter({ !$0.isEmpty }).enumerated().map { (index, field) in UpdateCredentialsParams.Field(
        key: String(index),
        name: field.name.trimWS,
        value: field.value.trimWS)
    }
    let account = try await client.updateProfile(
      fields: fields.isEmpty ? nil : fields)
    await setAccount(account)
    return account
  }

    @discardableResult
  public func update(_ defs: DraftPostDefaults) async throws -> CredentialAccount {
    let account = try await client.updatePostDefaults(
      privacy: defs.visibility,
      sensitive: defs.sensitive,
      language: defs.lang)
    await setAccount(account)
    return account
  }

  @discardableResult
  public func deleteAvatar() async throws -> CredentialAccount {
    let account = try await client.deleteAvatar()
    await setAccount(account)
    return account
  }

  @discardableResult
  public func deleteHeader() async throws -> CredentialAccount {
    let account = try await client.deleteHeader()
    await setAccount(account)
    return account
  }
}
