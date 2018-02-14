// swift-tools-version:4.0
import PackageDescription

let package = Package(
    name: "AWSCore",
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        //.library(name: "AWSAuth", targets: ["AWSAuth"]),
        .library(name: "AWSCore", targets: ["AWSCore"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: , from: "1.0.0"),
    ],
    targets: [
        .target(
            name: "AWSCore",
            dependencies: [],
            path: "./AWSCore/"
            ),
    ]
)
