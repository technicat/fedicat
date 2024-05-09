extension Session {
  var supportsTagStats: Bool {
    platform?.supportsTagStats ?? false
  }
}
