// swift-tools-version:5.1

import PackageDescription

let buildTests = false

extension Product {
  static func allTests() -> [Product] {
    if buildTests {
      return [.executable(name: "AllTestz", targets: ["AllTestz"])]
    } else {
      return []
    }
  }
}

extension Target {

  static func allTests() -> [Target] {
    if buildTests {
      return [.target(name: "AllTestz", dependencies: ["RxSwift"])]
    } else {
      return []
    }
  }
}

let package = Package(
  name: "RxSwift",
  platforms: [
    .macOS(.v10_10), .iOS(.v8), .tvOS(.v9), .watchOS(.v3)
  ],
  products: ([
    [
      .library(name: "RxSwift", targets: ["RxSwift"])
    ],
    Product.allTests()
  ] as [[Product]]).flatMap { $0 },
  targets: ([
    [
      .target(name: "RxSwift", dependencies: []),
    ], 
    Target.allTests()
  ] as [[Target]]).flatMap { $0 },
  swiftLanguageVersions: [.v5]
)
