// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "WebSocketCompression",
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "WebSocketCompression",
            targets: ["WebSocketCompression"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(url: "https://github.com/apple/swift-nio.git", from: "2.8.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .systemLibrary(
            name: "CZlib",
            pkgConfig: "libz",
            providers: [
                .apt(["libz-dev"])
            ]
        ),
        .target(
            name: "WebSocketCompression",
            dependencies: ["NIO", "NIOFoundationCompat", "NIOHTTP1", "NIOWebSocket", "CZlib"]),
        .testTarget(
            name: "WebSocketCompressionTests",
            dependencies: ["WebSocketCompression"]),
    ]
)
