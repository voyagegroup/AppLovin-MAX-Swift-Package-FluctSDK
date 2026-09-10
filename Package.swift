// swift-tools-version:5.9

import PackageDescription

let package = Package(
    name: "AppLovinMediationFluctAdapter",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "AppLovinMediationFluctAdapter",
            targets: ["AppLovinMediationFluctAdapterTarget"]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/voyagegroup/FluctSDK-iOS-Swift-Package.git",
            exact: "6.44.4"
        ),
        .package(
            url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git",
            from: "13.6.4"
        ),
    ],
    targets: [
        .target(
            name: "AppLovinMediationFluctAdapterTarget",
            dependencies: [
                .product(name: "FluctSDK", package: "FluctSDK-iOS-Swift-Package"),
                .product(name: "AppLovinSDK", package: "AppLovin-MAX-Swift-Package")
            ],
            path: "Sources/MaxFluctAdapter",
            publicHeadersPath: "include"
        ),
    ]
)
