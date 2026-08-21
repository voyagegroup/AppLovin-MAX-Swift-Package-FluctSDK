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
            exact: "6.43.7"
        ),
        .package(
            url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git",
            from: "13.6.1"
        ),
    ],
    targets: [
        .target(
            name: "AppLovinMediationFluctAdapterTarget",
            dependencies: [
                .product(name: "FluctSDK", package: "FluctSDK-iOS-Swift-Package"),
                .product(name: "AppLovinSDK", package: "AppLovin-MAX-Swift-Package")
            ],
            publicHeadersPath: "include"
        ),
    ]
)
