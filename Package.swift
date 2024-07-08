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
        .binaryTarget(name: "IterationXFramework", url: "https://github.com/Iteration-X/IterationXFramework/releases/download/1.0.3/ItxFramework.xcframework.zip", checksum: "a2d795f1a22e52eb21ce42e11a4084aeb87cf255ba3e80755e1b1c89f3e3f7ee")
    ]
)
