This repo started out as just a list of all the [Mastodon iOS apps](iosapps.md) I've found, but now it's also the github public home base for my [fediverse app](https://fedicat.com/) in progress and an associated Swift package that comprises the middle layer between the UI and [TootSDK](https://github.com/technicat/TootSDK) which I've augmented with an object-oriented calling interface and an alternate platform detection and feature checking system.

While the development of both packages is oriented toward this app, the idea is to keep this TootSDK fork generally useful while the Fedicat package is necessarily somewhat app-specific, although it may provide an example how you might maintain session state and handle multiple sessiojns.

## Style

Try to follow the [Swift API Design Guidelines](https://www.swift.org/documentation/api-design-guidelines/)

Formatted and checked with [swift-format](https://github.com/apple/swift-format).

