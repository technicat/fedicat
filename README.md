This repo started out as just a list of all the [Mastodon iOS apps](iosapps.md) I've found, but now it's also the github public home base for my [fediverse app](https://fedicat.com/) in progress and a Swift package with some possibly useful reusable code, formatted with [swift-format](https://github.com/apple/swift-format).

The package Fedicat includes TootSDK extensions such as predicates like Post.isBoosted which treat nil as false (not always true, sometimes a platform will just choose not supply a value in that context) and a more object-oriented interface like TootClient.boost(post).
