// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "FunctionalKit",
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "FunctionalKit",
            targets: ["FunctionalKit"]),
    ],
    dependencies: [
		.package(url: "https://github.com/typelift/Abstract.git",
				 from: Version(0,0,0)),
		.package(url: "https://github.com/typelift/Operadics.git",
				 from: Version(0,0,0)),
        .package(url: "https://github.com/typelift/SwiftCheck.git",
                 from: "0.12.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "FunctionalKit",
            dependencies: ["Abstract","Operadics"]),
        .testTarget(
            name: "FunctionalKitTests",
            dependencies: ["FunctionalKit","SwiftCheck","Abstract","Operadics"]),
    ]
)
