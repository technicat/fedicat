import TootSDK

extension Instance {

  public var platform: Platform {
    if version.lowercased().contains("akkoma") {
      return Akkoma(apiVersion)
    }
    if version.lowercased().contains("catodon") {
      return Catodon(apiVersion)
    }
    if version.lowercased().contains("firefish") {
      return Firefish(apiVersion)
    }
    if version.lowercased().contains("friendica") {
      return Friendica(apiVersion)
    }
    if version.lowercased().contains("hometown") {
      return Hometown(apiVersion)
    }
    if version.lowercased().contains("iceshrimp") {
      return Iceshrimp(apiVersion)
    }
    if version.lowercased().contains("pixelfed") {
      return Pixelfed(apiVersion)
    }
    if version.lowercased().contains("pleroma") {
      return Pleroma(apiVersion)
    }
    if version.lowercased().contains("sharkey") {
      return Sharkey(apiVersion)
    }
    if version.lowercased().contains("snac") {
      return Snac(apiVersion)
    }
    return Mastodon(apiVersion)
  }
}
