This repo started out as a list of all the [Mastodon iOS apps](iosapps.md) I've found, but now it's also the issue tracker for my [fediverse app](https://fedicat.com/) in progress (available on [Testflight](https://testflight.apple.com/join/b6GatWTY)) and a Swift package that comprises the middle layer between the UI and a [fork](https://github.com/technicat/TootSDK/blob/main/FORK.md) [TootSDK](https://github.com/technicat/TootSDK).

While the development of both packages is oriented toward the app, the idea is to keep the TootSDK fork generally useful while the Fedicat package is customized to support the app, although it is an example how you can maintain session state, handle multiple sessions, and deal with multiple platforms. Development is active so don't expect stability.

## Style

Try to follow the [Swift API Design Guidelines](https://www.swift.org/documentation/api-design-guidelines/)

Formatted and checked with [swift-format](https://github.com/apple/swift-format).

