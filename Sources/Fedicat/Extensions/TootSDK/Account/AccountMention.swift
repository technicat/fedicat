import TootSDK

extension Account {

  public func isMentioned(by mention: Mention) -> Bool {
    id == mention.id
  }

  public func isMentioned(by post: Post) -> Bool {
    post.mentions.contains(where: { $0.id == id })
  }
}
