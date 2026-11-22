// swift-tools-version: 6.2
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
            resources: [.copy("PrivacyInfo.xcprivacy")],
            linkerSettings: [
                .linkedFramework("AdServices"),
                .linkedFramework("StoreKit"),
            ]
        ),
        .testTarget(
            name: "AnkreKitTests",
            dependencies: ["AnkreKit"],
            // Read from the source folder by StoreKitPurchaseTests, not bundled.
            exclude: ["AnkreKitTests.storekit"]
        ),
    ],
    swiftLanguageModes: [.v6]
)
