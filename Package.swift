// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Fedicat",
    platforms: [.iOS(.v14)],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "Fedicat",
            targets: ["Fedicat"]),
    ],
    dependencies: [
        .package(url: "https://github.com/technicat/TootSDK.git", from: "2.0.0")
        ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "Fedicat",
        dependencies: [
            .product(name: "TootSDK", package: "TootSDK"),
            ]
        ),
        .testTarget(
            name: "FedicatTests",
            dependencies: ["Fedicat"]),
    ]
)
