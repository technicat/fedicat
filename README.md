This repo started out as just a list of all the [Mastodon iOS apps](iosapps.md) I've found, but now it's also the github public home base for my [fediverse app](https://fedicat.com/) in progress and an associated Swift package with some possibly useful reusable code, mainly [TootSDK](https://github.com/technicat/TootSDK) extensions:

- An object-oriented interface so you operate on objects instead of IDs, e.g. `client.boost(post)` instead of `client.boostPost(id: post.id)`.
- Predicates like `post.isBoosted` instead of `post.boost ?? false` (not necessarily correct, sometimes a platform will just choose not to supply a value in certain contexts).
- Common operation names on different types, e.g. `client.refresh(post)` and `client.refresh(account)`, `client.follow(tag)` and `client.follow(account)`, `client.delete(post)` and `client.delete(filter)`...
- Simplified arguments, try to accomodate most common cases and avoid having to fill out parameter structs, e.g. call `client.updateProfile()`, `client.updateAccountSettings()`, and `client.updatePostDefaults()` with the relevant individual parameters instead of calling `client.updateCredentials` with a filled-out parameter struct.
- `fave` instead of `favourite` (avoids British vs. American spelling and it's shorter) e.g. `client.fave(post)`, `client.unFave(post)`, and `post.isFaved`.
- An `ISOCode` enum listing the language codes supported by the various platforms instead of passing strings, e.g. `client.getTranslation(of: post, in: .en)`.
- `client.getInstance()` is a more precise name than `client.getInstanceInfo()` and it ensures that `client.flavour` is updated.
- `instance.platform` returns a platform descriptor with feature support queries like `platform.supportsAnnouncements` based on the detected Mastodon API version. This avoids having to query `TootClient.flavour` and `TootClient.supportsFeature`, and new platforms can be added without messing with TootSDK. The descriptors have inheritance hierarchies that mirror forking relationships, e.g. `Hometown` is a subclass of `Mastodon`.
- Random other conveniences.

## Style

Try to follow the [Swift API Design Guidelines](https://www.swift.org/documentation/api-design-guidelines/)

Formatted and checked with [swift-format](https://github.com/apple/swift-format).

## Stability

This package is not stable since [Fedicat the app](https://fedicat.com/) is in active development and sometimes relies on my [fork of TootSDK](https://github.com/technicat/TootSDK).

## Roadmap

- I have a Session wrapper around TootClient that maintains additional state and facilitates loading, saving, and switching among multiple active logins, which I would like to move into this package
- Maybe move the TootSDK extensions into TootSDK (but it's kind of nice to maintain this modularity)
- Ideally I'd like to remove all the platform checking in TootSDK and take care of that here. Already removed TootSDKFeature, but probably the TootSDKFlavour checks still have to take place for platform-specific query generation. Maybe eventually replace TootSDKFlavour with Platform.
- Platform-specific version checks, e.g. Pixelfed versions, in addition to Mastodon API version checks.
