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
        .binaryTarget(name: "IterationXFramework", url: "https://github.com/Iteration-X/IterationXFramework/releases/download/1.0.3/ItxFramework.xcframework.zip", checksum: "8a75024a8d07695768f51bb012f9cb48e6ab2b300a16e4e72697a932c5992fb8")
    ]
)
