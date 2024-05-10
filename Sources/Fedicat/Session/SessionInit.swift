extension Session {

  // should handle errors
  public func initialize(_ priority: TaskPriority) {
    if isAuth {
      Task(priority: priority) {
        // should use this to verify token?
        // need this for username display
        // and for finding followers
        try await getAccount()
        try await getAllFollowedAccounts()
      }
    }
    Task(priority: TaskPriority.high) {
      try await getInstance()  // sets flavor
      if isAuth {
        cache(priority)
      }
    }

  }
}
