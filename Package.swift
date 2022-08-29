// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "StandardKit",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "StandardKit",
            targets: ["StandardKit"]),
    ],
    targets: [
        .target(
            name: "StandardKit",
            dependencies: []),
        .testTarget(
            name: "StandardKitTests",
            dependencies: ["StandardKit"]),
    ]
)
