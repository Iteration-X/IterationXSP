// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "IterationXSP",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "IterationXSP",
            targets: ["IterationXFramework"]),
    ],
    targets: [
        .binaryTarget(name: "IterationXFramework", url: "https://github.com/Iteration-X/IterationXFramework/releases/download/1.0.1/ItxFramework.xcframework.zip", checksum: "0bde5f306c3d376f202f06fd40473661a4704101009a0782bfcc6bb592670eeb")
    ]
)
