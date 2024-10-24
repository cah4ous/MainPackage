// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "testos",
    platforms: [.iOS("14.2")],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "MainPackage",
            targets: ["MainPackage"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://github.com/cah4ous/TestPackage1.git", branch: "main"),
        .package(url: "https://github.com/cah4ous/TestPackage2.git", branch: "main")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "MainPackage",
            dependencies: [
                .product(name: "TestPackage1", package: "TestPackage1"),
                .product(name: "TestPackage2", package: "TestPackage2")
            ]
        )
    ]
)
