@Observable
public class DraftPostDefaults {

  var lang: ISOCode = .en
  var visibility: Post.Visibility = .public
  var sensitive: Bool = false

  @MainActor func copy(from account: Account) {
    lang = account.defaultLanguage
    sensitive = account.defaultSensitive
    visibility = account.defaultVisibility
  }
}
