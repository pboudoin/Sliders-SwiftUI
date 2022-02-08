// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Sliders",
    platforms: [.iOS(.v13)],
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "Sliders",
            targets: ["Sliders"]),
    ],
    dependencies: [
        .package(name: "CGExtender", url: "https://github.com/pboudoin/CGExtender.git", from: "1.0.1"),
        .package(name: "Shapes", url: "https://github.com/pboudoin/SwiftUI-Shapes.git", from: "1.0.2"),
        .package(name: "bez", url: "https://github.com/pboudoin/SwiftUI-bez.git", from: "1.0.0")
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "Sliders",
            dependencies: [.product(name: "CGExtender", package: "CGExtender"), .product(name: "Shapes", package: "Shapes"), .product(name: "bez", package: "bez")]),
        .testTarget(
            name: "SlidersTests",
            dependencies: ["Sliders"]),
    ]
)
