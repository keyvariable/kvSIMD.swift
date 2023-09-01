// swift-tools-version:5.2
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



let swiftSettings: [SwiftSetting]? = nil

let isSimdAvailable: Bool
#if canImport(simd)
isSimdAvailable = true
#else // !canImport(simd)
isSimdAvailable = false
#endif // !canImport(simd)

// Module is named "simd" to use `import simd` when the SIMD framework is not available.
// Otherwise it's named "kvSIMD" to prevent collision.
let moduleName = isSimdAvailable ? "kvSIMD" : "simd"
let placeholderModuleName = "kvSIMD_Placeholder"


let package = Package(
    name: "kvSIMD.swift",

    products: [ .library(name: "kvSIMD", targets: [ !isSimdAvailable ? moduleName : placeholderModuleName ]),
                .library(name: "kvSIMD.forced", targets: [ moduleName ])],

    targets: Array([
        [ .target(name: moduleName, path: "Sources/kvSIMD", swiftSettings: swiftSettings),
          .target(name: placeholderModuleName), ],

        isSimdAvailable ? [ .testTarget(name: "kvSIMDTests", dependencies: [ .target(name: moduleName) ], swiftSettings: swiftSettings) ] : [ ],
    ].joined())
)
