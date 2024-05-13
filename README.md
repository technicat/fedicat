This repo started out as a list of all the [Mastodon iOS apps](iosapps.md) I've found, but now it's also the github public home base for my [fediverse app](https://fedicat.com/) in progress (available on [Testflight](https://testflight.apple.com/join/b6GatWTY)) and an associated Swift package that comprises the middle layer between the UI and [TootSDK](https://github.com/technicat/TootSDK) which I've [augmented](https://github.com/technicat/TootSDK/blob/main/FORK.md) with an object-oriented calling interface and an alternate platform detection and feature checking system.

While the development of both packages is oriented toward the app, the idea is to keep the TootSDK fork generally useful while the Fedicat package is necessarily somewhat app-specific, although it may provide an example how you might maintain session state and handle multiple sessions. Development is active so don't expect stability.

## Style

Try to follow the [Swift API Design Guidelines](https://www.swift.org/documentation/api-design-guidelines/)

Formatted and checked with [swift-format](https://github.com/apple/swift-format).

