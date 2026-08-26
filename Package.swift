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
            url: "https://github.com/gewill/openssl-spm/releases/download/storage.4.0.1-minosfix/libssl.xcframework.zip",
            checksum: "48a4655f483369d1ed833d9b02667b5073cee772cdda078c3a54c684e48a276f"
        ),
    ]
)
