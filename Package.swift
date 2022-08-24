// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription
import Darwin

let package = Package(
    name: "JHKit",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "JHKit",
            targets: ["JHKit"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://github.com/Zero-Cjh/JHHUD", from: "1.0.0"),
        .package(url: "https://github.com/Zero-Cjh/JHToastTips", from: "1.0.0"),
        .package(url: "https://github.com/Zero-Cjh/JHAlert", from: "1.6.0"),
        .package(url: "https://github.com/Zero-Cjh/JHTextField", from: "0.0.1")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "JHKit",
            dependencies: [
                "JHHUD",
                "JHToastTips",
                "JHAlert",
                "JHTextField"
            ]),
        .testTarget(
            name: "JHKitTests",
            dependencies: ["JHKit"]),
    ]
)
