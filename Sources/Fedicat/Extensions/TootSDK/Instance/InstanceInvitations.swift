import TootSDK

extension Instance {

  public var hasInvitations: Bool {
    invitesEnabled ?? false
  }

}
