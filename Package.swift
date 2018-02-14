// swift-tools-version:4.0
import PackageDescription

var urls = [String]()
var names = [Target.Dependency]()

#if os(Linux)
urls += ["https://github.com/PerfectlySoft/Perfect-LinuxBridge.git"]
names += ["LinuxBridge"]
#endif

let package = Package(
    name: "AWSSDK",
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        //.library(name: "AWSAuth", targets: ["AWSAuth"]),
        .library(name: "AWSSESCore", targets: ["AWSSESCore"]),
    ],
    dependencies: urls.map { .package(url: $0, from: "3.0.0") },
    targets: [
        .target(
            name: "AWSSESCore",
            dependencies: names,
            path: "./AWSCore/"
            ),
    ]
)
