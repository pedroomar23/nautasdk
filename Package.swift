// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "EtecsaSdk",
    platforms: [
        .iOS(.v15),
        .macOS(.v11)
    ],
    products: [
        .library(
            name: "NautaSdk",
            targets: ["NautaSdk"]
        ),
        .library(
            name: "TiendaSdk",
            targets: ["TiendaSdk"]
        )
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "NautaSdk"
        ),
        .target(
            name: "TiendaSdk"
        ),
        .testTarget(
            name: "NautaSdkTests",
            dependencies: ["NautaSdk"]
        ),
        .testTarget(
            name: "TiendaSdkTests",
            dependencies: ["TiendaSdk"]
        )
    ]
)
