extension Session {
  public var supportsTagStats: Bool {
    platform?.supportsTagStats ?? false
  }
}
