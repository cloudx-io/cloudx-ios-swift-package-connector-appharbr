// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "CloudXAppHarbrConnector",
    platforms: [
        .iOS(.v13),
    ],
    products: [
        .library(
            name: "CloudXAppHarbrConnector",
            targets: ["CloudXAppHarbrConnectorPackage"]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/cloudx-io/cloudx-ios-swift-package-core.git",
            from: "3.11.0"
        ),
        .package(
            url: "https://github.com/GeoEdgeSDK/AppHarbrSDK.git",
            from: "1.38.3"
        ),
    ],
    targets: [
        .binaryTarget(
            name: "CloudXAppHarbrConnector",
            url: "https://github.com/cloudx-io/cloudx-ios-swift-package-connector-appharbr/releases/download/binary/1380300.0.0/CloudXAppHarbrConnector.xcframework.zip",
            checksum: "75048ecf9e451a6f20d49cb8d131903681a63fdd819116fccde1e8ac92c257c1"
        ),
        .target(
            name: "CloudXAppHarbrConnectorPackage",
            dependencies: [
                "CloudXAppHarbrConnector",
                .product(name: "CloudXCore", package: "cloudx-ios-swift-package-core"),
                .product(name: "AppHarbrSDK", package: "appharbrsdk"),
            ]
        ),
        .testTarget(
            name: "CloudXAppHarbrConnectorSwiftTests",
            dependencies: ["CloudXAppHarbrConnectorPackage"],
            linkerSettings: [.unsafeFlags(["-Xlinker", "-ObjC"])]
        ),
        .target(
            name: "SwiftRuntimeLink",
            path: "Tests/SwiftRuntimeLink"
        ),
        .testTarget(
            name: "CloudXAppHarbrConnectorObjCTests",
            dependencies: ["CloudXAppHarbrConnectorPackage", "SwiftRuntimeLink"],
            linkerSettings: [.unsafeFlags(["-Xlinker", "-ObjC"])]
        ),
    ]
)
