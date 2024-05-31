This repo started out as a list of all the [Mastodon iOS apps](iosapps.md) I've found, but now it's also the issue tracker for my [fediverse app](https://fedicat.com/) in progress (available on [Testflight](https://testflight.apple.com/join/b6GatWTY)) and a Swift package that currently comprises the middle layer between the UI and a [fork](https://github.com/technicat/TootSDK/blob/main/FORK.md) of [TootSDK](https://github.com/technicat/TootSDK).

## Goals

While the development of both packages is oriented toward the app, the idea is to keep the TootSDK fork generally useful while the Fedicat package is app-specific, although it is an example how you can maintain session state, handle multiple sessions, and deal with multiple platforms. Feel free to use/fork/copy, but development is active so don't expect stability.

## Open Source Credits

The overall of list of forked and non-forked [Swift](https://swift.org/) packages used by Fedicat includes [AlertToast](https://github.com/elai950/AlertToast/), [DiasporaNodeInfo](https://github.com/technicat/DiasporaNodeInfo), [EmojiText](https://github.com/divadretlaw/EmojiText), [Fedicat](https://github.com/technicat/fedicat),  [HTML2Markdown](https://github.com/technicat/HTML2Markdown), [ImagePickerView](https://github.com/technicat/ImagePickerView), [Nuke](https://github.com/kean/Nuke), [SwiftCollections](https://github.com/apple/swift-collections), [SwiftNIO](https://github.com/apple/swift-nio), [SwiftSoup](https://github.com/scinfu/SwiftSoup), [SwiftKeychainWrapper](https://github.com/jrendel/SwiftKeychainWrapper)  [SwiftUI-Flow](https://github.com/tevelee/SwiftUI-Flow), [SwiftUIKit](https://github.com/danielsaidi/SwiftUIKit), [SwiftSys](https://github.com/technicat/swiftsys), and [TootSDK](https://github.com/technicat/tootsdk).

## Code Style

Try to follow the [Swift API Design Guidelines](https://www.swift.org/documentation/api-design-guidelines/)

Formatted and checked with [swift-format](https://github.com/apple/swift-format).

