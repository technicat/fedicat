import TootSDK

extension Session {

  public func cache(_ priority: TaskPriority) {
    // split these into functions
    if supportsTagFollow {
      Task(priority: priority) {
        try await getAllFollowedTags()
      }
    }
    if supportsFeaturedTags {
      Task(priority: priority) {
        try await getFeaturedTags()
      }
      Task(priority: priority) {
        try await getFeaturedTagsSuggestions()
      }
    }
    // so we can have a list menu
    if supportsList {
      Task(priority: priority) {
        try await getLists()
      }
    }
    if canReadAnnouncements {
      Task(priority: priority) {
        try await getAnnouncements()
      }
    }
    if supportsSchedule {
      Task(priority: priority) {
        try await getScheduledPosts()
      }
    }
    if supportsTranslationLanguages {
      Task(priority: priority) {
        try await getTranslationLanguages()
      }
    }
  }
}
