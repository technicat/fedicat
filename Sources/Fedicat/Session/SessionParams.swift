extension Session {

  /// if default value, then pass nil instead so TootSDK will filter it out
  public func orNil<T: Equatable>(_ val: T, _ def: T) -> T? {
    val == def ? nil : val
  }

}
