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
        .binaryTarget(name: "IterationXFramework", url: "https://github.com/Iteration-X/IterationXFramework/releases/download/1.0.3/ItxFramework.xcframework.zip", checksum: "322444e51d64d85b3b34f9253de9275a4db19ee6bf630d544b6b1db03e41c7ba")
    ]
)
