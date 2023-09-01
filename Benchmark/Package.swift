// swift-tools-version:5.4
//
//===----------------------------------------------------------------------===//
//
//  Copyright (c) 2023 Svyatoslav Popov (info@keyvar.com).
//
//  Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except in compliance with
//  the License. You may obtain a copy of the License at
//
//  http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on
//  an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the
//  specific language governing permissions and limitations under the License.
//
//  SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

import PackageDescription



let swiftSettings: [SwiftSetting] = [ ]

let package = Package(
    name: "kvSimdBenchmark",

    products: [
        .executable(name: "kvSimdBenchmark", targets: [ "kvSimdBenchmark" ]),
    ],

    dependencies: [
        .package(path: "../"),
        .package(url: "https://github.com/keyvariable/kvKit.swift.git", from: "4.1.0"),
    ],

    targets: [
        .executableTarget(name: "kvSimdBenchmark",
                          dependencies: [ .product(name: "kvSIMD.forced", package: "kvSIMD.swift"),
                                          .product(name: "kvKit", package: "kvKit.swift"), ],
                          swiftSettings: swiftSettings),
    ]
)
