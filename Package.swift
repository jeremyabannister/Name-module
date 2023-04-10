// swift-tools-version: 5.8

///
import PackageDescription

///
let package = Package(
    name: "Name-module",
    products: [
        .library(
            name: "Name-module",
            targets: ["Name-module"]
        ),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "Name-module",
            dependencies: []
        ),
        .testTarget(
            name: "Name-tests",
            dependencies: ["Name-module"]
        ),
    ]
)
