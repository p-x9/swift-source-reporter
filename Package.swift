// swift-tools-version: 6.0

import PackageDescription

let package = Package(
    name: "swift-source-reporter",
    products: [
        .library(
            name: "SourceReporter",
            targets: ["SourceReporter"]
        ),
    ],
    targets: [
        .target(
            name: "SourceReporter"
        ),
        .testTarget(
            name: "SourceReporterTests",
            dependencies: ["SourceReporter"]
        ),
    ]
)
