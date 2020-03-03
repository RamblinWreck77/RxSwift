// swift-tools-version:5.1

import PackageDescription

let buildTests = false

let package = Package(
  name: "RxSwift",
  platforms: [
    .macOS(.v10_10), .iOS(.v8), .tvOS(.v9), .watchOS(.v3)
  ],
  products: ([
    [
      .library(name: "RxSwift", targets: ["RxSwift"])
    ]
  ] as [[Product]]).flatMap { $0 },
  targets: ([
    [
      .target(name: "RxSwift", dependencies: []),
    ], 
  ] as [[Target]]).flatMap { $0 },
  swiftLanguageVersions: [.v5]
)
