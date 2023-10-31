// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SPMBlago",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(name: "SPMBlago", targets: ["SPMBlago"]),
    ],
    dependencies: [
        .package(url: "https://github.com/SDWebImage/SDWebImage", .upToNextMajor(from: "5.18.4")),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "SPMBlago", dependencies: ["SDWebImage"]),
        .testTarget(
            name: "SPMBlagoTests",
            dependencies: ["SPMBlago"]),
    ]
)

