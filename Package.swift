// swift-tools-version: 6.2
// Lets Xcode add AnkreKit straight from this repository's Git URL. The package itself lives in ios/;
// ios/Package.swift is the same package for working on the SDK on its own.
import PackageDescription

let package = Package(
    name: "AnkreKit",
    platforms: [.iOS(.v17)],
    products: [
        .library(name: "AnkreKit", targets: ["AnkreKit"]),
    ],
    targets: [
        .target(
            name: "AnkreKit",
            path: "ios/Sources/AnkreKit",
            resources: [.copy("PrivacyInfo.xcprivacy")],
            linkerSettings: [
                .linkedFramework("AdServices"),
                .linkedFramework("StoreKit"),
            ]
        ),
    ],
    swiftLanguageModes: [.v6]
)
