// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "DevkartcomCapacitorStarPrinter",
    platforms: [.iOS(.v15)],
    products: [
        .library(name: "DevkartcomCapacitorStarPrinter", targets: ["DevkartcomCapacitorStarPrinter"])
    ],
    dependencies: [
        .package(
            url: "https://github.com/ionic-team/capacitor-swift-pm.git",
            "7.0.0"..<"9.0.0"
        ),
        .package(
            url: "https://github.com/star-micronics/StarXpand-SDK-iOS.git",
            exact: "2.12.1"
        )
    ],
    targets: [
        .target(
            name: "DevkartcomCapacitorStarPrinter",
            dependencies: [
                .product(name: "Capacitor", package: "capacitor-swift-pm"),
                .product(name: "Cordova", package: "capacitor-swift-pm"),
                .product(name: "StarIO10", package: "StarXpand-SDK-iOS")
            ],
            path: "ios/Plugin"
        )
    ]
)
