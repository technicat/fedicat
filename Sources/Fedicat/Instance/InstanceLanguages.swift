import TootSDK

extension Instance {

  public var hasRegistrations: Bool {
    registrations ?? false
  }

  public var hasApprovals: Bool {
    approvalRequired ?? false
  }

  public var hasInvitations: Bool {
    invitesEnabled ?? false
  }

  public var hasRules: Bool {
    guard let rules else {
      return false
    }
    return !rules.isEmpty
  }

  public var hasLanguages: Bool {
    guard let languages else {
      return false
    }
    return !languages.isEmpty
  }
}
