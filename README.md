This repo started out as just a list of all the [Mastodon iOS apps](iosapps.md) I've found, but now it's also the github public home base for my [fediverse app](https://fedicat.com/) in progress and an associated Swift package with some possibly useful reusable code, such as [TootSDK](https://github.com/TootSDK/TootSDK) extensions:

- Predicates like Post.isBoosted which treat nil as false (not always correct, sometimes a platform will just choose not supply a value in that context)
- A more object-oriented interface over the bare Mastodon/TootSDK interface like TootClient.boost(post) so you don't always have to extract and pass IDs.
- Simplified arguments, avoid having to fill out parameter structs.
- Random other conveniences

This package is not stable since [Fedicat the app](https://fedicat.com/) is in active development and relies on my [fork of TootSDK](https://github.com/technicat/TootSDK). Formatted with [swift-format](https://github.com/apple/swift-format).
