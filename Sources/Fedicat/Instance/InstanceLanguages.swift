import TootSDK

extension Instance {

  var hasRegistrations: Bool {
    registrations ?? false
  }

  var hasApprovals: Bool {
    approvalRequired ?? false
  }

  var hasInvitations: Bool {
    invitesEnabled ?? false
  }

  var hasRules: Bool {
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
