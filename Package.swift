// swift-tools-version: 5.8

import PackageDescription

let package = Package(
    name: "libigl",
    products: [
        .library(
            name: "libigl",
            targets: ["libigl"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Audulus/eigen", branch: "spm"),
    ],
    targets: [
        .target(name: "libigl",
                dependencies: ["eigen"],
                path: ".",
                sources: ["spm.cpp"],
                publicHeadersPath: "include"),
    ],
    cxxLanguageStandard: .cxx20
)
