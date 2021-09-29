// swift-tools-version:5.2

import PackageDescription

let package = Package(
    name: "HackleyCSGithubIo",
    products: [
        .executable(
            name: "HackleyCSGithubIo",
            targets: ["HackleyCSGithubIo"]
        )
    ],
    dependencies: [
        .package(name: "Publish", url: "https://github.com/johnsundell/publish.git", from: "0.7.0")
    ],
    targets: [
        .target(
            name: "HackleyCSGithubIo",
            dependencies: ["Publish"]
        )
    ]
)