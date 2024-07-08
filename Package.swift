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
        .binaryTarget(name: "IterationXFramework", url: "https://github.com/Iteration-X/IterationXFramework/releases/download/1.0.3/ItxFramework.xcframework.zip", checksum: "5326a47728214262072715e3e3ac77834ad7a9fad411aa9e2751bf67d55f751b")
    ]
)
