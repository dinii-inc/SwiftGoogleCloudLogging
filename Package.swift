// swift-tools-version:5.2

import PackageDescription

let package = Package(
    name: "GoogleCloudLogging",
    platforms: [
        .iOS(.v13),
    ],
    products: [
        .library(
            name: "GoogleCloudLogging",
            targets: ["GoogleCloudLogging"]),
    ],
    dependencies: [
         .package(url: "https://github.com/apple/swift-log.git", from: "1.5.3"),
         .package(url: "https://github.com/SwiftyJSON/SwiftyJSON.git", from: "5.0.1"),
    ],
    targets: [
        .target(
            name: "GoogleCloudLogging",
            dependencies: [
                .product(name: "Logging", package: "swift-log"),
            ]),
        .testTarget(
            name: "GoogleCloudLoggingTests",
            dependencies: ["GoogleCloudLogging"]),
    ]
)
