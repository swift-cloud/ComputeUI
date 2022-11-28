// swift-tools-version: 5.7

import PackageDescription

let package = Package(
    name: "ComputeUI",
    platforms: [
        .macOS(.v11),
        .iOS(.v13),
        .tvOS(.v13),
        .watchOS(.v9),
        .driverKit(.v22),
        .macCatalyst(.v13)
    ],
    products: [
        .library(name: "ComputeUI", targets: ["ComputeUI"]),
    ],
    dependencies: [
         .package(url: "https://github.com/swift-cloud/Compute", from: "2.4.0"),
         .package(url: "https://github.com/TokamakUI/Tokamak", branch: "main")
    ],
    targets: [
        .target(name: "ComputeUI", dependencies: [
            "Compute",
            .product(name: "TokamakStaticHTML", package: "Tokamak")
        ])
    ]
)
