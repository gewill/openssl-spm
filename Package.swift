// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "OpenSSL",
    products: [
        .library(name: "OpenSSL", targets: ["OpenSSL"]),
    ],
    targets: [
        .target(name: "OpenSSL", dependencies: [
            "libssl",
        ]),
        .binaryTarget(
            name: "libssl",
            url: "https://github.com/gewill/openssl-spm/releases/download/storage.4.0.3/libssl.xcframework.zip",
            checksum: "1f3e01d5d7dad8496b9d56165be4996f3dbede57028902e436c70225e9a68c12"
        ),
    ]
)
