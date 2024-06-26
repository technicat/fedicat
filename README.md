This repo started out as a summary of all the [Mastodon iOS apps](iosapps.md) I've found (see also the [Awesome Mastodon](https://github.com/technicat/awesome-mastodon) list), but now it's also the issue tracker for my [fediverse app](https://fedicat.com/) in progress (available on [Testflight](https://testflight.apple.com/join/b6GatWTY)) and a Swift package that currently comprises the middle layer between the UI and a [fork](https://github.com/technicat/TootSDK/blob/main/FORK.md) of [TootSDK](https://github.com/technicat/TootSDK).

## Goals

While the development of both packages is oriented toward the app, the idea is to keep the [TootSDK](https://github.com/technicat/TootSDK) fork generally useful while the Fedicat package is somewhat app-specific, although it is an example how you can maintain session state, handle multiple sessions, and deal with multiple platforms. Feel free to use/fork/copy, but development is active so don't expect stability.

## Open Source Credits

The forked and non-forked [Swift](https://swift.org/) packages used by Fedicat (the [app](https://fedicat.com/)) directly and indrectly includes [AlertToast](https://github.com/elai950/AlertToast/), [DiasporaNodeInfo](https://github.com/technicat/DiasporaNodeInfo), [EmojiText](https://github.com/divadretlaw/EmojiText), [Fedicat](https://github.com/technicat/fedicat),  [HTML2Markdown](https://github.com/technicat/HTML2Markdown), [ImagePickerView](https://github.com/technicat/ImagePickerView), [Nuke](https://github.com/kean/Nuke), [SwiftCollections](https://github.com/apple/swift-collections), [SwiftKeychainWrapper](https://github.com/jrendel/SwiftKeychainWrapper), [SwiftNIO](https://github.com/apple/swift-nio), [SwiftSoup](https://github.com/scinfu/SwiftSoup), [SwiftUI-Flow](https://github.com/tevelee/SwiftUI-Flow), [SwiftUIKit](https://github.com/danielsaidi/SwiftUIKit), [SwiftURL](https://github.com/karwa/swift-url), [SwiftSys](https://github.com/technicat/swiftsys), [TootSDK](https://github.com/technicat/tootsdk).

## Graphics

The app icon is from my attempt at handcoding an SVG [icon library](https://github.com/technicat/icons), fediverse icons are from [Arcticons](https://github.com/Arcticons-Team/Arcticons) under the [Creative Commons CC-BY-SA 4.0 license](https://creativecommons.org/licenses/by-sa/4.0/),  profile field icons are from [Simple Icons](https://simpleicons.org/), and all other icons are from Apple's [SF Symbols](https://developer.apple.com/sf-symbols/). The technicat logo was designed by Dakota Snow.

## Code Style

Try to follow the [Swift API Design Guidelines](https://www.swift.org/documentation/api-design-guidelines/)

Formatted and checked with [swift-format](https://github.com/apple/swift-format).

