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
//
//  KvFunctionTests.swift
//  kvSIMDTests
//
//  Created by Svyatoslav Popov on 23.07.2023.
//

import XCTest

@testable import kvSIMD

import simd



final class KvFunctionTests : XCTestCase {

    // MARK: test_abs()

    func test_abs() {
        TestAssert([ I2.zero, I2(1, 1), I2(-1, 1), I2(1, -1), I2(-1, -1) ] as [I2],
                   label: "abs-i2", reference: simd.abs, subject: kvSIMD.abs, validator: ==)
        TestAssert([ I3.zero,
                     I3(1, 1,  1), I3(-1, 1,  1), I3(1, -1,  1), I3(-1, -1,  1),
                     I3(1, 1, -1), I3(-1, 1, -1), I3(1, -1, -1), I3(-1, -1, -1) ] as [I3],
                   label: "abs-i3", reference: simd.abs, subject: kvSIMD.abs, validator: ==)
        TestAssert([ I4.zero,
                     I4(1, 1,  1,  1), I4(-1, 1,  1,  1), I4(1, -1,  1,  1), I4(-1, -1,  1,  1),
                     I4(1, 1, -1,  1), I4(-1, 1, -1,  1), I4(1, -1, -1,  1), I4(-1, -1, -1,  1),
                     I4(1, 1,  1, -1), I4(-1, 1,  1, -1), I4(1, -1,  1, -1), I4(-1, -1,  1, -1),
                     I4(1, 1, -1, -1), I4(-1, 1, -1, -1), I4(1, -1, -1, -1), I4(-1, -1, -1, -1) ] as [I4],
                   label: "abs-i4", reference: simd.abs, subject: kvSIMD.abs, validator: ==)

        TestAssert([ F2.zero, F2(1, 1), F2(-1, 1), F2(1, -1), F2(-1, -1) ] as [F2],
                   label: "abs-f2", reference: simd.abs, subject: kvSIMD.abs, validator: ==)
        TestAssert([ F3.zero,
                     F3(1, 1,  1), F3(-1, 1,  1), F3(1, -1,  1), F3(-1, -1,  1),
                     F3(1, 1, -1), F3(-1, 1, -1), F3(1, -1, -1), F3(-1, -1, -1) ] as [F3],
                   label: "abs-f3", reference: simd.abs, subject: kvSIMD.abs, validator: ==)
        TestAssert([ F4.zero,
                     F4(1, 1,  1,  1), F4(-1, 1,  1,  1), F4(1, -1,  1,  1), F4(-1, -1,  1,  1),
                     F4(1, 1, -1,  1), F4(-1, 1, -1,  1), F4(1, -1, -1,  1), F4(-1, -1, -1,  1),
                     F4(1, 1,  1, -1), F4(-1, 1,  1, -1), F4(1, -1,  1, -1), F4(-1, -1,  1, -1),
                     F4(1, 1, -1, -1), F4(-1, 1, -1, -1), F4(1, -1, -1, -1), F4(-1, -1, -1, -1) ] as [F4],
                   label: "abs-f4", reference: simd.abs, subject: kvSIMD.abs, validator: ==)

        TestAssert([ D2.zero, D2(1, 1), D2(-1, 1), D2(1, -1), D2(-1, -1) ] as [D2],
                   label: "abs-d2", reference: simd.abs, subject: kvSIMD.abs, validator: ==)
        TestAssert([ D3.zero,
                     D3(1, 1,  1), D3(-1, 1,  1), D3(1, -1,  1), D3(-1, -1,  1),
                     D3(1, 1, -1), D3(-1, 1, -1), D3(1, -1, -1), D3(-1, -1, -1) ] as [D3],
                   label: "abs-d3", reference: simd.abs, subject: kvSIMD.abs, validator: ==)
        TestAssert([ D4.zero,
                     D4(1, 1,  1,  1), D4(-1, 1,  1,  1), D4(1, -1,  1,  1), D4(-1, -1,  1,  1),
                     D4(1, 1, -1,  1), D4(-1, 1, -1,  1), D4(1, -1, -1,  1), D4(-1, -1, -1,  1),
                     D4(1, 1,  1, -1), D4(-1, 1,  1, -1), D4(1, -1,  1, -1), D4(-1, -1,  1, -1),
                     D4(1, 1, -1, -1), D4(-1, 1, -1, -1), D4(1, -1, -1, -1), D4(-1, -1, -1, -1) ] as [D4],
                   label: "abs-d4", reference: simd.abs, subject: kvSIMD.abs, validator: ==)
    }



    // MARK: test_acos()

    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    func test_acos() {
        TestAssert(RandomF2s( in: .sin), label: "acos-f2" , reference: simd.acos, subject: kvSIMD.acos, validator: IsEqual(_:_:))
        TestAssert(RandomF3s( in: .sin), label: "acos-f3" , reference: simd.acos, subject: kvSIMD.acos, validator: IsEqual(_:_:))
        TestAssert(RandomF4s( in: .sin), label: "acos-f4" , reference: simd.acos, subject: kvSIMD.acos, validator: IsEqual(_:_:))
        TestAssert(RandomF8s( in: .sin), label: "acos-f8" , reference: simd.acos, subject: kvSIMD.acos, validator: IsEqual(_:_:))
        TestAssert(RandomF16s(in: .sin), label: "acos-f16", reference: simd.acos, subject: kvSIMD.acos, validator: IsEqual(_:_:))

        TestAssert(RandomD2s( in: .sin), label: "acos-d2" , reference: simd.acos, subject: kvSIMD.acos, validator: IsEqual(_:_:))
        TestAssert(RandomD3s( in: .sin), label: "acos-d3" , reference: simd.acos, subject: kvSIMD.acos, validator: IsEqual(_:_:))
        TestAssert(RandomD4s( in: .sin), label: "acos-d4" , reference: simd.acos, subject: kvSIMD.acos, validator: IsEqual(_:_:))
        TestAssert(RandomD8s( in: .sin), label: "acos-d8" , reference: simd.acos, subject: kvSIMD.acos, validator: IsEqual(_:_:))
    }



    // MARK: test_acosh()

    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    func test_acosh() {
        TestAssert(RandomF2s( in: .cosh), label: "acosh-f2" , reference: simd.acosh, subject: kvSIMD.acosh, validator: IsEqual(_:_:))
        TestAssert(RandomF3s( in: .cosh), label: "acosh-f3" , reference: simd.acosh, subject: kvSIMD.acosh, validator: IsEqual(_:_:))
        TestAssert(RandomF4s( in: .cosh), label: "acosh-f4" , reference: simd.acosh, subject: kvSIMD.acosh, validator: IsEqual(_:_:))
        TestAssert(RandomF8s( in: .cosh), label: "acosh-f8" , reference: simd.acosh, subject: kvSIMD.acosh, validator: IsEqual(_:_:))
        TestAssert(RandomF16s(in: .cosh), label: "acosh-f16", reference: simd.acosh, subject: kvSIMD.acosh, validator: IsEqual(_:_:))

        TestAssert(RandomD2s( in: .cosh), label: "acosh-d2" , reference: simd.acosh, subject: kvSIMD.acosh, validator: IsEqual(_:_:))
        TestAssert(RandomD3s( in: .cosh), label: "acosh-d3" , reference: simd.acosh, subject: kvSIMD.acosh, validator: IsEqual(_:_:))
        TestAssert(RandomD4s( in: .cosh), label: "acosh-d4" , reference: simd.acosh, subject: kvSIMD.acosh, validator: IsEqual(_:_:))
        TestAssert(RandomD8s( in: .cosh), label: "acosh-d8" , reference: simd.acosh, subject: kvSIMD.acosh, validator: IsEqual(_:_:))
    }



    // MARK: test_asin()

    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    func test_asin() {
        TestAssert(RandomF2s( in: .sin), label: "asin-f2" , reference: simd.asin, subject: kvSIMD.asin, validator: IsEqual(_:_:))
        TestAssert(RandomF3s( in: .sin), label: "asin-f3" , reference: simd.asin, subject: kvSIMD.asin, validator: IsEqual(_:_:))
        TestAssert(RandomF4s( in: .sin), label: "asin-f4" , reference: simd.asin, subject: kvSIMD.asin, validator: IsEqual(_:_:))
        TestAssert(RandomF8s( in: .sin), label: "asin-f8" , reference: simd.asin, subject: kvSIMD.asin, validator: IsEqual(_:_:))
        TestAssert(RandomF16s(in: .sin), label: "asin-f16", reference: simd.asin, subject: kvSIMD.asin, validator: IsEqual(_:_:))

        TestAssert(RandomD2s( in: .sin), label: "asin-d2" , reference: simd.asin, subject: kvSIMD.asin, validator: IsEqual(_:_:))
        TestAssert(RandomD3s( in: .sin), label: "asin-d3" , reference: simd.asin, subject: kvSIMD.asin, validator: IsEqual(_:_:))
        TestAssert(RandomD4s( in: .sin), label: "asin-d4" , reference: simd.asin, subject: kvSIMD.asin, validator: IsEqual(_:_:))
        TestAssert(RandomD8s( in: .sin), label: "asin-d8" , reference: simd.asin, subject: kvSIMD.asin, validator: IsEqual(_:_:))
    }



    // MARK: test_asinh()

    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    func test_asinh() {
        TestAssert(RandomF2s( ), label: "asinh-f2" , reference: simd.asinh, subject: kvSIMD.asinh, validator: IsEqual(_:_:))
        TestAssert(RandomF3s( ), label: "asinh-f3" , reference: simd.asinh, subject: kvSIMD.asinh, validator: IsEqual(_:_:))
        TestAssert(RandomF4s( ), label: "asinh-f4" , reference: simd.asinh, subject: kvSIMD.asinh, validator: IsEqual(_:_:))
        TestAssert(RandomF8s( ), label: "asinh-f8" , reference: simd.asinh, subject: kvSIMD.asinh, validator: IsEqual(_:_:))
        TestAssert(RandomF16s(), label: "asinh-f16", reference: simd.asinh, subject: kvSIMD.asinh, validator: IsEqual(_:_:))

        TestAssert(RandomD2s( ), label: "asinh-d2" , reference: simd.asinh, subject: kvSIMD.asinh, validator: IsEqual(_:_:))
        TestAssert(RandomD3s( ), label: "asinh-d3" , reference: simd.asinh, subject: kvSIMD.asinh, validator: IsEqual(_:_:))
        TestAssert(RandomD4s( ), label: "asinh-d4" , reference: simd.asinh, subject: kvSIMD.asinh, validator: IsEqual(_:_:))
        TestAssert(RandomD8s( ), label: "asinh-d8" , reference: simd.asinh, subject: kvSIMD.asinh, validator: IsEqual(_:_:))
    }



    // MARK: test_atan()

    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    func test_atan() {
        TestAssert(RandomF2s( ), label: "atan-f2" , reference: simd.atan, subject: kvSIMD.atan, validator: IsEqual(_:_:))
        TestAssert(RandomF3s( ), label: "atan-f3" , reference: simd.atan, subject: kvSIMD.atan, validator: IsEqual(_:_:))
        TestAssert(RandomF4s( ), label: "atan-f4" , reference: simd.atan, subject: kvSIMD.atan, validator: IsEqual(_:_:))
        TestAssert(RandomF8s( ), label: "atan-f8" , reference: simd.atan, subject: kvSIMD.atan, validator: IsEqual(_:_:))
        TestAssert(RandomF16s(), label: "atan-f16", reference: simd.atan, subject: kvSIMD.atan, validator: IsEqual(_:_:))

        TestAssert(RandomD2s( ), label: "atan-d2" , reference: simd.atan, subject: kvSIMD.atan, validator: IsEqual(_:_:))
        TestAssert(RandomD3s( ), label: "atan-d3" , reference: simd.atan, subject: kvSIMD.atan, validator: IsEqual(_:_:))
        TestAssert(RandomD4s( ), label: "atan-d4" , reference: simd.atan, subject: kvSIMD.atan, validator: IsEqual(_:_:))
        TestAssert(RandomD8s( ), label: "atan-d8" , reference: simd.atan, subject: kvSIMD.atan, validator: IsEqual(_:_:))
    }



    // MARK: test_atan2()

    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    func test_atan2() {
        TestAssert(RandomF2s( ), RandomF2s( ), label: "atan2-f2f2"  , reference: simd.atan2, subject: kvSIMD.atan2, validator: IsEqual(_:_:))
        TestAssert(RandomF3s( ), RandomF3s( ), label: "atan2-f3f3"  , reference: simd.atan2, subject: kvSIMD.atan2, validator: IsEqual(_:_:))
        TestAssert(RandomF4s( ), RandomF4s( ), label: "atan2-f4f4"  , reference: simd.atan2, subject: kvSIMD.atan2, validator: IsEqual(_:_:))
        TestAssert(RandomF8s( ), RandomF8s( ), label: "atan2-f8f8"  , reference: simd.atan2, subject: kvSIMD.atan2, validator: IsEqual(_:_:))
        TestAssert(RandomF16s(), RandomF16s(), label: "atan2-f16f16", reference: simd.atan2, subject: kvSIMD.atan2, validator: IsEqual(_:_:))

        TestAssert(RandomD2s( ), RandomD2s( ), label: "atan2-d2d2"  , reference: simd.atan2, subject: kvSIMD.atan2, validator: IsEqual(_:_:))
        TestAssert(RandomD3s( ), RandomD3s( ), label: "atan2-d3d3"  , reference: simd.atan2, subject: kvSIMD.atan2, validator: IsEqual(_:_:))
        TestAssert(RandomD4s( ), RandomD4s( ), label: "atan2-d4d4"  , reference: simd.atan2, subject: kvSIMD.atan2, validator: IsEqual(_:_:))
        TestAssert(RandomD8s( ), RandomD8s( ), label: "atan2-d8d8"  , reference: simd.atan2, subject: kvSIMD.atan2, validator: IsEqual(_:_:))
    }



    // MARK: test_atanh()

    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    func test_atanh() {
        TestAssert(RandomF2s( in: .tanh), label: "atanh-f2" , reference: simd.atanh, subject: kvSIMD.atanh, validator: IsEqual(_:_:))
        TestAssert(RandomF3s( in: .tanh), label: "atanh-f3" , reference: simd.atanh, subject: kvSIMD.atanh, validator: IsEqual(_:_:))
        TestAssert(RandomF4s( in: .tanh), label: "atanh-f4" , reference: simd.atanh, subject: kvSIMD.atanh, validator: IsEqual(_:_:))
        TestAssert(RandomF8s( in: .tanh), label: "atanh-f8" , reference: simd.atanh, subject: kvSIMD.atanh, validator: IsEqual(_:_:))
        TestAssert(RandomF16s(in: .tanh), label: "atanh-f16", reference: simd.atanh, subject: kvSIMD.atanh, validator: IsEqual(_:_:))

        TestAssert(RandomD2s( in: .tanh), label: "atanh-d2" , reference: simd.atanh, subject: kvSIMD.atanh, validator: IsEqual(_:_:))
        TestAssert(RandomD3s( in: .tanh), label: "atanh-d3" , reference: simd.atanh, subject: kvSIMD.atanh, validator: IsEqual(_:_:))
        TestAssert(RandomD4s( in: .tanh), label: "atanh-d4" , reference: simd.atanh, subject: kvSIMD.atanh, validator: IsEqual(_:_:))
        TestAssert(RandomD8s( in: .tanh), label: "atanh-d8" , reference: simd.atanh, subject: kvSIMD.atanh, validator: IsEqual(_:_:))
    }



    // MARK: test_cbrt()

    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    func test_cbrt() {
        TestAssert(RandomF2s( ), label: "cbrt-f2" , reference: simd.cbrt, subject: kvSIMD.cbrt, validator: IsEqual(_:_:))
        TestAssert(RandomF3s( ), label: "cbrt-f3" , reference: simd.cbrt, subject: kvSIMD.cbrt, validator: IsEqual(_:_:))
        TestAssert(RandomF4s( ), label: "cbrt-f4" , reference: simd.cbrt, subject: kvSIMD.cbrt, validator: IsEqual(_:_:))
        TestAssert(RandomF8s( ), label: "cbrt-f8" , reference: simd.cbrt, subject: kvSIMD.cbrt, validator: IsEqual(_:_:))
        TestAssert(RandomF16s(), label: "cbrt-f16", reference: simd.cbrt, subject: kvSIMD.cbrt, validator: IsEqual(_:_:))

        TestAssert(RandomD2s( ), label: "cbrt-d2" , reference: simd.cbrt, subject: kvSIMD.cbrt, validator: IsEqual(_:_:))
        TestAssert(RandomD3s( ), label: "cbrt-d3" , reference: simd.cbrt, subject: kvSIMD.cbrt, validator: IsEqual(_:_:))
        TestAssert(RandomD4s( ), label: "cbrt-d4" , reference: simd.cbrt, subject: kvSIMD.cbrt, validator: IsEqual(_:_:))
        TestAssert(RandomD8s( ), label: "cbrt-d8" , reference: simd.cbrt, subject: kvSIMD.cbrt, validator: IsEqual(_:_:))
    }



    // MARK: test_ceil()

    func test_ceil() {
        TestAssert(RandomF2s(), label: "ceil-f2", reference: simd.ceil, subject: kvSIMD.ceil, validator: IsEqual(_:_:))
        TestAssert(RandomF3s(), label: "ceil-f3", reference: simd.ceil, subject: kvSIMD.ceil, validator: IsEqual(_:_:))
        TestAssert(RandomF4s(), label: "ceil-f4", reference: simd.ceil, subject: kvSIMD.ceil, validator: IsEqual(_:_:))

        TestAssert(RandomD2s(), label: "ceil-d2", reference: simd.ceil, subject: kvSIMD.ceil, validator: IsEqual(_:_:))
        TestAssert(RandomD3s(), label: "ceil-d3", reference: simd.ceil, subject: kvSIMD.ceil, validator: IsEqual(_:_:))
        TestAssert(RandomD4s(), label: "ceil-d4", reference: simd.ceil, subject: kvSIMD.ceil, validator: IsEqual(_:_:))
    }

    // MARK: test_clamp_*()

    func test_clamp_i() {
        TestAssert(RandomI2s(), RandomI2s(in: .range(-10...0)), RandomI2s(in: .range(0...10)), label: "clamp-i2i2i2", reference: simd.clamp, subject: kvSIMD.clamp, validator: ==)
        TestAssert(RandomI2s(), RandomI1s(in: .range(-10...0)), RandomI1s(in: .range(0...10)), label: "clamp-i2i1i1", reference: simd.clamp, subject: kvSIMD.clamp, validator: ==)
        TestAssert(RandomI3s(), RandomI3s(in: .range(-10...0)), RandomI3s(in: .range(0...10)), label: "clamp-i3i3i3", reference: simd.clamp, subject: kvSIMD.clamp, validator: ==)
        TestAssert(RandomI3s(), RandomI1s(in: .range(-10...0)), RandomI1s(in: .range(0...10)), label: "clamp-i3i1i1", reference: simd.clamp, subject: kvSIMD.clamp, validator: ==)
        TestAssert(RandomI4s(), RandomI4s(in: .range(-10...0)), RandomI4s(in: .range(0...10)), label: "clamp-i4i4i4", reference: simd.clamp, subject: kvSIMD.clamp, validator: ==)
        TestAssert(RandomI4s(), RandomI1s(in: .range(-10...0)), RandomI1s(in: .range(0...10)), label: "clamp-i4i1i1", reference: simd.clamp, subject: kvSIMD.clamp, validator: ==)
    }

    func test_clamp_ui() {
        TestAssert(RandomUI2s(), RandomUI2s(in: .range(0...5)), RandomUI2s(in: .range(5...10)), label: "clamp-u2u2u2", reference: simd.clamp, subject: kvSIMD.clamp, validator: ==)
        TestAssert(RandomUI2s(), RandomUI1s(in: .range(0...5)), RandomUI1s(in: .range(5...10)), label: "clamp-u2u1u1", reference: simd.clamp, subject: kvSIMD.clamp, validator: ==)
        TestAssert(RandomUI3s(), RandomUI3s(in: .range(0...5)), RandomUI3s(in: .range(5...10)), label: "clamp-u3u3u3", reference: simd.clamp, subject: kvSIMD.clamp, validator: ==)
        TestAssert(RandomUI3s(), RandomUI1s(in: .range(0...5)), RandomUI1s(in: .range(5...10)), label: "clamp-u3u1u1", reference: simd.clamp, subject: kvSIMD.clamp, validator: ==)
        TestAssert(RandomUI4s(), RandomUI4s(in: .range(0...5)), RandomUI4s(in: .range(5...10)), label: "clamp-u4u4u4", reference: simd.clamp, subject: kvSIMD.clamp, validator: ==)
        TestAssert(RandomUI4s(), RandomUI1s(in: .range(0...5)), RandomUI1s(in: .range(5...10)), label: "clamp-u4u1u1", reference: simd.clamp, subject: kvSIMD.clamp, validator: ==)
    }

    func test_clamp_f() {
        TestAssert(RandomF2s(), RandomF2s(in: .range(-10.0...0.0)), RandomF2s(in: .range(0.0...10.0)), label: "clamp-f2f2f2", reference: simd.clamp, subject: kvSIMD.clamp, validator: ==)
        TestAssert(RandomF2s(), RandomF1s(in: .range(-10.0...0.0)), RandomF1s(in: .range(0.0...10.0)), label: "clamp-f2f1f1", reference: simd.clamp, subject: kvSIMD.clamp, validator: ==)
        TestAssert(RandomF3s(), RandomF3s(in: .range(-10.0...0.0)), RandomF3s(in: .range(0.0...10.0)), label: "clamp-f3f3f3", reference: simd.clamp, subject: kvSIMD.clamp, validator: ==)
        TestAssert(RandomF3s(), RandomF1s(in: .range(-10.0...0.0)), RandomF1s(in: .range(0.0...10.0)), label: "clamp-f3f1f1", reference: simd.clamp, subject: kvSIMD.clamp, validator: ==)
        TestAssert(RandomF4s(), RandomF4s(in: .range(-10.0...0.0)), RandomF4s(in: .range(0.0...10.0)), label: "clamp-f4f4f4", reference: simd.clamp, subject: kvSIMD.clamp, validator: ==)
        TestAssert(RandomF4s(), RandomF1s(in: .range(-10.0...0.0)), RandomF1s(in: .range(0.0...10.0)), label: "clamp-f4f1f1", reference: simd.clamp, subject: kvSIMD.clamp, validator: ==)
    }

    func test_clamp_d() {
        TestAssert(RandomD2s(), RandomD2s(in: .range(-10.0...0.0)), RandomD2s(in: .range(0.0...10.0)), label: "clamp-d2d2d2", reference: simd.clamp, subject: kvSIMD.clamp, validator: ==)
        TestAssert(RandomD2s(), RandomD1s(in: .range(-10.0...0.0)), RandomD1s(in: .range(0.0...10.0)), label: "clamp-d2d1d1", reference: simd.clamp, subject: kvSIMD.clamp, validator: ==)
        TestAssert(RandomD3s(), RandomD3s(in: .range(-10.0...0.0)), RandomD3s(in: .range(0.0...10.0)), label: "clamp-d3d3d3", reference: simd.clamp, subject: kvSIMD.clamp, validator: ==)
        TestAssert(RandomD3s(), RandomD1s(in: .range(-10.0...0.0)), RandomD1s(in: .range(0.0...10.0)), label: "clamp-d3d1d1", reference: simd.clamp, subject: kvSIMD.clamp, validator: ==)
        TestAssert(RandomD4s(), RandomD4s(in: .range(-10.0...0.0)), RandomD4s(in: .range(0.0...10.0)), label: "clamp-d4d4d4", reference: simd.clamp, subject: kvSIMD.clamp, validator: ==)
        TestAssert(RandomD4s(), RandomD1s(in: .range(-10.0...0.0)), RandomD1s(in: .range(0.0...10.0)), label: "clamp-d4d1d1", reference: simd.clamp, subject: kvSIMD.clamp, validator: ==)
    }



    // MARK: test_cos()

    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    func test_cos() {
        TestAssert(RandomF2s( ), label: "cos-f2" , reference: simd.cos, subject: kvSIMD.cos, validator: IsEqual(_:_:))
        TestAssert(RandomF3s( ), label: "cos-f3" , reference: simd.cos, subject: kvSIMD.cos, validator: IsEqual(_:_:))
        TestAssert(RandomF4s( ), label: "cos-f4" , reference: simd.cos, subject: kvSIMD.cos, validator: IsEqual(_:_:))
        TestAssert(RandomF8s( ), label: "cos-f8" , reference: simd.cos, subject: kvSIMD.cos, validator: IsEqual(_:_:))
        TestAssert(RandomF16s(), label: "cos-f16", reference: simd.cos, subject: kvSIMD.cos, validator: IsEqual(_:_:))

        TestAssert(RandomD2s( ), label: "cos-d2" , reference: simd.cos, subject: kvSIMD.cos, validator: IsEqual(_:_:))
        TestAssert(RandomD3s( ), label: "cos-d3" , reference: simd.cos, subject: kvSIMD.cos, validator: IsEqual(_:_:))
        TestAssert(RandomD4s( ), label: "cos-d4" , reference: simd.cos, subject: kvSIMD.cos, validator: IsEqual(_:_:))
        TestAssert(RandomD8s( ), label: "cos-d8" , reference: simd.cos, subject: kvSIMD.cos, validator: IsEqual(_:_:))
    }



    // MARK: test_cosh()

    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    func test_cosh() {
        TestAssert(RandomF2s( ), label: "cosh-f2" , reference: simd.cosh, subject: kvSIMD.cosh, validator: IsEqual(_:_:))
        TestAssert(RandomF3s( ), label: "cosh-f3" , reference: simd.cosh, subject: kvSIMD.cosh, validator: IsEqual(_:_:))
        TestAssert(RandomF4s( ), label: "cosh-f4" , reference: simd.cosh, subject: kvSIMD.cosh, validator: IsEqual(_:_:))
        TestAssert(RandomF8s( ), label: "cosh-f8" , reference: simd.cosh, subject: kvSIMD.cosh, validator: IsEqual(_:_:))
        TestAssert(RandomF16s(), label: "cosh-f16", reference: simd.cosh, subject: kvSIMD.cosh, validator: IsEqual(_:_:))

        TestAssert(RandomD2s( ), label: "cosh-d2" , reference: simd.cosh, subject: kvSIMD.cosh, validator: IsEqual(_:_:))
        TestAssert(RandomD3s( ), label: "cosh-d3" , reference: simd.cosh, subject: kvSIMD.cosh, validator: IsEqual(_:_:))
        TestAssert(RandomD4s( ), label: "cosh-d4" , reference: simd.cosh, subject: kvSIMD.cosh, validator: IsEqual(_:_:))
        TestAssert(RandomD8s( ), label: "cosh-d8" , reference: simd.cosh, subject: kvSIMD.cosh, validator: IsEqual(_:_:))
    }



    // MARK: test_cospi_*()

    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    func test_cospi_any() {
        TestAssert(RandomF2s( ), label: "__cospi_any-f2" , reference: simd.cospi(_:), subject: kvSIMD.__cospi_any(_:), validator: { IsEqual($0, $1, eps: .near(1.0)) })
        TestAssert(RandomF3s( ), label: "__cospi_any-f3" , reference: simd.cospi(_:), subject: kvSIMD.__cospi_any(_:), validator: { IsEqual($0, $1, eps: .near(1.0)) })
        TestAssert(RandomF4s( ), label: "__cospi_any-f4" , reference: simd.cospi(_:), subject: kvSIMD.__cospi_any(_:), validator: { IsEqual($0, $1, eps: .near(1.0)) })
        TestAssert(RandomF8s( ), label: "__cospi_any-f8" , reference: simd.cospi(_:), subject: kvSIMD.__cospi_any(_:), validator: { IsEqual($0, $1, eps: .near(1.0)) })
        TestAssert(RandomF16s(), label: "__cospi_any-f16", reference: simd.cospi(_:), subject: kvSIMD.__cospi_any(_:), validator: { IsEqual($0, $1, eps: .near(1.0)) })

        TestAssert(RandomD2s( ), label: "__cospi_any-d2" , reference: simd.cospi(_:), subject: kvSIMD.__cospi_any(_:), validator: { IsEqual($0, $1, eps: .near(1.0)) })
        TestAssert(RandomD3s( ), label: "__cospi_any-d3" , reference: simd.cospi(_:), subject: kvSIMD.__cospi_any(_:), validator: { IsEqual($0, $1, eps: .near(1.0)) })
        TestAssert(RandomD4s( ), label: "__cospi_any-d4" , reference: simd.cospi(_:), subject: kvSIMD.__cospi_any(_:), validator: { IsEqual($0, $1, eps: .near(1.0)) })
        TestAssert(RandomD8s( ), label: "__cospi_any-d8" , reference: simd.cospi(_:), subject: kvSIMD.__cospi_any(_:), validator: { IsEqual($0, $1, eps: .near(1.0)) })
    }

#if canImport(Darwin)

    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    func test_cospi_darwin() {
        TestAssert(RandomF2s( ), label: "__cospi_darwin-f2" , reference: simd.cospi(_:), subject: kvSIMD.__cospi_darwin(_:), validator: IsEqual(_:_:))
        TestAssert(RandomF3s( ), label: "__cospi_darwin-f3" , reference: simd.cospi(_:), subject: kvSIMD.__cospi_darwin(_:), validator: IsEqual(_:_:))
        TestAssert(RandomF4s( ), label: "__cospi_darwin-f4" , reference: simd.cospi(_:), subject: kvSIMD.__cospi_darwin(_:), validator: IsEqual(_:_:))
        TestAssert(RandomF8s( ), label: "__cospi_darwin-f8" , reference: simd.cospi(_:), subject: kvSIMD.__cospi_darwin(_:), validator: IsEqual(_:_:))
        TestAssert(RandomF16s(), label: "__cospi_darwin-f16", reference: simd.cospi(_:), subject: kvSIMD.__cospi_darwin(_:), validator: IsEqual(_:_:))

        TestAssert(RandomD2s( ), label: "__cospi_darwin-d2" , reference: simd.cospi(_:), subject: kvSIMD.__cospi_darwin(_:), validator: IsEqual(_:_:))
        TestAssert(RandomD3s( ), label: "__cospi_darwin-d3" , reference: simd.cospi(_:), subject: kvSIMD.__cospi_darwin(_:), validator: IsEqual(_:_:))
        TestAssert(RandomD4s( ), label: "__cospi_darwin-d4" , reference: simd.cospi(_:), subject: kvSIMD.__cospi_darwin(_:), validator: IsEqual(_:_:))
        TestAssert(RandomD8s( ), label: "__cospi_darwin-d8" , reference: simd.cospi(_:), subject: kvSIMD.__cospi_darwin(_:), validator: IsEqual(_:_:))
    }

#endif // canImport(Darwin)



    // MARK: test_cross()

    func test_cross() {
        TestAssert(RandomF2s(), RandomF2s(), label: "cross-f2f2", reference: simd.cross, subject: kvSIMD.cross, validator: IsEqual(_:_:))
        TestAssert(RandomF3s(), RandomF3s(), label: "cross-f3f3", reference: simd.cross, subject: kvSIMD.cross, validator: IsEqual(_:_:))

        TestAssert(RandomD2s(), RandomD2s(), label: "cross-d2d2", reference: simd.cross, subject: kvSIMD.cross, validator: IsEqual(_:_:))
        TestAssert(RandomD3s(), RandomD3s(), label: "cross-d3d3", reference: simd.cross, subject: kvSIMD.cross, validator: IsEqual(_:_:))
    }



    // MARK: test_distance()

    func test_distance() {
        TestAssert(RandomF2s(), RandomF2s(), label: "distance-f2f2", reference: simd.distance, subject: kvSIMD.distance, validator: IsEqual(_:_:))
        TestAssert(RandomF3s(), RandomF3s(), label: "distance-f3f3", reference: simd.distance, subject: kvSIMD.distance, validator: IsEqual(_:_:))
        TestAssert(RandomF4s(), RandomF4s(), label: "distance-f4f4", reference: simd.distance, subject: kvSIMD.distance, validator: IsEqual(_:_:))

        TestAssert(RandomD2s(), RandomD2s(), label: "distance-d2d2", reference: simd.distance, subject: kvSIMD.distance, validator: IsEqual(_:_:))
        TestAssert(RandomD3s(), RandomD3s(), label: "distance-d3d3", reference: simd.distance, subject: kvSIMD.distance, validator: IsEqual(_:_:))
        TestAssert(RandomD4s(), RandomD4s(), label: "distance-d4d4", reference: simd.distance, subject: kvSIMD.distance, validator: IsEqual(_:_:))
    }



    // MARK: test_distance_squared()

    func test_distanceSquared() {
        TestAssert(RandomF2s(), RandomF2s(), label: "distance_squared-f2f2", reference: simd.distance_squared, subject: kvSIMD.distance_squared, validator: IsEqual(_:_:))
        TestAssert(RandomF3s(), RandomF3s(), label: "distance_squared-f3f3", reference: simd.distance_squared, subject: kvSIMD.distance_squared, validator: IsEqual(_:_:))
        TestAssert(RandomF4s(), RandomF4s(), label: "distance_squared-f4f4", reference: simd.distance_squared, subject: kvSIMD.distance_squared, validator: IsEqual(_:_:))

        TestAssert(RandomD2s(), RandomD2s(), label: "distance_squared-d2d2", reference: simd.distance_squared, subject: kvSIMD.distance_squared, validator: IsEqual(_:_:))
        TestAssert(RandomD3s(), RandomD3s(), label: "distance_squared-d3d3", reference: simd.distance_squared, subject: kvSIMD.distance_squared, validator: IsEqual(_:_:))
        TestAssert(RandomD4s(), RandomD4s(), label: "distance_squared-d4d4", reference: simd.distance_squared, subject: kvSIMD.distance_squared, validator: IsEqual(_:_:))
    }



    // MARK: test_dot()

    func test_dot() {
        TestAssert(RandomF2s(), RandomF2s(), label: "dot-f2f2", reference: simd.dot, subject: kvSIMD.dot, validator: { IsEqual($0, $1, eps: .near(100.0)) })
        TestAssert(RandomF3s(), RandomF3s(), label: "dot-f3f3", reference: simd.dot, subject: kvSIMD.dot, validator: { IsEqual($0, $1, eps: .near(100.0)) })
        TestAssert(RandomF4s(), RandomF4s(), label: "dot-f4f4", reference: simd.dot, subject: kvSIMD.dot, validator: { IsEqual($0, $1, eps: .near(100.0)) })

        TestAssert(RandomD2s(), RandomD2s(), label: "dot-d2d2", reference: simd.dot, subject: kvSIMD.dot, validator: { IsEqual($0, $1, eps: .near(100.0)) })
        TestAssert(RandomD3s(), RandomD3s(), label: "dot-d3d3", reference: simd.dot, subject: kvSIMD.dot, validator: { IsEqual($0, $1, eps: .near(100.0)) })
        TestAssert(RandomD4s(), RandomD4s(), label: "dot-d4d4", reference: simd.dot, subject: kvSIMD.dot, validator: { IsEqual($0, $1, eps: .near(100.0)) })

        TestAssert(RandomF4s(), RandomF4s(), label: "dot-fqfq", reference: { simd.dot(simd_quatf(vector: $0), simd_quatf(vector: $1)) }, subject: { kvSIMD.dot(QF(vector: $0), QF(vector: $1)) }, validator: { IsEqual($0, $1, eps: .near(100.0)) })
        TestAssert(RandomD4s(), RandomD4s(), label: "dot-dqdq", reference: { simd.dot(simd_quatd(vector: $0), simd_quatd(vector: $1)) }, subject: { kvSIMD.dot(QD(vector: $0), QD(vector: $1)) }, validator: { IsEqual($0, $1, eps: .near(100.0)) })
    }



    // MARK: test_erf()

    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    func test_erf() {
        TestAssert(RandomF2s( ), label: "erf-f2" , reference: simd.erf, subject: kvSIMD.erf, validator: IsEqual(_:_:))
        TestAssert(RandomF3s( ), label: "erf-f3" , reference: simd.erf, subject: kvSIMD.erf, validator: IsEqual(_:_:))
        TestAssert(RandomF4s( ), label: "erf-f4" , reference: simd.erf, subject: kvSIMD.erf, validator: IsEqual(_:_:))
        TestAssert(RandomF8s( ), label: "erf-f8" , reference: simd.erf, subject: kvSIMD.erf, validator: IsEqual(_:_:))
        TestAssert(RandomF16s(), label: "erf-f16", reference: simd.erf, subject: kvSIMD.erf, validator: IsEqual(_:_:))

        TestAssert(RandomD2s( ), label: "erf-d2" , reference: simd.erf, subject: kvSIMD.erf, validator: IsEqual(_:_:))
        TestAssert(RandomD3s( ), label: "erf-d3" , reference: simd.erf, subject: kvSIMD.erf, validator: IsEqual(_:_:))
        TestAssert(RandomD4s( ), label: "erf-d4" , reference: simd.erf, subject: kvSIMD.erf, validator: IsEqual(_:_:))
        TestAssert(RandomD8s( ), label: "erf-d8" , reference: simd.erf, subject: kvSIMD.erf, validator: IsEqual(_:_:))
    }



    // MARK: test_erfc()

    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    func test_erfc() {
        TestAssert(RandomF2s( ), label: "erfc-f2" , reference: simd.erfc, subject: kvSIMD.erfc, validator: IsEqual(_:_:))
        TestAssert(RandomF3s( ), label: "erfc-f3" , reference: simd.erfc, subject: kvSIMD.erfc, validator: IsEqual(_:_:))
        TestAssert(RandomF4s( ), label: "erfc-f4" , reference: simd.erfc, subject: kvSIMD.erfc, validator: IsEqual(_:_:))
        TestAssert(RandomF8s( ), label: "erfc-f8" , reference: simd.erfc, subject: kvSIMD.erfc, validator: IsEqual(_:_:))
        TestAssert(RandomF16s(), label: "erfc-f16", reference: simd.erfc, subject: kvSIMD.erfc, validator: IsEqual(_:_:))

        TestAssert(RandomD2s( ), label: "erfc-d2" , reference: simd.erfc, subject: kvSIMD.erfc, validator: IsEqual(_:_:))
        TestAssert(RandomD3s( ), label: "erfc-d3" , reference: simd.erfc, subject: kvSIMD.erfc, validator: IsEqual(_:_:))
        TestAssert(RandomD4s( ), label: "erfc-d4" , reference: simd.erfc, subject: kvSIMD.erfc, validator: IsEqual(_:_:))
        TestAssert(RandomD8s( ), label: "erfc-d8" , reference: simd.erfc, subject: kvSIMD.erfc, validator: IsEqual(_:_:))
    }



    // MARK: test_exp()

    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    func test_exp() {
        TestAssert(RandomF2s( ), label: "exp-f2" , reference: simd.exp, subject: kvSIMD.exp, validator: IsEqual(_:_:))
        TestAssert(RandomF3s( ), label: "exp-f3" , reference: simd.exp, subject: kvSIMD.exp, validator: IsEqual(_:_:))
        TestAssert(RandomF4s( ), label: "exp-f4" , reference: simd.exp, subject: kvSIMD.exp, validator: IsEqual(_:_:))
        TestAssert(RandomF8s( ), label: "exp-f8" , reference: simd.exp, subject: kvSIMD.exp, validator: IsEqual(_:_:))
        TestAssert(RandomF16s(), label: "exp-f16", reference: simd.exp, subject: kvSIMD.exp, validator: IsEqual(_:_:))

        TestAssert(RandomD2s( ), label: "exp-d2" , reference: simd.exp, subject: kvSIMD.exp, validator: IsEqual(_:_:))
        TestAssert(RandomD3s( ), label: "exp-d3" , reference: simd.exp, subject: kvSIMD.exp, validator: IsEqual(_:_:))
        TestAssert(RandomD4s( ), label: "exp-d4" , reference: simd.exp, subject: kvSIMD.exp, validator: IsEqual(_:_:))
        TestAssert(RandomD8s( ), label: "exp-d8" , reference: simd.exp, subject: kvSIMD.exp, validator: IsEqual(_:_:))

        (0..<1000).forEach { _ in
            assertEqual(RandomInputQF(), { kvSIMD.exp($0.subject) }, { simd.exp($0.reference) }, IsEqualQ(_:_:))
            assertEqual(RandomInputQD(), { kvSIMD.exp($0.subject) }, { simd.exp($0.reference) }, { IsEqualQ($0, $1, eps: EpsD.explicit(1e-6)) })
        }
    }



    // MARK: test_exp10_*()

    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    func test_exp10_any() {
        TestAssert(RandomF2s( ), label: "__exp10_any-f2" , reference: simd.exp10(_:), subject: kvSIMD.__exp10_any(_:), validator: IsEqual(_:_:))
        TestAssert(RandomF3s( ), label: "__exp10_any-f3" , reference: simd.exp10(_:), subject: kvSIMD.__exp10_any(_:), validator: IsEqual(_:_:))
        TestAssert(RandomF4s( ), label: "__exp10_any-f4" , reference: simd.exp10(_:), subject: kvSIMD.__exp10_any(_:), validator: IsEqual(_:_:))
        TestAssert(RandomF8s( ), label: "__exp10_any-f8" , reference: simd.exp10(_:), subject: kvSIMD.__exp10_any(_:), validator: IsEqual(_:_:))
        TestAssert(RandomF16s(), label: "__exp10_any-f16", reference: simd.exp10(_:), subject: kvSIMD.__exp10_any(_:), validator: IsEqual(_:_:))

        TestAssert(RandomD2s( ), label: "__exp10_any-d2" , reference: simd.exp10(_:), subject: kvSIMD.__exp10_any(_:), validator: IsEqual(_:_:))
        TestAssert(RandomD3s( ), label: "__exp10_any-d3" , reference: simd.exp10(_:), subject: kvSIMD.__exp10_any(_:), validator: IsEqual(_:_:))
        TestAssert(RandomD4s( ), label: "__exp10_any-d4" , reference: simd.exp10(_:), subject: kvSIMD.__exp10_any(_:), validator: IsEqual(_:_:))
        TestAssert(RandomD8s( ), label: "__exp10_any-d8" , reference: simd.exp10(_:), subject: kvSIMD.__exp10_any(_:), validator: IsEqual(_:_:))
    }

#if canImport(Darwin)

    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    func test_exp10_darwin() {
        TestAssert(RandomF2s( ), label: "__exp10_darwin-f2" , reference: simd.exp10(_:), subject: kvSIMD.__exp10_darwin(_:), validator: IsEqual(_:_:))
        TestAssert(RandomF3s( ), label: "__exp10_darwin-f3" , reference: simd.exp10(_:), subject: kvSIMD.__exp10_darwin(_:), validator: IsEqual(_:_:))
        TestAssert(RandomF4s( ), label: "__exp10_darwin-f4" , reference: simd.exp10(_:), subject: kvSIMD.__exp10_darwin(_:), validator: IsEqual(_:_:))
        TestAssert(RandomF8s( ), label: "__exp10_darwin-f8" , reference: simd.exp10(_:), subject: kvSIMD.__exp10_darwin(_:), validator: IsEqual(_:_:))
        TestAssert(RandomF16s(), label: "__exp10_darwin-f16", reference: simd.exp10(_:), subject: kvSIMD.__exp10_darwin(_:), validator: IsEqual(_:_:))

        TestAssert(RandomD2s( ), label: "__exp10_darwin-d2" , reference: simd.exp10(_:), subject: kvSIMD.__exp10_darwin(_:), validator: IsEqual(_:_:))
        TestAssert(RandomD3s( ), label: "__exp10_darwin-d3" , reference: simd.exp10(_:), subject: kvSIMD.__exp10_darwin(_:), validator: IsEqual(_:_:))
        TestAssert(RandomD4s( ), label: "__exp10_darwin-d4" , reference: simd.exp10(_:), subject: kvSIMD.__exp10_darwin(_:), validator: IsEqual(_:_:))
        TestAssert(RandomD8s( ), label: "__exp10_darwin-d8" , reference: simd.exp10(_:), subject: kvSIMD.__exp10_darwin(_:), validator: IsEqual(_:_:))
    }

#endif // canImport(Darwin)



    // MARK: test_exp2()

    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    func test_exp2() {
        TestAssert(RandomF2s( ), label: "exp2-f2" , reference: simd.exp2, subject: kvSIMD.exp2, validator: IsEqual(_:_:))
        TestAssert(RandomF3s( ), label: "exp2-f3" , reference: simd.exp2, subject: kvSIMD.exp2, validator: IsEqual(_:_:))
        TestAssert(RandomF4s( ), label: "exp2-f4" , reference: simd.exp2, subject: kvSIMD.exp2, validator: IsEqual(_:_:))
        TestAssert(RandomF8s( ), label: "exp2-f8" , reference: simd.exp2, subject: kvSIMD.exp2, validator: IsEqual(_:_:))
        TestAssert(RandomF16s(), label: "exp2-f16", reference: simd.exp2, subject: kvSIMD.exp2, validator: IsEqual(_:_:))

        TestAssert(RandomD2s( ), label: "exp2-d2" , reference: simd.exp2, subject: kvSIMD.exp2, validator: IsEqual(_:_:))
        TestAssert(RandomD3s( ), label: "exp2-d3" , reference: simd.exp2, subject: kvSIMD.exp2, validator: IsEqual(_:_:))
        TestAssert(RandomD4s( ), label: "exp2-d4" , reference: simd.exp2, subject: kvSIMD.exp2, validator: IsEqual(_:_:))
        TestAssert(RandomD8s( ), label: "exp2-d8" , reference: simd.exp2, subject: kvSIMD.exp2, validator: IsEqual(_:_:))
    }



    // MARK: test_expm1()

    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    func test_expm1() {
        TestAssert(RandomF2s( ), label: "expm1-f2" , reference: simd.expm1, subject: kvSIMD.expm1, validator: IsEqual(_:_:))
        TestAssert(RandomF3s( ), label: "expm1-f3" , reference: simd.expm1, subject: kvSIMD.expm1, validator: IsEqual(_:_:))
        TestAssert(RandomF4s( ), label: "expm1-f4" , reference: simd.expm1, subject: kvSIMD.expm1, validator: IsEqual(_:_:))
        TestAssert(RandomF8s( ), label: "expm1-f8" , reference: simd.expm1, subject: kvSIMD.expm1, validator: IsEqual(_:_:))
        TestAssert(RandomF16s(), label: "expm1-f16", reference: simd.expm1, subject: kvSIMD.expm1, validator: IsEqual(_:_:))

        TestAssert(RandomD2s( ), label: "expm1-d2" , reference: simd.expm1, subject: kvSIMD.expm1, validator: IsEqual(_:_:))
        TestAssert(RandomD3s( ), label: "expm1-d3" , reference: simd.expm1, subject: kvSIMD.expm1, validator: IsEqual(_:_:))
        TestAssert(RandomD4s( ), label: "expm1-d4" , reference: simd.expm1, subject: kvSIMD.expm1, validator: IsEqual(_:_:))
        TestAssert(RandomD8s( ), label: "expm1-d8" , reference: simd.expm1, subject: kvSIMD.expm1, validator: IsEqual(_:_:))
    }



    // MARK: test_floor()

    func test_floor() {
        TestAssert(RandomF2s(), label: "floor-f2", reference: simd.floor, subject: kvSIMD.floor, validator: IsEqual(_:_:))
        TestAssert(RandomF3s(), label: "floor-f3", reference: simd.floor, subject: kvSIMD.floor, validator: IsEqual(_:_:))
        TestAssert(RandomF4s(), label: "floor-f4", reference: simd.floor, subject: kvSIMD.floor, validator: IsEqual(_:_:))

        TestAssert(RandomD2s(), label: "floor-d2", reference: simd.floor, subject: kvSIMD.floor, validator: IsEqual(_:_:))
        TestAssert(RandomD3s(), label: "floor-d3", reference: simd.floor, subject: kvSIMD.floor, validator: IsEqual(_:_:))
        TestAssert(RandomD4s(), label: "floor-d4", reference: simd.floor, subject: kvSIMD.floor, validator: IsEqual(_:_:))
    }



    // MARK: test_fma()

    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    func test_fma() {
        TestAssert(RandomF2s( ), RandomF2s( ), RandomF2s( ), label: "fma-f2f2f2   ", reference: simd.fma, subject: kvSIMD.fma, validator: IsEqual(_:_:))
        TestAssert(RandomF3s( ), RandomF3s( ), RandomF3s( ), label: "fma-f3f3f3   ", reference: simd.fma, subject: kvSIMD.fma, validator: IsEqual(_:_:))
        TestAssert(RandomF4s( ), RandomF4s( ), RandomF4s( ), label: "fma-f4f4f4   ", reference: simd.fma, subject: kvSIMD.fma, validator: IsEqual(_:_:))
        TestAssert(RandomF8s( ), RandomF8s( ), RandomF8s( ), label: "fma-f8f8f8   ", reference: simd.fma, subject: kvSIMD.fma, validator: IsEqual(_:_:))
        TestAssert(RandomF16s(), RandomF16s(), RandomF16s(), label: "fma-f16f16f16", reference: simd.fma, subject: kvSIMD.fma, validator: IsEqual(_:_:))

        TestAssert(RandomD2s(), RandomD2s(), RandomD2s(), label: "fma-d2d2d2", reference: simd.fma, subject: kvSIMD.fma, validator: IsEqual(_:_:))
        TestAssert(RandomD3s(), RandomD3s(), RandomD3s(), label: "fma-d3d3d3", reference: simd.fma, subject: kvSIMD.fma, validator: IsEqual(_:_:))
        TestAssert(RandomD4s(), RandomD4s(), RandomD4s(), label: "fma-d4d4d4", reference: simd.fma, subject: kvSIMD.fma, validator: IsEqual(_:_:))
        TestAssert(RandomD8s(), RandomD8s(), RandomD8s(), label: "fma-d8d8d8", reference: simd.fma, subject: kvSIMD.fma, validator: IsEqual(_:_:))
    }



    // MARK: test_fmax()

    func test_fmax() {
        TestAssert(RandomF2s(), RandomF2s(), label: "fmax-f2f2", reference: simd.fmax, subject: kvSIMD.fmax, validator: IsEqual(_:_:))
        TestAssert(RandomF3s(), RandomF3s(), label: "fmax-f3f3", reference: simd.fmax, subject: kvSIMD.fmax, validator: IsEqual(_:_:))
        TestAssert(RandomF4s(), RandomF4s(), label: "fmax-f4f4", reference: simd.fmax, subject: kvSIMD.fmax, validator: IsEqual(_:_:))

        TestAssert(RandomD2s(), RandomD2s(), label: "fmax-d2d2", reference: simd.fmax, subject: kvSIMD.fmax, validator: IsEqual(_:_:))
        TestAssert(RandomD3s(), RandomD3s(), label: "fmax-d3d3", reference: simd.fmax, subject: kvSIMD.fmax, validator: IsEqual(_:_:))
        TestAssert(RandomD4s(), RandomD4s(), label: "fmax-d4d4", reference: simd.fmax, subject: kvSIMD.fmax, validator: IsEqual(_:_:))
    }



    // MARK: test_fmin()

    func test_fmin() {
        TestAssert(RandomF2s(), RandomF2s(), label: "fmin-f2f2", reference: simd.fmin, subject: kvSIMD.fmin, validator: IsEqual(_:_:))
        TestAssert(RandomF3s(), RandomF3s(), label: "fmin-f3f3", reference: simd.fmin, subject: kvSIMD.fmin, validator: IsEqual(_:_:))
        TestAssert(RandomF4s(), RandomF4s(), label: "fmin-f4f4", reference: simd.fmin, subject: kvSIMD.fmin, validator: IsEqual(_:_:))

        TestAssert(RandomD2s(), RandomD2s(), label: "fmin-d2d2", reference: simd.fmin, subject: kvSIMD.fmin, validator: IsEqual(_:_:))
        TestAssert(RandomD3s(), RandomD3s(), label: "fmin-d3d3", reference: simd.fmin, subject: kvSIMD.fmin, validator: IsEqual(_:_:))
        TestAssert(RandomD4s(), RandomD4s(), label: "fmin-d4d4", reference: simd.fmin, subject: kvSIMD.fmin, validator: IsEqual(_:_:))
    }



    // MARK: test_fmod()

    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    func test_fmod() {
        TestAssert(RandomF2s( ), RandomF2s( ), label: "fmod-f2f2"  , reference: simd.fmod, subject: kvSIMD.fmod, validator: IsEqual(_:_:))
        TestAssert(RandomF3s( ), RandomF3s( ), label: "fmod-f3f3"  , reference: simd.fmod, subject: kvSIMD.fmod, validator: IsEqual(_:_:))
        TestAssert(RandomF4s( ), RandomF4s( ), label: "fmod-f4f4"  , reference: simd.fmod, subject: kvSIMD.fmod, validator: IsEqual(_:_:))
        TestAssert(RandomF8s( ), RandomF8s( ), label: "fmod-f8f8"  , reference: simd.fmod, subject: kvSIMD.fmod, validator: IsEqual(_:_:))
        TestAssert(RandomF16s(), RandomF16s(), label: "fmod-f16f16", reference: simd.fmod, subject: kvSIMD.fmod, validator: IsEqual(_:_:))

        TestAssert(RandomD2s( ), RandomD2s( ), label: "fmod-d2d2"  , reference: simd.fmod, subject: kvSIMD.fmod, validator: IsEqual(_:_:))
        TestAssert(RandomD3s( ), RandomD3s( ), label: "fmod-d3d3"  , reference: simd.fmod, subject: kvSIMD.fmod, validator: IsEqual(_:_:))
        TestAssert(RandomD4s( ), RandomD4s( ), label: "fmod-d4d4"  , reference: simd.fmod, subject: kvSIMD.fmod, validator: IsEqual(_:_:))
        TestAssert(RandomD8s( ), RandomD8s( ), label: "fmod-d8d8"  , reference: simd.fmod, subject: kvSIMD.fmod, validator: IsEqual(_:_:))
    }



    // MARK: test_fract()

    func test_fract() {
        TestAssert(RandomF2s(), label: "fract-f2", reference: simd.fract, subject: kvSIMD.fract, validator: IsEqual(_:_:))
        TestAssert(RandomF3s(), label: "fract-f3", reference: simd.fract, subject: kvSIMD.fract, validator: IsEqual(_:_:))
        TestAssert(RandomF4s(), label: "fract-f4", reference: simd.fract, subject: kvSIMD.fract, validator: IsEqual(_:_:))

        TestAssert(RandomD2s(), label: "fract-d2", reference: simd.fract, subject: kvSIMD.fract, validator: IsEqual(_:_:))
        TestAssert(RandomD3s(), label: "fract-d3", reference: simd.fract, subject: kvSIMD.fract, validator: IsEqual(_:_:))
        TestAssert(RandomD4s(), label: "fract-d4", reference: simd.fract, subject: kvSIMD.fract, validator: IsEqual(_:_:))
    }



    // MARK: test_hypot()

    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    func test_hypot() {
        TestAssert(RandomF2s( ), RandomF2s( ), label: "hypot-f2f2"  , reference: simd.hypot, subject: kvSIMD.hypot, validator: IsEqual(_:_:))
        TestAssert(RandomF3s( ), RandomF3s( ), label: "hypot-f3f3"  , reference: simd.hypot, subject: kvSIMD.hypot, validator: IsEqual(_:_:))
        TestAssert(RandomF4s( ), RandomF4s( ), label: "hypot-f4f4"  , reference: simd.hypot, subject: kvSIMD.hypot, validator: IsEqual(_:_:))
        TestAssert(RandomF8s( ), RandomF8s( ), label: "hypot-f8f8"  , reference: simd.hypot, subject: kvSIMD.hypot, validator: IsEqual(_:_:))
        TestAssert(RandomF16s(), RandomF16s(), label: "hypot-f16f16", reference: simd.hypot, subject: kvSIMD.hypot, validator: IsEqual(_:_:))

        TestAssert(RandomD2s( ), RandomD2s( ), label: "hypot-d2d2"  , reference: simd.hypot, subject: kvSIMD.hypot, validator: IsEqual(_:_:))
        TestAssert(RandomD3s( ), RandomD3s( ), label: "hypot-d3d3"  , reference: simd.hypot, subject: kvSIMD.hypot, validator: IsEqual(_:_:))
        TestAssert(RandomD4s( ), RandomD4s( ), label: "hypot-d4d4"  , reference: simd.hypot, subject: kvSIMD.hypot, validator: IsEqual(_:_:))
        TestAssert(RandomD8s( ), RandomD8s( ), label: "hypot-d8d8"  , reference: simd.hypot, subject: kvSIMD.hypot, validator: IsEqual(_:_:))
    }



    // MARK: test_isfinite()

    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    func test_isfinite() {
        TestAssert(RepeatedF2( ValidatingFloats()), label: "isfinite-f2" , reference: simd.isfinite, subject: kvSIMD.isfinite, validator: ==)
        TestAssert(RepeatedF3( ValidatingFloats()), label: "isfinite-f3" , reference: simd.isfinite, subject: kvSIMD.isfinite, validator: ==)
        TestAssert(RepeatedF4( ValidatingFloats()), label: "isfinite-f4" , reference: simd.isfinite, subject: kvSIMD.isfinite, validator: ==)
        TestAssert(RepeatedF8( ValidatingFloats()), label: "isfinite-f8" , reference: simd.isfinite, subject: kvSIMD.isfinite, validator: ==)
        TestAssert(RepeatedF16(ValidatingFloats()), label: "isfinite-f16", reference: simd.isfinite, subject: kvSIMD.isfinite, validator: ==)

        TestAssert(RepeatedD2( ValidatingFloats()), label: "isfinite-d2" , reference: simd.isfinite, subject: kvSIMD.isfinite, validator: ==)
        TestAssert(RepeatedD3( ValidatingFloats()), label: "isfinite-d3" , reference: simd.isfinite, subject: kvSIMD.isfinite, validator: ==)
        TestAssert(RepeatedD4( ValidatingFloats()), label: "isfinite-d4" , reference: simd.isfinite, subject: kvSIMD.isfinite, validator: ==)
        TestAssert(RepeatedD8( ValidatingFloats()), label: "isfinite-d8" , reference: simd.isfinite, subject: kvSIMD.isfinite, validator: ==)
    }



    // MARK: test_isinf()

    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    func test_isinf() {
        TestAssert(RepeatedF2( ValidatingFloats()), label: "isinf-f2" , reference: simd.isinf, subject: kvSIMD.isinf, validator: ==)
        TestAssert(RepeatedF3( ValidatingFloats()), label: "isinf-f3" , reference: simd.isinf, subject: kvSIMD.isinf, validator: ==)
        TestAssert(RepeatedF4( ValidatingFloats()), label: "isinf-f4" , reference: simd.isinf, subject: kvSIMD.isinf, validator: ==)
        TestAssert(RepeatedF8( ValidatingFloats()), label: "isinf-f8" , reference: simd.isinf, subject: kvSIMD.isinf, validator: ==)
        TestAssert(RepeatedF16(ValidatingFloats()), label: "isinf-f16", reference: simd.isinf, subject: kvSIMD.isinf, validator: ==)

        TestAssert(RepeatedD2( ValidatingFloats()), label: "isinf-d2" , reference: simd.isinf, subject: kvSIMD.isinf, validator: ==)
        TestAssert(RepeatedD3( ValidatingFloats()), label: "isinf-d3" , reference: simd.isinf, subject: kvSIMD.isinf, validator: ==)
        TestAssert(RepeatedD4( ValidatingFloats()), label: "isinf-d4" , reference: simd.isinf, subject: kvSIMD.isinf, validator: ==)
        TestAssert(RepeatedD8( ValidatingFloats()), label: "isinf-d8" , reference: simd.isinf, subject: kvSIMD.isinf, validator: ==)
    }



    // MARK: test_isnan()

    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    func test_isnan() {
        TestAssert(RepeatedF2( ValidatingFloats()), label: "isnan-f2" , reference: simd.isnan, subject: kvSIMD.isnan, validator: ==)
        TestAssert(RepeatedF3( ValidatingFloats()), label: "isnan-f3" , reference: simd.isnan, subject: kvSIMD.isnan, validator: ==)
        TestAssert(RepeatedF4( ValidatingFloats()), label: "isnan-f4" , reference: simd.isnan, subject: kvSIMD.isnan, validator: ==)
        TestAssert(RepeatedF8( ValidatingFloats()), label: "isnan-f8" , reference: simd.isnan, subject: kvSIMD.isnan, validator: ==)
        TestAssert(RepeatedF16(ValidatingFloats()), label: "isnan-f16", reference: simd.isnan, subject: kvSIMD.isnan, validator: ==)

        TestAssert(RepeatedD2( ValidatingFloats()), label: "isnan-d2" , reference: simd.isnan, subject: kvSIMD.isnan, validator: ==)
        TestAssert(RepeatedD3( ValidatingFloats()), label: "isnan-d3" , reference: simd.isnan, subject: kvSIMD.isnan, validator: ==)
        TestAssert(RepeatedD4( ValidatingFloats()), label: "isnan-d4" , reference: simd.isnan, subject: kvSIMD.isnan, validator: ==)
        TestAssert(RepeatedD8( ValidatingFloats()), label: "isnan-d8" , reference: simd.isnan, subject: kvSIMD.isnan, validator: ==)
    }



    // MARK: test_isnormal()

    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    func test_isnormal() {
        TestAssert(RepeatedF2( ValidatingFloats()), label: "isnormal-f2" , reference: simd.isnormal, subject: kvSIMD.isnormal, validator: ==)
        TestAssert(RepeatedF3( ValidatingFloats()), label: "isnormal-f3" , reference: simd.isnormal, subject: kvSIMD.isnormal, validator: ==)
        TestAssert(RepeatedF4( ValidatingFloats()), label: "isnormal-f4" , reference: simd.isnormal, subject: kvSIMD.isnormal, validator: ==)
        TestAssert(RepeatedF8( ValidatingFloats()), label: "isnormal-f8" , reference: simd.isnormal, subject: kvSIMD.isnormal, validator: ==)
        TestAssert(RepeatedF16(ValidatingFloats()), label: "isnormal-f16", reference: simd.isnormal, subject: kvSIMD.isnormal, validator: ==)

        TestAssert(RepeatedD2( ValidatingFloats()), label: "isnormal-d2" , reference: simd.isnormal, subject: kvSIMD.isnormal, validator: ==)
        TestAssert(RepeatedD3( ValidatingFloats()), label: "isnormal-d3" , reference: simd.isnormal, subject: kvSIMD.isnormal, validator: ==)
        TestAssert(RepeatedD4( ValidatingFloats()), label: "isnormal-d4" , reference: simd.isnormal, subject: kvSIMD.isnormal, validator: ==)
        TestAssert(RepeatedD8( ValidatingFloats()), label: "isnormal-d8" , reference: simd.isnormal, subject: kvSIMD.isnormal, validator: ==)
    }



    // MARK: test_length()

    func test_length() {
        TestAssert(RandomF2s(), label: "length-f2", reference: simd.length, subject: kvSIMD.length, validator: IsEqual(_:_:))
        TestAssert(RandomF3s(), label: "length-f3", reference: simd.length, subject: kvSIMD.length, validator: IsEqual(_:_:))
        TestAssert(RandomF4s(), label: "length-f4", reference: simd.length, subject: kvSIMD.length, validator: IsEqual(_:_:))

        TestAssert(RandomD2s(), label: "length-d2", reference: simd.length, subject: kvSIMD.length, validator: IsEqual(_:_:))
        TestAssert(RandomD3s(), label: "length-d3", reference: simd.length, subject: kvSIMD.length, validator: IsEqual(_:_:))
        TestAssert(RandomD4s(), label: "length-d4", reference: simd.length, subject: kvSIMD.length, validator: IsEqual(_:_:))
    }



    // MARK: test_length_squared()

    func test_length_squared() {
        TestAssert(RandomF2s(), label: "length_squared-f2", reference: simd.length_squared, subject: kvSIMD.length_squared, validator: IsEqual(_:_:))
        TestAssert(RandomF3s(), label: "length_squared-f3", reference: simd.length_squared, subject: kvSIMD.length_squared, validator: IsEqual(_:_:))
        TestAssert(RandomF4s(), label: "length_squared-f4", reference: simd.length_squared, subject: kvSIMD.length_squared, validator: IsEqual(_:_:))

        TestAssert(RandomD2s(), label: "length_squared-d2", reference: simd.length_squared, subject: kvSIMD.length_squared, validator: IsEqual(_:_:))
        TestAssert(RandomD3s(), label: "length_squared-d3", reference: simd.length_squared, subject: kvSIMD.length_squared, validator: IsEqual(_:_:))
        TestAssert(RandomD4s(), label: "length_squared-d4", reference: simd.length_squared, subject: kvSIMD.length_squared, validator: IsEqual(_:_:))
    }



    // MARK: test_lgamma()

    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    func test_lgamma() {
        TestAssert(RandomF2s( ), label: "lgamma-f2" , reference: simd.lgamma, subject: kvSIMD.lgamma, validator: IsEqual(_:_:))
        TestAssert(RandomF3s( ), label: "lgamma-f3" , reference: simd.lgamma, subject: kvSIMD.lgamma, validator: IsEqual(_:_:))
        TestAssert(RandomF4s( ), label: "lgamma-f4" , reference: simd.lgamma, subject: kvSIMD.lgamma, validator: IsEqual(_:_:))
        TestAssert(RandomF8s( ), label: "lgamma-f8" , reference: simd.lgamma, subject: kvSIMD.lgamma, validator: IsEqual(_:_:))
        TestAssert(RandomF16s(), label: "lgamma-f16", reference: simd.lgamma, subject: kvSIMD.lgamma, validator: IsEqual(_:_:))

        TestAssert(RandomD2s( ), label: "lgamma-d2" , reference: simd.lgamma, subject: kvSIMD.lgamma, validator: IsEqual(_:_:))
        TestAssert(RandomD3s( ), label: "lgamma-d3" , reference: simd.lgamma, subject: kvSIMD.lgamma, validator: IsEqual(_:_:))
        TestAssert(RandomD4s( ), label: "lgamma-d4" , reference: simd.lgamma, subject: kvSIMD.lgamma, validator: IsEqual(_:_:))
        TestAssert(RandomD8s( ), label: "lgamma-d8" , reference: simd.lgamma, subject: kvSIMD.lgamma, validator: IsEqual(_:_:))
    }



    // MARK: test_log()

    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    func test_log() {
        TestAssert(RandomF2s( in: .positive), label: "log-f2" , reference: simd.log, subject: kvSIMD.log, validator: IsEqual(_:_:))
        TestAssert(RandomF3s( in: .positive), label: "log-f3" , reference: simd.log, subject: kvSIMD.log, validator: IsEqual(_:_:))
        TestAssert(RandomF4s( in: .positive), label: "log-f4" , reference: simd.log, subject: kvSIMD.log, validator: IsEqual(_:_:))
        TestAssert(RandomF8s( in: .positive), label: "log-f8" , reference: simd.log, subject: kvSIMD.log, validator: IsEqual(_:_:))
        TestAssert(RandomF16s(in: .positive), label: "log-f16", reference: simd.log, subject: kvSIMD.log, validator: IsEqual(_:_:))

        TestAssert(RandomD2s( in: .positive), label: "log-d2" , reference: simd.log, subject: kvSIMD.log, validator: IsEqual(_:_:))
        TestAssert(RandomD3s( in: .positive), label: "log-d3" , reference: simd.log, subject: kvSIMD.log, validator: IsEqual(_:_:))
        TestAssert(RandomD4s( in: .positive), label: "log-d4" , reference: simd.log, subject: kvSIMD.log, validator: IsEqual(_:_:))
        TestAssert(RandomD8s( in: .positive), label: "log-d8" , reference: simd.log, subject: kvSIMD.log, validator: IsEqual(_:_:))

        (0..<1000).forEach { _ in
            assertEqual(RandomInputQF(), { kvSIMD.log($0.subject) }, { simd.log($0.reference) }, { IsEqualQ($0, $1, eps: EpsF.near(100.0)) })
            assertEqual(RandomInputQD(), { kvSIMD.log($0.subject) }, { simd.log($0.reference) }, { IsEqualQ($0, $1, eps: EpsD.near(100.0)) })
        }
    }



    // MARK: test_log10()

    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    func test_log10() {
        TestAssert(RandomF2s( in: .positive), label: "log10-f2" , reference: simd.log10, subject: kvSIMD.log10, validator: IsEqual(_:_:))
        TestAssert(RandomF3s( in: .positive), label: "log10-f3" , reference: simd.log10, subject: kvSIMD.log10, validator: IsEqual(_:_:))
        TestAssert(RandomF4s( in: .positive), label: "log10-f4" , reference: simd.log10, subject: kvSIMD.log10, validator: IsEqual(_:_:))
        TestAssert(RandomF8s( in: .positive), label: "log10-f8" , reference: simd.log10, subject: kvSIMD.log10, validator: IsEqual(_:_:))
        TestAssert(RandomF16s(in: .positive), label: "log10-f16", reference: simd.log10, subject: kvSIMD.log10, validator: IsEqual(_:_:))

        TestAssert(RandomD2s( in: .positive), label: "log10-d2" , reference: simd.log10, subject: kvSIMD.log10, validator: IsEqual(_:_:))
        TestAssert(RandomD3s( in: .positive), label: "log10-d3" , reference: simd.log10, subject: kvSIMD.log10, validator: IsEqual(_:_:))
        TestAssert(RandomD4s( in: .positive), label: "log10-d4" , reference: simd.log10, subject: kvSIMD.log10, validator: IsEqual(_:_:))
        TestAssert(RandomD8s( in: .positive), label: "log10-d8" , reference: simd.log10, subject: kvSIMD.log10, validator: IsEqual(_:_:))
    }



    // MARK: test_log1p()

    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    func test_log1p() {
        TestAssert(RandomF2s( in: .log1p), label: "log1p-f2" , reference: simd.log1p, subject: kvSIMD.log1p, validator: IsEqual(_:_:))
        TestAssert(RandomF3s( in: .log1p), label: "log1p-f3" , reference: simd.log1p, subject: kvSIMD.log1p, validator: IsEqual(_:_:))
        TestAssert(RandomF4s( in: .log1p), label: "log1p-f4" , reference: simd.log1p, subject: kvSIMD.log1p, validator: IsEqual(_:_:))
        TestAssert(RandomF8s( in: .log1p), label: "log1p-f8" , reference: simd.log1p, subject: kvSIMD.log1p, validator: IsEqual(_:_:))
        TestAssert(RandomF16s(in: .log1p), label: "log1p-f16", reference: simd.log1p, subject: kvSIMD.log1p, validator: IsEqual(_:_:))

        TestAssert(RandomD2s( in: .log1p), label: "log1p-d2" , reference: simd.log1p, subject: kvSIMD.log1p, validator: IsEqual(_:_:))
        TestAssert(RandomD3s( in: .log1p), label: "log1p-d3" , reference: simd.log1p, subject: kvSIMD.log1p, validator: IsEqual(_:_:))
        TestAssert(RandomD4s( in: .log1p), label: "log1p-d4" , reference: simd.log1p, subject: kvSIMD.log1p, validator: IsEqual(_:_:))
        TestAssert(RandomD8s( in: .log1p), label: "log1p-d8" , reference: simd.log1p, subject: kvSIMD.log1p, validator: IsEqual(_:_:))
    }



    // MARK: test_log2()

    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    func test_log2() {
        TestAssert(RandomF2s( in: .positive), label: "log2-f2" , reference: simd.log2, subject: kvSIMD.log2, validator: IsEqual(_:_:))
        TestAssert(RandomF3s( in: .positive), label: "log2-f3" , reference: simd.log2, subject: kvSIMD.log2, validator: IsEqual(_:_:))
        TestAssert(RandomF4s( in: .positive), label: "log2-f4" , reference: simd.log2, subject: kvSIMD.log2, validator: IsEqual(_:_:))
        TestAssert(RandomF8s( in: .positive), label: "log2-f8" , reference: simd.log2, subject: kvSIMD.log2, validator: IsEqual(_:_:))
        TestAssert(RandomF16s(in: .positive), label: "log2-f16", reference: simd.log2, subject: kvSIMD.log2, validator: IsEqual(_:_:))

        TestAssert(RandomD2s( in: .positive), label: "log2-d2" , reference: simd.log2, subject: kvSIMD.log2, validator: IsEqual(_:_:))
        TestAssert(RandomD3s( in: .positive), label: "log2-d3" , reference: simd.log2, subject: kvSIMD.log2, validator: IsEqual(_:_:))
        TestAssert(RandomD4s( in: .positive), label: "log2-d4" , reference: simd.log2, subject: kvSIMD.log2, validator: IsEqual(_:_:))
        TestAssert(RandomD8s( in: .positive), label: "log2-d8" , reference: simd.log2, subject: kvSIMD.log2, validator: IsEqual(_:_:))
    }



    // MARK: test_matrix_multiply_*()

    // Matrix by vector.
    func test_matrix_multiply_mv() {

        func Assert<C, V, M1, M2, R>(_ cols: C, _ v: V, _ fabric1: (C) -> M1, _ fabric2: (C) -> M2, _ block1: (M1, V) -> R, _ block2: (M2, V) -> R, _ validator: (R, R) -> Bool) {
            assertEqual(block1(fabric1(cols), v), block2(fabric2(cols), v), validator)
        }

        Assert(RandomNxF2(2), F2.random(in: -1.0 ... 1.0), F2x2.init(_:), simd.float2x2.init(_:), kvSIMD.matrix_multiply(_:_:) as (F2x2, F2) -> F2, simd.matrix_multiply(_:_:) as (simd.float2x2, F2) -> F2, IsEqual(_:_:))
        Assert(RandomNxF3(2), F2.random(in: -1.0 ... 1.0), F2x3.init(_:), simd.float2x3.init(_:), kvSIMD.matrix_multiply(_:_:) as (F2x3, F2) -> F3, simd.matrix_multiply(_:_:) as (simd.float2x3, F2) -> F3, IsEqual(_:_:))
        Assert(RandomNxF4(2), F2.random(in: -1.0 ... 1.0), F2x4.init(_:), simd.float2x4.init(_:), kvSIMD.matrix_multiply(_:_:) as (F2x4, F2) -> F4, simd.matrix_multiply(_:_:) as (simd.float2x4, F2) -> F4, IsEqual(_:_:))
        Assert(RandomNxF2(3), F3.random(in: -1.0 ... 1.0), F3x2.init(_:), simd.float3x2.init(_:), kvSIMD.matrix_multiply(_:_:) as (F3x2, F3) -> F2, simd.matrix_multiply(_:_:) as (simd.float3x2, F3) -> F2, IsEqual(_:_:))
        Assert(RandomNxF3(3), F3.random(in: -1.0 ... 1.0), F3x3.init(_:), simd.float3x3.init(_:), kvSIMD.matrix_multiply(_:_:) as (F3x3, F3) -> F3, simd.matrix_multiply(_:_:) as (simd.float3x3, F3) -> F3, IsEqual(_:_:))
        Assert(RandomNxF4(3), F3.random(in: -1.0 ... 1.0), F3x4.init(_:), simd.float3x4.init(_:), kvSIMD.matrix_multiply(_:_:) as (F3x4, F3) -> F4, simd.matrix_multiply(_:_:) as (simd.float3x4, F3) -> F4, IsEqual(_:_:))
        Assert(RandomNxF2(4), F4.random(in: -1.0 ... 1.0), F4x2.init(_:), simd.float4x2.init(_:), kvSIMD.matrix_multiply(_:_:) as (F4x2, F4) -> F2, simd.matrix_multiply(_:_:) as (simd.float4x2, F4) -> F2, IsEqual(_:_:))
        Assert(RandomNxF3(4), F4.random(in: -1.0 ... 1.0), F4x3.init(_:), simd.float4x3.init(_:), kvSIMD.matrix_multiply(_:_:) as (F4x3, F4) -> F3, simd.matrix_multiply(_:_:) as (simd.float4x3, F4) -> F3, IsEqual(_:_:))
        Assert(RandomNxF4(4), F4.random(in: -1.0 ... 1.0), F4x4.init(_:), simd.float4x4.init(_:), kvSIMD.matrix_multiply(_:_:) as (F4x4, F4) -> F4, simd.matrix_multiply(_:_:) as (simd.float4x4, F4) -> F4, IsEqual(_:_:))

        Assert(RandomNxD2(2), D2.random(in: -1.0 ... 1.0), D2x2.init(_:), simd.double2x2.init(_:), kvSIMD.matrix_multiply(_:_:) as (D2x2, D2) -> D2, simd.matrix_multiply(_:_:) as (simd.double2x2, D2) -> D2, IsEqual(_:_:))
        Assert(RandomNxD3(2), D2.random(in: -1.0 ... 1.0), D2x3.init(_:), simd.double2x3.init(_:), kvSIMD.matrix_multiply(_:_:) as (D2x3, D2) -> D3, simd.matrix_multiply(_:_:) as (simd.double2x3, D2) -> D3, IsEqual(_:_:))
        Assert(RandomNxD4(2), D2.random(in: -1.0 ... 1.0), D2x4.init(_:), simd.double2x4.init(_:), kvSIMD.matrix_multiply(_:_:) as (D2x4, D2) -> D4, simd.matrix_multiply(_:_:) as (simd.double2x4, D2) -> D4, IsEqual(_:_:))
        Assert(RandomNxD2(3), D3.random(in: -1.0 ... 1.0), D3x2.init(_:), simd.double3x2.init(_:), kvSIMD.matrix_multiply(_:_:) as (D3x2, D3) -> D2, simd.matrix_multiply(_:_:) as (simd.double3x2, D3) -> D2, IsEqual(_:_:))
        Assert(RandomNxD3(3), D3.random(in: -1.0 ... 1.0), D3x3.init(_:), simd.double3x3.init(_:), kvSIMD.matrix_multiply(_:_:) as (D3x3, D3) -> D3, simd.matrix_multiply(_:_:) as (simd.double3x3, D3) -> D3, IsEqual(_:_:))
        Assert(RandomNxD4(3), D3.random(in: -1.0 ... 1.0), D3x4.init(_:), simd.double3x4.init(_:), kvSIMD.matrix_multiply(_:_:) as (D3x4, D3) -> D4, simd.matrix_multiply(_:_:) as (simd.double3x4, D3) -> D4, IsEqual(_:_:))
        Assert(RandomNxD2(4), D4.random(in: -1.0 ... 1.0), D4x2.init(_:), simd.double4x2.init(_:), kvSIMD.matrix_multiply(_:_:) as (D4x2, D4) -> D2, simd.matrix_multiply(_:_:) as (simd.double4x2, D4) -> D2, IsEqual(_:_:))
        Assert(RandomNxD3(4), D4.random(in: -1.0 ... 1.0), D4x3.init(_:), simd.double4x3.init(_:), kvSIMD.matrix_multiply(_:_:) as (D4x3, D4) -> D3, simd.matrix_multiply(_:_:) as (simd.double4x3, D4) -> D3, IsEqual(_:_:))
        Assert(RandomNxD4(4), D4.random(in: -1.0 ... 1.0), D4x4.init(_:), simd.double4x4.init(_:), kvSIMD.matrix_multiply(_:_:) as (D4x4, D4) -> D4, simd.matrix_multiply(_:_:) as (simd.double4x4, D4) -> D4, IsEqual(_:_:))
    }

    // Vector by matrix.
    func test_matrix_multiply_vm() {

        func Assert<V, C, M1, M2, R>(_ v: V, _ cols: C, _ fabric1: (C) -> M1, _ fabric2: (C) -> M2, _ block1: (V, M1) -> R, _ block2: (V, M2) -> R, _ validator: (R, R) -> Bool) {
            assertEqual(block1(v, fabric1(cols)), block2(v, fabric2(cols)), validator)
        }

        Assert(F2.random(in: -1.0 ... 1.0), RandomNxF2(2), F2x2.init(_:), simd.float2x2.init(_:), kvSIMD.matrix_multiply(_:_:) as (F2, F2x2) -> F2, simd.matrix_multiply(_:_:) as (F2, simd.float2x2) -> F2, IsEqual(_:_:))
        Assert(F2.random(in: -1.0 ... 1.0), RandomNxF2(3), F3x2.init(_:), simd.float3x2.init(_:), kvSIMD.matrix_multiply(_:_:) as (F2, F3x2) -> F3, simd.matrix_multiply(_:_:) as (F2, simd.float3x2) -> F3, IsEqual(_:_:))
        Assert(F2.random(in: -1.0 ... 1.0), RandomNxF2(4), F4x2.init(_:), simd.float4x2.init(_:), kvSIMD.matrix_multiply(_:_:) as (F2, F4x2) -> F4, simd.matrix_multiply(_:_:) as (F2, simd.float4x2) -> F4, IsEqual(_:_:))
        Assert(F3.random(in: -1.0 ... 1.0), RandomNxF3(2), F2x3.init(_:), simd.float2x3.init(_:), kvSIMD.matrix_multiply(_:_:) as (F3, F2x3) -> F2, simd.matrix_multiply(_:_:) as (F3, simd.float2x3) -> F2, IsEqual(_:_:))
        Assert(F3.random(in: -1.0 ... 1.0), RandomNxF3(3), F3x3.init(_:), simd.float3x3.init(_:), kvSIMD.matrix_multiply(_:_:) as (F3, F3x3) -> F3, simd.matrix_multiply(_:_:) as (F3, simd.float3x3) -> F3, IsEqual(_:_:))
        Assert(F3.random(in: -1.0 ... 1.0), RandomNxF3(4), F4x3.init(_:), simd.float4x3.init(_:), kvSIMD.matrix_multiply(_:_:) as (F3, F4x3) -> F4, simd.matrix_multiply(_:_:) as (F3, simd.float4x3) -> F4, IsEqual(_:_:))
        Assert(F4.random(in: -1.0 ... 1.0), RandomNxF4(2), F2x4.init(_:), simd.float2x4.init(_:), kvSIMD.matrix_multiply(_:_:) as (F4, F2x4) -> F2, simd.matrix_multiply(_:_:) as (F4, simd.float2x4) -> F2, IsEqual(_:_:))
        Assert(F4.random(in: -1.0 ... 1.0), RandomNxF4(3), F3x4.init(_:), simd.float3x4.init(_:), kvSIMD.matrix_multiply(_:_:) as (F4, F3x4) -> F3, simd.matrix_multiply(_:_:) as (F4, simd.float3x4) -> F3, IsEqual(_:_:))
        Assert(F4.random(in: -1.0 ... 1.0), RandomNxF4(4), F4x4.init(_:), simd.float4x4.init(_:), kvSIMD.matrix_multiply(_:_:) as (F4, F4x4) -> F4, simd.matrix_multiply(_:_:) as (F4, simd.float4x4) -> F4, IsEqual(_:_:))

        Assert(D2.random(in: -1.0 ... 1.0), RandomNxD2(2), D2x2.init(_:), simd.double2x2.init(_:), kvSIMD.matrix_multiply(_:_:) as (D2, D2x2) -> D2, simd.matrix_multiply(_:_:) as (D2, simd.double2x2) -> D2, IsEqual(_:_:))
        Assert(D2.random(in: -1.0 ... 1.0), RandomNxD2(3), D3x2.init(_:), simd.double3x2.init(_:), kvSIMD.matrix_multiply(_:_:) as (D2, D3x2) -> D3, simd.matrix_multiply(_:_:) as (D2, simd.double3x2) -> D3, IsEqual(_:_:))
        Assert(D2.random(in: -1.0 ... 1.0), RandomNxD2(4), D4x2.init(_:), simd.double4x2.init(_:), kvSIMD.matrix_multiply(_:_:) as (D2, D4x2) -> D4, simd.matrix_multiply(_:_:) as (D2, simd.double4x2) -> D4, IsEqual(_:_:))
        Assert(D3.random(in: -1.0 ... 1.0), RandomNxD3(2), D2x3.init(_:), simd.double2x3.init(_:), kvSIMD.matrix_multiply(_:_:) as (D3, D2x3) -> D2, simd.matrix_multiply(_:_:) as (D3, simd.double2x3) -> D2, IsEqual(_:_:))
        Assert(D3.random(in: -1.0 ... 1.0), RandomNxD3(3), D3x3.init(_:), simd.double3x3.init(_:), kvSIMD.matrix_multiply(_:_:) as (D3, D3x3) -> D3, simd.matrix_multiply(_:_:) as (D3, simd.double3x3) -> D3, IsEqual(_:_:))
        Assert(D3.random(in: -1.0 ... 1.0), RandomNxD3(4), D4x3.init(_:), simd.double4x3.init(_:), kvSIMD.matrix_multiply(_:_:) as (D3, D4x3) -> D4, simd.matrix_multiply(_:_:) as (D3, simd.double4x3) -> D4, IsEqual(_:_:))
        Assert(D4.random(in: -1.0 ... 1.0), RandomNxD4(2), D2x4.init(_:), simd.double2x4.init(_:), kvSIMD.matrix_multiply(_:_:) as (D4, D2x4) -> D2, simd.matrix_multiply(_:_:) as (D4, simd.double2x4) -> D2, IsEqual(_:_:))
        Assert(D4.random(in: -1.0 ... 1.0), RandomNxD4(3), D3x4.init(_:), simd.double3x4.init(_:), kvSIMD.matrix_multiply(_:_:) as (D4, D3x4) -> D3, simd.matrix_multiply(_:_:) as (D4, simd.double3x4) -> D3, IsEqual(_:_:))
        Assert(D4.random(in: -1.0 ... 1.0), RandomNxD4(4), D4x4.init(_:), simd.double4x4.init(_:), kvSIMD.matrix_multiply(_:_:) as (D4, D4x4) -> D4, simd.matrix_multiply(_:_:) as (D4, simd.double4x4) -> D4, IsEqual(_:_:))
    }

    // Matrix by matrix.
    func test_matrix_multiply_mm2xN() {

        func Assert2<C, M1, M2, R1, R2>(_ cols: C, _ fabric1: (C) -> M1, _ fabric2: (C) -> M2, _ block1: (M1, F2x2) -> R1, _ block2: (M2, simd.float2x2) -> R2, _ validator: (R1, R2) -> Bool) {
            let cols2xN = RandomNxF2(2)
            assertEqual(block1(fabric1(cols), F2x2(cols2xN)), block2(fabric2(cols), simd.float2x2(cols2xN)), validator)
        }

        func Assert3<C, M1, M2, R1, R2>(_ cols: C, _ fabric1: (C) -> M1, _ fabric2: (C) -> M2, _ block1: (M1, F2x3) -> R1, _ block2: (M2, simd.float2x3) -> R2, _ validator: (R1, R2) -> Bool) {
            let cols2xN = RandomNxF3(2)
            assertEqual(block1(fabric1(cols), F2x3(cols2xN)), block2(fabric2(cols), simd.float2x3(cols2xN)), validator)
        }

        func Assert4<C, M1, M2, R1, R2>(_ cols: C, _ fabric1: (C) -> M1, _ fabric2: (C) -> M2, _ block1: (M1, F2x4) -> R1, _ block2: (M2, simd.float2x4) -> R2, _ validator: (R1, R2) -> Bool) {
            let cols2xN = RandomNxF4(2)
            assertEqual(block1(fabric1(cols), F2x4(cols2xN)), block2(fabric2(cols), simd.float2x4(cols2xN)), validator)
        }

        Assert2(RandomNxF2(2), F2x2.init(_:), simd.float2x2.init(_:), kvSIMD.matrix_multiply(_:_:) as (F2x2, F2x2) -> F2x2, simd.matrix_multiply(_:_:) as (simd.float2x2, simd.float2x2) -> simd.float2x2, IsEqual(_:_:))
        Assert2(RandomNxF3(2), F2x3.init(_:), simd.float2x3.init(_:), kvSIMD.matrix_multiply(_:_:) as (F2x3, F2x2) -> F2x3, simd.matrix_multiply(_:_:) as (simd.float2x3, simd.float2x2) -> simd.float2x3, IsEqual(_:_:))
        Assert2(RandomNxF4(2), F2x4.init(_:), simd.float2x4.init(_:), kvSIMD.matrix_multiply(_:_:) as (F2x4, F2x2) -> F2x4, simd.matrix_multiply(_:_:) as (simd.float2x4, simd.float2x2) -> simd.float2x4, IsEqual(_:_:))
        Assert3(RandomNxF2(3), F3x2.init(_:), simd.float3x2.init(_:), kvSIMD.matrix_multiply(_:_:) as (F3x2, F2x3) -> F2x2, simd.matrix_multiply(_:_:) as (simd.float3x2, simd.float2x3) -> simd.float2x2, IsEqual(_:_:))
        Assert3(RandomNxF3(3), F3x3.init(_:), simd.float3x3.init(_:), kvSIMD.matrix_multiply(_:_:) as (F3x3, F2x3) -> F2x3, simd.matrix_multiply(_:_:) as (simd.float3x3, simd.float2x3) -> simd.float2x3, IsEqual(_:_:))
        Assert3(RandomNxF4(3), F3x4.init(_:), simd.float3x4.init(_:), kvSIMD.matrix_multiply(_:_:) as (F3x4, F2x3) -> F2x4, simd.matrix_multiply(_:_:) as (simd.float3x4, simd.float2x3) -> simd.float2x4, IsEqual(_:_:))
        Assert4(RandomNxF2(4), F4x2.init(_:), simd.float4x2.init(_:), kvSIMD.matrix_multiply(_:_:) as (F4x2, F2x4) -> F2x2, simd.matrix_multiply(_:_:) as (simd.float4x2, simd.float2x4) -> simd.float2x2, IsEqual(_:_:))
        Assert4(RandomNxF3(4), F4x3.init(_:), simd.float4x3.init(_:), kvSIMD.matrix_multiply(_:_:) as (F4x3, F2x4) -> F2x3, simd.matrix_multiply(_:_:) as (simd.float4x3, simd.float2x4) -> simd.float2x3, IsEqual(_:_:))
        Assert4(RandomNxF4(4), F4x4.init(_:), simd.float4x4.init(_:), kvSIMD.matrix_multiply(_:_:) as (F4x4, F2x4) -> F2x4, simd.matrix_multiply(_:_:) as (simd.float4x4, simd.float2x4) -> simd.float2x4, IsEqual(_:_:))

        func Assert2<C, M1, M2, R1, R2>(_ cols: C, _ fabric1: (C) -> M1, _ fabric2: (C) -> M2, _ block1: (M1, D2x2) -> R1, _ block2: (M2, simd.double2x2) -> R2, _ validator: (R1, R2) -> Bool) {
            let cols2xN = RandomNxD2(2)
            assertEqual(block1(fabric1(cols), D2x2(cols2xN)), block2(fabric2(cols), simd.double2x2(cols2xN)), validator)
        }

        func Assert3<C, M1, M2, R1, R2>(_ cols: C, _ fabric1: (C) -> M1, _ fabric2: (C) -> M2, _ block1: (M1, D2x3) -> R1, _ block2: (M2, simd.double2x3) -> R2, _ validator: (R1, R2) -> Bool) {
            let cols2xN = RandomNxD3(2)
            assertEqual(block1(fabric1(cols), D2x3(cols2xN)), block2(fabric2(cols), simd.double2x3(cols2xN)), validator)
        }

        func Assert4<C, M1, M2, R1, R2>(_ cols: C, _ fabric1: (C) -> M1, _ fabric2: (C) -> M2, _ block1: (M1, D2x4) -> R1, _ block2: (M2, simd.double2x4) -> R2, _ validator: (R1, R2) -> Bool) {
            let cols2xN = RandomNxD4(2)
            assertEqual(block1(fabric1(cols), D2x4(cols2xN)), block2(fabric2(cols), simd.double2x4(cols2xN)), validator)
        }

        Assert2(RandomNxD2(2), D2x2.init(_:), simd.double2x2.init(_:), kvSIMD.matrix_multiply(_:_:) as (D2x2, D2x2) -> D2x2, simd.matrix_multiply(_:_:) as (simd.double2x2, simd.double2x2) -> simd.double2x2, IsEqual(_:_:))
        Assert2(RandomNxD3(2), D2x3.init(_:), simd.double2x3.init(_:), kvSIMD.matrix_multiply(_:_:) as (D2x3, D2x2) -> D2x3, simd.matrix_multiply(_:_:) as (simd.double2x3, simd.double2x2) -> simd.double2x3, IsEqual(_:_:))
        Assert2(RandomNxD4(2), D2x4.init(_:), simd.double2x4.init(_:), kvSIMD.matrix_multiply(_:_:) as (D2x4, D2x2) -> D2x4, simd.matrix_multiply(_:_:) as (simd.double2x4, simd.double2x2) -> simd.double2x4, IsEqual(_:_:))
        Assert3(RandomNxD2(3), D3x2.init(_:), simd.double3x2.init(_:), kvSIMD.matrix_multiply(_:_:) as (D3x2, D2x3) -> D2x2, simd.matrix_multiply(_:_:) as (simd.double3x2, simd.double2x3) -> simd.double2x2, IsEqual(_:_:))
        Assert3(RandomNxD3(3), D3x3.init(_:), simd.double3x3.init(_:), kvSIMD.matrix_multiply(_:_:) as (D3x3, D2x3) -> D2x3, simd.matrix_multiply(_:_:) as (simd.double3x3, simd.double2x3) -> simd.double2x3, IsEqual(_:_:))
        Assert3(RandomNxD4(3), D3x4.init(_:), simd.double3x4.init(_:), kvSIMD.matrix_multiply(_:_:) as (D3x4, D2x3) -> D2x4, simd.matrix_multiply(_:_:) as (simd.double3x4, simd.double2x3) -> simd.double2x4, IsEqual(_:_:))
        Assert4(RandomNxD2(4), D4x2.init(_:), simd.double4x2.init(_:), kvSIMD.matrix_multiply(_:_:) as (D4x2, D2x4) -> D2x2, simd.matrix_multiply(_:_:) as (simd.double4x2, simd.double2x4) -> simd.double2x2, IsEqual(_:_:))
        Assert4(RandomNxD3(4), D4x3.init(_:), simd.double4x3.init(_:), kvSIMD.matrix_multiply(_:_:) as (D4x3, D2x4) -> D2x3, simd.matrix_multiply(_:_:) as (simd.double4x3, simd.double2x4) -> simd.double2x3, IsEqual(_:_:))
        Assert4(RandomNxD4(4), D4x4.init(_:), simd.double4x4.init(_:), kvSIMD.matrix_multiply(_:_:) as (D4x4, D2x4) -> D2x4, simd.matrix_multiply(_:_:) as (simd.double4x4, simd.double2x4) -> simd.double2x4, IsEqual(_:_:))
    }

    // Matrix by matrix.
    func test_matrix_multiply_mm3xN() {

        func Assert2<C, M1, M2, R1, R2>(_ cols: C, _ fabric1: (C) -> M1, _ fabric2: (C) -> M2, _ block1: (M1, F3x2) -> R1, _ block2: (M2, simd.float3x2) -> R2, _ validator: (R1, R2) -> Bool) {
            let cols3xN = RandomNxF2(3)
            assertEqual(block1(fabric1(cols), F3x2(cols3xN)), block2(fabric2(cols), simd.float3x2(cols3xN)), validator)
        }

        func Assert3<C, M1, M2, R1, R2>(_ cols: C, _ fabric1: (C) -> M1, _ fabric2: (C) -> M2, _ block1: (M1, F3x3) -> R1, _ block2: (M2, simd.float3x3) -> R2, _ validator: (R1, R2) -> Bool) {
            let cols3xN = RandomNxF3(3)
            assertEqual(block1(fabric1(cols), F3x3(cols3xN)), block2(fabric2(cols), simd.float3x3(cols3xN)), validator)
        }

        func Assert4<C, M1, M2, R1, R2>(_ cols: C, _ fabric1: (C) -> M1, _ fabric2: (C) -> M2, _ block1: (M1, F3x4) -> R1, _ block2: (M2, simd.float3x4) -> R2, _ validator: (R1, R2) -> Bool) {
            let cols3xN = RandomNxF4(3)
            assertEqual(block1(fabric1(cols), F3x4(cols3xN)), block2(fabric2(cols), simd.float3x4(cols3xN)), validator)
        }

        Assert2(RandomNxF2(2), F2x2.init(_:), simd.float2x2.init(_:), kvSIMD.matrix_multiply(_:_:) as (F2x2, F3x2) -> F3x2, simd.matrix_multiply(_:_:) as (simd.float2x2, simd.float3x2) -> simd.float3x2, IsEqual(_:_:))
        Assert2(RandomNxF3(2), F2x3.init(_:), simd.float2x3.init(_:), kvSIMD.matrix_multiply(_:_:) as (F2x3, F3x2) -> F3x3, simd.matrix_multiply(_:_:) as (simd.float2x3, simd.float3x2) -> simd.float3x3, IsEqual(_:_:))
        Assert2(RandomNxF4(2), F2x4.init(_:), simd.float2x4.init(_:), kvSIMD.matrix_multiply(_:_:) as (F2x4, F3x2) -> F3x4, simd.matrix_multiply(_:_:) as (simd.float2x4, simd.float3x2) -> simd.float3x4, IsEqual(_:_:))
        Assert3(RandomNxF2(3), F3x2.init(_:), simd.float3x2.init(_:), kvSIMD.matrix_multiply(_:_:) as (F3x2, F3x3) -> F3x2, simd.matrix_multiply(_:_:) as (simd.float3x2, simd.float3x3) -> simd.float3x2, IsEqual(_:_:))
        Assert3(RandomNxF3(3), F3x3.init(_:), simd.float3x3.init(_:), kvSIMD.matrix_multiply(_:_:) as (F3x3, F3x3) -> F3x3, simd.matrix_multiply(_:_:) as (simd.float3x3, simd.float3x3) -> simd.float3x3, IsEqual(_:_:))
        Assert3(RandomNxF4(3), F3x4.init(_:), simd.float3x4.init(_:), kvSIMD.matrix_multiply(_:_:) as (F3x4, F3x3) -> F3x4, simd.matrix_multiply(_:_:) as (simd.float3x4, simd.float3x3) -> simd.float3x4, IsEqual(_:_:))
        Assert4(RandomNxF2(4), F4x2.init(_:), simd.float4x2.init(_:), kvSIMD.matrix_multiply(_:_:) as (F4x2, F3x4) -> F3x2, simd.matrix_multiply(_:_:) as (simd.float4x2, simd.float3x4) -> simd.float3x2, IsEqual(_:_:))
        Assert4(RandomNxF3(4), F4x3.init(_:), simd.float4x3.init(_:), kvSIMD.matrix_multiply(_:_:) as (F4x3, F3x4) -> F3x3, simd.matrix_multiply(_:_:) as (simd.float4x3, simd.float3x4) -> simd.float3x3, IsEqual(_:_:))
        Assert4(RandomNxF4(4), F4x4.init(_:), simd.float4x4.init(_:), kvSIMD.matrix_multiply(_:_:) as (F4x4, F3x4) -> F3x4, simd.matrix_multiply(_:_:) as (simd.float4x4, simd.float3x4) -> simd.float3x4, IsEqual(_:_:))

        func Assert2<C, M1, M2, R1, R2>(_ cols: C, _ fabric1: (C) -> M1, _ fabric2: (C) -> M2, _ block1: (M1, D3x2) -> R1, _ block2: (M2, simd.double3x2) -> R2, _ validator: (R1, R2) -> Bool) {
            let cols3xN = RandomNxD2(3)
            assertEqual(block1(fabric1(cols), D3x2(cols3xN)), block2(fabric2(cols), simd.double3x2(cols3xN)), validator)
        }

        func Assert3<C, M1, M2, R1, R2>(_ cols: C, _ fabric1: (C) -> M1, _ fabric2: (C) -> M2, _ block1: (M1, D3x3) -> R1, _ block2: (M2, simd.double3x3) -> R2, _ validator: (R1, R2) -> Bool) {
            let cols3xN = RandomNxD3(3)
            assertEqual(block1(fabric1(cols), D3x3(cols3xN)), block2(fabric2(cols), simd.double3x3(cols3xN)), validator)
        }

        func Assert4<C, M1, M2, R1, R2>(_ cols: C, _ fabric1: (C) -> M1, _ fabric2: (C) -> M2, _ block1: (M1, D3x4) -> R1, _ block2: (M2, simd.double3x4) -> R2, _ validator: (R1, R2) -> Bool) {
            let cols3xN = RandomNxD4(3)
            assertEqual(block1(fabric1(cols), D3x4(cols3xN)), block2(fabric2(cols), simd.double3x4(cols3xN)), validator)
        }

        Assert2(RandomNxD2(2), D2x2.init(_:), simd.double2x2.init(_:), kvSIMD.matrix_multiply(_:_:) as (D2x2, D3x2) -> D3x2, simd.matrix_multiply(_:_:) as (simd.double2x2, simd.double3x2) -> simd.double3x2, IsEqual(_:_:))
        Assert2(RandomNxD3(2), D2x3.init(_:), simd.double2x3.init(_:), kvSIMD.matrix_multiply(_:_:) as (D2x3, D3x2) -> D3x3, simd.matrix_multiply(_:_:) as (simd.double2x3, simd.double3x2) -> simd.double3x3, IsEqual(_:_:))
        Assert2(RandomNxD4(2), D2x4.init(_:), simd.double2x4.init(_:), kvSIMD.matrix_multiply(_:_:) as (D2x4, D3x2) -> D3x4, simd.matrix_multiply(_:_:) as (simd.double2x4, simd.double3x2) -> simd.double3x4, IsEqual(_:_:))
        Assert3(RandomNxD2(3), D3x2.init(_:), simd.double3x2.init(_:), kvSIMD.matrix_multiply(_:_:) as (D3x2, D3x3) -> D3x2, simd.matrix_multiply(_:_:) as (simd.double3x2, simd.double3x3) -> simd.double3x2, IsEqual(_:_:))
        Assert3(RandomNxD3(3), D3x3.init(_:), simd.double3x3.init(_:), kvSIMD.matrix_multiply(_:_:) as (D3x3, D3x3) -> D3x3, simd.matrix_multiply(_:_:) as (simd.double3x3, simd.double3x3) -> simd.double3x3, IsEqual(_:_:))
        Assert3(RandomNxD4(3), D3x4.init(_:), simd.double3x4.init(_:), kvSIMD.matrix_multiply(_:_:) as (D3x4, D3x3) -> D3x4, simd.matrix_multiply(_:_:) as (simd.double3x4, simd.double3x3) -> simd.double3x4, IsEqual(_:_:))
        Assert4(RandomNxD2(4), D4x2.init(_:), simd.double4x2.init(_:), kvSIMD.matrix_multiply(_:_:) as (D4x2, D3x4) -> D3x2, simd.matrix_multiply(_:_:) as (simd.double4x2, simd.double3x4) -> simd.double3x2, IsEqual(_:_:))
        Assert4(RandomNxD3(4), D4x3.init(_:), simd.double4x3.init(_:), kvSIMD.matrix_multiply(_:_:) as (D4x3, D3x4) -> D3x3, simd.matrix_multiply(_:_:) as (simd.double4x3, simd.double3x4) -> simd.double3x3, IsEqual(_:_:))
        Assert4(RandomNxD4(4), D4x4.init(_:), simd.double4x4.init(_:), kvSIMD.matrix_multiply(_:_:) as (D4x4, D3x4) -> D3x4, simd.matrix_multiply(_:_:) as (simd.double4x4, simd.double3x4) -> simd.double3x4, IsEqual(_:_:))
    }

    // Matrix by matrix.
    func test_matrix_multiply_mm4xN() {

        func Assert2<C, M1, M2, R1, R2>(_ cols: C, _ fabric1: (C) -> M1, _ fabric2: (C) -> M2, _ block1: (M1, F4x2) -> R1, _ block2: (M2, simd.float4x2) -> R2, _ validator: (R1, R2) -> Bool) {
            let cols4xN = RandomNxF2(4)
            assertEqual(block1(fabric1(cols), F4x2(cols4xN)), block2(fabric2(cols), simd.float4x2(cols4xN)), validator)
        }

        func Assert3<C, M1, M2, R1, R2>(_ cols: C, _ fabric1: (C) -> M1, _ fabric2: (C) -> M2, _ block1: (M1, F4x3) -> R1, _ block2: (M2, simd.float4x3) -> R2, _ validator: (R1, R2) -> Bool) {
            let cols4xN = RandomNxF3(4)
            assertEqual(block1(fabric1(cols), F4x3(cols4xN)), block2(fabric2(cols), simd.float4x3(cols4xN)), validator)
        }

        func Assert4<C, M1, M2, R1, R2>(_ cols: C, _ fabric1: (C) -> M1, _ fabric2: (C) -> M2, _ block1: (M1, F4x4) -> R1, _ block2: (M2, simd.float4x4) -> R2, _ validator: (R1, R2) -> Bool) {
            let cols4xN = RandomNxF4(4)
            assertEqual(block1(fabric1(cols), F4x4(cols4xN)), block2(fabric2(cols), simd.float4x4(cols4xN)), validator)
        }

        Assert2(RandomNxF2(2), F2x2.init(_:), simd.float2x2.init(_:), kvSIMD.matrix_multiply(_:_:) as (F2x2, F4x2) -> F4x2, simd.matrix_multiply(_:_:) as (simd.float2x2, simd.float4x2) -> simd.float4x2, IsEqual(_:_:))
        Assert2(RandomNxF3(2), F2x3.init(_:), simd.float2x3.init(_:), kvSIMD.matrix_multiply(_:_:) as (F2x3, F4x2) -> F4x3, simd.matrix_multiply(_:_:) as (simd.float2x3, simd.float4x2) -> simd.float4x3, IsEqual(_:_:))
        Assert2(RandomNxF4(2), F2x4.init(_:), simd.float2x4.init(_:), kvSIMD.matrix_multiply(_:_:) as (F2x4, F4x2) -> F4x4, simd.matrix_multiply(_:_:) as (simd.float2x4, simd.float4x2) -> simd.float4x4, IsEqual(_:_:))
        Assert3(RandomNxF2(3), F3x2.init(_:), simd.float3x2.init(_:), kvSIMD.matrix_multiply(_:_:) as (F3x2, F4x3) -> F4x2, simd.matrix_multiply(_:_:) as (simd.float3x2, simd.float4x3) -> simd.float4x2, IsEqual(_:_:))
        Assert3(RandomNxF3(3), F3x3.init(_:), simd.float3x3.init(_:), kvSIMD.matrix_multiply(_:_:) as (F3x3, F4x3) -> F4x3, simd.matrix_multiply(_:_:) as (simd.float3x3, simd.float4x3) -> simd.float4x3, IsEqual(_:_:))
        Assert3(RandomNxF4(3), F3x4.init(_:), simd.float3x4.init(_:), kvSIMD.matrix_multiply(_:_:) as (F3x4, F4x3) -> F4x4, simd.matrix_multiply(_:_:) as (simd.float3x4, simd.float4x3) -> simd.float4x4, IsEqual(_:_:))
        Assert4(RandomNxF2(4), F4x2.init(_:), simd.float4x2.init(_:), kvSIMD.matrix_multiply(_:_:) as (F4x2, F4x4) -> F4x2, simd.matrix_multiply(_:_:) as (simd.float4x2, simd.float4x4) -> simd.float4x2, IsEqual(_:_:))
        Assert4(RandomNxF3(4), F4x3.init(_:), simd.float4x3.init(_:), kvSIMD.matrix_multiply(_:_:) as (F4x3, F4x4) -> F4x3, simd.matrix_multiply(_:_:) as (simd.float4x3, simd.float4x4) -> simd.float4x3, IsEqual(_:_:))
        Assert4(RandomNxF4(4), F4x4.init(_:), simd.float4x4.init(_:), kvSIMD.matrix_multiply(_:_:) as (F4x4, F4x4) -> F4x4, simd.matrix_multiply(_:_:) as (simd.float4x4, simd.float4x4) -> simd.float4x4, IsEqual(_:_:))

        func Assert2<C, M1, M2, R1, R2>(_ cols: C, _ fabric1: (C) -> M1, _ fabric2: (C) -> M2, _ block1: (M1, D4x2) -> R1, _ block2: (M2, simd.double4x2) -> R2, _ validator: (R1, R2) -> Bool) {
            let cols4xN = RandomNxD2(4)
            assertEqual(block1(fabric1(cols), D4x2(cols4xN)), block2(fabric2(cols), simd.double4x2(cols4xN)), validator)
        }

        func Assert3<C, M1, M2, R1, R2>(_ cols: C, _ fabric1: (C) -> M1, _ fabric2: (C) -> M2, _ block1: (M1, D4x3) -> R1, _ block2: (M2, simd.double4x3) -> R2, _ validator: (R1, R2) -> Bool) {
            let cols4xN = RandomNxD3(4)
            assertEqual(block1(fabric1(cols), D4x3(cols4xN)), block2(fabric2(cols), simd.double4x3(cols4xN)), validator)
        }

        func Assert4<C, M1, M2, R1, R2>(_ cols: C, _ fabric1: (C) -> M1, _ fabric2: (C) -> M2, _ block1: (M1, D4x4) -> R1, _ block2: (M2, simd.double4x4) -> R2, _ validator: (R1, R2) -> Bool) {
            let cols4xN = RandomNxD4(4)
            assertEqual(block1(fabric1(cols), D4x4(cols4xN)), block2(fabric2(cols), simd.double4x4(cols4xN)), validator)
        }

        Assert2(RandomNxD2(2), D2x2.init(_:), simd.double2x2.init(_:), kvSIMD.matrix_multiply(_:_:) as (D2x2, D4x2) -> D4x2, simd.matrix_multiply(_:_:) as (simd.double2x2, simd.double4x2) -> simd.double4x2, IsEqual(_:_:))
        Assert2(RandomNxD3(2), D2x3.init(_:), simd.double2x3.init(_:), kvSIMD.matrix_multiply(_:_:) as (D2x3, D4x2) -> D4x3, simd.matrix_multiply(_:_:) as (simd.double2x3, simd.double4x2) -> simd.double4x3, IsEqual(_:_:))
        Assert2(RandomNxD4(2), D2x4.init(_:), simd.double2x4.init(_:), kvSIMD.matrix_multiply(_:_:) as (D2x4, D4x2) -> D4x4, simd.matrix_multiply(_:_:) as (simd.double2x4, simd.double4x2) -> simd.double4x4, IsEqual(_:_:))
        Assert3(RandomNxD2(3), D3x2.init(_:), simd.double3x2.init(_:), kvSIMD.matrix_multiply(_:_:) as (D3x2, D4x3) -> D4x2, simd.matrix_multiply(_:_:) as (simd.double3x2, simd.double4x3) -> simd.double4x2, IsEqual(_:_:))
        Assert3(RandomNxD3(3), D3x3.init(_:), simd.double3x3.init(_:), kvSIMD.matrix_multiply(_:_:) as (D3x3, D4x3) -> D4x3, simd.matrix_multiply(_:_:) as (simd.double3x3, simd.double4x3) -> simd.double4x3, IsEqual(_:_:))
        Assert3(RandomNxD4(3), D3x4.init(_:), simd.double3x4.init(_:), kvSIMD.matrix_multiply(_:_:) as (D3x4, D4x3) -> D4x4, simd.matrix_multiply(_:_:) as (simd.double3x4, simd.double4x3) -> simd.double4x4, IsEqual(_:_:))
        Assert4(RandomNxD2(4), D4x2.init(_:), simd.double4x2.init(_:), kvSIMD.matrix_multiply(_:_:) as (D4x2, D4x4) -> D4x2, simd.matrix_multiply(_:_:) as (simd.double4x2, simd.double4x4) -> simd.double4x2, IsEqual(_:_:))
        Assert4(RandomNxD3(4), D4x3.init(_:), simd.double4x3.init(_:), kvSIMD.matrix_multiply(_:_:) as (D4x3, D4x4) -> D4x3, simd.matrix_multiply(_:_:) as (simd.double4x3, simd.double4x4) -> simd.double4x3, IsEqual(_:_:))
        Assert4(RandomNxD4(4), D4x4.init(_:), simd.double4x4.init(_:), kvSIMD.matrix_multiply(_:_:) as (D4x4, D4x4) -> D4x4, simd.matrix_multiply(_:_:) as (simd.double4x4, simd.double4x4) -> simd.double4x4, IsEqual(_:_:))
    }



    // MARK: test_matrix_scale()

    func test_matrix_scale() {

        func Assert<S, C, M1, M2>(_ scale: S, _ cols: C, _ fabric1: (C) -> M1, _ fabric2: (C) -> M2, _ block1: (S, M1) -> M1, _ block2: (S, M2) -> M2, _ validator: (M1, M2) -> Bool) {
            assertEqual(block1(scale, fabric1(cols)), block2(scale, fabric2(cols)), validator)
        }

        Assert(0.142, Cols2x2f, F2x2.init(columns:), simd.float2x2.init(columns:), kvSIMD.matrix_scale(_:_:) as (Float, F2x2) -> F2x2, simd.matrix_scale(_:_:), IsEqual(_:_:))
        Assert(0.142, Cols3x2f, F3x2.init(columns:), simd.float3x2.init(columns:), kvSIMD.matrix_scale(_:_:) as (Float, F3x2) -> F3x2, simd.matrix_scale(_:_:), IsEqual(_:_:))
        Assert(0.142, Cols4x2f, F4x2.init(columns:), simd.float4x2.init(columns:), kvSIMD.matrix_scale(_:_:) as (Float, F4x2) -> F4x2, simd.matrix_scale(_:_:), IsEqual(_:_:))
        Assert(0.142, Cols2x3f, F2x3.init(columns:), simd.float2x3.init(columns:), kvSIMD.matrix_scale(_:_:) as (Float, F2x3) -> F2x3, simd.matrix_scale(_:_:), IsEqual(_:_:))
        Assert(0.142, Cols3x3f, F3x3.init(columns:), simd.float3x3.init(columns:), kvSIMD.matrix_scale(_:_:) as (Float, F3x3) -> F3x3, simd.matrix_scale(_:_:), IsEqual(_:_:))
        Assert(0.142, Cols4x3f, F4x3.init(columns:), simd.float4x3.init(columns:), kvSIMD.matrix_scale(_:_:) as (Float, F4x3) -> F4x3, simd.matrix_scale(_:_:), IsEqual(_:_:))
        Assert(0.142, Cols2x4f, F2x4.init(columns:), simd.float2x4.init(columns:), kvSIMD.matrix_scale(_:_:) as (Float, F2x4) -> F2x4, simd.matrix_scale(_:_:), IsEqual(_:_:))
        Assert(0.142, Cols3x4f, F3x4.init(columns:), simd.float3x4.init(columns:), kvSIMD.matrix_scale(_:_:) as (Float, F3x4) -> F3x4, simd.matrix_scale(_:_:), IsEqual(_:_:))
        Assert(0.142, Cols4x4f, F4x4.init(columns:), simd.float4x4.init(columns:), kvSIMD.matrix_scale(_:_:) as (Float, F4x4) -> F4x4, simd.matrix_scale(_:_:), IsEqual(_:_:))

        Assert(0.142, Cols2x2d, D2x2.init(columns:), simd.double2x2.init(columns:), kvSIMD.matrix_scale(_:_:) as (Double, D2x2) -> D2x2, simd.matrix_scale(_:_:), IsEqual(_:_:))
        Assert(0.142, Cols3x2d, D3x2.init(columns:), simd.double3x2.init(columns:), kvSIMD.matrix_scale(_:_:) as (Double, D3x2) -> D3x2, simd.matrix_scale(_:_:), IsEqual(_:_:))
        Assert(0.142, Cols4x2d, D4x2.init(columns:), simd.double4x2.init(columns:), kvSIMD.matrix_scale(_:_:) as (Double, D4x2) -> D4x2, simd.matrix_scale(_:_:), IsEqual(_:_:))
        Assert(0.142, Cols2x3d, D2x3.init(columns:), simd.double2x3.init(columns:), kvSIMD.matrix_scale(_:_:) as (Double, D2x3) -> D2x3, simd.matrix_scale(_:_:), IsEqual(_:_:))
        Assert(0.142, Cols3x3d, D3x3.init(columns:), simd.double3x3.init(columns:), kvSIMD.matrix_scale(_:_:) as (Double, D3x3) -> D3x3, simd.matrix_scale(_:_:), IsEqual(_:_:))
        Assert(0.142, Cols4x3d, D4x3.init(columns:), simd.double4x3.init(columns:), kvSIMD.matrix_scale(_:_:) as (Double, D4x3) -> D4x3, simd.matrix_scale(_:_:), IsEqual(_:_:))
        Assert(0.142, Cols2x4d, D2x4.init(columns:), simd.double2x4.init(columns:), kvSIMD.matrix_scale(_:_:) as (Double, D2x4) -> D2x4, simd.matrix_scale(_:_:), IsEqual(_:_:))
        Assert(0.142, Cols3x4d, D3x4.init(columns:), simd.double3x4.init(columns:), kvSIMD.matrix_scale(_:_:) as (Double, D3x4) -> D3x4, simd.matrix_scale(_:_:), IsEqual(_:_:))
        Assert(0.142, Cols4x4d, D4x4.init(columns:), simd.double4x4.init(columns:), kvSIMD.matrix_scale(_:_:) as (Double, D4x4) -> D4x4, simd.matrix_scale(_:_:), IsEqual(_:_:))
    }



    // MARK: test_max_*()

    func test_max_i() {
        TestAssert(RandomI2s(), RandomI2s(), label: "max-i2i2", reference: simd.max, subject: kvSIMD.max, validator: ==)
        TestAssert(RandomI2s(), RandomI1s(), label: "max-i2i1", reference: simd.max, subject: kvSIMD.max, validator: ==)
        TestAssert(RandomI3s(), RandomI3s(), label: "max-i3i3", reference: simd.max, subject: kvSIMD.max, validator: ==)
        TestAssert(RandomI3s(), RandomI1s(), label: "max-i3i1", reference: simd.max, subject: kvSIMD.max, validator: ==)
        TestAssert(RandomI4s(), RandomI4s(), label: "max-i4i4", reference: simd.max, subject: kvSIMD.max, validator: ==)
        TestAssert(RandomI4s(), RandomI1s(), label: "max-i4i1", reference: simd.max, subject: kvSIMD.max, validator: ==)
    }

    func test_max_ui() {
        TestAssert(RandomUI2s(), RandomUI2s(), label: "max-u2u2", reference: simd.max, subject: kvSIMD.max, validator: ==)
        TestAssert(RandomUI2s(), RandomUI1s(), label: "max-u2u1", reference: simd.max, subject: kvSIMD.max, validator: ==)
        TestAssert(RandomUI3s(), RandomUI3s(), label: "max-u3u3", reference: simd.max, subject: kvSIMD.max, validator: ==)
        TestAssert(RandomUI3s(), RandomUI1s(), label: "max-u3u1", reference: simd.max, subject: kvSIMD.max, validator: ==)
        TestAssert(RandomUI4s(), RandomUI4s(), label: "max-u4u4", reference: simd.max, subject: kvSIMD.max, validator: ==)
        TestAssert(RandomUI4s(), RandomUI1s(), label: "max-u4u1", reference: simd.max, subject: kvSIMD.max, validator: ==)
    }

    func test_max_f() {
        TestAssert(RandomF2s(), RandomF2s(), label: "max-f2f2", reference: simd.max, subject: kvSIMD.max, validator: ==)
        TestAssert(RandomF2s(), RandomF1s(), label: "max-f2f1", reference: simd.max, subject: kvSIMD.max, validator: ==)
        TestAssert(RandomF3s(), RandomF3s(), label: "max-f3f3", reference: simd.max, subject: kvSIMD.max, validator: ==)
        TestAssert(RandomF3s(), RandomF1s(), label: "max-f3f1", reference: simd.max, subject: kvSIMD.max, validator: ==)
        TestAssert(RandomF4s(), RandomF4s(), label: "max-f4f4", reference: simd.max, subject: kvSIMD.max, validator: ==)
        TestAssert(RandomF4s(), RandomF1s(), label: "max-f4f1", reference: simd.max, subject: kvSIMD.max, validator: ==)
    }

    func test_max_d() {
        TestAssert(RandomD2s(), RandomD2s(), label: "max-d2d2", reference: simd.max, subject: kvSIMD.max, validator: ==)
        TestAssert(RandomD2s(), RandomD1s(), label: "max-d2d1", reference: simd.max, subject: kvSIMD.max, validator: ==)
        TestAssert(RandomD3s(), RandomD3s(), label: "max-d3d3", reference: simd.max, subject: kvSIMD.max, validator: ==)
        TestAssert(RandomD3s(), RandomD1s(), label: "max-d3d1", reference: simd.max, subject: kvSIMD.max, validator: ==)
        TestAssert(RandomD4s(), RandomD4s(), label: "max-d4d4", reference: simd.max, subject: kvSIMD.max, validator: ==)
        TestAssert(RandomD4s(), RandomD1s(), label: "max-d4d1", reference: simd.max, subject: kvSIMD.max, validator: ==)
    }



    // MARK: test_min_*()

    func test_min_i() {
        TestAssert(RandomI2s(), RandomI2s(), label: "min-i2i2", reference: simd.min, subject: kvSIMD.min, validator: ==)
        TestAssert(RandomI2s(), RandomI1s(), label: "min-i2i1", reference: simd.min, subject: kvSIMD.min, validator: ==)
        TestAssert(RandomI3s(), RandomI3s(), label: "min-i3i3", reference: simd.min, subject: kvSIMD.min, validator: ==)
        TestAssert(RandomI3s(), RandomI1s(), label: "min-i3i1", reference: simd.min, subject: kvSIMD.min, validator: ==)
        TestAssert(RandomI4s(), RandomI4s(), label: "min-i4i4", reference: simd.min, subject: kvSIMD.min, validator: ==)
        TestAssert(RandomI4s(), RandomI1s(), label: "min-i4i1", reference: simd.min, subject: kvSIMD.min, validator: ==)
    }

    func test_min_ui() {
        TestAssert(RandomUI2s(), RandomUI2s(), label: "min-u2u2", reference: simd.min, subject: kvSIMD.min, validator: ==)
        TestAssert(RandomUI2s(), RandomUI1s(), label: "min-u2u1", reference: simd.min, subject: kvSIMD.min, validator: ==)
        TestAssert(RandomUI3s(), RandomUI3s(), label: "min-u3u3", reference: simd.min, subject: kvSIMD.min, validator: ==)
        TestAssert(RandomUI3s(), RandomUI1s(), label: "min-u3u1", reference: simd.min, subject: kvSIMD.min, validator: ==)
        TestAssert(RandomUI4s(), RandomUI4s(), label: "min-u4u4", reference: simd.min, subject: kvSIMD.min, validator: ==)
        TestAssert(RandomUI4s(), RandomUI1s(), label: "min-u4u1", reference: simd.min, subject: kvSIMD.min, validator: ==)
    }

    func test_min_f() {
        TestAssert(RandomF2s(), RandomF2s(), label: "min-f2f2", reference: simd.min, subject: kvSIMD.min, validator: ==)
        TestAssert(RandomF2s(), RandomF1s(), label: "min-f2f1", reference: simd.min, subject: kvSIMD.min, validator: ==)
        TestAssert(RandomF3s(), RandomF3s(), label: "min-f3f3", reference: simd.min, subject: kvSIMD.min, validator: ==)
        TestAssert(RandomF3s(), RandomF1s(), label: "min-f3f1", reference: simd.min, subject: kvSIMD.min, validator: ==)
        TestAssert(RandomF4s(), RandomF4s(), label: "min-f4f4", reference: simd.min, subject: kvSIMD.min, validator: ==)
        TestAssert(RandomF4s(), RandomF1s(), label: "min-f4f1", reference: simd.min, subject: kvSIMD.min, validator: ==)
    }

    func test_min_d() {
        TestAssert(RandomD2s(), RandomD2s(), label: "min-d2d2", reference: simd.min, subject: kvSIMD.min, validator: ==)
        TestAssert(RandomD2s(), RandomD1s(), label: "min-d2d1", reference: simd.min, subject: kvSIMD.min, validator: ==)
        TestAssert(RandomD3s(), RandomD3s(), label: "min-d3d3", reference: simd.min, subject: kvSIMD.min, validator: ==)
        TestAssert(RandomD3s(), RandomD1s(), label: "min-d3d1", reference: simd.min, subject: kvSIMD.min, validator: ==)
        TestAssert(RandomD4s(), RandomD4s(), label: "min-d4d4", reference: simd.min, subject: kvSIMD.min, validator: ==)
        TestAssert(RandomD4s(), RandomD1s(), label: "min-d4d1", reference: simd.min, subject: kvSIMD.min, validator: ==)
    }



    // MARK: test_mix()

    func test_mix() {
        TestAssert(RandomF2s(), RandomF2s(), RandomF2s(), label: "min-f2f2f2", reference: simd.mix, subject: kvSIMD.mix, validator: IsEqual(_:_:))
        TestAssert(RandomF2s(), RandomF2s(), RandomF1s(), label: "min-f2f2f1", reference: simd.mix, subject: kvSIMD.mix, validator: IsEqual(_:_:))
        TestAssert(RandomF3s(), RandomF3s(), RandomF3s(), label: "min-f3f3f3", reference: simd.mix, subject: kvSIMD.mix, validator: IsEqual(_:_:))
        TestAssert(RandomF3s(), RandomF3s(), RandomF1s(), label: "min-f3f3f1", reference: simd.mix, subject: kvSIMD.mix, validator: IsEqual(_:_:))
        TestAssert(RandomF4s(), RandomF4s(), RandomF4s(), label: "min-f4f4f4", reference: simd.mix, subject: kvSIMD.mix, validator: IsEqual(_:_:))
        TestAssert(RandomF4s(), RandomF4s(), RandomF1s(), label: "min-f4f4f1", reference: simd.mix, subject: kvSIMD.mix, validator: IsEqual(_:_:))

        TestAssert(RandomD2s(), RandomD2s(), RandomD2s(), label: "min-d2d2d2", reference: simd.mix, subject: kvSIMD.mix, validator: IsEqual(_:_:))
        TestAssert(RandomD2s(), RandomD2s(), RandomD1s(), label: "min-d2d2d1", reference: simd.mix, subject: kvSIMD.mix, validator: IsEqual(_:_:))
        TestAssert(RandomD3s(), RandomD3s(), RandomD3s(), label: "min-d3d3d3", reference: simd.mix, subject: kvSIMD.mix, validator: IsEqual(_:_:))
        TestAssert(RandomD3s(), RandomD3s(), RandomD1s(), label: "min-d3d3d1", reference: simd.mix, subject: kvSIMD.mix, validator: IsEqual(_:_:))
        TestAssert(RandomD4s(), RandomD4s(), RandomD4s(), label: "min-d4d4d4", reference: simd.mix, subject: kvSIMD.mix, validator: IsEqual(_:_:))
        TestAssert(RandomD4s(), RandomD4s(), RandomD1s(), label: "min-d4d4d1", reference: simd.mix, subject: kvSIMD.mix, validator: IsEqual(_:_:))
    }



    // MARK: test_nextafter()

    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    func test_nextafter() {
        TestAssert(RandomF2s( ), RandomF2s( ), label: "nextafter-f2f2"  , reference: simd.nextafter, subject: kvSIMD.nextafter, validator: ==)
        TestAssert(RandomF3s( ), RandomF3s( ), label: "nextafter-f3f3"  , reference: simd.nextafter, subject: kvSIMD.nextafter, validator: ==)
        TestAssert(RandomF4s( ), RandomF4s( ), label: "nextafter-f4f4"  , reference: simd.nextafter, subject: kvSIMD.nextafter, validator: ==)
        TestAssert(RandomF8s( ), RandomF8s( ), label: "nextafter-f8f8"  , reference: simd.nextafter, subject: kvSIMD.nextafter, validator: ==)
        TestAssert(RandomF16s(), RandomF16s(), label: "nextafter-f16f16", reference: simd.nextafter, subject: kvSIMD.nextafter, validator: ==)

        TestAssert(RandomD2s( ), RandomD2s( ), label: "nextafter-d2d2"  , reference: simd.nextafter, subject: kvSIMD.nextafter, validator: ==)
        TestAssert(RandomD3s( ), RandomD3s( ), label: "nextafter-d3d3"  , reference: simd.nextafter, subject: kvSIMD.nextafter, validator: ==)
        TestAssert(RandomD4s( ), RandomD4s( ), label: "nextafter-d4d4"  , reference: simd.nextafter, subject: kvSIMD.nextafter, validator: ==)
        TestAssert(RandomD8s( ), RandomD8s( ), label: "nextafter-d8d8"  , reference: simd.nextafter, subject: kvSIMD.nextafter, validator: ==)
    }



    // MARK: test_norm_inf()

    func test_norm_inf() {
        TestAssert(RandomF2s(), label: "norm_inf-f2", reference: simd.norm_inf, subject: kvSIMD.norm_inf, validator: IsEqual(_:_:))
        TestAssert(RandomF3s(), label: "norm_inf-f3", reference: simd.norm_inf, subject: kvSIMD.norm_inf, validator: IsEqual(_:_:))
        TestAssert(RandomF4s(), label: "norm_inf-f4", reference: simd.norm_inf, subject: kvSIMD.norm_inf, validator: IsEqual(_:_:))

        TestAssert(RandomD2s(), label: "norm_inf-d2", reference: simd.norm_inf, subject: kvSIMD.norm_inf, validator: IsEqual(_:_:))
        TestAssert(RandomD3s(), label: "norm_inf-d3", reference: simd.norm_inf, subject: kvSIMD.norm_inf, validator: IsEqual(_:_:))
        TestAssert(RandomD4s(), label: "norm_inf-d4", reference: simd.norm_inf, subject: kvSIMD.norm_inf, validator: IsEqual(_:_:))
    }



    // MARK: test_norm_one()

    func test_norm_one() {
        TestAssert(RandomF2s(), label: "norm_one-f2", reference: simd.norm_one, subject: kvSIMD.norm_one, validator: IsEqual(_:_:))
        TestAssert(RandomF3s(), label: "norm_one-f3", reference: simd.norm_one, subject: kvSIMD.norm_one, validator: IsEqual(_:_:))
        TestAssert(RandomF4s(), label: "norm_one-f4", reference: simd.norm_one, subject: kvSIMD.norm_one, validator: IsEqual(_:_:))

        TestAssert(RandomD2s(), label: "norm_one-d2", reference: simd.norm_one, subject: kvSIMD.norm_one, validator: IsEqual(_:_:))
        TestAssert(RandomD3s(), label: "norm_one-d3", reference: simd.norm_one, subject: kvSIMD.norm_one, validator: IsEqual(_:_:))
        TestAssert(RandomD4s(), label: "norm_one-d4", reference: simd.norm_one, subject: kvSIMD.norm_one, validator: IsEqual(_:_:))
    }



    // MARK: test_normalize()

    func test_normalize() {
        TestAssert(RandomF2s(), label: "normalize-f2", reference: simd.normalize, subject: kvSIMD.normalize, validator: IsEqual(_:_:))
        TestAssert(RandomF3s(), label: "normalize-f3", reference: simd.normalize, subject: kvSIMD.normalize, validator: IsEqual(_:_:))
        TestAssert(RandomF4s(), label: "normalize-f4", reference: simd.normalize, subject: kvSIMD.normalize, validator: IsEqual(_:_:))

        TestAssert(RandomD2s(), label: "normalize-d2", reference: simd.normalize, subject: kvSIMD.normalize, validator: IsEqual(_:_:))
        TestAssert(RandomD3s(), label: "normalize-d3", reference: simd.normalize, subject: kvSIMD.normalize, validator: IsEqual(_:_:))
        TestAssert(RandomD4s(), label: "normalize-d4", reference: simd.normalize, subject: kvSIMD.normalize, validator: IsEqual(_:_:))
    }



    // MARK: test_pow()

    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    func test_pow() {
        TestAssert(RandomF2s( in: .nonNegative), RandomF2s( ), label: "pow-f2f2"  , reference: simd.pow, subject: kvSIMD.pow, validator: IsEqual(_:_:))
        TestAssert(RandomF3s( in: .nonNegative), RandomF3s( ), label: "pow-f3f3"  , reference: simd.pow, subject: kvSIMD.pow, validator: IsEqual(_:_:))
        TestAssert(RandomF4s( in: .nonNegative), RandomF4s( ), label: "pow-f4f4"  , reference: simd.pow, subject: kvSIMD.pow, validator: IsEqual(_:_:))
        TestAssert(RandomF8s( in: .nonNegative), RandomF8s( ), label: "pow-f8f8"  , reference: simd.pow, subject: kvSIMD.pow, validator: IsEqual(_:_:))
        TestAssert(RandomF16s(in: .nonNegative), RandomF16s(), label: "pow-f16f16", reference: simd.pow, subject: kvSIMD.pow, validator: IsEqual(_:_:))

        TestAssert(RandomD2s( in: .nonNegative), RandomD2s( ), label: "pow-d2d2"  , reference: simd.pow, subject: kvSIMD.pow, validator: IsEqual(_:_:))
        TestAssert(RandomD3s( in: .nonNegative), RandomD3s( ), label: "pow-d3d3"  , reference: simd.pow, subject: kvSIMD.pow, validator: IsEqual(_:_:))
        TestAssert(RandomD4s( in: .nonNegative), RandomD4s( ), label: "pow-d4d4"  , reference: simd.pow, subject: kvSIMD.pow, validator: IsEqual(_:_:))
        TestAssert(RandomD8s( in: .nonNegative), RandomD8s( ), label: "pow-d8d8"  , reference: simd.pow, subject: kvSIMD.pow, validator: IsEqual(_:_:))

        // Special powers with negative bases.
        TestAssert(RandomF2s( in: .negative), [ -1.0, -3.0 ].lazy.map(F2.init(repeating:)) , label: "pow-f2f2"  , reference: simd.pow, subject: kvSIMD.pow, validator: IsEqual(_:_:))
        TestAssert(RandomF3s( in: .negative), [ -1.0, -3.0 ].lazy.map(F3.init(repeating:)) , label: "pow-f3f3"  , reference: simd.pow, subject: kvSIMD.pow, validator: IsEqual(_:_:))
        TestAssert(RandomF4s( in: .negative), [ -1.0, -3.0 ].lazy.map(F4.init(repeating:)) , label: "pow-f4f4"  , reference: simd.pow, subject: kvSIMD.pow, validator: IsEqual(_:_:))
        TestAssert(RandomF8s( in: .negative), [ -1.0, -3.0 ].lazy.map(F8.init(repeating:)) , label: "pow-f8f8"  , reference: simd.pow, subject: kvSIMD.pow, validator: IsEqual(_:_:))
        TestAssert(RandomF16s(in: .negative), [ -1.0, -3.0 ].lazy.map(F16.init(repeating:)), label: "pow-f16f16", reference: simd.pow, subject: kvSIMD.pow, validator: IsEqual(_:_:))
        // Special powers with negative bases.
        TestAssert(RandomD2s( in: .negative), [ -1.0, -3.0 ].lazy.map(D2.init(repeating:)) , label: "pow-d2d2"  , reference: simd.pow, subject: kvSIMD.pow, validator: IsEqual(_:_:))
        TestAssert(RandomD3s( in: .negative), [ -1.0, -3.0 ].lazy.map(D3.init(repeating:)) , label: "pow-d3d3"  , reference: simd.pow, subject: kvSIMD.pow, validator: IsEqual(_:_:))
        TestAssert(RandomD4s( in: .negative), [ -1.0, -3.0 ].lazy.map(D4.init(repeating:)) , label: "pow-d4d4"  , reference: simd.pow, subject: kvSIMD.pow, validator: IsEqual(_:_:))
        TestAssert(RandomD8s( in: .negative), [ -1.0, -3.0 ].lazy.map(D8.init(repeating:)) , label: "pow-d8d8"  , reference: simd.pow, subject: kvSIMD.pow, validator: IsEqual(_:_:))
    }



    // MARK: test_project()

    func test_project() {
        TestAssert(RandomF2s(), RandomF2s(), label: "project-f2f2", reference: simd.project, subject: kvSIMD.project, validator: IsEqual(_:_:))
        TestAssert(RandomF3s(), RandomF3s(), label: "project-f3f3", reference: simd.project, subject: kvSIMD.project, validator: IsEqual(_:_:))
        TestAssert(RandomF4s(), RandomF4s(), label: "project-f4f4", reference: simd.project, subject: kvSIMD.project, validator: IsEqual(_:_:))

        TestAssert(RandomD2s(), RandomD2s(), label: "project-d2d2", reference: simd.project, subject: kvSIMD.project, validator: IsEqual(_:_:))
        TestAssert(RandomD3s(), RandomD3s(), label: "project-d3d3", reference: simd.project, subject: kvSIMD.project, validator: IsEqual(_:_:))
        TestAssert(RandomD4s(), RandomD4s(), label: "project-d4d4", reference: simd.project, subject: kvSIMD.project, validator: IsEqual(_:_:))
    }



    // MARK: test_recip()

    func test_recip() {
        TestAssert(RandomF1s(in: .cosh), label: "recip-f1", reference: simd.recip, subject: kvSIMD.recip, validator: { IsEqual($0, $1, eps: .near(1.0)) })
        TestAssert(RandomF2s(in: .cosh), label: "recip-f2", reference: simd.recip, subject: kvSIMD.recip, validator: { IsEqual($0, $1, eps: .near(1.0)) })
        TestAssert(RandomF3s(in: .cosh), label: "recip-f3", reference: simd.recip, subject: kvSIMD.recip, validator: { IsEqual($0, $1, eps: .near(1.0)) })
        TestAssert(RandomF4s(in: .cosh), label: "recip-f4", reference: simd.recip, subject: kvSIMD.recip, validator: { IsEqual($0, $1, eps: .near(1.0)) })

        TestAssert(RandomD1s(in: .cosh), label: "recip-d1", reference: simd.recip, subject: kvSIMD.recip, validator: { IsEqual($0, $1, eps: .near(1.0)) })
        TestAssert(RandomD2s(in: .cosh), label: "recip-d2", reference: simd.recip, subject: kvSIMD.recip, validator: { IsEqual($0, $1, eps: .near(1.0)) })
        TestAssert(RandomD3s(in: .cosh), label: "recip-d3", reference: simd.recip, subject: kvSIMD.recip, validator: { IsEqual($0, $1, eps: .near(1.0)) })
        TestAssert(RandomD4s(in: .cosh), label: "recip-d4", reference: simd.recip, subject: kvSIMD.recip, validator: { IsEqual($0, $1, eps: .near(1.0)) })
    }



    // MARK: test_reduce_add()

    func test_reduce_add() {
        TestAssert(RandomI2s(), label: "reduce_add-i2", reference: simd.reduce_add, subject: kvSIMD.reduce_add, validator: ==)
        TestAssert(RandomI3s(), label: "reduce_add-i3", reference: simd.reduce_add, subject: kvSIMD.reduce_add, validator: ==)
        TestAssert(RandomI4s(), label: "reduce_add-i4", reference: simd.reduce_add, subject: kvSIMD.reduce_add, validator: ==)

        TestAssert(RandomUI2s(), label: "reduce_add-u2", reference: simd.reduce_add, subject: kvSIMD.reduce_add, validator: ==)
        TestAssert(RandomUI3s(), label: "reduce_add-u3", reference: simd.reduce_add, subject: kvSIMD.reduce_add, validator: ==)
        TestAssert(RandomUI4s(), label: "reduce_add-u4", reference: simd.reduce_add, subject: kvSIMD.reduce_add, validator: ==)

        TestAssert(RandomF2s(), label: "reduce_add-f2", reference: simd.reduce_add, subject: kvSIMD.reduce_add, validator: IsEqual(_:_:))
        TestAssert(RandomF3s(), label: "reduce_add-f3", reference: simd.reduce_add, subject: kvSIMD.reduce_add, validator: IsEqual(_:_:))
        TestAssert(RandomF4s(), label: "reduce_add-f4", reference: simd.reduce_add, subject: kvSIMD.reduce_add, validator: IsEqual(_:_:))

        TestAssert(RandomD2s(), label: "reduce_add-d2", reference: simd.reduce_add, subject: kvSIMD.reduce_add, validator: IsEqual(_:_:))
        TestAssert(RandomD3s(), label: "reduce_add-d3", reference: simd.reduce_add, subject: kvSIMD.reduce_add, validator: IsEqual(_:_:))
        TestAssert(RandomD4s(), label: "reduce_add-d4", reference: simd.reduce_add, subject: kvSIMD.reduce_add, validator: IsEqual(_:_:))
    }



    // MARK: test_reduce_max()

    func test_reduce_max() {
        TestAssert(RandomI2s(), label: "reduce_max-i2", reference: simd.reduce_max, subject: kvSIMD.reduce_max, validator: ==)
        TestAssert(RandomI3s(), label: "reduce_max-i3", reference: simd.reduce_max, subject: kvSIMD.reduce_max, validator: ==)
        TestAssert(RandomI4s(), label: "reduce_max-i4", reference: simd.reduce_max, subject: kvSIMD.reduce_max, validator: ==)

        TestAssert(RandomUI2s(), label: "reduce_max-u2", reference: simd.reduce_max, subject: kvSIMD.reduce_max, validator: ==)
        TestAssert(RandomUI3s(), label: "reduce_max-u3", reference: simd.reduce_max, subject: kvSIMD.reduce_max, validator: ==)
        TestAssert(RandomUI4s(), label: "reduce_max-u4", reference: simd.reduce_max, subject: kvSIMD.reduce_max, validator: ==)

        TestAssert(RandomF2s(), label: "reduce_max-f2", reference: simd.reduce_max, subject: kvSIMD.reduce_max, validator: IsEqual(_:_:))
        TestAssert(RandomF3s(), label: "reduce_max-f3", reference: simd.reduce_max, subject: kvSIMD.reduce_max, validator: IsEqual(_:_:))
        TestAssert(RandomF4s(), label: "reduce_max-f4", reference: simd.reduce_max, subject: kvSIMD.reduce_max, validator: IsEqual(_:_:))

        TestAssert(RandomD2s(), label: "reduce_max-d2", reference: simd.reduce_max, subject: kvSIMD.reduce_max, validator: IsEqual(_:_:))
        TestAssert(RandomD3s(), label: "reduce_max-d3", reference: simd.reduce_max, subject: kvSIMD.reduce_max, validator: IsEqual(_:_:))
        TestAssert(RandomD4s(), label: "reduce_max-d4", reference: simd.reduce_max, subject: kvSIMD.reduce_max, validator: IsEqual(_:_:))
    }



    // MARK: test_reduce_min()

    func test_reduce_min() {
        TestAssert(RandomI2s(), label: "reduce_min-i2", reference: simd.reduce_min, subject: kvSIMD.reduce_min, validator: ==)
        TestAssert(RandomI3s(), label: "reduce_min-i3", reference: simd.reduce_min, subject: kvSIMD.reduce_min, validator: ==)
        TestAssert(RandomI4s(), label: "reduce_min-i4", reference: simd.reduce_min, subject: kvSIMD.reduce_min, validator: ==)

        TestAssert(RandomUI2s(), label: "reduce_min-u2", reference: simd.reduce_min, subject: kvSIMD.reduce_min, validator: ==)
        TestAssert(RandomUI3s(), label: "reduce_min-u3", reference: simd.reduce_min, subject: kvSIMD.reduce_min, validator: ==)
        TestAssert(RandomUI4s(), label: "reduce_min-u4", reference: simd.reduce_min, subject: kvSIMD.reduce_min, validator: ==)

        TestAssert(RandomF2s(), label: "reduce_min-f2", reference: simd.reduce_min, subject: kvSIMD.reduce_min, validator: IsEqual(_:_:))
        TestAssert(RandomF3s(), label: "reduce_min-f3", reference: simd.reduce_min, subject: kvSIMD.reduce_min, validator: IsEqual(_:_:))
        TestAssert(RandomF4s(), label: "reduce_min-f4", reference: simd.reduce_min, subject: kvSIMD.reduce_min, validator: IsEqual(_:_:))

        TestAssert(RandomD2s(), label: "reduce_min-d2", reference: simd.reduce_min, subject: kvSIMD.reduce_min, validator: IsEqual(_:_:))
        TestAssert(RandomD3s(), label: "reduce_min-d3", reference: simd.reduce_min, subject: kvSIMD.reduce_min, validator: IsEqual(_:_:))
        TestAssert(RandomD4s(), label: "reduce_min-d4", reference: simd.reduce_min, subject: kvSIMD.reduce_min, validator: IsEqual(_:_:))
    }



    // MARK: test_reflect()

    func test_reflect() {
        TestAssert(RandomF2s(), RandomF2s().lazy.map(simd.normalize), label: "reflect-f2f2", reference: simd.reflect, subject: kvSIMD.reflect, validator: IsEqual(_:_:))
        TestAssert(RandomF3s(), RandomF3s().lazy.map(simd.normalize), label: "reflect-f3f3", reference: simd.reflect, subject: kvSIMD.reflect, validator: IsEqual(_:_:))
        TestAssert(RandomF4s(), RandomF4s().lazy.map(simd.normalize), label: "reflect-f4f4", reference: simd.reflect, subject: kvSIMD.reflect, validator: IsEqual(_:_:))

        TestAssert(RandomD2s(), RandomD2s().lazy.map(simd.normalize), label: "reflect-d2d2", reference: simd.reflect, subject: kvSIMD.reflect, validator: IsEqual(_:_:))
        TestAssert(RandomD3s(), RandomD3s().lazy.map(simd.normalize), label: "reflect-d3d3", reference: simd.reflect, subject: kvSIMD.reflect, validator: IsEqual(_:_:))
        TestAssert(RandomD4s(), RandomD4s().lazy.map(simd.normalize), label: "reflect-d4d4", reference: simd.reflect, subject: kvSIMD.reflect, validator: IsEqual(_:_:))
    }



    // MARK: test_refract()

    func test_refract() {
        TestAssert(RandomF2s(), RandomF2s().lazy.map(simd.normalize), RandomF1s(), label: "refract-f2f2f1", reference: simd.refract, subject: kvSIMD.refract, validator: IsEqual(_:_:))
        TestAssert(RandomF3s(), RandomF3s().lazy.map(simd.normalize), RandomF1s(), label: "refract-f3f3f1", reference: simd.refract, subject: kvSIMD.refract, validator: IsEqual(_:_:))
        TestAssert(RandomF4s(), RandomF4s().lazy.map(simd.normalize), RandomF1s(), label: "refract-f4f4f1", reference: simd.refract, subject: kvSIMD.refract, validator: IsEqual(_:_:))

        TestAssert(RandomD2s(), RandomD2s().lazy.map(simd.normalize), RandomD1s(), label: "refract-d2d2d1", reference: simd.refract, subject: kvSIMD.refract, validator: IsEqual(_:_:))
        TestAssert(RandomD3s(), RandomD3s().lazy.map(simd.normalize), RandomD1s(), label: "refract-d3d3d1", reference: simd.refract, subject: kvSIMD.refract, validator: IsEqual(_:_:))
        TestAssert(RandomD4s(), RandomD4s().lazy.map(simd.normalize), RandomD1s(), label: "refract-d4d4d1", reference: simd.refract, subject: kvSIMD.refract, validator: IsEqual(_:_:))
    }



    // MARK: test_remainder()

    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    func test_remainder() {
        TestAssert(RandomF2s( ), RandomF2s( ), label: "remainder-f2f2"  , reference: simd.remainder, subject: kvSIMD.remainder, validator: { IsEqual($0, $1, eps: .near(1.0)) })
        TestAssert(RandomF3s( ), RandomF3s( ), label: "remainder-f3f3"  , reference: simd.remainder, subject: kvSIMD.remainder, validator: { IsEqual($0, $1, eps: .near(1.0)) })
        TestAssert(RandomF4s( ), RandomF4s( ), label: "remainder-f4f4"  , reference: simd.remainder, subject: kvSIMD.remainder, validator: { IsEqual($0, $1, eps: .near(1.0)) })
        TestAssert(RandomF8s( ), RandomF8s( ), label: "remainder-f8f8"  , reference: simd.remainder, subject: kvSIMD.remainder, validator: { IsEqual($0, $1, eps: .near(1.0)) })
        TestAssert(RandomF16s(), RandomF16s(), label: "remainder-f16f16", reference: simd.remainder, subject: kvSIMD.remainder, validator: { IsEqual($0, $1, eps: .near(1.0)) })

        TestAssert(RandomD2s( ), RandomD2s( ), label: "remainder-d2d2"  , reference: simd.remainder, subject: kvSIMD.remainder, validator: IsEqual(_:_:))
        TestAssert(RandomD3s( ), RandomD3s( ), label: "remainder-d3d3"  , reference: simd.remainder, subject: kvSIMD.remainder, validator: IsEqual(_:_:))
        TestAssert(RandomD4s( ), RandomD4s( ), label: "remainder-d4d4"  , reference: simd.remainder, subject: kvSIMD.remainder, validator: IsEqual(_:_:))
        TestAssert(RandomD8s( ), RandomD8s( ), label: "remainder-d8d8"  , reference: simd.remainder, subject: kvSIMD.remainder, validator: IsEqual(_:_:))
    }



    // MARK: test_round()

    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    func test_round() {
        TestAssert(RandomF2s( ), label: "round-f2" , reference: simd.round, subject: kvSIMD.round, validator: IsEqual(_:_:))
        TestAssert(RandomF3s( ), label: "round-f3" , reference: simd.round, subject: kvSIMD.round, validator: IsEqual(_:_:))
        TestAssert(RandomF4s( ), label: "round-f4" , reference: simd.round, subject: kvSIMD.round, validator: IsEqual(_:_:))
        TestAssert(RandomF8s( ), label: "round-f8" , reference: simd.round, subject: kvSIMD.round, validator: IsEqual(_:_:))
        TestAssert(RandomF16s(), label: "round-f16", reference: simd.round, subject: kvSIMD.round, validator: IsEqual(_:_:))

        TestAssert(RandomD2s( ), label: "round-d2" , reference: simd.round, subject: kvSIMD.round, validator: IsEqual(_:_:))
        TestAssert(RandomD3s( ), label: "round-d3" , reference: simd.round, subject: kvSIMD.round, validator: IsEqual(_:_:))
        TestAssert(RandomD4s( ), label: "round-d4" , reference: simd.round, subject: kvSIMD.round, validator: IsEqual(_:_:))
        TestAssert(RandomD8s( ), label: "round-d8" , reference: simd.round, subject: kvSIMD.round, validator: IsEqual(_:_:))
    }



    // MARK: test_rsqrt()

    func test_rsqrt() {
        TestAssert(RandomF1s(in: .cosh), label: "rsqrt-f1", reference: simd.rsqrt, subject: kvSIMD.rsqrt, validator: IsEqual(_:_:))
        TestAssert(RandomF2s(in: .cosh), label: "rsqrt-f2", reference: simd.rsqrt, subject: kvSIMD.rsqrt, validator: IsEqual(_:_:))
        TestAssert(RandomF3s(in: .cosh), label: "rsqrt-f3", reference: simd.rsqrt, subject: kvSIMD.rsqrt, validator: IsEqual(_:_:))
        TestAssert(RandomF4s(in: .cosh), label: "rsqrt-f4", reference: simd.rsqrt, subject: kvSIMD.rsqrt, validator: IsEqual(_:_:))

        TestAssert(RandomD1s(in: .cosh), label: "rsqrt-d1", reference: simd.rsqrt, subject: kvSIMD.rsqrt, validator: IsEqual(_:_:))
        TestAssert(RandomD2s(in: .cosh), label: "rsqrt-d2", reference: simd.rsqrt, subject: kvSIMD.rsqrt, validator: IsEqual(_:_:))
        TestAssert(RandomD3s(in: .cosh), label: "rsqrt-d3", reference: simd.rsqrt, subject: kvSIMD.rsqrt, validator: IsEqual(_:_:))
        TestAssert(RandomD4s(in: .cosh), label: "rsqrt-d4", reference: simd.rsqrt, subject: kvSIMD.rsqrt, validator: IsEqual(_:_:))
    }



    // MARK: test_sign()

    func test_sign() {
        TestAssert(RandomF1s(), label: "sign-f1", reference: simd.sign, subject: kvSIMD.sign, validator: IsEqual(_:_:))
        TestAssert(RandomF2s(), label: "sign-f2", reference: simd.sign, subject: kvSIMD.sign, validator: IsEqual(_:_:))
        TestAssert(RandomF3s(), label: "sign-f3", reference: simd.sign, subject: kvSIMD.sign, validator: IsEqual(_:_:))
        TestAssert(RandomF4s(), label: "sign-f4", reference: simd.sign, subject: kvSIMD.sign, validator: IsEqual(_:_:))

        TestAssert(RandomD1s(), label: "sign-d1", reference: simd.sign, subject: kvSIMD.sign, validator: IsEqual(_:_:))
        TestAssert(RandomD2s(), label: "sign-d2", reference: simd.sign, subject: kvSIMD.sign, validator: IsEqual(_:_:))
        TestAssert(RandomD3s(), label: "sign-d3", reference: simd.sign, subject: kvSIMD.sign, validator: IsEqual(_:_:))
        TestAssert(RandomD4s(), label: "sign-d4", reference: simd.sign, subject: kvSIMD.sign, validator: IsEqual(_:_:))
    }



    // MARK: test_simd_abs_*()

    func test_simd_abs_c() {
        TestAssert([ C2 (repeating: -1) ] as [C2 ], label: "simd_abs-c2" , reference: simd.simd_abs, subject: kvSIMD.simd_abs, validator: ==)
        TestAssert([ C3 (repeating: -1) ] as [C3 ], label: "simd_abs-c3" , reference: simd.simd_abs, subject: kvSIMD.simd_abs, validator: ==)
        TestAssert([ C4 (repeating: -1) ] as [C4 ], label: "simd_abs-c4" , reference: simd.simd_abs, subject: kvSIMD.simd_abs, validator: ==)
        TestAssert([ C8 (repeating: -1) ] as [C8 ], label: "simd_abs-c8" , reference: simd.simd_abs, subject: kvSIMD.simd_abs, validator: ==)
        TestAssert([ C16(repeating: -1) ] as [C16], label: "simd_abs-c16", reference: simd.simd_abs, subject: kvSIMD.simd_abs, validator: ==)
        TestAssert([ C32(repeating: -1) ] as [C32], label: "simd_abs-c32", reference: simd.simd_abs, subject: kvSIMD.simd_abs, validator: ==)
        TestAssert([ C64(repeating: -1) ] as [C64], label: "simd_abs-c64", reference: simd.simd_abs, subject: kvSIMD.simd_abs, validator: ==)
    }

    func test_simd_abs_s() {
        TestAssert([ S2 (repeating: -1) ] as [S2 ], label: "simd_abs-s2" , reference: simd.simd_abs, subject: kvSIMD.simd_abs, validator: ==)
        TestAssert([ S3 (repeating: -1) ] as [S3 ], label: "simd_abs-s3" , reference: simd.simd_abs, subject: kvSIMD.simd_abs, validator: ==)
        TestAssert([ S4 (repeating: -1) ] as [S4 ], label: "simd_abs-s4" , reference: simd.simd_abs, subject: kvSIMD.simd_abs, validator: ==)
        TestAssert([ S8 (repeating: -1) ] as [S8 ], label: "simd_abs-s8" , reference: simd.simd_abs, subject: kvSIMD.simd_abs, validator: ==)
        TestAssert([ S16(repeating: -1) ] as [S16], label: "simd_abs-s16", reference: simd.simd_abs, subject: kvSIMD.simd_abs, validator: ==)
        TestAssert([ S32(repeating: -1) ] as [S32], label: "simd_abs-s32", reference: simd.simd_abs, subject: kvSIMD.simd_abs, validator: ==)
    }

    func test_simd_abs_i() {
        TestAssert([ I2.zero, I2(1, 1), I2(-1, 1), I2(1, -1), I2(-1, -1) ] as [I2],
                   label: "simd_abs-i2", reference: simd.simd_abs, subject: kvSIMD.simd_abs, validator: ==)
        TestAssert([ I3.zero,
                     I3(1, 1,  1), I3(-1, 1,  1), I3(1, -1,  1), I3(-1, -1,  1),
                     I3(1, 1, -1), I3(-1, 1, -1), I3(1, -1, -1), I3(-1, -1, -1) ] as [I3],
                   label: "simd_abs-i3", reference: simd.simd_abs, subject: kvSIMD.simd_abs, validator: ==)
        TestAssert([ I4.zero,
                     I4(1, 1,  1,  1), I4(-1, 1,  1,  1), I4(1, -1,  1,  1), I4(-1, -1,  1,  1),
                     I4(1, 1, -1,  1), I4(-1, 1, -1,  1), I4(1, -1, -1,  1), I4(-1, -1, -1,  1),
                     I4(1, 1,  1, -1), I4(-1, 1,  1, -1), I4(1, -1,  1, -1), I4(-1, -1,  1, -1),
                     I4(1, 1, -1, -1), I4(-1, 1, -1, -1), I4(1, -1, -1, -1), I4(-1, -1, -1, -1) ] as [I4],
                   label: "simd_abs-i4", reference: simd.simd_abs, subject: kvSIMD.simd_abs, validator: ==)
        TestAssert([ I8 (repeating: -1) ] as [I8 ], label: "simd_abs-i8" , reference: simd.simd_abs, subject: kvSIMD.simd_abs, validator: ==)
        TestAssert([ I16(repeating: -1) ] as [I16], label: "simd_abs-i16", reference: simd.simd_abs, subject: kvSIMD.simd_abs, validator: ==)
    }

    func test_simd_abs_l() {
        TestAssert([ L2(repeating: -1) ] as [L2], label: "simd_abs-l2" , reference: simd.simd_abs, subject: kvSIMD.simd_abs, validator: ==)
        TestAssert([ L3(repeating: -1) ] as [L3], label: "simd_abs-l3" , reference: simd.simd_abs, subject: kvSIMD.simd_abs, validator: ==)
        TestAssert([ L4(repeating: -1) ] as [L4], label: "simd_abs-l4" , reference: simd.simd_abs, subject: kvSIMD.simd_abs, validator: ==)
        TestAssert([ L8(repeating: -1) ] as [L8], label: "simd_abs-l8" , reference: simd.simd_abs, subject: kvSIMD.simd_abs, validator: ==)
    }

    func test_simd_abs_f() {
        TestAssert([ F2.zero, F2(1, 1), F2(-1, 1), F2(1, -1), F2(-1, -1) ] as [F2],
                   label: "simd_abs-f2", reference: simd.simd_abs, subject: kvSIMD.simd_abs, validator: ==)
        TestAssert([ F3.zero,
                     F3(1, 1,  1), F3(-1, 1,  1), F3(1, -1,  1), F3(-1, -1,  1),
                     F3(1, 1, -1), F3(-1, 1, -1), F3(1, -1, -1), F3(-1, -1, -1) ] as [F3],
                   label: "simd_abs-f3", reference: simd.simd_abs, subject: kvSIMD.simd_abs, validator: ==)
        TestAssert([ F4.zero,
                     F4(1, 1,  1,  1), F4(-1, 1,  1,  1), F4(1, -1,  1,  1), F4(-1, -1,  1,  1),
                     F4(1, 1, -1,  1), F4(-1, 1, -1,  1), F4(1, -1, -1,  1), F4(-1, -1, -1,  1),
                     F4(1, 1,  1, -1), F4(-1, 1,  1, -1), F4(1, -1,  1, -1), F4(-1, -1,  1, -1),
                     F4(1, 1, -1, -1), F4(-1, 1, -1, -1), F4(1, -1, -1, -1), F4(-1, -1, -1, -1) ] as [F4],
                   label: "simd_abs-f4", reference: simd.simd_abs, subject: kvSIMD.simd_abs, validator: ==)
        TestAssert([ F8 (repeating: -1) ] as [F8 ], label: "simd_abs-f8" , reference: simd.simd_abs, subject: kvSIMD.simd_abs, validator: ==)
        TestAssert([ F16(repeating: -1) ] as [F16], label: "simd_abs-f16", reference: simd.simd_abs, subject: kvSIMD.simd_abs, validator: ==)
    }

    func test_simd_abs_d() {
        TestAssert([ D2.zero, D2(1, 1), D2(-1, 1), D2(1, -1), D2(-1, -1) ] as [D2],
                   label: "simd_abs-d2", reference: simd.simd_abs, subject: kvSIMD.simd_abs, validator: ==)
        TestAssert([ D3.zero,
                     D3(1, 1,  1), D3(-1, 1,  1), D3(1, -1,  1), D3(-1, -1,  1),
                     D3(1, 1, -1), D3(-1, 1, -1), D3(1, -1, -1), D3(-1, -1, -1) ] as [D3],
                   label: "simd_abs-d3", reference: simd.simd_abs, subject: kvSIMD.simd_abs, validator: ==)
        TestAssert([ D4.zero,
                     D4(1, 1,  1,  1), D4(-1, 1,  1,  1), D4(1, -1,  1,  1), D4(-1, -1,  1,  1),
                     D4(1, 1, -1,  1), D4(-1, 1, -1,  1), D4(1, -1, -1,  1), D4(-1, -1, -1,  1),
                     D4(1, 1,  1, -1), D4(-1, 1,  1, -1), D4(1, -1,  1, -1), D4(-1, -1,  1, -1),
                     D4(1, 1, -1, -1), D4(-1, 1, -1, -1), D4(1, -1, -1, -1), D4(-1, -1, -1, -1) ] as [D4],
                   label: "simd_abs-d4", reference: simd.simd_abs, subject: kvSIMD.simd_abs, validator: ==)
        TestAssert([ D8 (repeating: -1) ] as [D8], label: "simd_abs-d8" , reference: simd.simd_abs, subject: kvSIMD.simd_abs, validator: ==)
    }



    // MARK: test_simd_add()

    func test_simd_add() {

        func Assert<C, M1, M2>(_ cn: Int, _ colsBlock: (Int) -> C, _ fabric1: (C) -> M1, _ fabric2: (C) -> M2, _ block1: (M1, M1) -> M1, _ block2: (M2, M2) -> M2, _ validator: (M1, M2) -> Bool) {
            let cols1 = colsBlock(cn), cols2 = colsBlock(cn)
            assertEqual(block1(fabric1(cols1), fabric1(cols2)), block2(fabric2(cols1), fabric2(cols2)), validator)
        }

        (0..<10).forEach { _ in
            Assert(2, RandomNxF2(_:), F2x2.init(_:), simd.float2x2.init(_:), kvSIMD.simd_add(_:_:) as (F2x2, F2x2) -> F2x2, simd.simd_add(_:_:), IsEqual(_:_:))
            Assert(3, RandomNxF2(_:), F3x2.init(_:), simd.float3x2.init(_:), kvSIMD.simd_add(_:_:) as (F3x2, F3x2) -> F3x2, simd.simd_add(_:_:), IsEqual(_:_:))
            Assert(4, RandomNxF2(_:), F4x2.init(_:), simd.float4x2.init(_:), kvSIMD.simd_add(_:_:) as (F4x2, F4x2) -> F4x2, simd.simd_add(_:_:), IsEqual(_:_:))
            Assert(2, RandomNxF3(_:), F2x3.init(_:), simd.float2x3.init(_:), kvSIMD.simd_add(_:_:) as (F2x3, F2x3) -> F2x3, simd.simd_add(_:_:), IsEqual(_:_:))
            Assert(3, RandomNxF3(_:), F3x3.init(_:), simd.float3x3.init(_:), kvSIMD.simd_add(_:_:) as (F3x3, F3x3) -> F3x3, simd.simd_add(_:_:), IsEqual(_:_:))
            Assert(4, RandomNxF3(_:), F4x3.init(_:), simd.float4x3.init(_:), kvSIMD.simd_add(_:_:) as (F4x3, F4x3) -> F4x3, simd.simd_add(_:_:), IsEqual(_:_:))
            Assert(2, RandomNxF4(_:), F2x4.init(_:), simd.float2x4.init(_:), kvSIMD.simd_add(_:_:) as (F2x4, F2x4) -> F2x4, simd.simd_add(_:_:), IsEqual(_:_:))
            Assert(3, RandomNxF4(_:), F3x4.init(_:), simd.float3x4.init(_:), kvSIMD.simd_add(_:_:) as (F3x4, F3x4) -> F3x4, simd.simd_add(_:_:), IsEqual(_:_:))
            Assert(4, RandomNxF4(_:), F4x4.init(_:), simd.float4x4.init(_:), kvSIMD.simd_add(_:_:) as (F4x4, F4x4) -> F4x4, simd.simd_add(_:_:), IsEqual(_:_:))

            Assert(2, RandomNxD2(_:), D2x2.init(_:), simd.double2x2.init(_:), kvSIMD.simd_add(_:_:) as (D2x2, D2x2) -> D2x2, simd.simd_add(_:_:), IsEqual(_:_:))
            Assert(3, RandomNxD2(_:), D3x2.init(_:), simd.double3x2.init(_:), kvSIMD.simd_add(_:_:) as (D3x2, D3x2) -> D3x2, simd.simd_add(_:_:), IsEqual(_:_:))
            Assert(4, RandomNxD2(_:), D4x2.init(_:), simd.double4x2.init(_:), kvSIMD.simd_add(_:_:) as (D4x2, D4x2) -> D4x2, simd.simd_add(_:_:), IsEqual(_:_:))
            Assert(2, RandomNxD3(_:), D2x3.init(_:), simd.double2x3.init(_:), kvSIMD.simd_add(_:_:) as (D2x3, D2x3) -> D2x3, simd.simd_add(_:_:), IsEqual(_:_:))
            Assert(3, RandomNxD3(_:), D3x3.init(_:), simd.double3x3.init(_:), kvSIMD.simd_add(_:_:) as (D3x3, D3x3) -> D3x3, simd.simd_add(_:_:), IsEqual(_:_:))
            Assert(4, RandomNxD3(_:), D4x3.init(_:), simd.double4x3.init(_:), kvSIMD.simd_add(_:_:) as (D4x3, D4x3) -> D4x3, simd.simd_add(_:_:), IsEqual(_:_:))
            Assert(2, RandomNxD4(_:), D2x4.init(_:), simd.double2x4.init(_:), kvSIMD.simd_add(_:_:) as (D2x4, D2x4) -> D2x4, simd.simd_add(_:_:), IsEqual(_:_:))
            Assert(3, RandomNxD4(_:), D3x4.init(_:), simd.double3x4.init(_:), kvSIMD.simd_add(_:_:) as (D3x4, D3x4) -> D3x4, simd.simd_add(_:_:), IsEqual(_:_:))
            Assert(4, RandomNxD4(_:), D4x4.init(_:), simd.double4x4.init(_:), kvSIMD.simd_add(_:_:) as (D4x4, D4x4) -> D4x4, simd.simd_add(_:_:), IsEqual(_:_:))
        }
    }



    // MARK: test_simd_almost_equal_elements()

    func test_simd_almost_equal_elements() {

        func Assert<C, S, M1, M2>(_ cols1: C, _ cols2: C, _ fabric1: (C) -> M1, _ fabric2: (C) -> M2, _ block1: (M1, M1, S) -> simd_bool, _ block2: (M2, M2, S) -> simd_bool)
        where S : BinaryFloatingPoint
        {
            assertEqual(block1(fabric1(cols1), fabric1(cols2), 1e-1), block2(fabric2(cols1), fabric2(cols2), 1e-1), ==)
            assertEqual(block1(fabric1(cols1), fabric1(cols2), 1e1 ), block2(fabric2(cols1), fabric2(cols2), 1e1 ), ==)
        }

        Assert(Cols2x2f, F2x2(Array(repeating: F2.one, count: 2)).columns, F2x2.init(columns:), simd.float2x2.init(columns:), kvSIMD.simd_almost_equal_elements(_:_:_:) as (F2x2, F2x2, F1) -> simd_bool, simd.simd_almost_equal_elements(_:_:_:) as (simd.float2x2, simd.float2x2, F1) -> simd_bool)
        Assert(Cols2x3f, F2x3(Array(repeating: F3.one, count: 2)).columns, F2x3.init(columns:), simd.float2x3.init(columns:), kvSIMD.simd_almost_equal_elements(_:_:_:) as (F2x3, F2x3, F1) -> simd_bool, simd.simd_almost_equal_elements(_:_:_:) as (simd.float2x3, simd.float2x3, F1) -> simd_bool)
        Assert(Cols2x4f, F2x4(Array(repeating: F4.one, count: 2)).columns, F2x4.init(columns:), simd.float2x4.init(columns:), kvSIMD.simd_almost_equal_elements(_:_:_:) as (F2x4, F2x4, F1) -> simd_bool, simd.simd_almost_equal_elements(_:_:_:) as (simd.float2x4, simd.float2x4, F1) -> simd_bool)
        Assert(Cols3x2f, F3x2(Array(repeating: F2.one, count: 3)).columns, F3x2.init(columns:), simd.float3x2.init(columns:), kvSIMD.simd_almost_equal_elements(_:_:_:) as (F3x2, F3x2, F1) -> simd_bool, simd.simd_almost_equal_elements(_:_:_:) as (simd.float3x2, simd.float3x2, F1) -> simd_bool)
        Assert(Cols3x3f, F3x3(Array(repeating: F3.one, count: 3)).columns, F3x3.init(columns:), simd.float3x3.init(columns:), kvSIMD.simd_almost_equal_elements(_:_:_:) as (F3x3, F3x3, F1) -> simd_bool, simd.simd_almost_equal_elements(_:_:_:) as (simd.float3x3, simd.float3x3, F1) -> simd_bool)
        Assert(Cols3x4f, F3x4(Array(repeating: F4.one, count: 3)).columns, F3x4.init(columns:), simd.float3x4.init(columns:), kvSIMD.simd_almost_equal_elements(_:_:_:) as (F3x4, F3x4, F1) -> simd_bool, simd.simd_almost_equal_elements(_:_:_:) as (simd.float3x4, simd.float3x4, F1) -> simd_bool)
        Assert(Cols4x2f, F4x2(Array(repeating: F2.one, count: 4)).columns, F4x2.init(columns:), simd.float4x2.init(columns:), kvSIMD.simd_almost_equal_elements(_:_:_:) as (F4x2, F4x2, F1) -> simd_bool, simd.simd_almost_equal_elements(_:_:_:) as (simd.float4x2, simd.float4x2, F1) -> simd_bool)
        Assert(Cols4x3f, F4x3(Array(repeating: F3.one, count: 4)).columns, F4x3.init(columns:), simd.float4x3.init(columns:), kvSIMD.simd_almost_equal_elements(_:_:_:) as (F4x3, F4x3, F1) -> simd_bool, simd.simd_almost_equal_elements(_:_:_:) as (simd.float4x3, simd.float4x3, F1) -> simd_bool)
        Assert(Cols4x4f, F4x4(Array(repeating: F4.one, count: 4)).columns, F4x4.init(columns:), simd.float4x4.init(columns:), kvSIMD.simd_almost_equal_elements(_:_:_:) as (F4x4, F4x4, F1) -> simd_bool, simd.simd_almost_equal_elements(_:_:_:) as (simd.float4x4, simd.float4x4, F1) -> simd_bool)

        Assert(Cols2x2d, D2x2(Array(repeating: D2.one, count: 2)).columns, D2x2.init(columns:), simd.double2x2.init(columns:), kvSIMD.simd_almost_equal_elements(_:_:_:) as (D2x2, D2x2, D1) -> simd_bool, simd.simd_almost_equal_elements(_:_:_:) as (simd.double2x2, simd.double2x2, D1) -> simd_bool)
        Assert(Cols2x3d, D2x3(Array(repeating: D3.one, count: 2)).columns, D2x3.init(columns:), simd.double2x3.init(columns:), kvSIMD.simd_almost_equal_elements(_:_:_:) as (D2x3, D2x3, D1) -> simd_bool, simd.simd_almost_equal_elements(_:_:_:) as (simd.double2x3, simd.double2x3, D1) -> simd_bool)
        Assert(Cols2x4d, D2x4(Array(repeating: D4.one, count: 2)).columns, D2x4.init(columns:), simd.double2x4.init(columns:), kvSIMD.simd_almost_equal_elements(_:_:_:) as (D2x4, D2x4, D1) -> simd_bool, simd.simd_almost_equal_elements(_:_:_:) as (simd.double2x4, simd.double2x4, D1) -> simd_bool)
        Assert(Cols3x2d, D3x2(Array(repeating: D2.one, count: 3)).columns, D3x2.init(columns:), simd.double3x2.init(columns:), kvSIMD.simd_almost_equal_elements(_:_:_:) as (D3x2, D3x2, D1) -> simd_bool, simd.simd_almost_equal_elements(_:_:_:) as (simd.double3x2, simd.double3x2, D1) -> simd_bool)
        Assert(Cols3x3d, D3x3(Array(repeating: D3.one, count: 3)).columns, D3x3.init(columns:), simd.double3x3.init(columns:), kvSIMD.simd_almost_equal_elements(_:_:_:) as (D3x3, D3x3, D1) -> simd_bool, simd.simd_almost_equal_elements(_:_:_:) as (simd.double3x3, simd.double3x3, D1) -> simd_bool)
        Assert(Cols3x4d, D3x4(Array(repeating: D4.one, count: 3)).columns, D3x4.init(columns:), simd.double3x4.init(columns:), kvSIMD.simd_almost_equal_elements(_:_:_:) as (D3x4, D3x4, D1) -> simd_bool, simd.simd_almost_equal_elements(_:_:_:) as (simd.double3x4, simd.double3x4, D1) -> simd_bool)
        Assert(Cols4x2d, D4x2(Array(repeating: D2.one, count: 4)).columns, D4x2.init(columns:), simd.double4x2.init(columns:), kvSIMD.simd_almost_equal_elements(_:_:_:) as (D4x2, D4x2, D1) -> simd_bool, simd.simd_almost_equal_elements(_:_:_:) as (simd.double4x2, simd.double4x2, D1) -> simd_bool)
        Assert(Cols4x3d, D4x3(Array(repeating: D3.one, count: 4)).columns, D4x3.init(columns:), simd.double4x3.init(columns:), kvSIMD.simd_almost_equal_elements(_:_:_:) as (D4x3, D4x3, D1) -> simd_bool, simd.simd_almost_equal_elements(_:_:_:) as (simd.double4x3, simd.double4x3, D1) -> simd_bool)
        Assert(Cols4x4d, D4x4(Array(repeating: D4.one, count: 4)).columns, D4x4.init(columns:), simd.double4x4.init(columns:), kvSIMD.simd_almost_equal_elements(_:_:_:) as (D4x4, D4x4, D1) -> simd_bool, simd.simd_almost_equal_elements(_:_:_:) as (simd.double4x4, simd.double4x4, D1) -> simd_bool)
    }



    // MARK: test_simd_almost_equal_elements_relative()

    func test_simd_almost_equal_elements_relative() {

        func Assert<C, S, M1, M2>(_ cols1: C, _ cols2: C, _ fabric1: (C) -> M1, _ fabric2: (C) -> M2, _ block1: (M1, M1, S) -> simd_bool, _ block2: (M2, M2, S) -> simd_bool)
        where S : BinaryFloatingPoint
        {
            assertEqual(block1(fabric1(cols1), fabric1(cols2), 1e-1), block2(fabric2(cols1), fabric2(cols2), 1e-1), ==)
            assertEqual(block1(fabric1(cols1), fabric1(cols2), 1e1 ), block2(fabric2(cols1), fabric2(cols2), 1e1 ), ==)
        }

        Assert(F2x2(Array(repeating: F2.one, count: 2)).columns, Cols2x2f, F2x2.init(columns:), simd.float2x2.init(columns:), kvSIMD.simd_almost_equal_elements_relative(_:_:_:) as (F2x2, F2x2, F1) -> simd_bool, simd.simd_almost_equal_elements_relative(_:_:_:) as (simd.float2x2, simd.float2x2, F1) -> simd_bool)
        Assert(F2x3(Array(repeating: F3.one, count: 2)).columns, Cols2x3f, F2x3.init(columns:), simd.float2x3.init(columns:), kvSIMD.simd_almost_equal_elements_relative(_:_:_:) as (F2x3, F2x3, F1) -> simd_bool, simd.simd_almost_equal_elements_relative(_:_:_:) as (simd.float2x3, simd.float2x3, F1) -> simd_bool)
        Assert(F2x4(Array(repeating: F4.one, count: 2)).columns, Cols2x4f, F2x4.init(columns:), simd.float2x4.init(columns:), kvSIMD.simd_almost_equal_elements_relative(_:_:_:) as (F2x4, F2x4, F1) -> simd_bool, simd.simd_almost_equal_elements_relative(_:_:_:) as (simd.float2x4, simd.float2x4, F1) -> simd_bool)
        Assert(F3x2(Array(repeating: F2.one, count: 3)).columns, Cols3x2f, F3x2.init(columns:), simd.float3x2.init(columns:), kvSIMD.simd_almost_equal_elements_relative(_:_:_:) as (F3x2, F3x2, F1) -> simd_bool, simd.simd_almost_equal_elements_relative(_:_:_:) as (simd.float3x2, simd.float3x2, F1) -> simd_bool)
        Assert(F3x3(Array(repeating: F3.one, count: 3)).columns, Cols3x3f, F3x3.init(columns:), simd.float3x3.init(columns:), kvSIMD.simd_almost_equal_elements_relative(_:_:_:) as (F3x3, F3x3, F1) -> simd_bool, simd.simd_almost_equal_elements_relative(_:_:_:) as (simd.float3x3, simd.float3x3, F1) -> simd_bool)
        Assert(F3x4(Array(repeating: F4.one, count: 3)).columns, Cols3x4f, F3x4.init(columns:), simd.float3x4.init(columns:), kvSIMD.simd_almost_equal_elements_relative(_:_:_:) as (F3x4, F3x4, F1) -> simd_bool, simd.simd_almost_equal_elements_relative(_:_:_:) as (simd.float3x4, simd.float3x4, F1) -> simd_bool)
        Assert(F4x2(Array(repeating: F2.one, count: 4)).columns, Cols4x2f, F4x2.init(columns:), simd.float4x2.init(columns:), kvSIMD.simd_almost_equal_elements_relative(_:_:_:) as (F4x2, F4x2, F1) -> simd_bool, simd.simd_almost_equal_elements_relative(_:_:_:) as (simd.float4x2, simd.float4x2, F1) -> simd_bool)
        Assert(F4x3(Array(repeating: F3.one, count: 4)).columns, Cols4x3f, F4x3.init(columns:), simd.float4x3.init(columns:), kvSIMD.simd_almost_equal_elements_relative(_:_:_:) as (F4x3, F4x3, F1) -> simd_bool, simd.simd_almost_equal_elements_relative(_:_:_:) as (simd.float4x3, simd.float4x3, F1) -> simd_bool)
        Assert(F4x4(Array(repeating: F4.one, count: 4)).columns, Cols4x4f, F4x4.init(columns:), simd.float4x4.init(columns:), kvSIMD.simd_almost_equal_elements_relative(_:_:_:) as (F4x4, F4x4, F1) -> simd_bool, simd.simd_almost_equal_elements_relative(_:_:_:) as (simd.float4x4, simd.float4x4, F1) -> simd_bool)

        Assert(D2x2(Array(repeating: D2.one, count: 2)).columns, Cols2x2d, D2x2.init(columns:), simd.double2x2.init(columns:), kvSIMD.simd_almost_equal_elements_relative(_:_:_:) as (D2x2, D2x2, D1) -> simd_bool, simd.simd_almost_equal_elements_relative(_:_:_:) as (simd.double2x2, simd.double2x2, D1) -> simd_bool)
        Assert(D2x3(Array(repeating: D3.one, count: 2)).columns, Cols2x3d, D2x3.init(columns:), simd.double2x3.init(columns:), kvSIMD.simd_almost_equal_elements_relative(_:_:_:) as (D2x3, D2x3, D1) -> simd_bool, simd.simd_almost_equal_elements_relative(_:_:_:) as (simd.double2x3, simd.double2x3, D1) -> simd_bool)
        Assert(D2x4(Array(repeating: D4.one, count: 2)).columns, Cols2x4d, D2x4.init(columns:), simd.double2x4.init(columns:), kvSIMD.simd_almost_equal_elements_relative(_:_:_:) as (D2x4, D2x4, D1) -> simd_bool, simd.simd_almost_equal_elements_relative(_:_:_:) as (simd.double2x4, simd.double2x4, D1) -> simd_bool)
        Assert(D3x2(Array(repeating: D2.one, count: 3)).columns, Cols3x2d, D3x2.init(columns:), simd.double3x2.init(columns:), kvSIMD.simd_almost_equal_elements_relative(_:_:_:) as (D3x2, D3x2, D1) -> simd_bool, simd.simd_almost_equal_elements_relative(_:_:_:) as (simd.double3x2, simd.double3x2, D1) -> simd_bool)
        Assert(D3x3(Array(repeating: D3.one, count: 3)).columns, Cols3x3d, D3x3.init(columns:), simd.double3x3.init(columns:), kvSIMD.simd_almost_equal_elements_relative(_:_:_:) as (D3x3, D3x3, D1) -> simd_bool, simd.simd_almost_equal_elements_relative(_:_:_:) as (simd.double3x3, simd.double3x3, D1) -> simd_bool)
        Assert(D3x4(Array(repeating: D4.one, count: 3)).columns, Cols3x4d, D3x4.init(columns:), simd.double3x4.init(columns:), kvSIMD.simd_almost_equal_elements_relative(_:_:_:) as (D3x4, D3x4, D1) -> simd_bool, simd.simd_almost_equal_elements_relative(_:_:_:) as (simd.double3x4, simd.double3x4, D1) -> simd_bool)
        Assert(D4x2(Array(repeating: D2.one, count: 4)).columns, Cols4x2d, D4x2.init(columns:), simd.double4x2.init(columns:), kvSIMD.simd_almost_equal_elements_relative(_:_:_:) as (D4x2, D4x2, D1) -> simd_bool, simd.simd_almost_equal_elements_relative(_:_:_:) as (simd.double4x2, simd.double4x2, D1) -> simd_bool)
        Assert(D4x3(Array(repeating: D3.one, count: 4)).columns, Cols4x3d, D4x3.init(columns:), simd.double4x3.init(columns:), kvSIMD.simd_almost_equal_elements_relative(_:_:_:) as (D4x3, D4x3, D1) -> simd_bool, simd.simd_almost_equal_elements_relative(_:_:_:) as (simd.double4x3, simd.double4x3, D1) -> simd_bool)
        Assert(D4x4(Array(repeating: D4.one, count: 4)).columns, Cols4x4d, D4x4.init(columns:), simd.double4x4.init(columns:), kvSIMD.simd_almost_equal_elements_relative(_:_:_:) as (D4x4, D4x4, D1) -> simd_bool, simd.simd_almost_equal_elements_relative(_:_:_:) as (simd.double4x4, simd.double4x4, D1) -> simd_bool)
    }



    // MARK: test_simd_any_*()

    func test_simd_any_c() {
        TestAssert(RandomC2s( ), label: "simd_any-c2" , reference: simd.simd_any, subject: kvSIMD.simd_any, validator: ==)
        TestAssert(RandomC3s( ), label: "simd_any-c3" , reference: simd.simd_any, subject: kvSIMD.simd_any, validator: ==)
        TestAssert(RandomC4s( ), label: "simd_any-c4" , reference: simd.simd_any, subject: kvSIMD.simd_any, validator: ==)
        TestAssert(RandomC8s( ), label: "simd_any-c8" , reference: simd.simd_any, subject: kvSIMD.simd_any, validator: ==)
        TestAssert(RandomC16s(), label: "simd_any-c16", reference: simd.simd_any, subject: kvSIMD.simd_any, validator: ==)
        TestAssert(RandomC32s(), label: "simd_any-c32", reference: simd.simd_any, subject: kvSIMD.simd_any, validator: ==)
        TestAssert(RandomC64s(), label: "simd_any-c64", reference: simd.simd_any, subject: kvSIMD.simd_any, validator: ==)

        TestAssert(RandomUC2s( ), label: "simd_any-uc2" , reference: simd.simd_any, subject: kvSIMD.simd_any, validator: ==)
        TestAssert(RandomUC3s( ), label: "simd_any-uc3" , reference: simd.simd_any, subject: kvSIMD.simd_any, validator: ==)
        TestAssert(RandomUC4s( ), label: "simd_any-uc4" , reference: simd.simd_any, subject: kvSIMD.simd_any, validator: ==)
        TestAssert(RandomUC8s( ), label: "simd_any-uc8" , reference: simd.simd_any, subject: kvSIMD.simd_any, validator: ==)
        TestAssert(RandomUC16s(), label: "simd_any-uc16", reference: simd.simd_any, subject: kvSIMD.simd_any, validator: ==)
        TestAssert(RandomUC32s(), label: "simd_any-uc32", reference: simd.simd_any, subject: kvSIMD.simd_any, validator: ==)
        TestAssert(RandomUC64s(), label: "simd_any-uc64", reference: simd.simd_any, subject: kvSIMD.simd_any, validator: ==)
    }

    func test_simd_any_s() {
        TestAssert(RandomS2s( ), label: "simd_any-s2" , reference: simd.simd_any, subject: kvSIMD.simd_any, validator: ==)
        TestAssert(RandomS3s( ), label: "simd_any-s3" , reference: simd.simd_any, subject: kvSIMD.simd_any, validator: ==)
        TestAssert(RandomS4s( ), label: "simd_any-s4" , reference: simd.simd_any, subject: kvSIMD.simd_any, validator: ==)
        TestAssert(RandomS8s( ), label: "simd_any-s8" , reference: simd.simd_any, subject: kvSIMD.simd_any, validator: ==)
        TestAssert(RandomS16s(), label: "simd_any-s16", reference: simd.simd_any, subject: kvSIMD.simd_any, validator: ==)
        TestAssert(RandomS32s(), label: "simd_any-s32", reference: simd.simd_any, subject: kvSIMD.simd_any, validator: ==)

        TestAssert(RandomUS2s( ), label: "simd_any-us2" , reference: simd.simd_any, subject: kvSIMD.simd_any, validator: ==)
        TestAssert(RandomUS3s( ), label: "simd_any-us3" , reference: simd.simd_any, subject: kvSIMD.simd_any, validator: ==)
        TestAssert(RandomUS4s( ), label: "simd_any-us4" , reference: simd.simd_any, subject: kvSIMD.simd_any, validator: ==)
        TestAssert(RandomUS8s( ), label: "simd_any-us8" , reference: simd.simd_any, subject: kvSIMD.simd_any, validator: ==)
        TestAssert(RandomUS16s(), label: "simd_any-us16", reference: simd.simd_any, subject: kvSIMD.simd_any, validator: ==)
        TestAssert(RandomUS32s(), label: "simd_any-us32", reference: simd.simd_any, subject: kvSIMD.simd_any, validator: ==)
    }

    func test_simd_any_i() {
        TestAssert(RandomI2s( ), label: "simd_any-i2" , reference: simd.simd_any, subject: kvSIMD.simd_any, validator: ==)
        TestAssert(RandomI3s( ), label: "simd_any-i3" , reference: simd.simd_any, subject: kvSIMD.simd_any, validator: ==)
        TestAssert(RandomI4s( ), label: "simd_any-i4" , reference: simd.simd_any, subject: kvSIMD.simd_any, validator: ==)
        TestAssert(RandomI8s( ), label: "simd_any-i8" , reference: simd.simd_any, subject: kvSIMD.simd_any, validator: ==)
        TestAssert(RandomI16s(), label: "simd_any-i16", reference: simd.simd_any, subject: kvSIMD.simd_any, validator: ==)

        TestAssert(RandomUI2s( ), label: "simd_any-ui2" , reference: simd.simd_any, subject: kvSIMD.simd_any, validator: ==)
        TestAssert(RandomUI3s( ), label: "simd_any-ui3" , reference: simd.simd_any, subject: kvSIMD.simd_any, validator: ==)
        TestAssert(RandomUI4s( ), label: "simd_any-ui4" , reference: simd.simd_any, subject: kvSIMD.simd_any, validator: ==)
        TestAssert(RandomUI8s( ), label: "simd_any-ui8" , reference: simd.simd_any, subject: kvSIMD.simd_any, validator: ==)
        TestAssert(RandomUI16s(), label: "simd_any-ui16", reference: simd.simd_any, subject: kvSIMD.simd_any, validator: ==)
    }

    func test_simd_any_l() {
        TestAssert(RandomL2s( ), label: "simd_any-l2" , reference: simd.simd_any, subject: kvSIMD.simd_any, validator: ==)
        TestAssert(RandomL3s( ), label: "simd_any-l3" , reference: simd.simd_any, subject: kvSIMD.simd_any, validator: ==)
        TestAssert(RandomL4s( ), label: "simd_any-l4" , reference: simd.simd_any, subject: kvSIMD.simd_any, validator: ==)
        TestAssert(RandomL8s( ), label: "simd_any-l8" , reference: simd.simd_any, subject: kvSIMD.simd_any, validator: ==)

        TestAssert(RandomUL2s( ), label: "simd_any-ul2" , reference: simd.simd_any, subject: kvSIMD.simd_any, validator: ==)
        TestAssert(RandomUL3s( ), label: "simd_any-ul3" , reference: simd.simd_any, subject: kvSIMD.simd_any, validator: ==)
        TestAssert(RandomUL4s( ), label: "simd_any-ul4" , reference: simd.simd_any, subject: kvSIMD.simd_any, validator: ==)
        TestAssert(RandomUL8s( ), label: "simd_any-ul8" , reference: simd.simd_any, subject: kvSIMD.simd_any, validator: ==)
    }



    // MARK: test_simd_all_*()

    func test_simd_all_c() {
        TestAssert(RandomC2s( ), label: "simd_all-c2" , reference: simd.simd_all, subject: kvSIMD.simd_all, validator: ==)
        TestAssert(RandomC3s( ), label: "simd_all-c3" , reference: simd.simd_all, subject: kvSIMD.simd_all, validator: ==)
        TestAssert(RandomC4s( ), label: "simd_all-c4" , reference: simd.simd_all, subject: kvSIMD.simd_all, validator: ==)
        TestAssert(RandomC8s( ), label: "simd_all-c8" , reference: simd.simd_all, subject: kvSIMD.simd_all, validator: ==)
        TestAssert(RandomC16s(), label: "simd_all-c16", reference: simd.simd_all, subject: kvSIMD.simd_all, validator: ==)
        TestAssert(RandomC32s(), label: "simd_all-c32", reference: simd.simd_all, subject: kvSIMD.simd_all, validator: ==)
        TestAssert(RandomC64s(), label: "simd_all-c64", reference: simd.simd_all, subject: kvSIMD.simd_all, validator: ==)

        TestAssert(RandomUC2s( ), label: "simd_all-uc2" , reference: simd.simd_all, subject: kvSIMD.simd_all, validator: ==)
        TestAssert(RandomUC3s( ), label: "simd_all-uc3" , reference: simd.simd_all, subject: kvSIMD.simd_all, validator: ==)
        TestAssert(RandomUC4s( ), label: "simd_all-uc4" , reference: simd.simd_all, subject: kvSIMD.simd_all, validator: ==)
        TestAssert(RandomUC8s( ), label: "simd_all-uc8" , reference: simd.simd_all, subject: kvSIMD.simd_all, validator: ==)
        TestAssert(RandomUC16s(), label: "simd_all-uc16", reference: simd.simd_all, subject: kvSIMD.simd_all, validator: ==)
        TestAssert(RandomUC32s(), label: "simd_all-uc32", reference: simd.simd_all, subject: kvSIMD.simd_all, validator: ==)
        TestAssert(RandomUC64s(), label: "simd_all-uc64", reference: simd.simd_all, subject: kvSIMD.simd_all, validator: ==)
    }

    func test_simd_all_s() {
        TestAssert(RandomS2s( ), label: "simd_all-s2" , reference: simd.simd_all, subject: kvSIMD.simd_all, validator: ==)
        TestAssert(RandomS3s( ), label: "simd_all-s3" , reference: simd.simd_all, subject: kvSIMD.simd_all, validator: ==)
        TestAssert(RandomS4s( ), label: "simd_all-s4" , reference: simd.simd_all, subject: kvSIMD.simd_all, validator: ==)
        TestAssert(RandomS8s( ), label: "simd_all-s8" , reference: simd.simd_all, subject: kvSIMD.simd_all, validator: ==)
        TestAssert(RandomS16s(), label: "simd_all-s16", reference: simd.simd_all, subject: kvSIMD.simd_all, validator: ==)
        TestAssert(RandomS32s(), label: "simd_all-s32", reference: simd.simd_all, subject: kvSIMD.simd_all, validator: ==)

        TestAssert(RandomUS2s( ), label: "simd_all-us2" , reference: simd.simd_all, subject: kvSIMD.simd_all, validator: ==)
        TestAssert(RandomUS3s( ), label: "simd_all-us3" , reference: simd.simd_all, subject: kvSIMD.simd_all, validator: ==)
        TestAssert(RandomUS4s( ), label: "simd_all-us4" , reference: simd.simd_all, subject: kvSIMD.simd_all, validator: ==)
        TestAssert(RandomUS8s( ), label: "simd_all-us8" , reference: simd.simd_all, subject: kvSIMD.simd_all, validator: ==)
        TestAssert(RandomUS16s(), label: "simd_all-us16", reference: simd.simd_all, subject: kvSIMD.simd_all, validator: ==)
        TestAssert(RandomUS32s(), label: "simd_all-us32", reference: simd.simd_all, subject: kvSIMD.simd_all, validator: ==)
    }

    func test_simd_all_i() {
        TestAssert(RandomI2s( ), label: "simd_all-i2" , reference: simd.simd_all, subject: kvSIMD.simd_all, validator: ==)
        TestAssert(RandomI3s( ), label: "simd_all-i3" , reference: simd.simd_all, subject: kvSIMD.simd_all, validator: ==)
        TestAssert(RandomI4s( ), label: "simd_all-i4" , reference: simd.simd_all, subject: kvSIMD.simd_all, validator: ==)
        TestAssert(RandomI8s( ), label: "simd_all-i8" , reference: simd.simd_all, subject: kvSIMD.simd_all, validator: ==)
        TestAssert(RandomI16s(), label: "simd_all-i16", reference: simd.simd_all, subject: kvSIMD.simd_all, validator: ==)

        TestAssert(RandomUI2s( ), label: "simd_all-ui2" , reference: simd.simd_all, subject: kvSIMD.simd_all, validator: ==)
        TestAssert(RandomUI3s( ), label: "simd_all-ui3" , reference: simd.simd_all, subject: kvSIMD.simd_all, validator: ==)
        TestAssert(RandomUI4s( ), label: "simd_all-ui4" , reference: simd.simd_all, subject: kvSIMD.simd_all, validator: ==)
        TestAssert(RandomUI8s( ), label: "simd_all-ui8" , reference: simd.simd_all, subject: kvSIMD.simd_all, validator: ==)
        TestAssert(RandomUI16s(), label: "simd_all-ui16", reference: simd.simd_all, subject: kvSIMD.simd_all, validator: ==)
    }

    func test_simd_all_l() {
        TestAssert(RandomL2s( ), label: "simd_all-l2" , reference: simd.simd_all, subject: kvSIMD.simd_all, validator: ==)
        TestAssert(RandomL3s( ), label: "simd_all-l3" , reference: simd.simd_all, subject: kvSIMD.simd_all, validator: ==)
        TestAssert(RandomL4s( ), label: "simd_all-l4" , reference: simd.simd_all, subject: kvSIMD.simd_all, validator: ==)
        TestAssert(RandomL8s( ), label: "simd_all-l8" , reference: simd.simd_all, subject: kvSIMD.simd_all, validator: ==)

        TestAssert(RandomUL2s( ), label: "simd_all-ul2" , reference: simd.simd_all, subject: kvSIMD.simd_all, validator: ==)
        TestAssert(RandomUL3s( ), label: "simd_all-ul3" , reference: simd.simd_all, subject: kvSIMD.simd_all, validator: ==)
        TestAssert(RandomUL4s( ), label: "simd_all-ul4" , reference: simd.simd_all, subject: kvSIMD.simd_all, validator: ==)
        TestAssert(RandomUL8s( ), label: "simd_all-ul8" , reference: simd.simd_all, subject: kvSIMD.simd_all, validator: ==)
    }



    // MARK: test_simd_bitselect_*()

    func test_simd_bitselect_c() {
        TestAssert(RandomC2s( ), RandomC2s( ), RandomC2s( ), label: "simd_bitselect-c2c2c2"   , reference: simd.simd_bitselect, subject: kvSIMD.simd_bitselect, validator: ==)
        TestAssert(RandomC3s( ), RandomC3s( ), RandomC3s( ), label: "simd_bitselect-c3c3c3"   , reference: simd.simd_bitselect, subject: kvSIMD.simd_bitselect, validator: ==)
        TestAssert(RandomC4s( ), RandomC4s( ), RandomC4s( ), label: "simd_bitselect-c4c4c4"   , reference: simd.simd_bitselect, subject: kvSIMD.simd_bitselect, validator: ==)
        TestAssert(RandomC8s( ), RandomC8s( ), RandomC8s( ), label: "simd_bitselect-c8c8c8"   , reference: simd.simd_bitselect, subject: kvSIMD.simd_bitselect, validator: ==)
        TestAssert(RandomC16s(), RandomC16s(), RandomC16s(), label: "simd_bitselect-c16c16c16", reference: simd.simd_bitselect, subject: kvSIMD.simd_bitselect, validator: ==)
        TestAssert(RandomC32s(), RandomC32s(), RandomC32s(), label: "simd_bitselect-c32c32c32", reference: simd.simd_bitselect, subject: kvSIMD.simd_bitselect, validator: ==)
        TestAssert(RandomC64s(), RandomC64s(), RandomC64s(), label: "simd_bitselect-c64c64c64", reference: simd.simd_bitselect, subject: kvSIMD.simd_bitselect, validator: ==)

        TestAssert(RandomUC2s( ), RandomUC2s( ), RandomC2s( ), label: "simd_bitselect-uc2uc2c2"   , reference: simd.simd_bitselect, subject: kvSIMD.simd_bitselect, validator: ==)
        TestAssert(RandomUC3s( ), RandomUC3s( ), RandomC3s( ), label: "simd_bitselect-uc3uc3c3"   , reference: simd.simd_bitselect, subject: kvSIMD.simd_bitselect, validator: ==)
        TestAssert(RandomUC4s( ), RandomUC4s( ), RandomC4s( ), label: "simd_bitselect-uc4uc4c4"   , reference: simd.simd_bitselect, subject: kvSIMD.simd_bitselect, validator: ==)
        TestAssert(RandomUC8s( ), RandomUC8s( ), RandomC8s( ), label: "simd_bitselect-uc8uc8c8"   , reference: simd.simd_bitselect, subject: kvSIMD.simd_bitselect, validator: ==)
        TestAssert(RandomUC16s(), RandomUC16s(), RandomC16s(), label: "simd_bitselect-uc16uc16c16", reference: simd.simd_bitselect, subject: kvSIMD.simd_bitselect, validator: ==)
        TestAssert(RandomUC32s(), RandomUC32s(), RandomC32s(), label: "simd_bitselect-uc32uc32c32", reference: simd.simd_bitselect, subject: kvSIMD.simd_bitselect, validator: ==)
        TestAssert(RandomUC64s(), RandomUC64s(), RandomC64s(), label: "simd_bitselect-uc64uc64c64", reference: simd.simd_bitselect, subject: kvSIMD.simd_bitselect, validator: ==)
    }

    func test_simd_bitselect_s() {
        TestAssert(RandomS2s( ), RandomS2s( ), RandomS2s( ), label: "simd_bitselect-s2s2s2"   , reference: simd.simd_bitselect, subject: kvSIMD.simd_bitselect, validator: ==)
        TestAssert(RandomS3s( ), RandomS3s( ), RandomS3s( ), label: "simd_bitselect-s3s3s3"   , reference: simd.simd_bitselect, subject: kvSIMD.simd_bitselect, validator: ==)
        TestAssert(RandomS4s( ), RandomS4s( ), RandomS4s( ), label: "simd_bitselect-s4s4s4"   , reference: simd.simd_bitselect, subject: kvSIMD.simd_bitselect, validator: ==)
        TestAssert(RandomS8s( ), RandomS8s( ), RandomS8s( ), label: "simd_bitselect-s8s8s8"   , reference: simd.simd_bitselect, subject: kvSIMD.simd_bitselect, validator: ==)
        TestAssert(RandomS16s(), RandomS16s(), RandomS16s(), label: "simd_bitselect-s16s16s16", reference: simd.simd_bitselect, subject: kvSIMD.simd_bitselect, validator: ==)
        TestAssert(RandomS32s(), RandomS32s(), RandomS32s(), label: "simd_bitselect-s32s32s32", reference: simd.simd_bitselect, subject: kvSIMD.simd_bitselect, validator: ==)

        TestAssert(RandomUS2s( ), RandomUS2s( ), RandomS2s( ), label: "simd_bitselect-us2us2s2"   , reference: simd.simd_bitselect, subject: kvSIMD.simd_bitselect, validator: ==)
        TestAssert(RandomUS3s( ), RandomUS3s( ), RandomS3s( ), label: "simd_bitselect-us3us3s3"   , reference: simd.simd_bitselect, subject: kvSIMD.simd_bitselect, validator: ==)
        TestAssert(RandomUS4s( ), RandomUS4s( ), RandomS4s( ), label: "simd_bitselect-us4us4s4"   , reference: simd.simd_bitselect, subject: kvSIMD.simd_bitselect, validator: ==)
        TestAssert(RandomUS8s( ), RandomUS8s( ), RandomS8s( ), label: "simd_bitselect-us8us8s8"   , reference: simd.simd_bitselect, subject: kvSIMD.simd_bitselect, validator: ==)
        TestAssert(RandomUS16s(), RandomUS16s(), RandomS16s(), label: "simd_bitselect-us16us16s16", reference: simd.simd_bitselect, subject: kvSIMD.simd_bitselect, validator: ==)
        TestAssert(RandomUS32s(), RandomUS32s(), RandomS32s(), label: "simd_bitselect-us32us32s32", reference: simd.simd_bitselect, subject: kvSIMD.simd_bitselect, validator: ==)
    }

    func test_simd_bitselect_i() {
        TestAssert(RandomI2s( ), RandomI2s( ), RandomI2s( ), label: "simd_bitselect-i2i2i2"   , reference: simd.simd_bitselect, subject: kvSIMD.simd_bitselect, validator: ==)
        TestAssert(RandomI3s( ), RandomI3s( ), RandomI3s( ), label: "simd_bitselect-i3i3i3"   , reference: simd.simd_bitselect, subject: kvSIMD.simd_bitselect, validator: ==)
        TestAssert(RandomI4s( ), RandomI4s( ), RandomI4s( ), label: "simd_bitselect-i4i4i4"   , reference: simd.simd_bitselect, subject: kvSIMD.simd_bitselect, validator: ==)
        TestAssert(RandomI8s( ), RandomI8s( ), RandomI8s( ), label: "simd_bitselect-i8i8i8"   , reference: simd.simd_bitselect, subject: kvSIMD.simd_bitselect, validator: ==)
        TestAssert(RandomI16s(), RandomI16s(), RandomI16s(), label: "simd_bitselect-i16i16i16", reference: simd.simd_bitselect, subject: kvSIMD.simd_bitselect, validator: ==)

        TestAssert(RandomUI2s( ), RandomUI2s( ), RandomI2s( ), label: "simd_bitselect-ui2ui2i2"   , reference: simd.simd_bitselect, subject: kvSIMD.simd_bitselect, validator: ==)
        TestAssert(RandomUI3s( ), RandomUI3s( ), RandomI3s( ), label: "simd_bitselect-ui3ui3i3"   , reference: simd.simd_bitselect, subject: kvSIMD.simd_bitselect, validator: ==)
        TestAssert(RandomUI4s( ), RandomUI4s( ), RandomI4s( ), label: "simd_bitselect-ui4ui4i4"   , reference: simd.simd_bitselect, subject: kvSIMD.simd_bitselect, validator: ==)
        TestAssert(RandomUI8s( ), RandomUI8s( ), RandomI8s( ), label: "simd_bitselect-ui8ui8i8"   , reference: simd.simd_bitselect, subject: kvSIMD.simd_bitselect, validator: ==)
        TestAssert(RandomUI16s(), RandomUI16s(), RandomI16s(), label: "simd_bitselect-ui16ui16i16", reference: simd.simd_bitselect, subject: kvSIMD.simd_bitselect, validator: ==)
    }

    func test_simd_bitselect_l() {
        TestAssert(RandomL2s(), RandomL2s(), RandomL2s(), label: "simd_bitselect-l2l2l2", reference: simd.simd_bitselect, subject: kvSIMD.simd_bitselect, validator: ==)
        TestAssert(RandomL3s(), RandomL3s(), RandomL3s(), label: "simd_bitselect-l3l3l3", reference: simd.simd_bitselect, subject: kvSIMD.simd_bitselect, validator: ==)
        TestAssert(RandomL4s(), RandomL4s(), RandomL4s(), label: "simd_bitselect-l4l4l4", reference: simd.simd_bitselect, subject: kvSIMD.simd_bitselect, validator: ==)
        TestAssert(RandomL8s(), RandomL8s(), RandomL8s(), label: "simd_bitselect-l8l8l8", reference: simd.simd_bitselect, subject: kvSIMD.simd_bitselect, validator: ==)

        TestAssert(RandomUL2s(), RandomUL2s(), RandomL2s(), label: "simd_bitselect-ul2ul2l2", reference: simd.simd_bitselect, subject: kvSIMD.simd_bitselect, validator: ==)
        TestAssert(RandomUL3s(), RandomUL3s(), RandomL3s(), label: "simd_bitselect-ul3ul3l3", reference: simd.simd_bitselect, subject: kvSIMD.simd_bitselect, validator: ==)
        TestAssert(RandomUL4s(), RandomUL4s(), RandomL4s(), label: "simd_bitselect-ul4ul4l4", reference: simd.simd_bitselect, subject: kvSIMD.simd_bitselect, validator: ==)
        TestAssert(RandomUL8s(), RandomUL8s(), RandomL8s(), label: "simd_bitselect-ul8ul8l8", reference: simd.simd_bitselect, subject: kvSIMD.simd_bitselect, validator: ==)
    }

    func test_simd_bitselect_f() {
        TestAssert(RandomF2s( ), RandomF2s( ), RandomI2s( ), label: "simd_bitselect-f2f2i2"   , reference: simd.simd_bitselect, subject: kvSIMD.simd_bitselect, validator: ==)
        TestAssert(RandomF3s( ), RandomF3s( ), RandomI3s( ), label: "simd_bitselect-f3f3i3"   , reference: simd.simd_bitselect, subject: kvSIMD.simd_bitselect, validator: ==)
        TestAssert(RandomF4s( ), RandomF4s( ), RandomI4s( ), label: "simd_bitselect-f4f4i4"   , reference: simd.simd_bitselect, subject: kvSIMD.simd_bitselect, validator: ==)
        TestAssert(RandomF8s( ), RandomF8s( ), RandomI8s( ), label: "simd_bitselect-f8f8i8"   , reference: simd.simd_bitselect, subject: kvSIMD.simd_bitselect, validator: ==)
        TestAssert(RandomF16s(), RandomF16s(), RandomI16s(), label: "simd_bitselect-f16f16i16", reference: simd.simd_bitselect, subject: kvSIMD.simd_bitselect, validator: ==)
    }

    func test_simd_bitselect_d() {
        TestAssert(RandomD2s(), RandomD2s(), RandomL2s(), label: "simd_bitselect-d2d2l2", reference: simd.simd_bitselect, subject: kvSIMD.simd_bitselect, validator: ==)
        TestAssert(RandomD3s(), RandomD3s(), RandomL3s(), label: "simd_bitselect-d3d3l3", reference: simd.simd_bitselect, subject: kvSIMD.simd_bitselect, validator: ==)
        TestAssert(RandomD4s(), RandomD4s(), RandomL4s(), label: "simd_bitselect-d4d4l4", reference: simd.simd_bitselect, subject: kvSIMD.simd_bitselect, validator: ==)
        TestAssert(RandomD8s(), RandomD8s(), RandomL8s(), label: "simd_bitselect-d8d8l8", reference: simd.simd_bitselect, subject: kvSIMD.simd_bitselect, validator: ==)
    }



    // MARK: test_simd_clamp_*()

    func test_simd_clamp_c() {
        TestAssert(RandomC2s( ), RandomC2s( in: .range(-10...0)), RandomC2s( in: .range(0...10)), label: "simd_clamp-c2c2c2"   , reference: simd.simd_clamp, subject: kvSIMD.simd_clamp, validator: ==)
        TestAssert(RandomC3s( ), RandomC3s( in: .range(-10...0)), RandomC3s( in: .range(0...10)), label: "simd_clamp-c3c3c3"   , reference: simd.simd_clamp, subject: kvSIMD.simd_clamp, validator: ==)
        TestAssert(RandomC4s( ), RandomC4s( in: .range(-10...0)), RandomC4s( in: .range(0...10)), label: "simd_clamp-c4c4c4"   , reference: simd.simd_clamp, subject: kvSIMD.simd_clamp, validator: ==)
        TestAssert(RandomC8s( ), RandomC8s( in: .range(-10...0)), RandomC8s( in: .range(0...10)), label: "simd_clamp-c8c8c8"   , reference: simd.simd_clamp, subject: kvSIMD.simd_clamp, validator: ==)
        TestAssert(RandomC16s(), RandomC16s(in: .range(-10...0)), RandomC16s(in: .range(0...10)), label: "simd_clamp-c16c16c16", reference: simd.simd_clamp, subject: kvSIMD.simd_clamp, validator: ==)
        TestAssert(RandomC32s(), RandomC32s(in: .range(-10...0)), RandomC32s(in: .range(0...10)), label: "simd_clamp-c32c32c32", reference: simd.simd_clamp, subject: kvSIMD.simd_clamp, validator: ==)
        TestAssert(RandomC64s(), RandomC64s(in: .range(-10...0)), RandomC64s(in: .range(0...10)), label: "simd_clamp-c64c64c64", reference: simd.simd_clamp, subject: kvSIMD.simd_clamp, validator: ==)
    }

    func test_simd_clamp_uc() {
        TestAssert(RandomUC2s( ), RandomUC2s( in: .range(0...5)), RandomUC2s( in: .range(5...10)), label: "simd_clamp-uc2uc2uc2"   , reference: simd.simd_clamp, subject: kvSIMD.simd_clamp, validator: ==)
        TestAssert(RandomUC3s( ), RandomUC3s( in: .range(0...5)), RandomUC3s( in: .range(5...10)), label: "simd_clamp-uc3uc3uc3"   , reference: simd.simd_clamp, subject: kvSIMD.simd_clamp, validator: ==)
        TestAssert(RandomUC4s( ), RandomUC4s( in: .range(0...5)), RandomUC4s( in: .range(5...10)), label: "simd_clamp-uc4uc4uc4"   , reference: simd.simd_clamp, subject: kvSIMD.simd_clamp, validator: ==)
        TestAssert(RandomUC8s( ), RandomUC8s( in: .range(0...5)), RandomUC8s( in: .range(5...10)), label: "simd_clamp-uc8uc8uc8"   , reference: simd.simd_clamp, subject: kvSIMD.simd_clamp, validator: ==)
        TestAssert(RandomUC16s(), RandomUC16s(in: .range(0...5)), RandomUC16s(in: .range(5...10)), label: "simd_clamp-uc16uc16uc16", reference: simd.simd_clamp, subject: kvSIMD.simd_clamp, validator: ==)
        TestAssert(RandomUC32s(), RandomUC32s(in: .range(0...5)), RandomUC32s(in: .range(5...10)), label: "simd_clamp-uc32uc32uc32", reference: simd.simd_clamp, subject: kvSIMD.simd_clamp, validator: ==)
        TestAssert(RandomUC64s(), RandomUC64s(in: .range(0...5)), RandomUC64s(in: .range(5...10)), label: "simd_clamp-uc64uc64uc64", reference: simd.simd_clamp, subject: kvSIMD.simd_clamp, validator: ==)
    }

    func test_simd_clamp_s() {
        TestAssert(RandomS2s( ), RandomS2s( in: .range(-10...0)), RandomS2s( in: .range(0...10)), label: "simd_clamp-s2s2s2"   , reference: simd.simd_clamp, subject: kvSIMD.simd_clamp, validator: ==)
        TestAssert(RandomS3s( ), RandomS3s( in: .range(-10...0)), RandomS3s( in: .range(0...10)), label: "simd_clamp-s3s3s3"   , reference: simd.simd_clamp, subject: kvSIMD.simd_clamp, validator: ==)
        TestAssert(RandomS4s( ), RandomS4s( in: .range(-10...0)), RandomS4s( in: .range(0...10)), label: "simd_clamp-s4s4s4"   , reference: simd.simd_clamp, subject: kvSIMD.simd_clamp, validator: ==)
        TestAssert(RandomS8s( ), RandomS8s( in: .range(-10...0)), RandomS8s( in: .range(0...10)), label: "simd_clamp-s8s8s8"   , reference: simd.simd_clamp, subject: kvSIMD.simd_clamp, validator: ==)
        TestAssert(RandomS16s(), RandomS16s(in: .range(-10...0)), RandomS16s(in: .range(0...10)), label: "simd_clamp-s16s16s16", reference: simd.simd_clamp, subject: kvSIMD.simd_clamp, validator: ==)
        TestAssert(RandomS32s(), RandomS32s(in: .range(-10...0)), RandomS32s(in: .range(0...10)), label: "simd_clamp-s32s32s32", reference: simd.simd_clamp, subject: kvSIMD.simd_clamp, validator: ==)
    }

    func test_simd_clamp_us() {
        TestAssert(RandomUS2s( ), RandomUS2s( in: .range(0...5)), RandomUS2s( in: .range(5...10)), label: "simd_clamp-us2us2us2"   , reference: simd.simd_clamp, subject: kvSIMD.simd_clamp, validator: ==)
        TestAssert(RandomUS3s( ), RandomUS3s( in: .range(0...5)), RandomUS3s( in: .range(5...10)), label: "simd_clamp-us3us3us3"   , reference: simd.simd_clamp, subject: kvSIMD.simd_clamp, validator: ==)
        TestAssert(RandomUS4s( ), RandomUS4s( in: .range(0...5)), RandomUS4s( in: .range(5...10)), label: "simd_clamp-us4us4us4"   , reference: simd.simd_clamp, subject: kvSIMD.simd_clamp, validator: ==)
        TestAssert(RandomUS8s( ), RandomUS8s( in: .range(0...5)), RandomUS8s( in: .range(5...10)), label: "simd_clamp-us8us8us8"   , reference: simd.simd_clamp, subject: kvSIMD.simd_clamp, validator: ==)
        TestAssert(RandomUS16s(), RandomUS16s(in: .range(0...5)), RandomUS16s(in: .range(5...10)), label: "simd_clamp-us16us16us16", reference: simd.simd_clamp, subject: kvSIMD.simd_clamp, validator: ==)
        TestAssert(RandomUS32s(), RandomUS32s(in: .range(0...5)), RandomUS32s(in: .range(5...10)), label: "simd_clamp-us32us32us32", reference: simd.simd_clamp, subject: kvSIMD.simd_clamp, validator: ==)
    }

    func test_simd_clamp_i() {
        TestAssert(RandomI2s( ), RandomI2s( in: .range(-10...0)), RandomI2s( in: .range(0...10)), label: "simd_clamp-i2i2i2"   , reference: simd.simd_clamp, subject: kvSIMD.simd_clamp, validator: ==)
        TestAssert(RandomI3s( ), RandomI3s( in: .range(-10...0)), RandomI3s( in: .range(0...10)), label: "simd_clamp-i3i3i3"   , reference: simd.simd_clamp, subject: kvSIMD.simd_clamp, validator: ==)
        TestAssert(RandomI4s( ), RandomI4s( in: .range(-10...0)), RandomI4s( in: .range(0...10)), label: "simd_clamp-i4i4i4"   , reference: simd.simd_clamp, subject: kvSIMD.simd_clamp, validator: ==)
        TestAssert(RandomI8s( ), RandomI8s( in: .range(-10...0)), RandomI8s( in: .range(0...10)), label: "simd_clamp-i8i8i8"   , reference: simd.simd_clamp, subject: kvSIMD.simd_clamp, validator: ==)
        TestAssert(RandomI16s(), RandomI16s(in: .range(-10...0)), RandomI16s(in: .range(0...10)), label: "simd_clamp-i16i16i16", reference: simd.simd_clamp, subject: kvSIMD.simd_clamp, validator: ==)
    }

    func test_simd_clamp_ui() {
        TestAssert(RandomUI2s( ), RandomUI2s( in: .range(0...5)), RandomUI2s( in: .range(5...10)), label: "simd_clamp-ui2ui2ui2"   , reference: simd.simd_clamp, subject: kvSIMD.simd_clamp, validator: ==)
        TestAssert(RandomUI3s( ), RandomUI3s( in: .range(0...5)), RandomUI3s( in: .range(5...10)), label: "simd_clamp-ui3ui3ui3"   , reference: simd.simd_clamp, subject: kvSIMD.simd_clamp, validator: ==)
        TestAssert(RandomUI4s( ), RandomUI4s( in: .range(0...5)), RandomUI4s( in: .range(5...10)), label: "simd_clamp-ui4ui4ui4"   , reference: simd.simd_clamp, subject: kvSIMD.simd_clamp, validator: ==)
        TestAssert(RandomUI8s( ), RandomUI8s( in: .range(0...5)), RandomUI8s( in: .range(5...10)), label: "simd_clamp-ui8ui8ui8"   , reference: simd.simd_clamp, subject: kvSIMD.simd_clamp, validator: ==)
        TestAssert(RandomUI16s(), RandomUI16s(in: .range(0...5)), RandomUI16s(in: .range(5...10)), label: "simd_clamp-ui16ui16ui16", reference: simd.simd_clamp, subject: kvSIMD.simd_clamp, validator: ==)
    }

    func test_simd_clamp_l() {
        TestAssert(RandomL2s(), RandomL2s(in: .range(-10...0)), RandomL2s(in: .range(0...10)), label: "simd_clamp-l2l2l2", reference: simd.simd_clamp, subject: kvSIMD.simd_clamp, validator: ==)
        TestAssert(RandomL3s(), RandomL3s(in: .range(-10...0)), RandomL3s(in: .range(0...10)), label: "simd_clamp-l3l3l3", reference: simd.simd_clamp, subject: kvSIMD.simd_clamp, validator: ==)
        TestAssert(RandomL4s(), RandomL4s(in: .range(-10...0)), RandomL4s(in: .range(0...10)), label: "simd_clamp-l4l4l4", reference: simd.simd_clamp, subject: kvSIMD.simd_clamp, validator: ==)
        TestAssert(RandomL8s(), RandomL8s(in: .range(-10...0)), RandomL8s(in: .range(0...10)), label: "simd_clamp-l8l8l8", reference: simd.simd_clamp, subject: kvSIMD.simd_clamp, validator: ==)
    }

    func test_simd_clamp_ul() {
        TestAssert(RandomUL2s(), RandomUL2s(in: .range(0...5)), RandomUL2s(in: .range(5...10)), label: "simd_clamp-ul2ul2ul2", reference: simd.simd_clamp, subject: kvSIMD.simd_clamp, validator: ==)
        TestAssert(RandomUL3s(), RandomUL3s(in: .range(0...5)), RandomUL3s(in: .range(5...10)), label: "simd_clamp-ul3ul3ul3", reference: simd.simd_clamp, subject: kvSIMD.simd_clamp, validator: ==)
        TestAssert(RandomUL4s(), RandomUL4s(in: .range(0...5)), RandomUL4s(in: .range(5...10)), label: "simd_clamp-ul4ul4ul4", reference: simd.simd_clamp, subject: kvSIMD.simd_clamp, validator: ==)
        TestAssert(RandomUL8s(), RandomUL8s(in: .range(0...5)), RandomUL8s(in: .range(5...10)), label: "simd_clamp-ul8ul8ul8", reference: simd.simd_clamp, subject: kvSIMD.simd_clamp, validator: ==)
    }

    func test_simd_clamp_f() {
        TestAssert(RandomF1s( ), RandomF1s( in: .range(-10.0 ... 0.0)), RandomF1s( in: .range(0.0 ... 10.0)), label: "simd_clamp-f1f1f1"   , reference: simd.simd_clamp, subject: kvSIMD.simd_clamp, validator: ==)
        TestAssert(RandomF2s( ), RandomF2s( in: .range(-10.0 ... 0.0)), RandomF2s( in: .range(0.0 ... 10.0)), label: "simd_clamp-f2f2f2"   , reference: simd.simd_clamp, subject: kvSIMD.simd_clamp, validator: ==)
        TestAssert(RandomF3s( ), RandomF3s( in: .range(-10.0 ... 0.0)), RandomF3s( in: .range(0.0 ... 10.0)), label: "simd_clamp-f3f3f3"   , reference: simd.simd_clamp, subject: kvSIMD.simd_clamp, validator: ==)
        TestAssert(RandomF4s( ), RandomF4s( in: .range(-10.0 ... 0.0)), RandomF4s( in: .range(0.0 ... 10.0)), label: "simd_clamp-f4f4f4"   , reference: simd.simd_clamp, subject: kvSIMD.simd_clamp, validator: ==)
        TestAssert(RandomF8s( ), RandomF8s( in: .range(-10.0 ... 0.0)), RandomF8s( in: .range(0.0 ... 10.0)), label: "simd_clamp-f8f8f8"   , reference: simd.simd_clamp, subject: kvSIMD.simd_clamp, validator: ==)
        TestAssert(RandomF16s(), RandomF16s(in: .range(-10.0 ... 0.0)), RandomF16s(in: .range(0.0 ... 10.0)), label: "simd_clamp-f16f16f16", reference: simd.simd_clamp, subject: kvSIMD.simd_clamp, validator: ==)
    }

    func test_simd_clamp_d() {
        TestAssert(RandomD1s(), RandomD1s(in: .range(-10.0...0.0)), RandomD1s(in: .range(0.0...10.0)), label: "simd_clamp-d1d1d1", reference: simd.simd_clamp, subject: kvSIMD.simd_clamp, validator: ==)
        TestAssert(RandomD2s(), RandomD2s(in: .range(-10.0...0.0)), RandomD2s(in: .range(0.0...10.0)), label: "simd_clamp-d2d2d2", reference: simd.simd_clamp, subject: kvSIMD.simd_clamp, validator: ==)
        TestAssert(RandomD3s(), RandomD3s(in: .range(-10.0...0.0)), RandomD3s(in: .range(0.0...10.0)), label: "simd_clamp-d3d3d3", reference: simd.simd_clamp, subject: kvSIMD.simd_clamp, validator: ==)
        TestAssert(RandomD4s(), RandomD4s(in: .range(-10.0...0.0)), RandomD4s(in: .range(0.0...10.0)), label: "simd_clamp-d4d4d4", reference: simd.simd_clamp, subject: kvSIMD.simd_clamp, validator: ==)
        TestAssert(RandomD8s(), RandomD8s(in: .range(-10.0...0.0)), RandomD8s(in: .range(0.0...10.0)), label: "simd_clamp-d8d8d8", reference: simd.simd_clamp, subject: kvSIMD.simd_clamp, validator: ==)
    }



    // MARK: test_simd_cross()

    func test_simd_cross() {
        TestAssert(RandomF2s(), RandomF2s(), label: "simd_cross-f2f2", reference: simd.simd_cross, subject: kvSIMD.simd_cross, validator: IsEqual(_:_:))
        TestAssert(RandomF3s(), RandomF3s(), label: "simd_cross-f3f3", reference: simd.simd_cross, subject: kvSIMD.simd_cross, validator: IsEqual(_:_:))

        TestAssert(RandomD2s(), RandomD2s(), label: "simd_cross-d2d2", reference: simd.simd_cross, subject: kvSIMD.simd_cross, validator: IsEqual(_:_:))
        TestAssert(RandomD3s(), RandomD3s(), label: "simd_cross-d3d3", reference: simd.simd_cross, subject: kvSIMD.simd_cross, validator: IsEqual(_:_:))
    }



    // MARK: test_simd_determinant()

    func test_simd_determinant() {

        func Assert<C, M1, M2, R>(_ cols: C, _ fabric1: (C) -> M1, _ fabric2: (C) -> M2, _ block1: (M1) -> R, _ block2: (M2) -> R, _ validator: (R, R) -> Bool) {
            assertEqual(block1(fabric1(cols)), block2(fabric2(cols)), validator)
        }

        (0..<10).forEach { _ in
            Assert(RandomNxF2(2), F2x2.init(_:), simd.float2x2.init(_:), kvSIMD.simd_determinant(_:) as (F2x2) -> Float, simd.simd_determinant(_:), { IsEqual($0, $1, eps: .near(1.0)) })
            Assert(RandomNxF3(3), F3x3.init(_:), simd.float3x3.init(_:), kvSIMD.simd_determinant(_:) as (F3x3) -> Float, simd.simd_determinant(_:), { IsEqual($0, $1, eps: .near(1.0)) })
            Assert(RandomNxF4(4), F4x4.init(_:), simd.float4x4.init(_:), kvSIMD.simd_determinant(_:) as (F4x4) -> Float, simd.simd_determinant(_:), { IsEqual($0, $1, eps: .near(1.0)) })

            Assert(RandomNxD2(2), D2x2.init(_:), simd.double2x2.init(_:), kvSIMD.simd_determinant(_:) as (D2x2) -> Double, simd.simd_determinant(_:), { IsEqual($0, $1, eps: .near(1.0)) })
            Assert(RandomNxD3(3), D3x3.init(_:), simd.double3x3.init(_:), kvSIMD.simd_determinant(_:) as (D3x3) -> Double, simd.simd_determinant(_:), { IsEqual($0, $1, eps: .near(1.0)) })
            Assert(RandomNxD4(4), D4x4.init(_:), simd.double4x4.init(_:), kvSIMD.simd_determinant(_:) as (D4x4) -> Double, simd.simd_determinant(_:), { IsEqual($0, $1, eps: .near(1.0)) })
        }
    }



    // MARK: test_simd_distance_squared()

    func test_simd_distance_squared() {
        TestAssert(RandomF2s( ), RandomF2s( ), label: "simd_distance_squared-f2f2"  , reference: simd.simd_distance_squared, subject: kvSIMD.simd_distance_squared, validator: IsEqual(_:_:))
        TestAssert(RandomF3s( ), RandomF3s( ), label: "simd_distance_squared-f3f3"  , reference: simd.simd_distance_squared, subject: kvSIMD.simd_distance_squared, validator: IsEqual(_:_:))
        TestAssert(RandomF4s( ), RandomF4s( ), label: "simd_distance_squared-f4f4"  , reference: simd.simd_distance_squared, subject: kvSIMD.simd_distance_squared, validator: IsEqual(_:_:))
        TestAssert(RandomF8s( ), RandomF8s( ), label: "simd_distance_squared-f8f8"  , reference: simd.simd_distance_squared, subject: kvSIMD.simd_distance_squared, validator: IsEqual(_:_:))
        TestAssert(RandomF16s(), RandomF16s(), label: "simd_distance_squared-f16f16", reference: simd.simd_distance_squared, subject: kvSIMD.simd_distance_squared, validator: IsEqual(_:_:))

        TestAssert(RandomD2s( ), RandomD2s( ), label: "simd_distance_squared-d2d2"  , reference: simd.simd_distance_squared, subject: kvSIMD.simd_distance_squared, validator: IsEqual(_:_:))
        TestAssert(RandomD3s( ), RandomD3s( ), label: "simd_distance_squared-d3d3"  , reference: simd.simd_distance_squared, subject: kvSIMD.simd_distance_squared, validator: IsEqual(_:_:))
        TestAssert(RandomD4s( ), RandomD4s( ), label: "simd_distance_squared-d4d4"  , reference: simd.simd_distance_squared, subject: kvSIMD.simd_distance_squared, validator: IsEqual(_:_:))
        TestAssert(RandomD8s( ), RandomD8s( ), label: "simd_distance_squared-d8d8"  , reference: simd.simd_distance_squared, subject: kvSIMD.simd_distance_squared, validator: IsEqual(_:_:))
    }



    // MARK: test_simd_dot()

    func test_simd_dot() {
        TestAssert(RandomF2s( ), RandomF2s( ), label: "simd_dot-f2f2"  , reference: simd.simd_dot, subject: kvSIMD.simd_dot, validator: { IsEqual($0, $1, eps: .near(100.0)) })
        TestAssert(RandomF3s( ), RandomF3s( ), label: "simd_dot-f3f3"  , reference: simd.simd_dot, subject: kvSIMD.simd_dot, validator: { IsEqual($0, $1, eps: .near(100.0)) })
        TestAssert(RandomF4s( ), RandomF4s( ), label: "simd_dot-f4f4"  , reference: simd.simd_dot, subject: kvSIMD.simd_dot, validator: { IsEqual($0, $1, eps: .near(100.0)) })
        TestAssert(RandomF8s( ), RandomF8s( ), label: "simd_dot-f8f8"  , reference: simd.simd_dot, subject: kvSIMD.simd_dot, validator: { IsEqual($0, $1, eps: .near(100.0)) })
        TestAssert(RandomF16s(), RandomF16s(), label: "simd_dot-f16f16", reference: simd.simd_dot, subject: kvSIMD.simd_dot, validator: { IsEqual($0, $1, eps: .near(100.0)) })

        TestAssert(RandomD2s( ), RandomD2s( ), label: "simd_dot-d2d2"  , reference: simd.simd_dot, subject: kvSIMD.simd_dot, validator: { IsEqual($0, $1, eps: .near(100.0)) })
        TestAssert(RandomD3s( ), RandomD3s( ), label: "simd_dot-d3d3"  , reference: simd.simd_dot, subject: kvSIMD.simd_dot, validator: { IsEqual($0, $1, eps: .near(100.0)) })
        TestAssert(RandomD4s( ), RandomD4s( ), label: "simd_dot-d4d4"  , reference: simd.simd_dot, subject: kvSIMD.simd_dot, validator: { IsEqual($0, $1, eps: .near(100.0)) })
        TestAssert(RandomD8s( ), RandomD8s( ), label: "simd_dot-d8d8"  , reference: simd.simd_dot, subject: kvSIMD.simd_dot, validator: { IsEqual($0, $1, eps: .near(100.0)) })
    }



    // MARK: test_simd_equal_*()

    func test_simd_equal_c() {
        TestAssert([ (C2 .zero, C2 .one), (C2 .one, C2 .one) ] as [(C2 , C2 )], label: "simd_equal-c2c2"  , reference: simd.simd_equal, subject: kvSIMD.simd_equal, validator: ==)
        TestAssert([ (C3 .zero, C3 .one), (C3 .one, C3 .one) ] as [(C3 , C3 )], label: "simd_equal-c3c3"  , reference: simd.simd_equal, subject: kvSIMD.simd_equal, validator: ==)
        TestAssert([ (C4 .zero, C4 .one), (C4 .one, C4 .one) ] as [(C4 , C4 )], label: "simd_equal-c4c4"  , reference: simd.simd_equal, subject: kvSIMD.simd_equal, validator: ==)
        TestAssert([ (C8 .zero, C8 .one), (C8 .one, C8 .one) ] as [(C8 , C8 )], label: "simd_equal-c8c8"  , reference: simd.simd_equal, subject: kvSIMD.simd_equal, validator: ==)
        TestAssert([ (C16.zero, C16.one), (C16.one, C16.one) ] as [(C16, C16)], label: "simd_equal-c16c16", reference: simd.simd_equal, subject: kvSIMD.simd_equal, validator: ==)
        TestAssert([ (C32.zero, C32.one), (C32.one, C32.one) ] as [(C32, C32)], label: "simd_equal-c32c32", reference: simd.simd_equal, subject: kvSIMD.simd_equal, validator: ==)
        TestAssert([ (C64.zero, C64.one), (C64.one, C64.one) ] as [(C64, C64)], label: "simd_equal-c64c64", reference: simd.simd_equal, subject: kvSIMD.simd_equal, validator: ==)
    }

    func test_simd_equal_uc() {
        TestAssert([ (UC2 .zero, UC2 .one), (UC2 .one, UC2 .one) ] as [(UC2 , UC2 )], label: "simd_equal-uc2uc2"  , reference: simd.simd_equal, subject: kvSIMD.simd_equal, validator: ==)
        TestAssert([ (UC3 .zero, UC3 .one), (UC3 .one, UC3 .one) ] as [(UC3 , UC3 )], label: "simd_equal-uc3uc3"  , reference: simd.simd_equal, subject: kvSIMD.simd_equal, validator: ==)
        TestAssert([ (UC4 .zero, UC4 .one), (UC4 .one, UC4 .one) ] as [(UC4 , UC4 )], label: "simd_equal-uc4uc4"  , reference: simd.simd_equal, subject: kvSIMD.simd_equal, validator: ==)
        TestAssert([ (UC8 .zero, UC8 .one), (UC8 .one, UC8 .one) ] as [(UC8 , UC8 )], label: "simd_equal-uc8uc8"  , reference: simd.simd_equal, subject: kvSIMD.simd_equal, validator: ==)
        TestAssert([ (UC16.zero, UC16.one), (UC16.one, UC16.one) ] as [(UC16, UC16)], label: "simd_equal-uc16uc16", reference: simd.simd_equal, subject: kvSIMD.simd_equal, validator: ==)
        TestAssert([ (UC32.zero, UC32.one), (UC32.one, UC32.one) ] as [(UC32, UC32)], label: "simd_equal-uc32uc32", reference: simd.simd_equal, subject: kvSIMD.simd_equal, validator: ==)
        TestAssert([ (UC64.zero, UC64.one), (UC64.one, UC64.one) ] as [(UC64, UC64)], label: "simd_equal-uc64uc64", reference: simd.simd_equal, subject: kvSIMD.simd_equal, validator: ==)
    }

    func test_simd_equal_s() {
        TestAssert([ (S2 .zero, S2 .one), (S2 .one, S2 .one) ] as [(S2 , S2 )], label: "simd_equal-s2s2"  , reference: simd.simd_equal, subject: kvSIMD.simd_equal, validator: ==)
        TestAssert([ (S3 .zero, S3 .one), (S3 .one, S3 .one) ] as [(S3 , S3 )], label: "simd_equal-s3s3"  , reference: simd.simd_equal, subject: kvSIMD.simd_equal, validator: ==)
        TestAssert([ (S4 .zero, S4 .one), (S4 .one, S4 .one) ] as [(S4 , S4 )], label: "simd_equal-s4s4"  , reference: simd.simd_equal, subject: kvSIMD.simd_equal, validator: ==)
        TestAssert([ (S8 .zero, S8 .one), (S8 .one, S8 .one) ] as [(S8 , S8 )], label: "simd_equal-s8s8"  , reference: simd.simd_equal, subject: kvSIMD.simd_equal, validator: ==)
        TestAssert([ (S16.zero, S16.one), (S16.one, S16.one) ] as [(S16, S16)], label: "simd_equal-s16s16", reference: simd.simd_equal, subject: kvSIMD.simd_equal, validator: ==)
        TestAssert([ (S32.zero, S32.one), (S32.one, S32.one) ] as [(S32, S32)], label: "simd_equal-s32s32", reference: simd.simd_equal, subject: kvSIMD.simd_equal, validator: ==)
    }

    func test_simd_equal_us() {
        TestAssert([ (US2 .zero, US2 .one), (US2 .one, US2 .one) ] as [(US2 , US2 )], label: "simd_equal-us2us2"  , reference: simd.simd_equal, subject: kvSIMD.simd_equal, validator: ==)
        TestAssert([ (US3 .zero, US3 .one), (US3 .one, US3 .one) ] as [(US3 , US3 )], label: "simd_equal-us3us3"  , reference: simd.simd_equal, subject: kvSIMD.simd_equal, validator: ==)
        TestAssert([ (US4 .zero, US4 .one), (US4 .one, US4 .one) ] as [(US4 , US4 )], label: "simd_equal-us4us4"  , reference: simd.simd_equal, subject: kvSIMD.simd_equal, validator: ==)
        TestAssert([ (US8 .zero, US8 .one), (US8 .one, US8 .one) ] as [(US8 , US8 )], label: "simd_equal-us8us8"  , reference: simd.simd_equal, subject: kvSIMD.simd_equal, validator: ==)
        TestAssert([ (US16.zero, US16.one), (US16.one, US16.one) ] as [(US16, US16)], label: "simd_equal-us16us16", reference: simd.simd_equal, subject: kvSIMD.simd_equal, validator: ==)
        TestAssert([ (US32.zero, US32.one), (US32.one, US32.one) ] as [(US32, US32)], label: "simd_equal-us32us32", reference: simd.simd_equal, subject: kvSIMD.simd_equal, validator: ==)
    }

    func test_simd_equal_i() {
        TestAssert([ (I2 .zero, I2 .one), (I2 .one, I2 .one) ] as [(I2 , I2 )], label: "simd_equal-i2i2"  , reference: simd.simd_equal, subject: kvSIMD.simd_equal, validator: ==)
        TestAssert([ (I3 .zero, I3 .one), (I3 .one, I3 .one) ] as [(I3 , I3 )], label: "simd_equal-i3i3"  , reference: simd.simd_equal, subject: kvSIMD.simd_equal, validator: ==)
        TestAssert([ (I4 .zero, I4 .one), (I4 .one, I4 .one) ] as [(I4 , I4 )], label: "simd_equal-i4i4"  , reference: simd.simd_equal, subject: kvSIMD.simd_equal, validator: ==)
        TestAssert([ (I8 .zero, I8 .one), (I8 .one, I8 .one) ] as [(I8 , I8 )], label: "simd_equal-i8i8"  , reference: simd.simd_equal, subject: kvSIMD.simd_equal, validator: ==)
        TestAssert([ (I16.zero, I16.one), (I16.one, I16.one) ] as [(I16, I16)], label: "simd_equal-i16i16", reference: simd.simd_equal, subject: kvSIMD.simd_equal, validator: ==)
    }

    func test_simd_equal_ui() {
        TestAssert([ (UI2 .zero, UI2 .one), (UI2 .one, UI2 .one) ] as [(UI2 , UI2 )], label: "simd_equal-ui2ui2"  , reference: simd.simd_equal, subject: kvSIMD.simd_equal, validator: ==)
        TestAssert([ (UI3 .zero, UI3 .one), (UI3 .one, UI3 .one) ] as [(UI3 , UI3 )], label: "simd_equal-ui3ui3"  , reference: simd.simd_equal, subject: kvSIMD.simd_equal, validator: ==)
        TestAssert([ (UI4 .zero, UI4 .one), (UI4 .one, UI4 .one) ] as [(UI4 , UI4 )], label: "simd_equal-ui4ui4"  , reference: simd.simd_equal, subject: kvSIMD.simd_equal, validator: ==)
        TestAssert([ (UI8 .zero, UI8 .one), (UI8 .one, UI8 .one) ] as [(UI8 , UI8 )], label: "simd_equal-ui8ui8"  , reference: simd.simd_equal, subject: kvSIMD.simd_equal, validator: ==)
        TestAssert([ (UI16.zero, UI16.one), (UI16.one, UI16.one) ] as [(UI16, UI16)], label: "simd_equal-ui16ui16", reference: simd.simd_equal, subject: kvSIMD.simd_equal, validator: ==)
    }

    func test_simd_equal_l() {
        TestAssert([ (L2.zero, L2.one), (L2.one, L2.one) ] as [(L2, L2)], label: "simd_equal-l2l2", reference: simd.simd_equal, subject: kvSIMD.simd_equal, validator: ==)
        TestAssert([ (L3.zero, L3.one), (L3.one, L3.one) ] as [(L3, L3)], label: "simd_equal-l3l3", reference: simd.simd_equal, subject: kvSIMD.simd_equal, validator: ==)
        TestAssert([ (L4.zero, L4.one), (L4.one, L4.one) ] as [(L4, L4)], label: "simd_equal-l4l4", reference: simd.simd_equal, subject: kvSIMD.simd_equal, validator: ==)
        TestAssert([ (L8.zero, L8.one), (L8.one, L8.one) ] as [(L8, L8)], label: "simd_equal-l8l8", reference: simd.simd_equal, subject: kvSIMD.simd_equal, validator: ==)
    }

    func test_simd_equal_ul() {
        TestAssert([ (UL2.zero, UL2.one), (UL2.one, UL2.one) ] as [(UL2, UL2)], label: "simd_equal-ul2ul2", reference: simd.simd_equal, subject: kvSIMD.simd_equal, validator: ==)
        TestAssert([ (UL3.zero, UL3.one), (UL3.one, UL3.one) ] as [(UL3, UL3)], label: "simd_equal-ul3ul3", reference: simd.simd_equal, subject: kvSIMD.simd_equal, validator: ==)
        TestAssert([ (UL4.zero, UL4.one), (UL4.one, UL4.one) ] as [(UL4, UL4)], label: "simd_equal-ul4ul4", reference: simd.simd_equal, subject: kvSIMD.simd_equal, validator: ==)
        TestAssert([ (UL8.zero, UL8.one), (UL8.one, UL8.one) ] as [(UL8, UL8)], label: "simd_equal-ul8ul8", reference: simd.simd_equal, subject: kvSIMD.simd_equal, validator: ==)
    }

    func test_simd_equal_f() {
        TestAssert([ (F2 .zero, F2 .one), (F2 .one, F2 .one) ] as [(F2 , F2 )], label: "simd_equal-f2f2"  , reference: simd.simd_equal, subject: kvSIMD.simd_equal, validator: ==)
        TestAssert([ (F3 .zero, F3 .one), (F3 .one, F3 .one) ] as [(F3 , F3 )], label: "simd_equal-f3f3"  , reference: simd.simd_equal, subject: kvSIMD.simd_equal, validator: ==)
        TestAssert([ (F4 .zero, F4 .one), (F4 .one, F4 .one) ] as [(F4 , F4 )], label: "simd_equal-f4f4"  , reference: simd.simd_equal, subject: kvSIMD.simd_equal, validator: ==)
        TestAssert([ (F8 .zero, F8 .one), (F8 .one, F8 .one) ] as [(F8 , F8 )], label: "simd_equal-f8f8"  , reference: simd.simd_equal, subject: kvSIMD.simd_equal, validator: ==)
        TestAssert([ (F16.zero, F16.one), (F16.one, F16.one) ] as [(F16, F16)], label: "simd_equal-f16f16", reference: simd.simd_equal, subject: kvSIMD.simd_equal, validator: ==)
    }

    func test_simd_equal_d() {
        TestAssert([ (D2.zero, D2.one), (D2.one, D2.one) ] as [(D2, D2)], label: "simd_equal-d2d2", reference: simd.simd_equal, subject: kvSIMD.simd_equal, validator: ==)
        TestAssert([ (D3.zero, D3.one), (D3.one, D3.one) ] as [(D3, D3)], label: "simd_equal-d3d3", reference: simd.simd_equal, subject: kvSIMD.simd_equal, validator: ==)
        TestAssert([ (D4.zero, D4.one), (D4.one, D4.one) ] as [(D4, D4)], label: "simd_equal-d4d4", reference: simd.simd_equal, subject: kvSIMD.simd_equal, validator: ==)
        TestAssert([ (D8.zero, D8.one), (D8.one, D8.one) ] as [(D8, D8)], label: "simd_equal-d8d8", reference: simd.simd_equal, subject: kvSIMD.simd_equal, validator: ==)
    }

    func test_simd_equal_NxN() {

        func Assert<C, M1, M2>(_ cols1: C, _ cols2: C, _ fabric1: (C) -> M1, _ fabric2: (C) -> M2, _ block1: (M1, M1) -> simd_bool, _ block2: (M2, M2) -> simd_bool) {
            let m1 = fabric1(cols1), m2 = fabric2(cols1)

            assertEqual(block1(m1, m1), block2(m2, m2), ==)
            assertEqual(block1(m1, fabric1(cols2)), block2(m2, fabric2(cols2)), ==)
        }

        Assert(Cols2x2f, F2x2().columns, F2x2.init(columns:), simd.float2x2.init(columns:), kvSIMD.simd_equal(_:_:) as (F2x2, F2x2) -> simd_bool, simd.simd_equal(_:_:) as (simd.float2x2, simd.float2x2) -> simd_bool)
        Assert(Cols2x3f, F2x3().columns, F2x3.init(columns:), simd.float2x3.init(columns:), kvSIMD.simd_equal(_:_:) as (F2x3, F2x3) -> simd_bool, simd.simd_equal(_:_:) as (simd.float2x3, simd.float2x3) -> simd_bool)
        Assert(Cols2x4f, F2x4().columns, F2x4.init(columns:), simd.float2x4.init(columns:), kvSIMD.simd_equal(_:_:) as (F2x4, F2x4) -> simd_bool, simd.simd_equal(_:_:) as (simd.float2x4, simd.float2x4) -> simd_bool)
        Assert(Cols3x2f, F3x2().columns, F3x2.init(columns:), simd.float3x2.init(columns:), kvSIMD.simd_equal(_:_:) as (F3x2, F3x2) -> simd_bool, simd.simd_equal(_:_:) as (simd.float3x2, simd.float3x2) -> simd_bool)
        Assert(Cols3x3f, F3x3().columns, F3x3.init(columns:), simd.float3x3.init(columns:), kvSIMD.simd_equal(_:_:) as (F3x3, F3x3) -> simd_bool, simd.simd_equal(_:_:) as (simd.float3x3, simd.float3x3) -> simd_bool)
        Assert(Cols3x4f, F3x4().columns, F3x4.init(columns:), simd.float3x4.init(columns:), kvSIMD.simd_equal(_:_:) as (F3x4, F3x4) -> simd_bool, simd.simd_equal(_:_:) as (simd.float3x4, simd.float3x4) -> simd_bool)
        Assert(Cols4x2f, F4x2().columns, F4x2.init(columns:), simd.float4x2.init(columns:), kvSIMD.simd_equal(_:_:) as (F4x2, F4x2) -> simd_bool, simd.simd_equal(_:_:) as (simd.float4x2, simd.float4x2) -> simd_bool)
        Assert(Cols4x3f, F4x3().columns, F4x3.init(columns:), simd.float4x3.init(columns:), kvSIMD.simd_equal(_:_:) as (F4x3, F4x3) -> simd_bool, simd.simd_equal(_:_:) as (simd.float4x3, simd.float4x3) -> simd_bool)
        Assert(Cols4x4f, F4x4().columns, F4x4.init(columns:), simd.float4x4.init(columns:), kvSIMD.simd_equal(_:_:) as (F4x4, F4x4) -> simd_bool, simd.simd_equal(_:_:) as (simd.float4x4, simd.float4x4) -> simd_bool)

        Assert(Cols2x2d, D2x2().columns, D2x2.init(columns:), simd.double2x2.init(columns:), kvSIMD.simd_equal(_:_:) as (D2x2, D2x2) -> simd_bool, simd.simd_equal(_:_:) as (simd.double2x2, simd.double2x2) -> simd_bool)
        Assert(Cols2x3d, D2x3().columns, D2x3.init(columns:), simd.double2x3.init(columns:), kvSIMD.simd_equal(_:_:) as (D2x3, D2x3) -> simd_bool, simd.simd_equal(_:_:) as (simd.double2x3, simd.double2x3) -> simd_bool)
        Assert(Cols2x4d, D2x4().columns, D2x4.init(columns:), simd.double2x4.init(columns:), kvSIMD.simd_equal(_:_:) as (D2x4, D2x4) -> simd_bool, simd.simd_equal(_:_:) as (simd.double2x4, simd.double2x4) -> simd_bool)
        Assert(Cols3x2d, D3x2().columns, D3x2.init(columns:), simd.double3x2.init(columns:), kvSIMD.simd_equal(_:_:) as (D3x2, D3x2) -> simd_bool, simd.simd_equal(_:_:) as (simd.double3x2, simd.double3x2) -> simd_bool)
        Assert(Cols3x3d, D3x3().columns, D3x3.init(columns:), simd.double3x3.init(columns:), kvSIMD.simd_equal(_:_:) as (D3x3, D3x3) -> simd_bool, simd.simd_equal(_:_:) as (simd.double3x3, simd.double3x3) -> simd_bool)
        Assert(Cols3x4d, D3x4().columns, D3x4.init(columns:), simd.double3x4.init(columns:), kvSIMD.simd_equal(_:_:) as (D3x4, D3x4) -> simd_bool, simd.simd_equal(_:_:) as (simd.double3x4, simd.double3x4) -> simd_bool)
        Assert(Cols4x2d, D4x2().columns, D4x2.init(columns:), simd.double4x2.init(columns:), kvSIMD.simd_equal(_:_:) as (D4x2, D4x2) -> simd_bool, simd.simd_equal(_:_:) as (simd.double4x2, simd.double4x2) -> simd_bool)
        Assert(Cols4x3d, D4x3().columns, D4x3.init(columns:), simd.double4x3.init(columns:), kvSIMD.simd_equal(_:_:) as (D4x3, D4x3) -> simd_bool, simd.simd_equal(_:_:) as (simd.double4x3, simd.double4x3) -> simd_bool)
        Assert(Cols4x4d, D4x4().columns, D4x4.init(columns:), simd.double4x4.init(columns:), kvSIMD.simd_equal(_:_:) as (D4x4, D4x4) -> simd_bool, simd.simd_equal(_:_:) as (simd.double4x4, simd.double4x4) -> simd_bool)
    }



    // MARK: test_simd_fast_distance()

    func test_simd_fast_distance() {
        TestAssert(RandomF2s( ), RandomF2s( ), label: "simd_fast_distance-f2f2"  , reference: simd.simd_fast_distance, subject: kvSIMD.simd_fast_distance, validator: IsEqual(_:_:))
        TestAssert(RandomF3s( ), RandomF3s( ), label: "simd_fast_distance-f3f3"  , reference: simd.simd_fast_distance, subject: kvSIMD.simd_fast_distance, validator: IsEqual(_:_:))
        TestAssert(RandomF4s( ), RandomF4s( ), label: "simd_fast_distance-f4f4"  , reference: simd.simd_fast_distance, subject: kvSIMD.simd_fast_distance, validator: IsEqual(_:_:))
        TestAssert(RandomF8s( ), RandomF8s( ), label: "simd_fast_distance-f8f8"  , reference: simd.simd_fast_distance, subject: kvSIMD.simd_fast_distance, validator: IsEqual(_:_:))
        TestAssert(RandomF16s(), RandomF16s(), label: "simd_fast_distance-f16f16", reference: simd.simd_fast_distance, subject: kvSIMD.simd_fast_distance, validator: IsEqual(_:_:))

        TestAssert(RandomD2s( ), RandomD2s( ), label: "simd_fast_distance-d2d2"  , reference: simd.simd_fast_distance, subject: kvSIMD.simd_fast_distance, validator: IsEqual(_:_:))
        TestAssert(RandomD3s( ), RandomD3s( ), label: "simd_fast_distance-d3d3"  , reference: simd.simd_fast_distance, subject: kvSIMD.simd_fast_distance, validator: IsEqual(_:_:))
        TestAssert(RandomD4s( ), RandomD4s( ), label: "simd_fast_distance-d4d4"  , reference: simd.simd_fast_distance, subject: kvSIMD.simd_fast_distance, validator: IsEqual(_:_:))
        TestAssert(RandomD8s( ), RandomD8s( ), label: "simd_fast_distance-d8d8"  , reference: simd.simd_fast_distance, subject: kvSIMD.simd_fast_distance, validator: IsEqual(_:_:))
    }



    // MARK: test_simd_fast_length()

    func test_simd_fast_length() {
        TestAssert(RandomF2s( ), label: "simd_fast_length-f2" , reference: simd.simd_fast_length, subject: kvSIMD.simd_fast_length, validator: IsEqual(_:_:))
        TestAssert(RandomF3s( ), label: "simd_fast_length-f3" , reference: simd.simd_fast_length, subject: kvSIMD.simd_fast_length, validator: IsEqual(_:_:))
        TestAssert(RandomF4s( ), label: "simd_fast_length-f4" , reference: simd.simd_fast_length, subject: kvSIMD.simd_fast_length, validator: IsEqual(_:_:))
        TestAssert(RandomF8s( ), label: "simd_fast_length-f8" , reference: simd.simd_fast_length, subject: kvSIMD.simd_fast_length, validator: IsEqual(_:_:))
        TestAssert(RandomF16s(), label: "simd_fast_length-f16", reference: simd.simd_fast_length, subject: kvSIMD.simd_fast_length, validator: IsEqual(_:_:))

        TestAssert(RandomD2s( ), label: "simd_fast_length-d2" , reference: simd.simd_fast_length, subject: kvSIMD.simd_fast_length, validator: IsEqual(_:_:))
        TestAssert(RandomD3s( ), label: "simd_fast_length-d3" , reference: simd.simd_fast_length, subject: kvSIMD.simd_fast_length, validator: IsEqual(_:_:))
        TestAssert(RandomD4s( ), label: "simd_fast_length-d4" , reference: simd.simd_fast_length, subject: kvSIMD.simd_fast_length, validator: IsEqual(_:_:))
        TestAssert(RandomD8s( ), label: "simd_fast_length-d8" , reference: simd.simd_fast_length, subject: kvSIMD.simd_fast_length, validator: IsEqual(_:_:))
    }



    // MARK: test_simd_fast_normalize()

    func test_simd_fast_normalize() {
        TestAssert(RandomF2s( ), label: "simd_fast_normalize-f2" , reference: simd.simd_fast_normalize, subject: kvSIMD.simd_fast_normalize, validator: { IsEqual($0, $1, eps: .near(128.0)) })
        TestAssert(RandomF3s( ), label: "simd_fast_normalize-f3" , reference: simd.simd_fast_normalize, subject: kvSIMD.simd_fast_normalize, validator: { IsEqual($0, $1, eps: .near(128.0)) })
        TestAssert(RandomF4s( ), label: "simd_fast_normalize-f4" , reference: simd.simd_fast_normalize, subject: kvSIMD.simd_fast_normalize, validator: { IsEqual($0, $1, eps: .near(128.0)) })
        TestAssert(RandomF8s( ), label: "simd_fast_normalize-f8" , reference: simd.simd_fast_normalize, subject: kvSIMD.simd_fast_normalize, validator: { IsEqual($0, $1, eps: .near(128.0)) })
        TestAssert(RandomF16s(), label: "simd_fast_normalize-f16", reference: simd.simd_fast_normalize, subject: kvSIMD.simd_fast_normalize, validator: { IsEqual($0, $1, eps: .near(128.0)) })

        TestAssert(RandomD2s( ), label: "simd_fast_normalize-d2" , reference: simd.simd_fast_normalize, subject: kvSIMD.simd_fast_normalize, validator: IsEqual(_:_:))
        TestAssert(RandomD3s( ), label: "simd_fast_normalize-d3" , reference: simd.simd_fast_normalize, subject: kvSIMD.simd_fast_normalize, validator: IsEqual(_:_:))
        TestAssert(RandomD4s( ), label: "simd_fast_normalize-d4" , reference: simd.simd_fast_normalize, subject: kvSIMD.simd_fast_normalize, validator: IsEqual(_:_:))
        TestAssert(RandomD8s( ), label: "simd_fast_normalize-d8" , reference: simd.simd_fast_normalize, subject: kvSIMD.simd_fast_normalize, validator: IsEqual(_:_:))
    }



    // MARK: test_simd_fast_project()

    func test_simd_fast_project() {
        TestAssert(RandomF2s( ), RandomF2s( ), label: "simd_fast_project-f2f2"  , reference: simd.simd_fast_project, subject: kvSIMD.simd_fast_project, validator: { IsEqual($0, $1, eps: .near(1024.0)) })
        TestAssert(RandomF3s( ), RandomF3s( ), label: "simd_fast_project-f3f3"  , reference: simd.simd_fast_project, subject: kvSIMD.simd_fast_project, validator: { IsEqual($0, $1, eps: .near(1024.0)) })
        TestAssert(RandomF4s( ), RandomF4s( ), label: "simd_fast_project-f4f4"  , reference: simd.simd_fast_project, subject: kvSIMD.simd_fast_project, validator: { IsEqual($0, $1, eps: .near(1024.0)) })
        TestAssert(RandomF8s( ), RandomF8s( ), label: "simd_fast_project-f8f8"  , reference: simd.simd_fast_project, subject: kvSIMD.simd_fast_project, validator: { IsEqual($0, $1, eps: .near(1024.0)) })
        TestAssert(RandomF16s(), RandomF16s(), label: "simd_fast_project-f16f16", reference: simd.simd_fast_project, subject: kvSIMD.simd_fast_project, validator: { IsEqual($0, $1, eps: .near(1024.0)) })

        TestAssert(RandomD2s( ), RandomD2s( ), label: "simd_fast_project-d2d2"  , reference: simd.simd_fast_project, subject: kvSIMD.simd_fast_project, validator: IsEqual(_:_:))
        TestAssert(RandomD3s( ), RandomD3s( ), label: "simd_fast_project-d3d3"  , reference: simd.simd_fast_project, subject: kvSIMD.simd_fast_project, validator: IsEqual(_:_:))
        TestAssert(RandomD4s( ), RandomD4s( ), label: "simd_fast_project-d4d4"  , reference: simd.simd_fast_project, subject: kvSIMD.simd_fast_project, validator: IsEqual(_:_:))
        TestAssert(RandomD8s( ), RandomD8s( ), label: "simd_fast_project-d8d8"  , reference: simd.simd_fast_project, subject: kvSIMD.simd_fast_project, validator: IsEqual(_:_:))
    }



    // MARK: test_simd_fast_recip()

    func test_simd_fast_recip() {
        TestAssert(RandomF1s( in: .cosh), label: "simd_fast_recip-f1" , reference: simd.simd_fast_recip, subject: kvSIMD.simd_fast_recip, validator: { IsEqual($0, $1, eps: .near(100.0)) })
        TestAssert(RandomF2s( in: .cosh), label: "simd_fast_recip-f2" , reference: simd.simd_fast_recip, subject: kvSIMD.simd_fast_recip, validator: { IsEqual($0, $1, eps: .near(100.0)) })
        TestAssert(RandomF3s( in: .cosh), label: "simd_fast_recip-f3" , reference: simd.simd_fast_recip, subject: kvSIMD.simd_fast_recip, validator: { IsEqual($0, $1, eps: .near(100.0)) })
        TestAssert(RandomF4s( in: .cosh), label: "simd_fast_recip-f4" , reference: simd.simd_fast_recip, subject: kvSIMD.simd_fast_recip, validator: { IsEqual($0, $1, eps: .near(100.0)) })
        TestAssert(RandomF8s( in: .cosh), label: "simd_fast_recip-f8" , reference: simd.simd_fast_recip, subject: kvSIMD.simd_fast_recip, validator: { IsEqual($0, $1, eps: .near(100.0)) })
        TestAssert(RandomF16s(in: .cosh), label: "simd_fast_recip-f16", reference: simd.simd_fast_recip, subject: kvSIMD.simd_fast_recip, validator: { IsEqual($0, $1, eps: .near(100.0)) })

        TestAssert(RandomD1s( in: .cosh), label: "simd_fast_recip-d1" , reference: simd.simd_fast_recip, subject: kvSIMD.simd_fast_recip, validator: { IsEqual($0, $1, eps: .near(10.0)) })
        TestAssert(RandomD2s( in: .cosh), label: "simd_fast_recip-d2" , reference: simd.simd_fast_recip, subject: kvSIMD.simd_fast_recip, validator: { IsEqual($0, $1, eps: .near(10.0)) })
        TestAssert(RandomD3s( in: .cosh), label: "simd_fast_recip-d3" , reference: simd.simd_fast_recip, subject: kvSIMD.simd_fast_recip, validator: { IsEqual($0, $1, eps: .near(10.0)) })
        TestAssert(RandomD4s( in: .cosh), label: "simd_fast_recip-d4" , reference: simd.simd_fast_recip, subject: kvSIMD.simd_fast_recip, validator: { IsEqual($0, $1, eps: .near(10.0)) })
        TestAssert(RandomD8s( in: .cosh), label: "simd_fast_recip-d8" , reference: simd.simd_fast_recip, subject: kvSIMD.simd_fast_recip, validator: { IsEqual($0, $1, eps: .near(10.0)) })
    }



    // MARK: test_simd_fast_rsqrt()

    func test_simd_fast_rsqrt() {
        TestAssert(RandomF1s( in: .cosh), label: "simd_fast_rsqrt-f1" , reference: simd.simd_fast_rsqrt, subject: kvSIMD.simd_fast_rsqrt, validator: { IsEqual($0, $1, eps: .near(100.0)) })
        TestAssert(RandomF2s( in: .cosh), label: "simd_fast_rsqrt-f2" , reference: simd.simd_fast_rsqrt, subject: kvSIMD.simd_fast_rsqrt, validator: { IsEqual($0, $1, eps: .near(100.0)) })
        TestAssert(RandomF3s( in: .cosh), label: "simd_fast_rsqrt-f3" , reference: simd.simd_fast_rsqrt, subject: kvSIMD.simd_fast_rsqrt, validator: { IsEqual($0, $1, eps: .near(100.0)) })
        TestAssert(RandomF4s( in: .cosh), label: "simd_fast_rsqrt-f4" , reference: simd.simd_fast_rsqrt, subject: kvSIMD.simd_fast_rsqrt, validator: { IsEqual($0, $1, eps: .near(100.0)) })
        TestAssert(RandomF8s( in: .cosh), label: "simd_fast_rsqrt-f8" , reference: simd.simd_fast_rsqrt, subject: kvSIMD.simd_fast_rsqrt, validator: { IsEqual($0, $1, eps: .near(100.0)) })
        TestAssert(RandomF16s(in: .cosh), label: "simd_fast_rsqrt-f16", reference: simd.simd_fast_rsqrt, subject: kvSIMD.simd_fast_rsqrt, validator: { IsEqual($0, $1, eps: .near(100.0)) })

        TestAssert(RandomD1s( in: .cosh), label: "simd_fast_rsqrt-d1" , reference: simd.simd_fast_rsqrt, subject: kvSIMD.simd_fast_rsqrt, validator: { IsEqual($0, $1, eps: .near(10.0)) })
        TestAssert(RandomD2s( in: .cosh), label: "simd_fast_rsqrt-d2" , reference: simd.simd_fast_rsqrt, subject: kvSIMD.simd_fast_rsqrt, validator: { IsEqual($0, $1, eps: .near(10.0)) })
        TestAssert(RandomD3s( in: .cosh), label: "simd_fast_rsqrt-d3" , reference: simd.simd_fast_rsqrt, subject: kvSIMD.simd_fast_rsqrt, validator: { IsEqual($0, $1, eps: .near(10.0)) })
        TestAssert(RandomD4s( in: .cosh), label: "simd_fast_rsqrt-d4" , reference: simd.simd_fast_rsqrt, subject: kvSIMD.simd_fast_rsqrt, validator: { IsEqual($0, $1, eps: .near(10.0)) })
        TestAssert(RandomD8s( in: .cosh), label: "simd_fast_rsqrt-d8" , reference: simd.simd_fast_rsqrt, subject: kvSIMD.simd_fast_rsqrt, validator: { IsEqual($0, $1, eps: .near(10.0)) })
    }



    // MARK: test_simd_fract()

    func test_simd_fract() {
        TestAssert(RandomF1s( ), label: "simd_fract-f1" , reference: simd.simd_fract, subject: kvSIMD.simd_fract, validator: IsEqual(_:_:))
        TestAssert(RandomF2s( ), label: "simd_fract-f2" , reference: simd.simd_fract, subject: kvSIMD.simd_fract, validator: IsEqual(_:_:))
        TestAssert(RandomF3s( ), label: "simd_fract-f3" , reference: simd.simd_fract, subject: kvSIMD.simd_fract, validator: IsEqual(_:_:))
        TestAssert(RandomF4s( ), label: "simd_fract-f4" , reference: simd.simd_fract, subject: kvSIMD.simd_fract, validator: IsEqual(_:_:))
        TestAssert(RandomF8s( ), label: "simd_fract-f8" , reference: simd.simd_fract, subject: kvSIMD.simd_fract, validator: IsEqual(_:_:))
        TestAssert(RandomF16s(), label: "simd_fract-f16", reference: simd.simd_fract, subject: kvSIMD.simd_fract, validator: IsEqual(_:_:))

        TestAssert(RandomD1s( ), label: "simd_fract-d1" , reference: simd.simd_fract, subject: kvSIMD.simd_fract, validator: IsEqual(_:_:))
        TestAssert(RandomD2s( ), label: "simd_fract-d2" , reference: simd.simd_fract, subject: kvSIMD.simd_fract, validator: IsEqual(_:_:))
        TestAssert(RandomD3s( ), label: "simd_fract-d3" , reference: simd.simd_fract, subject: kvSIMD.simd_fract, validator: IsEqual(_:_:))
        TestAssert(RandomD4s( ), label: "simd_fract-d4" , reference: simd.simd_fract, subject: kvSIMD.simd_fract, validator: IsEqual(_:_:))
        TestAssert(RandomD8s( ), label: "simd_fract-d8" , reference: simd.simd_fract, subject: kvSIMD.simd_fract, validator: IsEqual(_:_:))
    }



    // MARK: test_simd_incircle()

    func test_simd_incircle() {
        TestAssert(RandomF2s(), RandomF2s(), RandomF2s(), RandomF2s(), label: "simd_incircle-f2f2f2f2", reference: simd.simd_incircle, subject: kvSIMD.simd_incircle, validator: IsEqualSign)
        TestAssert(RandomD2s(), RandomD2s(), RandomD2s(), RandomD2s(), label: "simd_incircle-d2d2d2d2", reference: simd.simd_incircle, subject: kvSIMD.simd_incircle, validator: IsEqualSign)
    }



    // MARK: test_simd_insphere()

    func test_simd_insphere() {
        TestAssert(RandomF3s(), RandomF3s(), RandomF3s(), RandomF3s(), RandomF3s(), label: "simd_insphere-f3f3f3f3f3", reference: simd.simd_insphere, subject: kvSIMD.simd_insphere, validator: IsEqualSign)
        TestAssert(RandomD3s(), RandomD3s(), RandomD3s(), RandomD3s(), RandomD3s(), label: "simd_insphere-d3d3d3d3d3", reference: simd.simd_insphere, subject: kvSIMD.simd_insphere, validator: IsEqualSign)
    }



    // MARK: test_simd_inverse()

    func test_simd_inverse() {
        let Cols2x2f = (SIMD2<Float>(2, 1), SIMD2<Float>(1, 3))
        let Cols3x3f = (SIMD3<Float>(2, 1, 1), SIMD3<Float>(1, 3, 1), SIMD3<Float>(1, 1, 4))
        let Cols4x4f = (SIMD4<Float>(2, 1, 1, 1), SIMD4<Float>(1, 3, 1, 1), SIMD4<Float>(1, 1, 4, 1), SIMD4<Float>(1, 1, 1, 5))

        assertEqual(kvSIMD.simd_inverse(F2x2(columns: Cols2x2f)), simd.simd_inverse(simd.float2x2(columns: Cols2x2f)), IsEqual(_:_:))
        assertEqual(kvSIMD.simd_inverse(F3x3(columns: Cols3x3f)), simd.simd_inverse(simd.float3x3(columns: Cols3x3f)), IsEqual(_:_:))
        assertEqual(kvSIMD.simd_inverse(F4x4(columns: Cols4x4f)), simd.simd_inverse(simd.float4x4(columns: Cols4x4f)), IsEqual(_:_:))

        let Cols2x2d = (SIMD2<Double>(2, 1), SIMD2<Double>(1, 3))
        let Cols3x3d = (SIMD3<Double>(2, 1, 1), SIMD3<Double>(1, 3, 1), SIMD3<Double>(1, 1, 4))
        let Cols4x4d = (SIMD4<Double>(2, 1, 1, 1), SIMD4<Double>(1, 3, 1, 1), SIMD4<Double>(1, 1, 4, 1), SIMD4<Double>(1, 1, 1, 5))

        assertEqual(kvSIMD.simd_inverse(D2x2(columns: Cols2x2d)), simd.simd_inverse(simd.double2x2(columns: Cols2x2d)), IsEqual(_:_:))
        assertEqual(kvSIMD.simd_inverse(D3x3(columns: Cols3x3d)), simd.simd_inverse(simd.double3x3(columns: Cols3x3d)), IsEqual(_:_:))
        assertEqual(kvSIMD.simd_inverse(D4x4(columns: Cols4x4d)), simd.simd_inverse(simd.double4x4(columns: Cols4x4d)), IsEqual(_:_:))
    }



    // MARK: test_simd_length_squared()

    func test_simd_length_squared() {
        TestAssert(RandomF2s( ), label: "simd_length_squared-f2" , reference: simd.simd_length_squared, subject: kvSIMD.simd_length_squared, validator: IsEqual(_:_:))
        TestAssert(RandomF3s( ), label: "simd_length_squared-f3" , reference: simd.simd_length_squared, subject: kvSIMD.simd_length_squared, validator: IsEqual(_:_:))
        TestAssert(RandomF4s( ), label: "simd_length_squared-f4" , reference: simd.simd_length_squared, subject: kvSIMD.simd_length_squared, validator: IsEqual(_:_:))
        TestAssert(RandomF8s( ), label: "simd_length_squared-f8" , reference: simd.simd_length_squared, subject: kvSIMD.simd_length_squared, validator: IsEqual(_:_:))
        TestAssert(RandomF16s(), label: "simd_length_squared-f16", reference: simd.simd_length_squared, subject: kvSIMD.simd_length_squared, validator: IsEqual(_:_:))

        TestAssert(RandomD2s( ), label: "simd_length_squared-d2" , reference: simd.simd_length_squared, subject: kvSIMD.simd_length_squared, validator: IsEqual(_:_:))
        TestAssert(RandomD3s( ), label: "simd_length_squared-d3" , reference: simd.simd_length_squared, subject: kvSIMD.simd_length_squared, validator: IsEqual(_:_:))
        TestAssert(RandomD4s( ), label: "simd_length_squared-d4" , reference: simd.simd_length_squared, subject: kvSIMD.simd_length_squared, validator: IsEqual(_:_:))
        TestAssert(RandomD8s( ), label: "simd_length_squared-d8" , reference: simd.simd_length_squared, subject: kvSIMD.simd_length_squared, validator: IsEqual(_:_:))
    }



    // MARK: test_simd_linear_combination()

    func test_simd_linear_combination() {

        func Assert<S, C, M1, M2>(_ a: S, _ b: S, _ cn: Int, _ cols: (Int) -> C, _ fabric1: (C) -> M1, _ fabric2: (C) -> M2, _ block1: (S, M1, S, M1) -> M1, _ block2: (S, M2, S, M2) -> M2, _ validator: (M1, M2) -> Bool) {
            let cols1 = cols(cn), cols2 = cols(cn)
            assertEqual(block1(a, fabric1(cols1), b, fabric1(cols2)), block2(a, fabric2(cols1), b, fabric2(cols2)), validator)
        }

        (0..<10).forEach { _ in
            Assert(0.142, 3.14, 2, RandomNxF2(_:), F2x2.init(_:), simd.float2x2.init(_:), kvSIMD.simd_linear_combination(_:_:_:_:) as (Float, F2x2, Float, F2x2) -> F2x2, simd.simd_linear_combination(_:_:_:_:), IsEqual(_:_:))
            Assert(0.142, 3.14, 3, RandomNxF2(_:), F3x2.init(_:), simd.float3x2.init(_:), kvSIMD.simd_linear_combination(_:_:_:_:) as (Float, F3x2, Float, F3x2) -> F3x2, simd.simd_linear_combination(_:_:_:_:), IsEqual(_:_:))
            Assert(0.142, 3.14, 4, RandomNxF2(_:), F4x2.init(_:), simd.float4x2.init(_:), kvSIMD.simd_linear_combination(_:_:_:_:) as (Float, F4x2, Float, F4x2) -> F4x2, simd.simd_linear_combination(_:_:_:_:), IsEqual(_:_:))
            Assert(0.142, 3.14, 2, RandomNxF3(_:), F2x3.init(_:), simd.float2x3.init(_:), kvSIMD.simd_linear_combination(_:_:_:_:) as (Float, F2x3, Float, F2x3) -> F2x3, simd.simd_linear_combination(_:_:_:_:), IsEqual(_:_:))
            Assert(0.142, 3.14, 3, RandomNxF3(_:), F3x3.init(_:), simd.float3x3.init(_:), kvSIMD.simd_linear_combination(_:_:_:_:) as (Float, F3x3, Float, F3x3) -> F3x3, simd.simd_linear_combination(_:_:_:_:), IsEqual(_:_:))
            Assert(0.142, 3.14, 4, RandomNxF3(_:), F4x3.init(_:), simd.float4x3.init(_:), kvSIMD.simd_linear_combination(_:_:_:_:) as (Float, F4x3, Float, F4x3) -> F4x3, simd.simd_linear_combination(_:_:_:_:), IsEqual(_:_:))
            Assert(0.142, 3.14, 2, RandomNxF4(_:), F2x4.init(_:), simd.float2x4.init(_:), kvSIMD.simd_linear_combination(_:_:_:_:) as (Float, F2x4, Float, F2x4) -> F2x4, simd.simd_linear_combination(_:_:_:_:), IsEqual(_:_:))
            Assert(0.142, 3.14, 3, RandomNxF4(_:), F3x4.init(_:), simd.float3x4.init(_:), kvSIMD.simd_linear_combination(_:_:_:_:) as (Float, F3x4, Float, F3x4) -> F3x4, simd.simd_linear_combination(_:_:_:_:), IsEqual(_:_:))
            Assert(0.142, 3.14, 4, RandomNxF4(_:), F4x4.init(_:), simd.float4x4.init(_:), kvSIMD.simd_linear_combination(_:_:_:_:) as (Float, F4x4, Float, F4x4) -> F4x4, simd.simd_linear_combination(_:_:_:_:), IsEqual(_:_:))

            Assert(0.142, 3.14, 2, RandomNxD2(_:), D2x2.init(_:), simd.double2x2.init(_:), kvSIMD.simd_linear_combination(_:_:_:_:) as (Double, D2x2, Double, D2x2) -> D2x2, simd.simd_linear_combination(_:_:_:_:), IsEqual(_:_:))
            Assert(0.142, 3.14, 3, RandomNxD2(_:), D3x2.init(_:), simd.double3x2.init(_:), kvSIMD.simd_linear_combination(_:_:_:_:) as (Double, D3x2, Double, D3x2) -> D3x2, simd.simd_linear_combination(_:_:_:_:), IsEqual(_:_:))
            Assert(0.142, 3.14, 4, RandomNxD2(_:), D4x2.init(_:), simd.double4x2.init(_:), kvSIMD.simd_linear_combination(_:_:_:_:) as (Double, D4x2, Double, D4x2) -> D4x2, simd.simd_linear_combination(_:_:_:_:), IsEqual(_:_:))
            Assert(0.142, 3.14, 2, RandomNxD3(_:), D2x3.init(_:), simd.double2x3.init(_:), kvSIMD.simd_linear_combination(_:_:_:_:) as (Double, D2x3, Double, D2x3) -> D2x3, simd.simd_linear_combination(_:_:_:_:), IsEqual(_:_:))
            Assert(0.142, 3.14, 3, RandomNxD3(_:), D3x3.init(_:), simd.double3x3.init(_:), kvSIMD.simd_linear_combination(_:_:_:_:) as (Double, D3x3, Double, D3x3) -> D3x3, simd.simd_linear_combination(_:_:_:_:), IsEqual(_:_:))
            Assert(0.142, 3.14, 4, RandomNxD3(_:), D4x3.init(_:), simd.double4x3.init(_:), kvSIMD.simd_linear_combination(_:_:_:_:) as (Double, D4x3, Double, D4x3) -> D4x3, simd.simd_linear_combination(_:_:_:_:), IsEqual(_:_:))
            Assert(0.142, 3.14, 2, RandomNxD4(_:), D2x4.init(_:), simd.double2x4.init(_:), kvSIMD.simd_linear_combination(_:_:_:_:) as (Double, D2x4, Double, D2x4) -> D2x4, simd.simd_linear_combination(_:_:_:_:), IsEqual(_:_:))
            Assert(0.142, 3.14, 3, RandomNxD4(_:), D3x4.init(_:), simd.double3x4.init(_:), kvSIMD.simd_linear_combination(_:_:_:_:) as (Double, D3x4, Double, D3x4) -> D3x4, simd.simd_linear_combination(_:_:_:_:), IsEqual(_:_:))
            Assert(0.142, 3.14, 4, RandomNxD4(_:), D4x4.init(_:), simd.double4x4.init(_:), kvSIMD.simd_linear_combination(_:_:_:_:) as (Double, D4x4, Double, D4x4) -> D4x4, simd.simd_linear_combination(_:_:_:_:), IsEqual(_:_:))
        }
    }



    // MARK: test_simd_max_*()

    func test_simd_max_c() {
        TestAssert(RandomC2s( ), RandomC2s( ), label: "simd_max-c2c2"  , reference: simd.simd_max, subject: kvSIMD.simd_max, validator: ==)
        TestAssert(RandomC3s( ), RandomC3s( ), label: "simd_max-c3c3"  , reference: simd.simd_max, subject: kvSIMD.simd_max, validator: ==)
        TestAssert(RandomC4s( ), RandomC4s( ), label: "simd_max-c4c4"  , reference: simd.simd_max, subject: kvSIMD.simd_max, validator: ==)
        TestAssert(RandomC8s( ), RandomC8s( ), label: "simd_max-c8c8"  , reference: simd.simd_max, subject: kvSIMD.simd_max, validator: ==)
        TestAssert(RandomC16s(), RandomC16s(), label: "simd_max-c16c16", reference: simd.simd_max, subject: kvSIMD.simd_max, validator: ==)
        TestAssert(RandomC32s(), RandomC32s(), label: "simd_max-c32c32", reference: simd.simd_max, subject: kvSIMD.simd_max, validator: ==)
        TestAssert(RandomC64s(), RandomC64s(), label: "simd_max-c64c64", reference: simd.simd_max, subject: kvSIMD.simd_max, validator: ==)
    }
    
    func test_simd_max_uc() {
        TestAssert(RandomUC2s( ), RandomUC2s( ), label: "simd_max-uc2uc2"  , reference: simd.simd_max, subject: kvSIMD.simd_max, validator: ==)
        TestAssert(RandomUC3s( ), RandomUC3s( ), label: "simd_max-uc3uc3"  , reference: simd.simd_max, subject: kvSIMD.simd_max, validator: ==)
        TestAssert(RandomUC4s( ), RandomUC4s( ), label: "simd_max-uc4uc4"  , reference: simd.simd_max, subject: kvSIMD.simd_max, validator: ==)
        TestAssert(RandomUC8s( ), RandomUC8s( ), label: "simd_max-uc8uc8"  , reference: simd.simd_max, subject: kvSIMD.simd_max, validator: ==)
        TestAssert(RandomUC16s(), RandomUC16s(), label: "simd_max-uc16uc16", reference: simd.simd_max, subject: kvSIMD.simd_max, validator: ==)
        TestAssert(RandomUC32s(), RandomUC32s(), label: "simd_max-uc32uc32", reference: simd.simd_max, subject: kvSIMD.simd_max, validator: ==)
        TestAssert(RandomUC64s(), RandomUC64s(), label: "simd_max-uc64uc64", reference: simd.simd_max, subject: kvSIMD.simd_max, validator: ==)
    }

    func test_simd_max_s() {
        TestAssert(RandomS2s( ), RandomS2s( ), label: "simd_max-s2s2"  , reference: simd.simd_max, subject: kvSIMD.simd_max, validator: ==)
        TestAssert(RandomS3s( ), RandomS3s( ), label: "simd_max-s3s3"  , reference: simd.simd_max, subject: kvSIMD.simd_max, validator: ==)
        TestAssert(RandomS4s( ), RandomS4s( ), label: "simd_max-s4s4"  , reference: simd.simd_max, subject: kvSIMD.simd_max, validator: ==)
        TestAssert(RandomS8s( ), RandomS8s( ), label: "simd_max-s8s8"  , reference: simd.simd_max, subject: kvSIMD.simd_max, validator: ==)
        TestAssert(RandomS16s(), RandomS16s(), label: "simd_max-s16s16", reference: simd.simd_max, subject: kvSIMD.simd_max, validator: ==)
        TestAssert(RandomS32s(), RandomS32s(), label: "simd_max-s32s32", reference: simd.simd_max, subject: kvSIMD.simd_max, validator: ==)
    }

    func test_simd_max_us() {
        TestAssert(RandomUS2s( ), RandomUS2s( ), label: "simd_max-us2us2"  , reference: simd.simd_max, subject: kvSIMD.simd_max, validator: ==)
        TestAssert(RandomUS3s( ), RandomUS3s( ), label: "simd_max-us3us3"  , reference: simd.simd_max, subject: kvSIMD.simd_max, validator: ==)
        TestAssert(RandomUS4s( ), RandomUS4s( ), label: "simd_max-us4us4"  , reference: simd.simd_max, subject: kvSIMD.simd_max, validator: ==)
        TestAssert(RandomUS8s( ), RandomUS8s( ), label: "simd_max-us8us8"  , reference: simd.simd_max, subject: kvSIMD.simd_max, validator: ==)
        TestAssert(RandomUS16s(), RandomUS16s(), label: "simd_max-us16us16", reference: simd.simd_max, subject: kvSIMD.simd_max, validator: ==)
        TestAssert(RandomUS32s(), RandomUS32s(), label: "simd_max-us32us32", reference: simd.simd_max, subject: kvSIMD.simd_max, validator: ==)
    }

    func test_simd_max_i() {
        TestAssert(RandomI2s( ), RandomI2s( ), label: "simd_max-i2i2"  , reference: simd.simd_max, subject: kvSIMD.simd_max, validator: ==)
        TestAssert(RandomI3s( ), RandomI3s( ), label: "simd_max-i3i3"  , reference: simd.simd_max, subject: kvSIMD.simd_max, validator: ==)
        TestAssert(RandomI4s( ), RandomI4s( ), label: "simd_max-i4i4"  , reference: simd.simd_max, subject: kvSIMD.simd_max, validator: ==)
        TestAssert(RandomI8s( ), RandomI8s( ), label: "simd_max-i8i8"  , reference: simd.simd_max, subject: kvSIMD.simd_max, validator: ==)
        TestAssert(RandomI16s(), RandomI16s(), label: "simd_max-i16i16", reference: simd.simd_max, subject: kvSIMD.simd_max, validator: ==)
    }

    func test_simd_max_ui() {
        TestAssert(RandomUI2s( ), RandomUI2s( ), label: "simd_max-ui2ui2"  , reference: simd.simd_max, subject: kvSIMD.simd_max, validator: ==)
        TestAssert(RandomUI3s( ), RandomUI3s( ), label: "simd_max-ui3ui3"  , reference: simd.simd_max, subject: kvSIMD.simd_max, validator: ==)
        TestAssert(RandomUI4s( ), RandomUI4s( ), label: "simd_max-ui4ui4"  , reference: simd.simd_max, subject: kvSIMD.simd_max, validator: ==)
        TestAssert(RandomUI8s( ), RandomUI8s( ), label: "simd_max-ui8ui8"  , reference: simd.simd_max, subject: kvSIMD.simd_max, validator: ==)
        TestAssert(RandomUI16s(), RandomUI16s(), label: "simd_max-ui16ui16", reference: simd.simd_max, subject: kvSIMD.simd_max, validator: ==)
    }

    func test_simd_max_l() {
        TestAssert(RandomL2s(), RandomL2s(), label: "simd_max-l2l2", reference: simd.simd_max, subject: kvSIMD.simd_max, validator: ==)
        TestAssert(RandomL3s(), RandomL3s(), label: "simd_max-l3l3", reference: simd.simd_max, subject: kvSIMD.simd_max, validator: ==)
        TestAssert(RandomL4s(), RandomL4s(), label: "simd_max-l4l4", reference: simd.simd_max, subject: kvSIMD.simd_max, validator: ==)
        TestAssert(RandomL8s(), RandomL8s(), label: "simd_max-l8l8", reference: simd.simd_max, subject: kvSIMD.simd_max, validator: ==)
    }

    func test_simd_max_ul() {
        TestAssert(RandomUL2s(), RandomUL2s(), label: "simd_max-ul2ul2", reference: simd.simd_max, subject: kvSIMD.simd_max, validator: ==)
        TestAssert(RandomUL3s(), RandomUL3s(), label: "simd_max-ul3ul3", reference: simd.simd_max, subject: kvSIMD.simd_max, validator: ==)
        TestAssert(RandomUL4s(), RandomUL4s(), label: "simd_max-ul4ul4", reference: simd.simd_max, subject: kvSIMD.simd_max, validator: ==)
        TestAssert(RandomUL8s(), RandomUL8s(), label: "simd_max-ul8ul8", reference: simd.simd_max, subject: kvSIMD.simd_max, validator: ==)
    }

    func test_simd_max_f() {
        TestAssert(RandomF1s( ), RandomF1s( ), label: "simd_max-f1f1"  , reference: simd.simd_max, subject: kvSIMD.simd_max, validator: ==)
        TestAssert(RandomF2s( ), RandomF2s( ), label: "simd_max-f2f2"  , reference: simd.simd_max, subject: kvSIMD.simd_max, validator: ==)
        TestAssert(RandomF3s( ), RandomF3s( ), label: "simd_max-f3f3"  , reference: simd.simd_max, subject: kvSIMD.simd_max, validator: ==)
        TestAssert(RandomF4s( ), RandomF4s( ), label: "simd_max-f4f4"  , reference: simd.simd_max, subject: kvSIMD.simd_max, validator: ==)
        TestAssert(RandomF8s( ), RandomF8s( ), label: "simd_max-f8f8"  , reference: simd.simd_max, subject: kvSIMD.simd_max, validator: ==)
        TestAssert(RandomF16s(), RandomF16s(), label: "simd_max-f16f16", reference: simd.simd_max, subject: kvSIMD.simd_max, validator: ==)
    }

    func test_simd_max_d() {
        TestAssert(RandomD1s( ), RandomD1s( ), label: "simd_max-d1d1"  , reference: simd.simd_max, subject: kvSIMD.simd_max, validator: ==)
        TestAssert(RandomD2s( ), RandomD2s( ), label: "simd_max-d2d2"  , reference: simd.simd_max, subject: kvSIMD.simd_max, validator: ==)
        TestAssert(RandomD3s( ), RandomD3s( ), label: "simd_max-d3d3"  , reference: simd.simd_max, subject: kvSIMD.simd_max, validator: ==)
        TestAssert(RandomD4s( ), RandomD4s( ), label: "simd_max-d4d4"  , reference: simd.simd_max, subject: kvSIMD.simd_max, validator: ==)
        TestAssert(RandomD8s( ), RandomD8s( ), label: "simd_max-d8d8"  , reference: simd.simd_max, subject: kvSIMD.simd_max, validator: ==)
    }



    // MARK: test_simd_min_*()

    func test_simd_min_c() {
        TestAssert(RandomC2s( ), RandomC2s( ), label: "simd_min-c2c2"  , reference: simd.simd_min, subject: kvSIMD.simd_min, validator: ==)
        TestAssert(RandomC3s( ), RandomC3s( ), label: "simd_min-c3c3"  , reference: simd.simd_min, subject: kvSIMD.simd_min, validator: ==)
        TestAssert(RandomC4s( ), RandomC4s( ), label: "simd_min-c4c4"  , reference: simd.simd_min, subject: kvSIMD.simd_min, validator: ==)
        TestAssert(RandomC8s( ), RandomC8s( ), label: "simd_min-c8c8"  , reference: simd.simd_min, subject: kvSIMD.simd_min, validator: ==)
        TestAssert(RandomC16s(), RandomC16s(), label: "simd_min-c16c16", reference: simd.simd_min, subject: kvSIMD.simd_min, validator: ==)
        TestAssert(RandomC32s(), RandomC32s(), label: "simd_min-c32c32", reference: simd.simd_min, subject: kvSIMD.simd_min, validator: ==)
        TestAssert(RandomC64s(), RandomC64s(), label: "simd_min-c64c64", reference: simd.simd_min, subject: kvSIMD.simd_min, validator: ==)
    }

    func test_simd_min_uc() {
        TestAssert(RandomUC2s( ), RandomUC2s( ), label: "simd_min-uc2uc2"  , reference: simd.simd_min, subject: kvSIMD.simd_min, validator: ==)
        TestAssert(RandomUC3s( ), RandomUC3s( ), label: "simd_min-uc3uc3"  , reference: simd.simd_min, subject: kvSIMD.simd_min, validator: ==)
        TestAssert(RandomUC4s( ), RandomUC4s( ), label: "simd_min-uc4uc4"  , reference: simd.simd_min, subject: kvSIMD.simd_min, validator: ==)
        TestAssert(RandomUC8s( ), RandomUC8s( ), label: "simd_min-uc8uc8"  , reference: simd.simd_min, subject: kvSIMD.simd_min, validator: ==)
        TestAssert(RandomUC16s(), RandomUC16s(), label: "simd_min-uc16uc16", reference: simd.simd_min, subject: kvSIMD.simd_min, validator: ==)
        TestAssert(RandomUC32s(), RandomUC32s(), label: "simd_min-uc32uc32", reference: simd.simd_min, subject: kvSIMD.simd_min, validator: ==)
        TestAssert(RandomUC64s(), RandomUC64s(), label: "simd_min-uc64uc64", reference: simd.simd_min, subject: kvSIMD.simd_min, validator: ==)
    }

    func test_simd_min_s() {
        TestAssert(RandomS2s( ), RandomS2s( ), label: "simd_min-s2s2"  , reference: simd.simd_min, subject: kvSIMD.simd_min, validator: ==)
        TestAssert(RandomS3s( ), RandomS3s( ), label: "simd_min-s3s3"  , reference: simd.simd_min, subject: kvSIMD.simd_min, validator: ==)
        TestAssert(RandomS4s( ), RandomS4s( ), label: "simd_min-s4s4"  , reference: simd.simd_min, subject: kvSIMD.simd_min, validator: ==)
        TestAssert(RandomS8s( ), RandomS8s( ), label: "simd_min-s8s8"  , reference: simd.simd_min, subject: kvSIMD.simd_min, validator: ==)
        TestAssert(RandomS16s(), RandomS16s(), label: "simd_min-s16s16", reference: simd.simd_min, subject: kvSIMD.simd_min, validator: ==)
        TestAssert(RandomS32s(), RandomS32s(), label: "simd_min-s32s32", reference: simd.simd_min, subject: kvSIMD.simd_min, validator: ==)
    }

    func test_simd_min_us() {
        TestAssert(RandomUS2s( ), RandomUS2s( ), label: "simd_min-us2us2"  , reference: simd.simd_min, subject: kvSIMD.simd_min, validator: ==)
        TestAssert(RandomUS3s( ), RandomUS3s( ), label: "simd_min-us3us3"  , reference: simd.simd_min, subject: kvSIMD.simd_min, validator: ==)
        TestAssert(RandomUS4s( ), RandomUS4s( ), label: "simd_min-us4us4"  , reference: simd.simd_min, subject: kvSIMD.simd_min, validator: ==)
        TestAssert(RandomUS8s( ), RandomUS8s( ), label: "simd_min-us8us8"  , reference: simd.simd_min, subject: kvSIMD.simd_min, validator: ==)
        TestAssert(RandomUS16s(), RandomUS16s(), label: "simd_min-us16us16", reference: simd.simd_min, subject: kvSIMD.simd_min, validator: ==)
        TestAssert(RandomUS32s(), RandomUS32s(), label: "simd_min-us32us32", reference: simd.simd_min, subject: kvSIMD.simd_min, validator: ==)
    }

    func test_simd_min_i() {
        TestAssert(RandomI2s( ), RandomI2s( ), label: "simd_min-i2i2"  , reference: simd.simd_min, subject: kvSIMD.simd_min, validator: ==)
        TestAssert(RandomI3s( ), RandomI3s( ), label: "simd_min-i3i3"  , reference: simd.simd_min, subject: kvSIMD.simd_min, validator: ==)
        TestAssert(RandomI4s( ), RandomI4s( ), label: "simd_min-i4i4"  , reference: simd.simd_min, subject: kvSIMD.simd_min, validator: ==)
        TestAssert(RandomI8s( ), RandomI8s( ), label: "simd_min-i8i8"  , reference: simd.simd_min, subject: kvSIMD.simd_min, validator: ==)
        TestAssert(RandomI16s(), RandomI16s(), label: "simd_min-i16i16", reference: simd.simd_min, subject: kvSIMD.simd_min, validator: ==)
    }

    func test_simd_min_ui() {
        TestAssert(RandomUI2s( ), RandomUI2s( ), label: "simd_min-ui2ui2"  , reference: simd.simd_min, subject: kvSIMD.simd_min, validator: ==)
        TestAssert(RandomUI3s( ), RandomUI3s( ), label: "simd_min-ui3ui3"  , reference: simd.simd_min, subject: kvSIMD.simd_min, validator: ==)
        TestAssert(RandomUI4s( ), RandomUI4s( ), label: "simd_min-ui4ui4"  , reference: simd.simd_min, subject: kvSIMD.simd_min, validator: ==)
        TestAssert(RandomUI8s( ), RandomUI8s( ), label: "simd_min-ui8ui8"  , reference: simd.simd_min, subject: kvSIMD.simd_min, validator: ==)
        TestAssert(RandomUI16s(), RandomUI16s(), label: "simd_min-ui16ui16", reference: simd.simd_min, subject: kvSIMD.simd_min, validator: ==)
    }

    func test_simd_min_l() {
        TestAssert(RandomL2s(), RandomL2s(), label: "simd_min-l2l2", reference: simd.simd_min, subject: kvSIMD.simd_min, validator: ==)
        TestAssert(RandomL3s(), RandomL3s(), label: "simd_min-l3l3", reference: simd.simd_min, subject: kvSIMD.simd_min, validator: ==)
        TestAssert(RandomL4s(), RandomL4s(), label: "simd_min-l4l4", reference: simd.simd_min, subject: kvSIMD.simd_min, validator: ==)
        TestAssert(RandomL8s(), RandomL8s(), label: "simd_min-l8l8", reference: simd.simd_min, subject: kvSIMD.simd_min, validator: ==)
    }

    func test_simd_min_ul() {
        TestAssert(RandomUL2s(), RandomUL2s(), label: "simd_min-ul2ul2", reference: simd.simd_min, subject: kvSIMD.simd_min, validator: ==)
        TestAssert(RandomUL3s(), RandomUL3s(), label: "simd_min-ul3ul3", reference: simd.simd_min, subject: kvSIMD.simd_min, validator: ==)
        TestAssert(RandomUL4s(), RandomUL4s(), label: "simd_min-ul4ul4", reference: simd.simd_min, subject: kvSIMD.simd_min, validator: ==)
        TestAssert(RandomUL8s(), RandomUL8s(), label: "simd_min-ul8ul8", reference: simd.simd_min, subject: kvSIMD.simd_min, validator: ==)
    }

    func test_simd_min_f() {
        TestAssert(RandomF1s( ), RandomF1s( ), label: "simd_min-f1f1"  , reference: simd.simd_min, subject: kvSIMD.simd_min, validator: ==)
        TestAssert(RandomF2s( ), RandomF2s( ), label: "simd_min-f2f2"  , reference: simd.simd_min, subject: kvSIMD.simd_min, validator: ==)
        TestAssert(RandomF3s( ), RandomF3s( ), label: "simd_min-f3f3"  , reference: simd.simd_min, subject: kvSIMD.simd_min, validator: ==)
        TestAssert(RandomF4s( ), RandomF4s( ), label: "simd_min-f4f4"  , reference: simd.simd_min, subject: kvSIMD.simd_min, validator: ==)
        TestAssert(RandomF8s( ), RandomF8s( ), label: "simd_min-f8f8"  , reference: simd.simd_min, subject: kvSIMD.simd_min, validator: ==)
        TestAssert(RandomF16s(), RandomF16s(), label: "simd_min-f16f16", reference: simd.simd_min, subject: kvSIMD.simd_min, validator: ==)
    }

    func test_simd_min_d() {
        TestAssert(RandomD1s( ), RandomD1s( ), label: "simd_min-d1d1"  , reference: simd.simd_min, subject: kvSIMD.simd_min, validator: ==)
        TestAssert(RandomD2s( ), RandomD2s( ), label: "simd_min-d2d2"  , reference: simd.simd_min, subject: kvSIMD.simd_min, validator: ==)
        TestAssert(RandomD3s( ), RandomD3s( ), label: "simd_min-d3d3"  , reference: simd.simd_min, subject: kvSIMD.simd_min, validator: ==)
        TestAssert(RandomD4s( ), RandomD4s( ), label: "simd_min-d4d4"  , reference: simd.simd_min, subject: kvSIMD.simd_min, validator: ==)
        TestAssert(RandomD8s( ), RandomD8s( ), label: "simd_min-d8d8"  , reference: simd.simd_min, subject: kvSIMD.simd_min, validator: ==)
    }



    // MARK: test_simd_mix()

    func test_simd_mix() {
        TestAssert(RandomF1s( in: .sin), RandomF1s( in: .sin), RandomF1s( in: .range(-2.0 ... 2.0)), label: "simd_mix-f1f1f1"   , reference: simd.simd_mix, subject: kvSIMD.simd_mix, validator: { IsEqual($0, $1, eps: .near(2.0)) })
        TestAssert(RandomF2s( in: .sin), RandomF2s( in: .sin), RandomF2s( in: .range(-2.0 ... 2.0)), label: "simd_mix-f2f2f2"   , reference: simd.simd_mix, subject: kvSIMD.simd_mix, validator: { IsEqual($0, $1, eps: .near(2.0)) })
        TestAssert(RandomF3s( in: .sin), RandomF3s( in: .sin), RandomF3s( in: .range(-2.0 ... 2.0)), label: "simd_mix-f3f3f3"   , reference: simd.simd_mix, subject: kvSIMD.simd_mix, validator: { IsEqual($0, $1, eps: .near(2.0)) })
        TestAssert(RandomF4s( in: .sin), RandomF4s( in: .sin), RandomF4s( in: .range(-2.0 ... 2.0)), label: "simd_mix-f4f4f4"   , reference: simd.simd_mix, subject: kvSIMD.simd_mix, validator: { IsEqual($0, $1, eps: .near(2.0)) })
        TestAssert(RandomF8s( in: .sin), RandomF8s( in: .sin), RandomF8s( in: .range(-2.0 ... 2.0)), label: "simd_mix-f8f8f8"   , reference: simd.simd_mix, subject: kvSIMD.simd_mix, validator: { IsEqual($0, $1, eps: .near(2.0)) })
        TestAssert(RandomF16s(in: .sin), RandomF16s(in: .sin), RandomF16s(in: .range(-2.0 ... 2.0)), label: "simd_mix-f16f16f16", reference: simd.simd_mix, subject: kvSIMD.simd_mix, validator: { IsEqual($0, $1, eps: .near(2.0)) })

        TestAssert(RandomD1s( in: .sin), RandomD1s( in: .sin), RandomD1s( in: .range(-2.0 ... 2.0)), label: "simd_mix-d1d1d1"   , reference: simd.simd_mix, subject: kvSIMD.simd_mix, validator: { IsEqual($0, $1, eps: .near(2.0)) })
        TestAssert(RandomD2s( in: .sin), RandomD2s( in: .sin), RandomD2s( in: .range(-2.0 ... 2.0)), label: "simd_mix-d2d2d2"   , reference: simd.simd_mix, subject: kvSIMD.simd_mix, validator: { IsEqual($0, $1, eps: .near(2.0)) })
        TestAssert(RandomD3s( in: .sin), RandomD3s( in: .sin), RandomD3s( in: .range(-2.0 ... 2.0)), label: "simd_mix-d3d3d3"   , reference: simd.simd_mix, subject: kvSIMD.simd_mix, validator: { IsEqual($0, $1, eps: .near(2.0)) })
        TestAssert(RandomD4s( in: .sin), RandomD4s( in: .sin), RandomD4s( in: .range(-2.0 ... 2.0)), label: "simd_mix-d4d4d4"   , reference: simd.simd_mix, subject: kvSIMD.simd_mix, validator: { IsEqual($0, $1, eps: .near(2.0)) })
        TestAssert(RandomD8s( in: .sin), RandomD8s( in: .sin), RandomD8s( in: .range(-2.0 ... 2.0)), label: "simd_mix-d8d8d8"   , reference: simd.simd_mix, subject: kvSIMD.simd_mix, validator: { IsEqual($0, $1, eps: .near(2.0)) })
    }



    // MARK: test_simd_mul_*()

    // Scalar by matrix.
    func test_simd_mul_sm() {

        func Assert<S, C, M1, M2>(_ scale: S, _ cols: C, _ fabric1: (C) -> M1, _ fabric2: (C) -> M2, _ block1: (S, M1) -> M1, _ block2: (S, M2) -> M2, _ validator: (M1, M2) -> Bool) {
            assertEqual(block1(scale, fabric1(cols)), block2(scale, fabric2(cols)), validator)
        }

        Assert(0.142, Cols2x2f, F2x2.init(columns:), simd.float2x2.init(columns:), kvSIMD.simd_mul(_:_:) as (Float, F2x2) -> F2x2, simd.simd_mul(_:_:), IsEqual(_:_:))
        Assert(0.142, Cols3x2f, F3x2.init(columns:), simd.float3x2.init(columns:), kvSIMD.simd_mul(_:_:) as (Float, F3x2) -> F3x2, simd.simd_mul(_:_:), IsEqual(_:_:))
        Assert(0.142, Cols4x2f, F4x2.init(columns:), simd.float4x2.init(columns:), kvSIMD.simd_mul(_:_:) as (Float, F4x2) -> F4x2, simd.simd_mul(_:_:), IsEqual(_:_:))
        Assert(0.142, Cols2x3f, F2x3.init(columns:), simd.float2x3.init(columns:), kvSIMD.simd_mul(_:_:) as (Float, F2x3) -> F2x3, simd.simd_mul(_:_:), IsEqual(_:_:))
        Assert(0.142, Cols3x3f, F3x3.init(columns:), simd.float3x3.init(columns:), kvSIMD.simd_mul(_:_:) as (Float, F3x3) -> F3x3, simd.simd_mul(_:_:), IsEqual(_:_:))
        Assert(0.142, Cols4x3f, F4x3.init(columns:), simd.float4x3.init(columns:), kvSIMD.simd_mul(_:_:) as (Float, F4x3) -> F4x3, simd.simd_mul(_:_:), IsEqual(_:_:))
        Assert(0.142, Cols2x4f, F2x4.init(columns:), simd.float2x4.init(columns:), kvSIMD.simd_mul(_:_:) as (Float, F2x4) -> F2x4, simd.simd_mul(_:_:), IsEqual(_:_:))
        Assert(0.142, Cols3x4f, F3x4.init(columns:), simd.float3x4.init(columns:), kvSIMD.simd_mul(_:_:) as (Float, F3x4) -> F3x4, simd.simd_mul(_:_:), IsEqual(_:_:))
        Assert(0.142, Cols4x4f, F4x4.init(columns:), simd.float4x4.init(columns:), kvSIMD.simd_mul(_:_:) as (Float, F4x4) -> F4x4, simd.simd_mul(_:_:), IsEqual(_:_:))

        Assert(0.142, Cols2x2d, D2x2.init(columns:), simd.double2x2.init(columns:), kvSIMD.simd_mul(_:_:) as (Double, D2x2) -> D2x2, simd.simd_mul(_:_:), IsEqual(_:_:))
        Assert(0.142, Cols3x2d, D3x2.init(columns:), simd.double3x2.init(columns:), kvSIMD.simd_mul(_:_:) as (Double, D3x2) -> D3x2, simd.simd_mul(_:_:), IsEqual(_:_:))
        Assert(0.142, Cols4x2d, D4x2.init(columns:), simd.double4x2.init(columns:), kvSIMD.simd_mul(_:_:) as (Double, D4x2) -> D4x2, simd.simd_mul(_:_:), IsEqual(_:_:))
        Assert(0.142, Cols2x3d, D2x3.init(columns:), simd.double2x3.init(columns:), kvSIMD.simd_mul(_:_:) as (Double, D2x3) -> D2x3, simd.simd_mul(_:_:), IsEqual(_:_:))
        Assert(0.142, Cols3x3d, D3x3.init(columns:), simd.double3x3.init(columns:), kvSIMD.simd_mul(_:_:) as (Double, D3x3) -> D3x3, simd.simd_mul(_:_:), IsEqual(_:_:))
        Assert(0.142, Cols4x3d, D4x3.init(columns:), simd.double4x3.init(columns:), kvSIMD.simd_mul(_:_:) as (Double, D4x3) -> D4x3, simd.simd_mul(_:_:), IsEqual(_:_:))
        Assert(0.142, Cols2x4d, D2x4.init(columns:), simd.double2x4.init(columns:), kvSIMD.simd_mul(_:_:) as (Double, D2x4) -> D2x4, simd.simd_mul(_:_:), IsEqual(_:_:))
        Assert(0.142, Cols3x4d, D3x4.init(columns:), simd.double3x4.init(columns:), kvSIMD.simd_mul(_:_:) as (Double, D3x4) -> D3x4, simd.simd_mul(_:_:), IsEqual(_:_:))
        Assert(0.142, Cols4x4d, D4x4.init(columns:), simd.double4x4.init(columns:), kvSIMD.simd_mul(_:_:) as (Double, D4x4) -> D4x4, simd.simd_mul(_:_:), IsEqual(_:_:))
    }

    // Matrix by vector.
    func test_simd_mul_mv() {

        func Assert<C, V, M1, M2, R>(_ cols: C, _ v: V, _ fabric1: (C) -> M1, _ fabric2: (C) -> M2, _ block1: (M1, V) -> R, _ block2: (M2, V) -> R, _ validator: (R, R) -> Bool) {
            assertEqual(block1(fabric1(cols), v), block2(fabric2(cols), v), validator)
        }

        Assert(RandomNxF2(2), F2.random(in: -1.0 ... 1.0), F2x2.init(_:), simd.float2x2.init(_:), kvSIMD.simd_mul(_:_:) as (F2x2, F2) -> F2, simd.simd_mul(_:_:) as (simd.float2x2, F2) -> F2, IsEqual(_:_:))
        Assert(RandomNxF3(2), F2.random(in: -1.0 ... 1.0), F2x3.init(_:), simd.float2x3.init(_:), kvSIMD.simd_mul(_:_:) as (F2x3, F2) -> F3, simd.simd_mul(_:_:) as (simd.float2x3, F2) -> F3, IsEqual(_:_:))
        Assert(RandomNxF4(2), F2.random(in: -1.0 ... 1.0), F2x4.init(_:), simd.float2x4.init(_:), kvSIMD.simd_mul(_:_:) as (F2x4, F2) -> F4, simd.simd_mul(_:_:) as (simd.float2x4, F2) -> F4, IsEqual(_:_:))
        Assert(RandomNxF2(3), F3.random(in: -1.0 ... 1.0), F3x2.init(_:), simd.float3x2.init(_:), kvSIMD.simd_mul(_:_:) as (F3x2, F3) -> F2, simd.simd_mul(_:_:) as (simd.float3x2, F3) -> F2, IsEqual(_:_:))
        Assert(RandomNxF3(3), F3.random(in: -1.0 ... 1.0), F3x3.init(_:), simd.float3x3.init(_:), kvSIMD.simd_mul(_:_:) as (F3x3, F3) -> F3, simd.simd_mul(_:_:) as (simd.float3x3, F3) -> F3, IsEqual(_:_:))
        Assert(RandomNxF4(3), F3.random(in: -1.0 ... 1.0), F3x4.init(_:), simd.float3x4.init(_:), kvSIMD.simd_mul(_:_:) as (F3x4, F3) -> F4, simd.simd_mul(_:_:) as (simd.float3x4, F3) -> F4, IsEqual(_:_:))
        Assert(RandomNxF2(4), F4.random(in: -1.0 ... 1.0), F4x2.init(_:), simd.float4x2.init(_:), kvSIMD.simd_mul(_:_:) as (F4x2, F4) -> F2, simd.simd_mul(_:_:) as (simd.float4x2, F4) -> F2, IsEqual(_:_:))
        Assert(RandomNxF3(4), F4.random(in: -1.0 ... 1.0), F4x3.init(_:), simd.float4x3.init(_:), kvSIMD.simd_mul(_:_:) as (F4x3, F4) -> F3, simd.simd_mul(_:_:) as (simd.float4x3, F4) -> F3, IsEqual(_:_:))
        Assert(RandomNxF4(4), F4.random(in: -1.0 ... 1.0), F4x4.init(_:), simd.float4x4.init(_:), kvSIMD.simd_mul(_:_:) as (F4x4, F4) -> F4, simd.simd_mul(_:_:) as (simd.float4x4, F4) -> F4, IsEqual(_:_:))

        Assert(RandomNxD2(2), D2.random(in: -1.0 ... 1.0), D2x2.init(_:), simd.double2x2.init(_:), kvSIMD.simd_mul(_:_:) as (D2x2, D2) -> D2, simd.simd_mul(_:_:) as (simd.double2x2, D2) -> D2, IsEqual(_:_:))
        Assert(RandomNxD3(2), D2.random(in: -1.0 ... 1.0), D2x3.init(_:), simd.double2x3.init(_:), kvSIMD.simd_mul(_:_:) as (D2x3, D2) -> D3, simd.simd_mul(_:_:) as (simd.double2x3, D2) -> D3, IsEqual(_:_:))
        Assert(RandomNxD4(2), D2.random(in: -1.0 ... 1.0), D2x4.init(_:), simd.double2x4.init(_:), kvSIMD.simd_mul(_:_:) as (D2x4, D2) -> D4, simd.simd_mul(_:_:) as (simd.double2x4, D2) -> D4, IsEqual(_:_:))
        Assert(RandomNxD2(3), D3.random(in: -1.0 ... 1.0), D3x2.init(_:), simd.double3x2.init(_:), kvSIMD.simd_mul(_:_:) as (D3x2, D3) -> D2, simd.simd_mul(_:_:) as (simd.double3x2, D3) -> D2, IsEqual(_:_:))
        Assert(RandomNxD3(3), D3.random(in: -1.0 ... 1.0), D3x3.init(_:), simd.double3x3.init(_:), kvSIMD.simd_mul(_:_:) as (D3x3, D3) -> D3, simd.simd_mul(_:_:) as (simd.double3x3, D3) -> D3, IsEqual(_:_:))
        Assert(RandomNxD4(3), D3.random(in: -1.0 ... 1.0), D3x4.init(_:), simd.double3x4.init(_:), kvSIMD.simd_mul(_:_:) as (D3x4, D3) -> D4, simd.simd_mul(_:_:) as (simd.double3x4, D3) -> D4, IsEqual(_:_:))
        Assert(RandomNxD2(4), D4.random(in: -1.0 ... 1.0), D4x2.init(_:), simd.double4x2.init(_:), kvSIMD.simd_mul(_:_:) as (D4x2, D4) -> D2, simd.simd_mul(_:_:) as (simd.double4x2, D4) -> D2, IsEqual(_:_:))
        Assert(RandomNxD3(4), D4.random(in: -1.0 ... 1.0), D4x3.init(_:), simd.double4x3.init(_:), kvSIMD.simd_mul(_:_:) as (D4x3, D4) -> D3, simd.simd_mul(_:_:) as (simd.double4x3, D4) -> D3, IsEqual(_:_:))
        Assert(RandomNxD4(4), D4.random(in: -1.0 ... 1.0), D4x4.init(_:), simd.double4x4.init(_:), kvSIMD.simd_mul(_:_:) as (D4x4, D4) -> D4, simd.simd_mul(_:_:) as (simd.double4x4, D4) -> D4, IsEqual(_:_:))
    }

    // Vector by matrix.
    func test_simd_mul_vm() {

        func Assert<V, C, M1, M2, R>(_ v: V, _ cols: C, _ fabric1: (C) -> M1, _ fabric2: (C) -> M2, _ block1: (V, M1) -> R, _ block2: (V, M2) -> R, _ validator: (R, R) -> Bool) {
            assertEqual(block1(v, fabric1(cols)), block2(v, fabric2(cols)), validator)
        }

        Assert(F2.random(in: -1.0 ... 1.0), RandomNxF2(2), F2x2.init(_:), simd.float2x2.init(_:), kvSIMD.simd_mul(_:_:) as (F2, F2x2) -> F2, simd.simd_mul(_:_:) as (F2, simd.float2x2) -> F2, IsEqual(_:_:))
        Assert(F2.random(in: -1.0 ... 1.0), RandomNxF2(3), F3x2.init(_:), simd.float3x2.init(_:), kvSIMD.simd_mul(_:_:) as (F2, F3x2) -> F3, simd.simd_mul(_:_:) as (F2, simd.float3x2) -> F3, IsEqual(_:_:))
        Assert(F2.random(in: -1.0 ... 1.0), RandomNxF2(4), F4x2.init(_:), simd.float4x2.init(_:), kvSIMD.simd_mul(_:_:) as (F2, F4x2) -> F4, simd.simd_mul(_:_:) as (F2, simd.float4x2) -> F4, IsEqual(_:_:))
        Assert(F3.random(in: -1.0 ... 1.0), RandomNxF3(2), F2x3.init(_:), simd.float2x3.init(_:), kvSIMD.simd_mul(_:_:) as (F3, F2x3) -> F2, simd.simd_mul(_:_:) as (F3, simd.float2x3) -> F2, IsEqual(_:_:))
        Assert(F3.random(in: -1.0 ... 1.0), RandomNxF3(3), F3x3.init(_:), simd.float3x3.init(_:), kvSIMD.simd_mul(_:_:) as (F3, F3x3) -> F3, simd.simd_mul(_:_:) as (F3, simd.float3x3) -> F3, IsEqual(_:_:))
        Assert(F3.random(in: -1.0 ... 1.0), RandomNxF3(4), F4x3.init(_:), simd.float4x3.init(_:), kvSIMD.simd_mul(_:_:) as (F3, F4x3) -> F4, simd.simd_mul(_:_:) as (F3, simd.float4x3) -> F4, IsEqual(_:_:))
        Assert(F4.random(in: -1.0 ... 1.0), RandomNxF4(2), F2x4.init(_:), simd.float2x4.init(_:), kvSIMD.simd_mul(_:_:) as (F4, F2x4) -> F2, simd.simd_mul(_:_:) as (F4, simd.float2x4) -> F2, IsEqual(_:_:))
        Assert(F4.random(in: -1.0 ... 1.0), RandomNxF4(3), F3x4.init(_:), simd.float3x4.init(_:), kvSIMD.simd_mul(_:_:) as (F4, F3x4) -> F3, simd.simd_mul(_:_:) as (F4, simd.float3x4) -> F3, IsEqual(_:_:))
        Assert(F4.random(in: -1.0 ... 1.0), RandomNxF4(4), F4x4.init(_:), simd.float4x4.init(_:), kvSIMD.simd_mul(_:_:) as (F4, F4x4) -> F4, simd.simd_mul(_:_:) as (F4, simd.float4x4) -> F4, IsEqual(_:_:))

        Assert(D2.random(in: -1.0 ... 1.0), RandomNxD2(2), D2x2.init(_:), simd.double2x2.init(_:), kvSIMD.simd_mul(_:_:) as (D2, D2x2) -> D2, simd.simd_mul(_:_:) as (D2, simd.double2x2) -> D2, IsEqual(_:_:))
        Assert(D2.random(in: -1.0 ... 1.0), RandomNxD2(3), D3x2.init(_:), simd.double3x2.init(_:), kvSIMD.simd_mul(_:_:) as (D2, D3x2) -> D3, simd.simd_mul(_:_:) as (D2, simd.double3x2) -> D3, IsEqual(_:_:))
        Assert(D2.random(in: -1.0 ... 1.0), RandomNxD2(4), D4x2.init(_:), simd.double4x2.init(_:), kvSIMD.simd_mul(_:_:) as (D2, D4x2) -> D4, simd.simd_mul(_:_:) as (D2, simd.double4x2) -> D4, IsEqual(_:_:))
        Assert(D3.random(in: -1.0 ... 1.0), RandomNxD3(2), D2x3.init(_:), simd.double2x3.init(_:), kvSIMD.simd_mul(_:_:) as (D3, D2x3) -> D2, simd.simd_mul(_:_:) as (D3, simd.double2x3) -> D2, IsEqual(_:_:))
        Assert(D3.random(in: -1.0 ... 1.0), RandomNxD3(3), D3x3.init(_:), simd.double3x3.init(_:), kvSIMD.simd_mul(_:_:) as (D3, D3x3) -> D3, simd.simd_mul(_:_:) as (D3, simd.double3x3) -> D3, IsEqual(_:_:))
        Assert(D3.random(in: -1.0 ... 1.0), RandomNxD3(4), D4x3.init(_:), simd.double4x3.init(_:), kvSIMD.simd_mul(_:_:) as (D3, D4x3) -> D4, simd.simd_mul(_:_:) as (D3, simd.double4x3) -> D4, IsEqual(_:_:))
        Assert(D4.random(in: -1.0 ... 1.0), RandomNxD4(2), D2x4.init(_:), simd.double2x4.init(_:), kvSIMD.simd_mul(_:_:) as (D4, D2x4) -> D2, simd.simd_mul(_:_:) as (D4, simd.double2x4) -> D2, IsEqual(_:_:))
        Assert(D4.random(in: -1.0 ... 1.0), RandomNxD4(3), D3x4.init(_:), simd.double3x4.init(_:), kvSIMD.simd_mul(_:_:) as (D4, D3x4) -> D3, simd.simd_mul(_:_:) as (D4, simd.double3x4) -> D3, IsEqual(_:_:))
        Assert(D4.random(in: -1.0 ... 1.0), RandomNxD4(4), D4x4.init(_:), simd.double4x4.init(_:), kvSIMD.simd_mul(_:_:) as (D4, D4x4) -> D4, simd.simd_mul(_:_:) as (D4, simd.double4x4) -> D4, IsEqual(_:_:))
    }

    // Matrix by matrix.
    func test_simd_mul_mm2xN() {

        func Assert2<C, M1, M2, R1, R2>(_ cols: C, _ fabric1: (C) -> M1, _ fabric2: (C) -> M2, _ block1: (M1, F2x2) -> R1, _ block2: (M2, simd.float2x2) -> R2, _ validator: (R1, R2) -> Bool) {
            let cols2xN = RandomNxF2(2)
            assertEqual(block1(fabric1(cols), F2x2(cols2xN)), block2(fabric2(cols), simd.float2x2(cols2xN)), validator)
        }

        func Assert3<C, M1, M2, R1, R2>(_ cols: C, _ fabric1: (C) -> M1, _ fabric2: (C) -> M2, _ block1: (M1, F2x3) -> R1, _ block2: (M2, simd.float2x3) -> R2, _ validator: (R1, R2) -> Bool) {
            let cols2xN = RandomNxF3(2)
            assertEqual(block1(fabric1(cols), F2x3(cols2xN)), block2(fabric2(cols), simd.float2x3(cols2xN)), validator)
        }

        func Assert4<C, M1, M2, R1, R2>(_ cols: C, _ fabric1: (C) -> M1, _ fabric2: (C) -> M2, _ block1: (M1, F2x4) -> R1, _ block2: (M2, simd.float2x4) -> R2, _ validator: (R1, R2) -> Bool) {
            let cols2xN = RandomNxF4(2)
            assertEqual(block1(fabric1(cols), F2x4(cols2xN)), block2(fabric2(cols), simd.float2x4(cols2xN)), validator)
        }

        Assert2(RandomNxF2(2), F2x2.init(_:), simd.float2x2.init(_:), kvSIMD.simd_mul(_:_:) as (F2x2, F2x2) -> F2x2, simd.simd_mul(_:_:) as (simd.float2x2, simd.float2x2) -> simd.float2x2, IsEqual(_:_:))
        Assert2(RandomNxF3(2), F2x3.init(_:), simd.float2x3.init(_:), kvSIMD.simd_mul(_:_:) as (F2x3, F2x2) -> F2x3, simd.simd_mul(_:_:) as (simd.float2x3, simd.float2x2) -> simd.float2x3, IsEqual(_:_:))
        Assert2(RandomNxF4(2), F2x4.init(_:), simd.float2x4.init(_:), kvSIMD.simd_mul(_:_:) as (F2x4, F2x2) -> F2x4, simd.simd_mul(_:_:) as (simd.float2x4, simd.float2x2) -> simd.float2x4, IsEqual(_:_:))
        Assert3(RandomNxF2(3), F3x2.init(_:), simd.float3x2.init(_:), kvSIMD.simd_mul(_:_:) as (F3x2, F2x3) -> F2x2, simd.simd_mul(_:_:) as (simd.float3x2, simd.float2x3) -> simd.float2x2, IsEqual(_:_:))
        Assert3(RandomNxF3(3), F3x3.init(_:), simd.float3x3.init(_:), kvSIMD.simd_mul(_:_:) as (F3x3, F2x3) -> F2x3, simd.simd_mul(_:_:) as (simd.float3x3, simd.float2x3) -> simd.float2x3, IsEqual(_:_:))
        Assert3(RandomNxF4(3), F3x4.init(_:), simd.float3x4.init(_:), kvSIMD.simd_mul(_:_:) as (F3x4, F2x3) -> F2x4, simd.simd_mul(_:_:) as (simd.float3x4, simd.float2x3) -> simd.float2x4, IsEqual(_:_:))
        Assert4(RandomNxF2(4), F4x2.init(_:), simd.float4x2.init(_:), kvSIMD.simd_mul(_:_:) as (F4x2, F2x4) -> F2x2, simd.simd_mul(_:_:) as (simd.float4x2, simd.float2x4) -> simd.float2x2, IsEqual(_:_:))
        Assert4(RandomNxF3(4), F4x3.init(_:), simd.float4x3.init(_:), kvSIMD.simd_mul(_:_:) as (F4x3, F2x4) -> F2x3, simd.simd_mul(_:_:) as (simd.float4x3, simd.float2x4) -> simd.float2x3, IsEqual(_:_:))
        Assert4(RandomNxF4(4), F4x4.init(_:), simd.float4x4.init(_:), kvSIMD.simd_mul(_:_:) as (F4x4, F2x4) -> F2x4, simd.simd_mul(_:_:) as (simd.float4x4, simd.float2x4) -> simd.float2x4, IsEqual(_:_:))

        func Assert2<C, M1, M2, R1, R2>(_ cols: C, _ fabric1: (C) -> M1, _ fabric2: (C) -> M2, _ block1: (M1, D2x2) -> R1, _ block2: (M2, simd.double2x2) -> R2, _ validator: (R1, R2) -> Bool) {
            let cols2xN = RandomNxD2(2)
            assertEqual(block1(fabric1(cols), D2x2(cols2xN)), block2(fabric2(cols), simd.double2x2(cols2xN)), validator)
        }

        func Assert3<C, M1, M2, R1, R2>(_ cols: C, _ fabric1: (C) -> M1, _ fabric2: (C) -> M2, _ block1: (M1, D2x3) -> R1, _ block2: (M2, simd.double2x3) -> R2, _ validator: (R1, R2) -> Bool) {
            let cols2xN = RandomNxD3(2)
            assertEqual(block1(fabric1(cols), D2x3(cols2xN)), block2(fabric2(cols), simd.double2x3(cols2xN)), validator)
        }

        func Assert4<C, M1, M2, R1, R2>(_ cols: C, _ fabric1: (C) -> M1, _ fabric2: (C) -> M2, _ block1: (M1, D2x4) -> R1, _ block2: (M2, simd.double2x4) -> R2, _ validator: (R1, R2) -> Bool) {
            let cols2xN = RandomNxD4(2)
            assertEqual(block1(fabric1(cols), D2x4(cols2xN)), block2(fabric2(cols), simd.double2x4(cols2xN)), validator)
        }

        Assert2(RandomNxD2(2), D2x2.init(_:), simd.double2x2.init(_:), kvSIMD.simd_mul(_:_:) as (D2x2, D2x2) -> D2x2, simd.simd_mul(_:_:) as (simd.double2x2, simd.double2x2) -> simd.double2x2, IsEqual(_:_:))
        Assert2(RandomNxD3(2), D2x3.init(_:), simd.double2x3.init(_:), kvSIMD.simd_mul(_:_:) as (D2x3, D2x2) -> D2x3, simd.simd_mul(_:_:) as (simd.double2x3, simd.double2x2) -> simd.double2x3, IsEqual(_:_:))
        Assert2(RandomNxD4(2), D2x4.init(_:), simd.double2x4.init(_:), kvSIMD.simd_mul(_:_:) as (D2x4, D2x2) -> D2x4, simd.simd_mul(_:_:) as (simd.double2x4, simd.double2x2) -> simd.double2x4, IsEqual(_:_:))
        Assert3(RandomNxD2(3), D3x2.init(_:), simd.double3x2.init(_:), kvSIMD.simd_mul(_:_:) as (D3x2, D2x3) -> D2x2, simd.simd_mul(_:_:) as (simd.double3x2, simd.double2x3) -> simd.double2x2, IsEqual(_:_:))
        Assert3(RandomNxD3(3), D3x3.init(_:), simd.double3x3.init(_:), kvSIMD.simd_mul(_:_:) as (D3x3, D2x3) -> D2x3, simd.simd_mul(_:_:) as (simd.double3x3, simd.double2x3) -> simd.double2x3, IsEqual(_:_:))
        Assert3(RandomNxD4(3), D3x4.init(_:), simd.double3x4.init(_:), kvSIMD.simd_mul(_:_:) as (D3x4, D2x3) -> D2x4, simd.simd_mul(_:_:) as (simd.double3x4, simd.double2x3) -> simd.double2x4, IsEqual(_:_:))
        Assert4(RandomNxD2(4), D4x2.init(_:), simd.double4x2.init(_:), kvSIMD.simd_mul(_:_:) as (D4x2, D2x4) -> D2x2, simd.simd_mul(_:_:) as (simd.double4x2, simd.double2x4) -> simd.double2x2, IsEqual(_:_:))
        Assert4(RandomNxD3(4), D4x3.init(_:), simd.double4x3.init(_:), kvSIMD.simd_mul(_:_:) as (D4x3, D2x4) -> D2x3, simd.simd_mul(_:_:) as (simd.double4x3, simd.double2x4) -> simd.double2x3, IsEqual(_:_:))
        Assert4(RandomNxD4(4), D4x4.init(_:), simd.double4x4.init(_:), kvSIMD.simd_mul(_:_:) as (D4x4, D2x4) -> D2x4, simd.simd_mul(_:_:) as (simd.double4x4, simd.double2x4) -> simd.double2x4, IsEqual(_:_:))
    }

    // Matrix by matrix.
    func test_simd_mul_mm3xN() {

        func Assert2<C, M1, M2, R1, R2>(_ cols: C, _ fabric1: (C) -> M1, _ fabric2: (C) -> M2, _ block1: (M1, F3x2) -> R1, _ block2: (M2, simd.float3x2) -> R2, _ validator: (R1, R2) -> Bool) {
            let cols3xN = RandomNxF2(3)
            assertEqual(block1(fabric1(cols), F3x2(cols3xN)), block2(fabric2(cols), simd.float3x2(cols3xN)), validator)
        }

        func Assert3<C, M1, M2, R1, R2>(_ cols: C, _ fabric1: (C) -> M1, _ fabric2: (C) -> M2, _ block1: (M1, F3x3) -> R1, _ block2: (M2, simd.float3x3) -> R2, _ validator: (R1, R2) -> Bool) {
            let cols3xN = RandomNxF3(3)
            assertEqual(block1(fabric1(cols), F3x3(cols3xN)), block2(fabric2(cols), simd.float3x3(cols3xN)), validator)
        }

        func Assert4<C, M1, M2, R1, R2>(_ cols: C, _ fabric1: (C) -> M1, _ fabric2: (C) -> M2, _ block1: (M1, F3x4) -> R1, _ block2: (M2, simd.float3x4) -> R2, _ validator: (R1, R2) -> Bool) {
            let cols3xN = RandomNxF4(3)
            assertEqual(block1(fabric1(cols), F3x4(cols3xN)), block2(fabric2(cols), simd.float3x4(cols3xN)), validator)
        }

        Assert2(RandomNxF2(2), F2x2.init(_:), simd.float2x2.init(_:), kvSIMD.simd_mul(_:_:) as (F2x2, F3x2) -> F3x2, simd.simd_mul(_:_:) as (simd.float2x2, simd.float3x2) -> simd.float3x2, IsEqual(_:_:))
        Assert2(RandomNxF3(2), F2x3.init(_:), simd.float2x3.init(_:), kvSIMD.simd_mul(_:_:) as (F2x3, F3x2) -> F3x3, simd.simd_mul(_:_:) as (simd.float2x3, simd.float3x2) -> simd.float3x3, IsEqual(_:_:))
        Assert2(RandomNxF4(2), F2x4.init(_:), simd.float2x4.init(_:), kvSIMD.simd_mul(_:_:) as (F2x4, F3x2) -> F3x4, simd.simd_mul(_:_:) as (simd.float2x4, simd.float3x2) -> simd.float3x4, IsEqual(_:_:))
        Assert3(RandomNxF2(3), F3x2.init(_:), simd.float3x2.init(_:), kvSIMD.simd_mul(_:_:) as (F3x2, F3x3) -> F3x2, simd.simd_mul(_:_:) as (simd.float3x2, simd.float3x3) -> simd.float3x2, IsEqual(_:_:))
        Assert3(RandomNxF3(3), F3x3.init(_:), simd.float3x3.init(_:), kvSIMD.simd_mul(_:_:) as (F3x3, F3x3) -> F3x3, simd.simd_mul(_:_:) as (simd.float3x3, simd.float3x3) -> simd.float3x3, IsEqual(_:_:))
        Assert3(RandomNxF4(3), F3x4.init(_:), simd.float3x4.init(_:), kvSIMD.simd_mul(_:_:) as (F3x4, F3x3) -> F3x4, simd.simd_mul(_:_:) as (simd.float3x4, simd.float3x3) -> simd.float3x4, IsEqual(_:_:))
        Assert4(RandomNxF2(4), F4x2.init(_:), simd.float4x2.init(_:), kvSIMD.simd_mul(_:_:) as (F4x2, F3x4) -> F3x2, simd.simd_mul(_:_:) as (simd.float4x2, simd.float3x4) -> simd.float3x2, IsEqual(_:_:))
        Assert4(RandomNxF3(4), F4x3.init(_:), simd.float4x3.init(_:), kvSIMD.simd_mul(_:_:) as (F4x3, F3x4) -> F3x3, simd.simd_mul(_:_:) as (simd.float4x3, simd.float3x4) -> simd.float3x3, IsEqual(_:_:))
        Assert4(RandomNxF4(4), F4x4.init(_:), simd.float4x4.init(_:), kvSIMD.simd_mul(_:_:) as (F4x4, F3x4) -> F3x4, simd.simd_mul(_:_:) as (simd.float4x4, simd.float3x4) -> simd.float3x4, IsEqual(_:_:))

        func Assert2<C, M1, M2, R1, R2>(_ cols: C, _ fabric1: (C) -> M1, _ fabric2: (C) -> M2, _ block1: (M1, D3x2) -> R1, _ block2: (M2, simd.double3x2) -> R2, _ validator: (R1, R2) -> Bool) {
            let cols3xN = RandomNxD2(3)
            assertEqual(block1(fabric1(cols), D3x2(cols3xN)), block2(fabric2(cols), simd.double3x2(cols3xN)), validator)
        }

        func Assert3<C, M1, M2, R1, R2>(_ cols: C, _ fabric1: (C) -> M1, _ fabric2: (C) -> M2, _ block1: (M1, D3x3) -> R1, _ block2: (M2, simd.double3x3) -> R2, _ validator: (R1, R2) -> Bool) {
            let cols3xN = RandomNxD3(3)
            assertEqual(block1(fabric1(cols), D3x3(cols3xN)), block2(fabric2(cols), simd.double3x3(cols3xN)), validator)
        }

        func Assert4<C, M1, M2, R1, R2>(_ cols: C, _ fabric1: (C) -> M1, _ fabric2: (C) -> M2, _ block1: (M1, D3x4) -> R1, _ block2: (M2, simd.double3x4) -> R2, _ validator: (R1, R2) -> Bool) {
            let cols3xN = RandomNxD4(3)
            assertEqual(block1(fabric1(cols), D3x4(cols3xN)), block2(fabric2(cols), simd.double3x4(cols3xN)), validator)
        }

        Assert2(RandomNxD2(2), D2x2.init(_:), simd.double2x2.init(_:), kvSIMD.simd_mul(_:_:) as (D2x2, D3x2) -> D3x2, simd.simd_mul(_:_:) as (simd.double2x2, simd.double3x2) -> simd.double3x2, IsEqual(_:_:))
        Assert2(RandomNxD3(2), D2x3.init(_:), simd.double2x3.init(_:), kvSIMD.simd_mul(_:_:) as (D2x3, D3x2) -> D3x3, simd.simd_mul(_:_:) as (simd.double2x3, simd.double3x2) -> simd.double3x3, IsEqual(_:_:))
        Assert2(RandomNxD4(2), D2x4.init(_:), simd.double2x4.init(_:), kvSIMD.simd_mul(_:_:) as (D2x4, D3x2) -> D3x4, simd.simd_mul(_:_:) as (simd.double2x4, simd.double3x2) -> simd.double3x4, IsEqual(_:_:))
        Assert3(RandomNxD2(3), D3x2.init(_:), simd.double3x2.init(_:), kvSIMD.simd_mul(_:_:) as (D3x2, D3x3) -> D3x2, simd.simd_mul(_:_:) as (simd.double3x2, simd.double3x3) -> simd.double3x2, IsEqual(_:_:))
        Assert3(RandomNxD3(3), D3x3.init(_:), simd.double3x3.init(_:), kvSIMD.simd_mul(_:_:) as (D3x3, D3x3) -> D3x3, simd.simd_mul(_:_:) as (simd.double3x3, simd.double3x3) -> simd.double3x3, IsEqual(_:_:))
        Assert3(RandomNxD4(3), D3x4.init(_:), simd.double3x4.init(_:), kvSIMD.simd_mul(_:_:) as (D3x4, D3x3) -> D3x4, simd.simd_mul(_:_:) as (simd.double3x4, simd.double3x3) -> simd.double3x4, IsEqual(_:_:))
        Assert4(RandomNxD2(4), D4x2.init(_:), simd.double4x2.init(_:), kvSIMD.simd_mul(_:_:) as (D4x2, D3x4) -> D3x2, simd.simd_mul(_:_:) as (simd.double4x2, simd.double3x4) -> simd.double3x2, IsEqual(_:_:))
        Assert4(RandomNxD3(4), D4x3.init(_:), simd.double4x3.init(_:), kvSIMD.simd_mul(_:_:) as (D4x3, D3x4) -> D3x3, simd.simd_mul(_:_:) as (simd.double4x3, simd.double3x4) -> simd.double3x3, IsEqual(_:_:))
        Assert4(RandomNxD4(4), D4x4.init(_:), simd.double4x4.init(_:), kvSIMD.simd_mul(_:_:) as (D4x4, D3x4) -> D3x4, simd.simd_mul(_:_:) as (simd.double4x4, simd.double3x4) -> simd.double3x4, IsEqual(_:_:))
    }

    // Matrix by matrix.
    func test_simd_mul_mm4xN() {

        func Assert2<C, M1, M2, R1, R2>(_ cols: C, _ fabric1: (C) -> M1, _ fabric2: (C) -> M2, _ block1: (M1, F4x2) -> R1, _ block2: (M2, simd.float4x2) -> R2, _ validator: (R1, R2) -> Bool) {
            let cols4xN = RandomNxF2(4)
            assertEqual(block1(fabric1(cols), F4x2(cols4xN)), block2(fabric2(cols), simd.float4x2(cols4xN)), validator)
        }

        func Assert3<C, M1, M2, R1, R2>(_ cols: C, _ fabric1: (C) -> M1, _ fabric2: (C) -> M2, _ block1: (M1, F4x3) -> R1, _ block2: (M2, simd.float4x3) -> R2, _ validator: (R1, R2) -> Bool) {
            let cols4xN = RandomNxF3(4)
            assertEqual(block1(fabric1(cols), F4x3(cols4xN)), block2(fabric2(cols), simd.float4x3(cols4xN)), validator)
        }

        func Assert4<C, M1, M2, R1, R2>(_ cols: C, _ fabric1: (C) -> M1, _ fabric2: (C) -> M2, _ block1: (M1, F4x4) -> R1, _ block2: (M2, simd.float4x4) -> R2, _ validator: (R1, R2) -> Bool) {
            let cols4xN = RandomNxF4(4)
            assertEqual(block1(fabric1(cols), F4x4(cols4xN)), block2(fabric2(cols), simd.float4x4(cols4xN)), validator)
        }

        Assert2(RandomNxF2(2), F2x2.init(_:), simd.float2x2.init(_:), kvSIMD.simd_mul(_:_:) as (F2x2, F4x2) -> F4x2, simd.simd_mul(_:_:) as (simd.float2x2, simd.float4x2) -> simd.float4x2, IsEqual(_:_:))
        Assert2(RandomNxF3(2), F2x3.init(_:), simd.float2x3.init(_:), kvSIMD.simd_mul(_:_:) as (F2x3, F4x2) -> F4x3, simd.simd_mul(_:_:) as (simd.float2x3, simd.float4x2) -> simd.float4x3, IsEqual(_:_:))
        Assert2(RandomNxF4(2), F2x4.init(_:), simd.float2x4.init(_:), kvSIMD.simd_mul(_:_:) as (F2x4, F4x2) -> F4x4, simd.simd_mul(_:_:) as (simd.float2x4, simd.float4x2) -> simd.float4x4, IsEqual(_:_:))
        Assert3(RandomNxF2(3), F3x2.init(_:), simd.float3x2.init(_:), kvSIMD.simd_mul(_:_:) as (F3x2, F4x3) -> F4x2, simd.simd_mul(_:_:) as (simd.float3x2, simd.float4x3) -> simd.float4x2, IsEqual(_:_:))
        Assert3(RandomNxF3(3), F3x3.init(_:), simd.float3x3.init(_:), kvSIMD.simd_mul(_:_:) as (F3x3, F4x3) -> F4x3, simd.simd_mul(_:_:) as (simd.float3x3, simd.float4x3) -> simd.float4x3, IsEqual(_:_:))
        Assert3(RandomNxF4(3), F3x4.init(_:), simd.float3x4.init(_:), kvSIMD.simd_mul(_:_:) as (F3x4, F4x3) -> F4x4, simd.simd_mul(_:_:) as (simd.float3x4, simd.float4x3) -> simd.float4x4, IsEqual(_:_:))
        Assert4(RandomNxF2(4), F4x2.init(_:), simd.float4x2.init(_:), kvSIMD.simd_mul(_:_:) as (F4x2, F4x4) -> F4x2, simd.simd_mul(_:_:) as (simd.float4x2, simd.float4x4) -> simd.float4x2, IsEqual(_:_:))
        Assert4(RandomNxF3(4), F4x3.init(_:), simd.float4x3.init(_:), kvSIMD.simd_mul(_:_:) as (F4x3, F4x4) -> F4x3, simd.simd_mul(_:_:) as (simd.float4x3, simd.float4x4) -> simd.float4x3, IsEqual(_:_:))
        Assert4(RandomNxF4(4), F4x4.init(_:), simd.float4x4.init(_:), kvSIMD.simd_mul(_:_:) as (F4x4, F4x4) -> F4x4, simd.simd_mul(_:_:) as (simd.float4x4, simd.float4x4) -> simd.float4x4, IsEqual(_:_:))

        func Assert2<C, M1, M2, R1, R2>(_ cols: C, _ fabric1: (C) -> M1, _ fabric2: (C) -> M2, _ block1: (M1, D4x2) -> R1, _ block2: (M2, simd.double4x2) -> R2, _ validator: (R1, R2) -> Bool) {
            let cols4xN = RandomNxD2(4)
            assertEqual(block1(fabric1(cols), D4x2(cols4xN)), block2(fabric2(cols), simd.double4x2(cols4xN)), validator)
        }

        func Assert3<C, M1, M2, R1, R2>(_ cols: C, _ fabric1: (C) -> M1, _ fabric2: (C) -> M2, _ block1: (M1, D4x3) -> R1, _ block2: (M2, simd.double4x3) -> R2, _ validator: (R1, R2) -> Bool) {
            let cols4xN = RandomNxD3(4)
            assertEqual(block1(fabric1(cols), D4x3(cols4xN)), block2(fabric2(cols), simd.double4x3(cols4xN)), validator)
        }

        func Assert4<C, M1, M2, R1, R2>(_ cols: C, _ fabric1: (C) -> M1, _ fabric2: (C) -> M2, _ block1: (M1, D4x4) -> R1, _ block2: (M2, simd.double4x4) -> R2, _ validator: (R1, R2) -> Bool) {
            let cols4xN = RandomNxD4(4)
            assertEqual(block1(fabric1(cols), D4x4(cols4xN)), block2(fabric2(cols), simd.double4x4(cols4xN)), validator)
        }

        Assert2(RandomNxD2(2), D2x2.init(_:), simd.double2x2.init(_:), kvSIMD.simd_mul(_:_:) as (D2x2, D4x2) -> D4x2, simd.simd_mul(_:_:) as (simd.double2x2, simd.double4x2) -> simd.double4x2, IsEqual(_:_:))
        Assert2(RandomNxD3(2), D2x3.init(_:), simd.double2x3.init(_:), kvSIMD.simd_mul(_:_:) as (D2x3, D4x2) -> D4x3, simd.simd_mul(_:_:) as (simd.double2x3, simd.double4x2) -> simd.double4x3, IsEqual(_:_:))
        Assert2(RandomNxD4(2), D2x4.init(_:), simd.double2x4.init(_:), kvSIMD.simd_mul(_:_:) as (D2x4, D4x2) -> D4x4, simd.simd_mul(_:_:) as (simd.double2x4, simd.double4x2) -> simd.double4x4, IsEqual(_:_:))
        Assert3(RandomNxD2(3), D3x2.init(_:), simd.double3x2.init(_:), kvSIMD.simd_mul(_:_:) as (D3x2, D4x3) -> D4x2, simd.simd_mul(_:_:) as (simd.double3x2, simd.double4x3) -> simd.double4x2, IsEqual(_:_:))
        Assert3(RandomNxD3(3), D3x3.init(_:), simd.double3x3.init(_:), kvSIMD.simd_mul(_:_:) as (D3x3, D4x3) -> D4x3, simd.simd_mul(_:_:) as (simd.double3x3, simd.double4x3) -> simd.double4x3, IsEqual(_:_:))
        Assert3(RandomNxD4(3), D3x4.init(_:), simd.double3x4.init(_:), kvSIMD.simd_mul(_:_:) as (D3x4, D4x3) -> D4x4, simd.simd_mul(_:_:) as (simd.double3x4, simd.double4x3) -> simd.double4x4, IsEqual(_:_:))
        Assert4(RandomNxD2(4), D4x2.init(_:), simd.double4x2.init(_:), kvSIMD.simd_mul(_:_:) as (D4x2, D4x4) -> D4x2, simd.simd_mul(_:_:) as (simd.double4x2, simd.double4x4) -> simd.double4x2, IsEqual(_:_:))
        Assert4(RandomNxD3(4), D4x3.init(_:), simd.double4x3.init(_:), kvSIMD.simd_mul(_:_:) as (D4x3, D4x4) -> D4x3, simd.simd_mul(_:_:) as (simd.double4x3, simd.double4x4) -> simd.double4x3, IsEqual(_:_:))
        Assert4(RandomNxD4(4), D4x4.init(_:), simd.double4x4.init(_:), kvSIMD.simd_mul(_:_:) as (D4x4, D4x4) -> D4x4, simd.simd_mul(_:_:) as (simd.double4x4, simd.double4x4) -> simd.double4x4, IsEqual(_:_:))
    }



    // MARK: test_simd_muladd()

    func test_simd_muladd() {
        TestAssert(RandomF1s( ), RandomF1s( ), RandomF1s( ), label: "simd_muladd-f1f1f1"   , reference: simd.simd_muladd, subject: kvSIMD.simd_muladd, validator: IsEqual(_:_:))
        TestAssert(RandomF2s( ), RandomF2s( ), RandomF2s( ), label: "simd_muladd-f2f2f2"   , reference: simd.simd_muladd, subject: kvSIMD.simd_muladd, validator: IsEqual(_:_:))
        TestAssert(RandomF3s( ), RandomF3s( ), RandomF3s( ), label: "simd_muladd-f3f3f3"   , reference: simd.simd_muladd, subject: kvSIMD.simd_muladd, validator: IsEqual(_:_:))
        TestAssert(RandomF4s( ), RandomF4s( ), RandomF4s( ), label: "simd_muladd-f4f4f4"   , reference: simd.simd_muladd, subject: kvSIMD.simd_muladd, validator: IsEqual(_:_:))
        TestAssert(RandomF8s( ), RandomF8s( ), RandomF8s( ), label: "simd_muladd-f8f8f8"   , reference: simd.simd_muladd, subject: kvSIMD.simd_muladd, validator: IsEqual(_:_:))
        TestAssert(RandomF16s(), RandomF16s(), RandomF16s(), label: "simd_muladd-f16f16f16", reference: simd.simd_muladd, subject: kvSIMD.simd_muladd, validator: IsEqual(_:_:))

        TestAssert(RandomD1s( ), RandomD1s( ), RandomD1s( ), label: "simd_muladd-d1d1d1"   , reference: simd.simd_muladd, subject: kvSIMD.simd_muladd, validator: IsEqual(_:_:))
        TestAssert(RandomD2s( ), RandomD2s( ), RandomD2s( ), label: "simd_muladd-d2d2d2"   , reference: simd.simd_muladd, subject: kvSIMD.simd_muladd, validator: IsEqual(_:_:))
        TestAssert(RandomD3s( ), RandomD3s( ), RandomD3s( ), label: "simd_muladd-d3d3d3"   , reference: simd.simd_muladd, subject: kvSIMD.simd_muladd, validator: IsEqual(_:_:))
        TestAssert(RandomD4s( ), RandomD4s( ), RandomD4s( ), label: "simd_muladd-d4d4d4"   , reference: simd.simd_muladd, subject: kvSIMD.simd_muladd, validator: IsEqual(_:_:))
        TestAssert(RandomD8s( ), RandomD8s( ), RandomD8s( ), label: "simd_muladd-d8d8d8"   , reference: simd.simd_muladd, subject: kvSIMD.simd_muladd, validator: IsEqual(_:_:))
    }



    // MARK: test_simd_norm_inf()

    func test_simd_norm_inf() {
        TestAssert(RandomF2s( ), label: "simd_norm_inf-f2" , reference: simd.simd_norm_inf, subject: kvSIMD.simd_norm_inf, validator: IsEqual(_:_:))
        TestAssert(RandomF3s( ), label: "simd_norm_inf-f3" , reference: simd.simd_norm_inf, subject: kvSIMD.simd_norm_inf, validator: IsEqual(_:_:))
        TestAssert(RandomF4s( ), label: "simd_norm_inf-f4" , reference: simd.simd_norm_inf, subject: kvSIMD.simd_norm_inf, validator: IsEqual(_:_:))
        TestAssert(RandomF8s( ), label: "simd_norm_inf-f8" , reference: simd.simd_norm_inf, subject: kvSIMD.simd_norm_inf, validator: IsEqual(_:_:))
        TestAssert(RandomF16s(), label: "simd_norm_inf-f16", reference: simd.simd_norm_inf, subject: kvSIMD.simd_norm_inf, validator: IsEqual(_:_:))

        TestAssert(RandomD2s( ), label: "simd_norm_inf-d2" , reference: simd.simd_norm_inf, subject: kvSIMD.simd_norm_inf, validator: IsEqual(_:_:))
        TestAssert(RandomD3s( ), label: "simd_norm_inf-d3" , reference: simd.simd_norm_inf, subject: kvSIMD.simd_norm_inf, validator: IsEqual(_:_:))
        TestAssert(RandomD4s( ), label: "simd_norm_inf-d4" , reference: simd.simd_norm_inf, subject: kvSIMD.simd_norm_inf, validator: IsEqual(_:_:))
        TestAssert(RandomD8s( ), label: "simd_norm_inf-d8" , reference: simd.simd_norm_inf, subject: kvSIMD.simd_norm_inf, validator: IsEqual(_:_:))
    }



    // MARK: test_simd_norm_one()

    func test_simd_norm_one() {
        TestAssert(RandomF2s( ), label: "simd_norm_one-f2" , reference: simd.simd_norm_one, subject: kvSIMD.simd_norm_one, validator: IsEqual(_:_:))
        TestAssert(RandomF3s( ), label: "simd_norm_one-f3" , reference: simd.simd_norm_one, subject: kvSIMD.simd_norm_one, validator: IsEqual(_:_:))
        TestAssert(RandomF4s( ), label: "simd_norm_one-f4" , reference: simd.simd_norm_one, subject: kvSIMD.simd_norm_one, validator: IsEqual(_:_:))
        TestAssert(RandomF8s( ), label: "simd_norm_one-f8" , reference: simd.simd_norm_one, subject: kvSIMD.simd_norm_one, validator: IsEqual(_:_:))
        TestAssert(RandomF16s(), label: "simd_norm_one-f16", reference: simd.simd_norm_one, subject: kvSIMD.simd_norm_one, validator: IsEqual(_:_:))

        TestAssert(RandomD2s( ), label: "simd_norm_one-d2" , reference: simd.simd_norm_one, subject: kvSIMD.simd_norm_one, validator: IsEqual(_:_:))
        TestAssert(RandomD3s( ), label: "simd_norm_one-d3" , reference: simd.simd_norm_one, subject: kvSIMD.simd_norm_one, validator: IsEqual(_:_:))
        TestAssert(RandomD4s( ), label: "simd_norm_one-d4" , reference: simd.simd_norm_one, subject: kvSIMD.simd_norm_one, validator: IsEqual(_:_:))
        TestAssert(RandomD8s( ), label: "simd_norm_one-d8" , reference: simd.simd_norm_one, subject: kvSIMD.simd_norm_one, validator: IsEqual(_:_:))
    }



    // MARK: test_simd_orient()

    func test_simd_orient() {
        TestAssert(RandomF2s(), RandomF2s(), label: "simd_orient-f2f2", reference: simd.simd_orient, subject: kvSIMD.simd_orient, validator: IsEqualSign)
        TestAssert(RandomD2s(), RandomD2s(), label: "simd_orient-d2d2", reference: simd.simd_orient, subject: kvSIMD.simd_orient, validator: IsEqualSign)

        TestAssert(RandomF3s(), RandomF3s(), RandomF3s(), label: "simd_orient-f3f3f3", reference: simd.simd_orient, subject: kvSIMD.simd_orient, validator: IsEqualSign)
        TestAssert(RandomD3s(), RandomD3s(), RandomD3s(), label: "simd_orient-d3d3d3", reference: simd.simd_orient, subject: kvSIMD.simd_orient, validator: IsEqualSign)

        TestAssert(RandomF2s(), RandomF2s(), RandomF2s(), label: "simd_orient-f2f2f2", reference: simd.simd_orient, subject: kvSIMD.simd_orient, validator: IsEqualSign)
        TestAssert(RandomD2s(), RandomD2s(), RandomD2s(), label: "simd_orient-d2d2d2", reference: simd.simd_orient, subject: kvSIMD.simd_orient, validator: IsEqualSign)

        TestAssert(RandomF3s(), RandomF3s(), RandomF3s(), RandomF3s(), label: "simd_orient-f3f3f3f3", reference: simd.simd_orient, subject: kvSIMD.simd_orient, validator: IsEqualSign)
        // TODO: Check if Apple fixed simd_orient-d3d3d3d3. If yes then delete walkaround below using simd_orient-f3f3f3f3.
        do {
            let ref: (simd_double3, simd_double3, simd_double3, simd_double3) -> Double = { Double(simd.simd_orient(simd_float3($0), simd_float3($1), simd_float3($2), simd_float3($3))) }
            TestAssert(RandomD3s(), RandomD3s(), RandomD3s(), RandomD3s(), label: "simd_orient-d3d3d3d3", reference: ref, subject: kvSIMD.simd_orient, validator: IsEqualSign)
        }
    }



    // MARK: test_simd_precise_distance()

    func test_simd_precise_distance() {
        TestAssert(RandomF2s( ), RandomF2s( ), label: "simd_precise_distance-f2f2"  , reference: simd.simd_precise_distance, subject: kvSIMD.simd_precise_distance, validator: IsEqual(_:_:))
        TestAssert(RandomF3s( ), RandomF3s( ), label: "simd_precise_distance-f3f3"  , reference: simd.simd_precise_distance, subject: kvSIMD.simd_precise_distance, validator: IsEqual(_:_:))
        TestAssert(RandomF4s( ), RandomF4s( ), label: "simd_precise_distance-f4f4"  , reference: simd.simd_precise_distance, subject: kvSIMD.simd_precise_distance, validator: IsEqual(_:_:))
        TestAssert(RandomF8s( ), RandomF8s( ), label: "simd_precise_distance-f8f8"  , reference: simd.simd_precise_distance, subject: kvSIMD.simd_precise_distance, validator: IsEqual(_:_:))
        TestAssert(RandomF16s(), RandomF16s(), label: "simd_precise_distance-f16f16", reference: simd.simd_precise_distance, subject: kvSIMD.simd_precise_distance, validator: IsEqual(_:_:))

        TestAssert(RandomD2s( ), RandomD2s( ), label: "simd_precise_distance-d2d2"  , reference: simd.simd_precise_distance, subject: kvSIMD.simd_precise_distance, validator: IsEqual(_:_:))
        TestAssert(RandomD3s( ), RandomD3s( ), label: "simd_precise_distance-d3d3"  , reference: simd.simd_precise_distance, subject: kvSIMD.simd_precise_distance, validator: IsEqual(_:_:))
        TestAssert(RandomD4s( ), RandomD4s( ), label: "simd_precise_distance-d4d4"  , reference: simd.simd_precise_distance, subject: kvSIMD.simd_precise_distance, validator: IsEqual(_:_:))
        TestAssert(RandomD8s( ), RandomD8s( ), label: "simd_precise_distance-d8d8"  , reference: simd.simd_precise_distance, subject: kvSIMD.simd_precise_distance, validator: IsEqual(_:_:))
    }



    // MARK: test_simd_precise_length()

    func test_simd_precise_length() {
        TestAssert(RandomF2s( ), label: "simd_precise_length-f2" , reference: simd.simd_precise_length, subject: kvSIMD.simd_precise_length, validator: IsEqual(_:_:))
        TestAssert(RandomF3s( ), label: "simd_precise_length-f3" , reference: simd.simd_precise_length, subject: kvSIMD.simd_precise_length, validator: IsEqual(_:_:))
        TestAssert(RandomF4s( ), label: "simd_precise_length-f4" , reference: simd.simd_precise_length, subject: kvSIMD.simd_precise_length, validator: IsEqual(_:_:))
        TestAssert(RandomF8s( ), label: "simd_precise_length-f8" , reference: simd.simd_precise_length, subject: kvSIMD.simd_precise_length, validator: IsEqual(_:_:))
        TestAssert(RandomF16s(), label: "simd_precise_length-f16", reference: simd.simd_precise_length, subject: kvSIMD.simd_precise_length, validator: IsEqual(_:_:))

        TestAssert(RandomD2s( ), label: "simd_precise_length-d2" , reference: simd.simd_precise_length, subject: kvSIMD.simd_precise_length, validator: IsEqual(_:_:))
        TestAssert(RandomD3s( ), label: "simd_precise_length-d3" , reference: simd.simd_precise_length, subject: kvSIMD.simd_precise_length, validator: IsEqual(_:_:))
        TestAssert(RandomD4s( ), label: "simd_precise_length-d4" , reference: simd.simd_precise_length, subject: kvSIMD.simd_precise_length, validator: IsEqual(_:_:))
        TestAssert(RandomD8s( ), label: "simd_precise_length-d8" , reference: simd.simd_precise_length, subject: kvSIMD.simd_precise_length, validator: IsEqual(_:_:))
    }



    // MARK: test_simd_precise_normalize()

    func test_simd_precise_normalize() {
        TestAssert(RandomF2s( ), label: "simd_precise_normalize-f2" , reference: simd.simd_precise_normalize, subject: kvSIMD.simd_precise_normalize, validator: IsEqual(_:_:))
        TestAssert(RandomF3s( ), label: "simd_precise_normalize-f3" , reference: simd.simd_precise_normalize, subject: kvSIMD.simd_precise_normalize, validator: IsEqual(_:_:))
        TestAssert(RandomF4s( ), label: "simd_precise_normalize-f4" , reference: simd.simd_precise_normalize, subject: kvSIMD.simd_precise_normalize, validator: IsEqual(_:_:))
        TestAssert(RandomF8s( ), label: "simd_precise_normalize-f8" , reference: simd.simd_precise_normalize, subject: kvSIMD.simd_precise_normalize, validator: IsEqual(_:_:))
        TestAssert(RandomF16s(), label: "simd_precise_normalize-f16", reference: simd.simd_precise_normalize, subject: kvSIMD.simd_precise_normalize, validator: IsEqual(_:_:))

        TestAssert(RandomD2s( ), label: "simd_precise_normalize-d2" , reference: simd.simd_precise_normalize, subject: kvSIMD.simd_precise_normalize, validator: IsEqual(_:_:))
        TestAssert(RandomD3s( ), label: "simd_precise_normalize-d3" , reference: simd.simd_precise_normalize, subject: kvSIMD.simd_precise_normalize, validator: IsEqual(_:_:))
        TestAssert(RandomD4s( ), label: "simd_precise_normalize-d4" , reference: simd.simd_precise_normalize, subject: kvSIMD.simd_precise_normalize, validator: IsEqual(_:_:))
        TestAssert(RandomD8s( ), label: "simd_precise_normalize-d8" , reference: simd.simd_precise_normalize, subject: kvSIMD.simd_precise_normalize, validator: IsEqual(_:_:))
    }



    // MARK: test_simd_precise_project()

    func test_simd_precise_project() {
        TestAssert(RandomF2s( ), RandomF2s( ), label: "simd_precise_project-f2f2"  , reference: simd.simd_precise_project, subject: kvSIMD.simd_precise_project, validator: IsEqual(_:_:))
        TestAssert(RandomF3s( ), RandomF3s( ), label: "simd_precise_project-f3f3"  , reference: simd.simd_precise_project, subject: kvSIMD.simd_precise_project, validator: IsEqual(_:_:))
        TestAssert(RandomF4s( ), RandomF4s( ), label: "simd_precise_project-f4f4"  , reference: simd.simd_precise_project, subject: kvSIMD.simd_precise_project, validator: IsEqual(_:_:))
        TestAssert(RandomF8s( ), RandomF8s( ), label: "simd_precise_project-f8f8"  , reference: simd.simd_precise_project, subject: kvSIMD.simd_precise_project, validator: IsEqual(_:_:))
        TestAssert(RandomF16s(), RandomF16s(), label: "simd_precise_project-f16f16", reference: simd.simd_precise_project, subject: kvSIMD.simd_precise_project, validator: IsEqual(_:_:))

        TestAssert(RandomD2s( ), RandomD2s( ), label: "simd_precise_project-d2d2"  , reference: simd.simd_precise_project, subject: kvSIMD.simd_precise_project, validator: IsEqual(_:_:))
        TestAssert(RandomD3s( ), RandomD3s( ), label: "simd_precise_project-d3d3"  , reference: simd.simd_precise_project, subject: kvSIMD.simd_precise_project, validator: IsEqual(_:_:))
        TestAssert(RandomD4s( ), RandomD4s( ), label: "simd_precise_project-d4d4"  , reference: simd.simd_precise_project, subject: kvSIMD.simd_precise_project, validator: IsEqual(_:_:))
        TestAssert(RandomD8s( ), RandomD8s( ), label: "simd_precise_project-d8d8"  , reference: simd.simd_precise_project, subject: kvSIMD.simd_precise_project, validator: IsEqual(_:_:))
    }



    // MARK: test_simd_precise_recip()

    func test_simd_precise_recip() {
        TestAssert(RandomF1s( in: .cosh), label: "simd_precise_recip-f1" , reference: simd.simd_precise_recip, subject: kvSIMD.simd_precise_recip, validator: { IsEqual($0, $1, eps: .near(1.0)) })
        TestAssert(RandomF2s( in: .cosh), label: "simd_precise_recip-f2" , reference: simd.simd_precise_recip, subject: kvSIMD.simd_precise_recip, validator: { IsEqual($0, $1, eps: .near(1.0)) })
        TestAssert(RandomF3s( in: .cosh), label: "simd_precise_recip-f3" , reference: simd.simd_precise_recip, subject: kvSIMD.simd_precise_recip, validator: { IsEqual($0, $1, eps: .near(1.0)) })
        TestAssert(RandomF4s( in: .cosh), label: "simd_precise_recip-f4" , reference: simd.simd_precise_recip, subject: kvSIMD.simd_precise_recip, validator: { IsEqual($0, $1, eps: .near(1.0)) })
        TestAssert(RandomF8s( in: .cosh), label: "simd_precise_recip-f8" , reference: simd.simd_precise_recip, subject: kvSIMD.simd_precise_recip, validator: { IsEqual($0, $1, eps: .near(1.0)) })
        TestAssert(RandomF16s(in: .cosh), label: "simd_precise_recip-f16", reference: simd.simd_precise_recip, subject: kvSIMD.simd_precise_recip, validator: { IsEqual($0, $1, eps: .near(1.0)) })

        TestAssert(RandomD1s( in: .cosh), label: "simd_precise_recip-d1" , reference: simd.simd_precise_recip, subject: kvSIMD.simd_precise_recip, validator: { IsEqual($0, $1, eps: .near(1.0)) })
        TestAssert(RandomD2s( in: .cosh), label: "simd_precise_recip-d2" , reference: simd.simd_precise_recip, subject: kvSIMD.simd_precise_recip, validator: { IsEqual($0, $1, eps: .near(1.0)) })
        TestAssert(RandomD3s( in: .cosh), label: "simd_precise_recip-d3" , reference: simd.simd_precise_recip, subject: kvSIMD.simd_precise_recip, validator: { IsEqual($0, $1, eps: .near(1.0)) })
        TestAssert(RandomD4s( in: .cosh), label: "simd_precise_recip-d4" , reference: simd.simd_precise_recip, subject: kvSIMD.simd_precise_recip, validator: { IsEqual($0, $1, eps: .near(1.0)) })
        TestAssert(RandomD8s( in: .cosh), label: "simd_precise_recip-d8" , reference: simd.simd_precise_recip, subject: kvSIMD.simd_precise_recip, validator: { IsEqual($0, $1, eps: .near(1.0)) })
    }



    // MARK: test_simd_precise_rsqrt()

    func test_simd_precise_rsqrt() {
        TestAssert(RandomF1s( in: .cosh), label: "simd_precise_rsqrt-f1" , reference: simd.simd_precise_rsqrt, subject: kvSIMD.simd_precise_rsqrt, validator: IsEqual(_:_:))
        TestAssert(RandomF2s( in: .cosh), label: "simd_precise_rsqrt-f2" , reference: simd.simd_precise_rsqrt, subject: kvSIMD.simd_precise_rsqrt, validator: IsEqual(_:_:))
        TestAssert(RandomF3s( in: .cosh), label: "simd_precise_rsqrt-f3" , reference: simd.simd_precise_rsqrt, subject: kvSIMD.simd_precise_rsqrt, validator: IsEqual(_:_:))
        TestAssert(RandomF4s( in: .cosh), label: "simd_precise_rsqrt-f4" , reference: simd.simd_precise_rsqrt, subject: kvSIMD.simd_precise_rsqrt, validator: IsEqual(_:_:))
        TestAssert(RandomF8s( in: .cosh), label: "simd_precise_rsqrt-f8" , reference: simd.simd_precise_rsqrt, subject: kvSIMD.simd_precise_rsqrt, validator: IsEqual(_:_:))
        TestAssert(RandomF16s(in: .cosh), label: "simd_precise_rsqrt-f16", reference: simd.simd_precise_rsqrt, subject: kvSIMD.simd_precise_rsqrt, validator: IsEqual(_:_:))

        TestAssert(RandomD1s( in: .cosh), label: "simd_precise_rsqrt-d1" , reference: simd.simd_precise_rsqrt, subject: kvSIMD.simd_precise_rsqrt, validator: IsEqual(_:_:))
        TestAssert(RandomD2s( in: .cosh), label: "simd_precise_rsqrt-d2" , reference: simd.simd_precise_rsqrt, subject: kvSIMD.simd_precise_rsqrt, validator: IsEqual(_:_:))
        TestAssert(RandomD3s( in: .cosh), label: "simd_precise_rsqrt-d3" , reference: simd.simd_precise_rsqrt, subject: kvSIMD.simd_precise_rsqrt, validator: IsEqual(_:_:))
        TestAssert(RandomD4s( in: .cosh), label: "simd_precise_rsqrt-d4" , reference: simd.simd_precise_rsqrt, subject: kvSIMD.simd_precise_rsqrt, validator: IsEqual(_:_:))
        TestAssert(RandomD8s( in: .cosh), label: "simd_precise_rsqrt-d8" , reference: simd.simd_precise_rsqrt, subject: kvSIMD.simd_precise_rsqrt, validator: IsEqual(_:_:))
    }



    // MARK: test_simd_reduce_add_*()

    func test_simd_reduce_add_c() {
        TestAssert(RandomC2s( ), label: "simd_reduce_add-с2" , reference: simd.simd_reduce_add, subject: kvSIMD.simd_reduce_add, validator: ==)
        TestAssert(RandomC3s( ), label: "simd_reduce_add-с3" , reference: simd.simd_reduce_add, subject: kvSIMD.simd_reduce_add, validator: ==)
        TestAssert(RandomC4s( ), label: "simd_reduce_add-с4" , reference: simd.simd_reduce_add, subject: kvSIMD.simd_reduce_add, validator: ==)
        TestAssert(RandomC8s( ), label: "simd_reduce_add-с8" , reference: simd.simd_reduce_add, subject: kvSIMD.simd_reduce_add, validator: ==)
        TestAssert(RandomC16s(), label: "simd_reduce_add-с16", reference: simd.simd_reduce_add, subject: kvSIMD.simd_reduce_add, validator: ==)
        TestAssert(RandomC32s(), label: "simd_reduce_add-с32", reference: simd.simd_reduce_add, subject: kvSIMD.simd_reduce_add, validator: ==)
        TestAssert(RandomC64s(), label: "simd_reduce_add-с64", reference: simd.simd_reduce_add, subject: kvSIMD.simd_reduce_add, validator: ==)
    }

    func test_simd_reduce_add_uc() {
        TestAssert(RandomUC2s( ), label: "simd_reduce_add-uс2" , reference: simd.simd_reduce_add, subject: kvSIMD.simd_reduce_add, validator: ==)
        TestAssert(RandomUC3s( ), label: "simd_reduce_add-uс3" , reference: simd.simd_reduce_add, subject: kvSIMD.simd_reduce_add, validator: ==)
        TestAssert(RandomUC4s( ), label: "simd_reduce_add-uс4" , reference: simd.simd_reduce_add, subject: kvSIMD.simd_reduce_add, validator: ==)
        TestAssert(RandomUC8s( ), label: "simd_reduce_add-uс8" , reference: simd.simd_reduce_add, subject: kvSIMD.simd_reduce_add, validator: ==)
        TestAssert(RandomUC16s(), label: "simd_reduce_add-uс16", reference: simd.simd_reduce_add, subject: kvSIMD.simd_reduce_add, validator: ==)
        TestAssert(RandomUC32s(), label: "simd_reduce_add-uс32", reference: simd.simd_reduce_add, subject: kvSIMD.simd_reduce_add, validator: ==)
        TestAssert(RandomUC64s(), label: "simd_reduce_add-uс64", reference: simd.simd_reduce_add, subject: kvSIMD.simd_reduce_add, validator: ==)
    }

    func test_simd_reduce_add_s() {
        TestAssert(RandomS2s( ), label: "simd_reduce_add-s2" , reference: simd.simd_reduce_add, subject: kvSIMD.simd_reduce_add, validator: ==)
        TestAssert(RandomS3s( ), label: "simd_reduce_add-s3" , reference: simd.simd_reduce_add, subject: kvSIMD.simd_reduce_add, validator: ==)
        TestAssert(RandomS4s( ), label: "simd_reduce_add-s4" , reference: simd.simd_reduce_add, subject: kvSIMD.simd_reduce_add, validator: ==)
        TestAssert(RandomS8s( ), label: "simd_reduce_add-s8" , reference: simd.simd_reduce_add, subject: kvSIMD.simd_reduce_add, validator: ==)
        TestAssert(RandomS16s(), label: "simd_reduce_add-s16", reference: simd.simd_reduce_add, subject: kvSIMD.simd_reduce_add, validator: ==)
        TestAssert(RandomS32s(), label: "simd_reduce_add-s32", reference: simd.simd_reduce_add, subject: kvSIMD.simd_reduce_add, validator: ==)
    }

    func test_simd_reduce_add_us() {
        TestAssert(RandomUS2s( ), label: "simd_reduce_add-us2" , reference: simd.simd_reduce_add, subject: kvSIMD.simd_reduce_add, validator: ==)
        TestAssert(RandomUS3s( ), label: "simd_reduce_add-us3" , reference: simd.simd_reduce_add, subject: kvSIMD.simd_reduce_add, validator: ==)
        TestAssert(RandomUS4s( ), label: "simd_reduce_add-us4" , reference: simd.simd_reduce_add, subject: kvSIMD.simd_reduce_add, validator: ==)
        TestAssert(RandomUS8s( ), label: "simd_reduce_add-us8" , reference: simd.simd_reduce_add, subject: kvSIMD.simd_reduce_add, validator: ==)
        TestAssert(RandomUS16s(), label: "simd_reduce_add-us16", reference: simd.simd_reduce_add, subject: kvSIMD.simd_reduce_add, validator: ==)
        TestAssert(RandomUS32s(), label: "simd_reduce_add-us32", reference: simd.simd_reduce_add, subject: kvSIMD.simd_reduce_add, validator: ==)
    }

    func test_simd_reduce_add_i() {
        TestAssert(RandomI2s( ), label: "simd_reduce_add-i2" , reference: simd.simd_reduce_add, subject: kvSIMD.simd_reduce_add, validator: ==)
        TestAssert(RandomI3s( ), label: "simd_reduce_add-i3" , reference: simd.simd_reduce_add, subject: kvSIMD.simd_reduce_add, validator: ==)
        TestAssert(RandomI4s( ), label: "simd_reduce_add-i4" , reference: simd.simd_reduce_add, subject: kvSIMD.simd_reduce_add, validator: ==)
        TestAssert(RandomI8s( ), label: "simd_reduce_add-i8" , reference: simd.simd_reduce_add, subject: kvSIMD.simd_reduce_add, validator: ==)
        TestAssert(RandomI16s(), label: "simd_reduce_add-i16", reference: simd.simd_reduce_add, subject: kvSIMD.simd_reduce_add, validator: ==)
    }

    func test_simd_reduce_add_ui() {
        TestAssert(RandomUI2s( ), label: "simd_reduce_add-ui2" , reference: simd.simd_reduce_add, subject: kvSIMD.simd_reduce_add, validator: ==)
        TestAssert(RandomUI3s( ), label: "simd_reduce_add-ui3" , reference: simd.simd_reduce_add, subject: kvSIMD.simd_reduce_add, validator: ==)
        TestAssert(RandomUI4s( ), label: "simd_reduce_add-ui4" , reference: simd.simd_reduce_add, subject: kvSIMD.simd_reduce_add, validator: ==)
        TestAssert(RandomUI8s( ), label: "simd_reduce_add-ui8" , reference: simd.simd_reduce_add, subject: kvSIMD.simd_reduce_add, validator: ==)
        TestAssert(RandomUI16s(), label: "simd_reduce_add-ui16", reference: simd.simd_reduce_add, subject: kvSIMD.simd_reduce_add, validator: ==)
    }

    func test_simd_reduce_add_l() {
        TestAssert(RandomL2s( ), label: "simd_reduce_add-l2" , reference: simd.simd_reduce_add, subject: kvSIMD.simd_reduce_add, validator: ==)
        TestAssert(RandomL3s( ), label: "simd_reduce_add-l3" , reference: simd.simd_reduce_add, subject: kvSIMD.simd_reduce_add, validator: ==)
        TestAssert(RandomL4s( ), label: "simd_reduce_add-l4" , reference: simd.simd_reduce_add, subject: kvSIMD.simd_reduce_add, validator: ==)
        TestAssert(RandomL8s( ), label: "simd_reduce_add-l8" , reference: simd.simd_reduce_add, subject: kvSIMD.simd_reduce_add, validator: ==)
    }

    func test_simd_reduce_add_ul() {
        TestAssert(RandomUL2s( ), label: "simd_reduce_add-ul2" , reference: simd.simd_reduce_add, subject: kvSIMD.simd_reduce_add, validator: ==)
        TestAssert(RandomUL3s( ), label: "simd_reduce_add-ul3" , reference: simd.simd_reduce_add, subject: kvSIMD.simd_reduce_add, validator: ==)
        TestAssert(RandomUL4s( ), label: "simd_reduce_add-ul4" , reference: simd.simd_reduce_add, subject: kvSIMD.simd_reduce_add, validator: ==)
        TestAssert(RandomUL8s( ), label: "simd_reduce_add-ul8" , reference: simd.simd_reduce_add, subject: kvSIMD.simd_reduce_add, validator: ==)
    }

    func test_simd_reduce_add_f() {
        TestAssert(RandomF2s( ), label: "simd_reduce_add-f2" , reference: simd.simd_reduce_add, subject: kvSIMD.simd_reduce_add, validator: IsEqual(_:_:))
        TestAssert(RandomF3s( ), label: "simd_reduce_add-f3" , reference: simd.simd_reduce_add, subject: kvSIMD.simd_reduce_add, validator: IsEqual(_:_:))
        TestAssert(RandomF4s( ), label: "simd_reduce_add-f4" , reference: simd.simd_reduce_add, subject: kvSIMD.simd_reduce_add, validator: IsEqual(_:_:))
        TestAssert(RandomF8s( ), label: "simd_reduce_add-f8" , reference: simd.simd_reduce_add, subject: kvSIMD.simd_reduce_add, validator: IsEqual(_:_:))
        TestAssert(RandomF16s(), label: "simd_reduce_add-f16", reference: simd.simd_reduce_add, subject: kvSIMD.simd_reduce_add, validator: IsEqual(_:_:))
    }

    func test_simd_reduce_add_d() {
        TestAssert(RandomD2s( ), label: "simd_reduce_add-d2" , reference: simd.simd_reduce_add, subject: kvSIMD.simd_reduce_add, validator: IsEqual(_:_:))
        TestAssert(RandomD3s( ), label: "simd_reduce_add-d3" , reference: simd.simd_reduce_add, subject: kvSIMD.simd_reduce_add, validator: IsEqual(_:_:))
        TestAssert(RandomD4s( ), label: "simd_reduce_add-d4" , reference: simd.simd_reduce_add, subject: kvSIMD.simd_reduce_add, validator: IsEqual(_:_:))
        TestAssert(RandomD8s( ), label: "simd_reduce_add-d8" , reference: simd.simd_reduce_add, subject: kvSIMD.simd_reduce_add, validator: IsEqual(_:_:))
    }



    // MARK: test_simd_reduce_max_*()

    func test_simd_reduce_max_c() {
        TestAssert(RandomC2s( ), label: "simd_reduce_max-с2" , reference: simd.simd_reduce_max, subject: kvSIMD.simd_reduce_max, validator: ==)
        TestAssert(RandomC3s( ), label: "simd_reduce_max-с3" , reference: simd.simd_reduce_max, subject: kvSIMD.simd_reduce_max, validator: ==)
        TestAssert(RandomC4s( ), label: "simd_reduce_max-с4" , reference: simd.simd_reduce_max, subject: kvSIMD.simd_reduce_max, validator: ==)
        TestAssert(RandomC8s( ), label: "simd_reduce_max-с8" , reference: simd.simd_reduce_max, subject: kvSIMD.simd_reduce_max, validator: ==)
        TestAssert(RandomC16s(), label: "simd_reduce_max-с16", reference: simd.simd_reduce_max, subject: kvSIMD.simd_reduce_max, validator: ==)
        TestAssert(RandomC32s(), label: "simd_reduce_max-с32", reference: simd.simd_reduce_max, subject: kvSIMD.simd_reduce_max, validator: ==)
        TestAssert(RandomC64s(), label: "simd_reduce_max-с64", reference: simd.simd_reduce_max, subject: kvSIMD.simd_reduce_max, validator: ==)
    }

    func test_simd_reduce_max_uc() {
        TestAssert(RandomUC2s( ), label: "simd_reduce_max-uс2" , reference: simd.simd_reduce_max, subject: kvSIMD.simd_reduce_max, validator: ==)
        TestAssert(RandomUC3s( ), label: "simd_reduce_max-uс3" , reference: simd.simd_reduce_max, subject: kvSIMD.simd_reduce_max, validator: ==)
        TestAssert(RandomUC4s( ), label: "simd_reduce_max-uс4" , reference: simd.simd_reduce_max, subject: kvSIMD.simd_reduce_max, validator: ==)
        TestAssert(RandomUC8s( ), label: "simd_reduce_max-uс8" , reference: simd.simd_reduce_max, subject: kvSIMD.simd_reduce_max, validator: ==)
        TestAssert(RandomUC16s(), label: "simd_reduce_max-uс16", reference: simd.simd_reduce_max, subject: kvSIMD.simd_reduce_max, validator: ==)
        TestAssert(RandomUC32s(), label: "simd_reduce_max-uс32", reference: simd.simd_reduce_max, subject: kvSIMD.simd_reduce_max, validator: ==)
        TestAssert(RandomUC64s(), label: "simd_reduce_max-uс64", reference: simd.simd_reduce_max, subject: kvSIMD.simd_reduce_max, validator: ==)
    }

    func test_simd_reduce_max_s() {
        TestAssert(RandomS2s( ), label: "simd_reduce_max-s2" , reference: simd.simd_reduce_max, subject: kvSIMD.simd_reduce_max, validator: ==)
        TestAssert(RandomS3s( ), label: "simd_reduce_max-s3" , reference: simd.simd_reduce_max, subject: kvSIMD.simd_reduce_max, validator: ==)
        TestAssert(RandomS4s( ), label: "simd_reduce_max-s4" , reference: simd.simd_reduce_max, subject: kvSIMD.simd_reduce_max, validator: ==)
        TestAssert(RandomS8s( ), label: "simd_reduce_max-s8" , reference: simd.simd_reduce_max, subject: kvSIMD.simd_reduce_max, validator: ==)
        TestAssert(RandomS16s(), label: "simd_reduce_max-s16", reference: simd.simd_reduce_max, subject: kvSIMD.simd_reduce_max, validator: ==)
        TestAssert(RandomS32s(), label: "simd_reduce_max-s32", reference: simd.simd_reduce_max, subject: kvSIMD.simd_reduce_max, validator: ==)
    }

    func test_simd_reduce_max_us() {
        TestAssert(RandomUS2s( ), label: "simd_reduce_max-us2" , reference: simd.simd_reduce_max, subject: kvSIMD.simd_reduce_max, validator: ==)
        TestAssert(RandomUS3s( ), label: "simd_reduce_max-us3" , reference: simd.simd_reduce_max, subject: kvSIMD.simd_reduce_max, validator: ==)
        TestAssert(RandomUS4s( ), label: "simd_reduce_max-us4" , reference: simd.simd_reduce_max, subject: kvSIMD.simd_reduce_max, validator: ==)
        TestAssert(RandomUS8s( ), label: "simd_reduce_max-us8" , reference: simd.simd_reduce_max, subject: kvSIMD.simd_reduce_max, validator: ==)
        TestAssert(RandomUS16s(), label: "simd_reduce_max-us16", reference: simd.simd_reduce_max, subject: kvSIMD.simd_reduce_max, validator: ==)
        TestAssert(RandomUS32s(), label: "simd_reduce_max-us32", reference: simd.simd_reduce_max, subject: kvSIMD.simd_reduce_max, validator: ==)
    }

    func test_simd_reduce_max_i() {
        TestAssert(RandomI2s( ), label: "simd_reduce_max-i2" , reference: simd.simd_reduce_max, subject: kvSIMD.simd_reduce_max, validator: ==)
        TestAssert(RandomI3s( ), label: "simd_reduce_max-i3" , reference: simd.simd_reduce_max, subject: kvSIMD.simd_reduce_max, validator: ==)
        TestAssert(RandomI4s( ), label: "simd_reduce_max-i4" , reference: simd.simd_reduce_max, subject: kvSIMD.simd_reduce_max, validator: ==)
        TestAssert(RandomI8s( ), label: "simd_reduce_max-i8" , reference: simd.simd_reduce_max, subject: kvSIMD.simd_reduce_max, validator: ==)
        TestAssert(RandomI16s(), label: "simd_reduce_max-i16", reference: simd.simd_reduce_max, subject: kvSIMD.simd_reduce_max, validator: ==)
    }

    func test_simd_reduce_max_ui() {
        TestAssert(RandomUI2s( ), label: "simd_reduce_max-ui2" , reference: simd.simd_reduce_max, subject: kvSIMD.simd_reduce_max, validator: ==)
        TestAssert(RandomUI3s( ), label: "simd_reduce_max-ui3" , reference: simd.simd_reduce_max, subject: kvSIMD.simd_reduce_max, validator: ==)
        TestAssert(RandomUI4s( ), label: "simd_reduce_max-ui4" , reference: simd.simd_reduce_max, subject: kvSIMD.simd_reduce_max, validator: ==)
        TestAssert(RandomUI8s( ), label: "simd_reduce_max-ui8" , reference: simd.simd_reduce_max, subject: kvSIMD.simd_reduce_max, validator: ==)
        TestAssert(RandomUI16s(), label: "simd_reduce_max-ui16", reference: simd.simd_reduce_max, subject: kvSIMD.simd_reduce_max, validator: ==)
    }

    func test_simd_reduce_max_l() {
        TestAssert(RandomL2s( ), label: "simd_reduce_max-l2" , reference: simd.simd_reduce_max, subject: kvSIMD.simd_reduce_max, validator: ==)
        TestAssert(RandomL3s( ), label: "simd_reduce_max-l3" , reference: simd.simd_reduce_max, subject: kvSIMD.simd_reduce_max, validator: ==)
        TestAssert(RandomL4s( ), label: "simd_reduce_max-l4" , reference: simd.simd_reduce_max, subject: kvSIMD.simd_reduce_max, validator: ==)
        TestAssert(RandomL8s( ), label: "simd_reduce_max-l8" , reference: simd.simd_reduce_max, subject: kvSIMD.simd_reduce_max, validator: ==)
    }

    func test_simd_reduce_max_ul() {
        TestAssert(RandomUL2s( ), label: "simd_reduce_max-ul2" , reference: simd.simd_reduce_max, subject: kvSIMD.simd_reduce_max, validator: ==)
        TestAssert(RandomUL3s( ), label: "simd_reduce_max-ul3" , reference: simd.simd_reduce_max, subject: kvSIMD.simd_reduce_max, validator: ==)
        TestAssert(RandomUL4s( ), label: "simd_reduce_max-ul4" , reference: simd.simd_reduce_max, subject: kvSIMD.simd_reduce_max, validator: ==)
        TestAssert(RandomUL8s( ), label: "simd_reduce_max-ul8" , reference: simd.simd_reduce_max, subject: kvSIMD.simd_reduce_max, validator: ==)
    }

    func test_simd_reduce_max_f() {
        TestAssert(RandomF2s( ), label: "simd_reduce_max-f2" , reference: simd.simd_reduce_max, subject: kvSIMD.simd_reduce_max, validator: IsEqual(_:_:))
        TestAssert(RandomF3s( ), label: "simd_reduce_max-f3" , reference: simd.simd_reduce_max, subject: kvSIMD.simd_reduce_max, validator: IsEqual(_:_:))
        TestAssert(RandomF4s( ), label: "simd_reduce_max-f4" , reference: simd.simd_reduce_max, subject: kvSIMD.simd_reduce_max, validator: IsEqual(_:_:))
        TestAssert(RandomF8s( ), label: "simd_reduce_max-f8" , reference: simd.simd_reduce_max, subject: kvSIMD.simd_reduce_max, validator: IsEqual(_:_:))
        TestAssert(RandomF16s(), label: "simd_reduce_max-f16", reference: simd.simd_reduce_max, subject: kvSIMD.simd_reduce_max, validator: IsEqual(_:_:))
    }

    func test_simd_reduce_max_d() {
        TestAssert(RandomD2s( ), label: "simd_reduce_max-d2" , reference: simd.simd_reduce_max, subject: kvSIMD.simd_reduce_max, validator: IsEqual(_:_:))
        TestAssert(RandomD3s( ), label: "simd_reduce_max-d3" , reference: simd.simd_reduce_max, subject: kvSIMD.simd_reduce_max, validator: IsEqual(_:_:))
        TestAssert(RandomD4s( ), label: "simd_reduce_max-d4" , reference: simd.simd_reduce_max, subject: kvSIMD.simd_reduce_max, validator: IsEqual(_:_:))
        TestAssert(RandomD8s( ), label: "simd_reduce_max-d8" , reference: simd.simd_reduce_max, subject: kvSIMD.simd_reduce_max, validator: IsEqual(_:_:))
    }



    // MARK: test_simd_reduce_min_*()

    func test_simd_reduce_min_c() {
        TestAssert(RandomC2s( ), label: "simd_reduce_min-с2" , reference: simd.simd_reduce_min, subject: kvSIMD.simd_reduce_min, validator: ==)
        TestAssert(RandomC3s( ), label: "simd_reduce_min-с3" , reference: simd.simd_reduce_min, subject: kvSIMD.simd_reduce_min, validator: ==)
        TestAssert(RandomC4s( ), label: "simd_reduce_min-с4" , reference: simd.simd_reduce_min, subject: kvSIMD.simd_reduce_min, validator: ==)
        TestAssert(RandomC8s( ), label: "simd_reduce_min-с8" , reference: simd.simd_reduce_min, subject: kvSIMD.simd_reduce_min, validator: ==)
        TestAssert(RandomC16s(), label: "simd_reduce_min-с16", reference: simd.simd_reduce_min, subject: kvSIMD.simd_reduce_min, validator: ==)
        TestAssert(RandomC32s(), label: "simd_reduce_min-с32", reference: simd.simd_reduce_min, subject: kvSIMD.simd_reduce_min, validator: ==)
        TestAssert(RandomC64s(), label: "simd_reduce_min-с64", reference: simd.simd_reduce_min, subject: kvSIMD.simd_reduce_min, validator: ==)
    }

    func test_simd_reduce_min_uc() {
        TestAssert(RandomUC2s( ), label: "simd_reduce_min-uс2" , reference: simd.simd_reduce_min, subject: kvSIMD.simd_reduce_min, validator: ==)
        TestAssert(RandomUC3s( ), label: "simd_reduce_min-uс3" , reference: simd.simd_reduce_min, subject: kvSIMD.simd_reduce_min, validator: ==)
        TestAssert(RandomUC4s( ), label: "simd_reduce_min-uс4" , reference: simd.simd_reduce_min, subject: kvSIMD.simd_reduce_min, validator: ==)
        TestAssert(RandomUC8s( ), label: "simd_reduce_min-uс8" , reference: simd.simd_reduce_min, subject: kvSIMD.simd_reduce_min, validator: ==)
        TestAssert(RandomUC16s(), label: "simd_reduce_min-uс16", reference: simd.simd_reduce_min, subject: kvSIMD.simd_reduce_min, validator: ==)
        TestAssert(RandomUC32s(), label: "simd_reduce_min-uс32", reference: simd.simd_reduce_min, subject: kvSIMD.simd_reduce_min, validator: ==)
        TestAssert(RandomUC64s(), label: "simd_reduce_min-uс64", reference: simd.simd_reduce_min, subject: kvSIMD.simd_reduce_min, validator: ==)
    }

    func test_simd_reduce_min_s() {
        TestAssert(RandomS2s( ), label: "simd_reduce_min-s2" , reference: simd.simd_reduce_min, subject: kvSIMD.simd_reduce_min, validator: ==)
        TestAssert(RandomS3s( ), label: "simd_reduce_min-s3" , reference: simd.simd_reduce_min, subject: kvSIMD.simd_reduce_min, validator: ==)
        TestAssert(RandomS4s( ), label: "simd_reduce_min-s4" , reference: simd.simd_reduce_min, subject: kvSIMD.simd_reduce_min, validator: ==)
        TestAssert(RandomS8s( ), label: "simd_reduce_min-s8" , reference: simd.simd_reduce_min, subject: kvSIMD.simd_reduce_min, validator: ==)
        TestAssert(RandomS16s(), label: "simd_reduce_min-s16", reference: simd.simd_reduce_min, subject: kvSIMD.simd_reduce_min, validator: ==)
        TestAssert(RandomS32s(), label: "simd_reduce_min-s32", reference: simd.simd_reduce_min, subject: kvSIMD.simd_reduce_min, validator: ==)
    }

    func test_simd_reduce_min_us() {
        TestAssert(RandomUS2s( ), label: "simd_reduce_min-us2" , reference: simd.simd_reduce_min, subject: kvSIMD.simd_reduce_min, validator: ==)
        TestAssert(RandomUS3s( ), label: "simd_reduce_min-us3" , reference: simd.simd_reduce_min, subject: kvSIMD.simd_reduce_min, validator: ==)
        TestAssert(RandomUS4s( ), label: "simd_reduce_min-us4" , reference: simd.simd_reduce_min, subject: kvSIMD.simd_reduce_min, validator: ==)
        TestAssert(RandomUS8s( ), label: "simd_reduce_min-us8" , reference: simd.simd_reduce_min, subject: kvSIMD.simd_reduce_min, validator: ==)
        TestAssert(RandomUS16s(), label: "simd_reduce_min-us16", reference: simd.simd_reduce_min, subject: kvSIMD.simd_reduce_min, validator: ==)
        TestAssert(RandomUS32s(), label: "simd_reduce_min-us32", reference: simd.simd_reduce_min, subject: kvSIMD.simd_reduce_min, validator: ==)
    }

    func test_simd_reduce_min_i() {
        TestAssert(RandomI2s( ), label: "simd_reduce_min-i2" , reference: simd.simd_reduce_min, subject: kvSIMD.simd_reduce_min, validator: ==)
        TestAssert(RandomI3s( ), label: "simd_reduce_min-i3" , reference: simd.simd_reduce_min, subject: kvSIMD.simd_reduce_min, validator: ==)
        TestAssert(RandomI4s( ), label: "simd_reduce_min-i4" , reference: simd.simd_reduce_min, subject: kvSIMD.simd_reduce_min, validator: ==)
        TestAssert(RandomI8s( ), label: "simd_reduce_min-i8" , reference: simd.simd_reduce_min, subject: kvSIMD.simd_reduce_min, validator: ==)
        TestAssert(RandomI16s(), label: "simd_reduce_min-i16", reference: simd.simd_reduce_min, subject: kvSIMD.simd_reduce_min, validator: ==)
    }

    func test_simd_reduce_min_ui() {
        TestAssert(RandomUI2s( ), label: "simd_reduce_min-ui2" , reference: simd.simd_reduce_min, subject: kvSIMD.simd_reduce_min, validator: ==)
        TestAssert(RandomUI3s( ), label: "simd_reduce_min-ui3" , reference: simd.simd_reduce_min, subject: kvSIMD.simd_reduce_min, validator: ==)
        TestAssert(RandomUI4s( ), label: "simd_reduce_min-ui4" , reference: simd.simd_reduce_min, subject: kvSIMD.simd_reduce_min, validator: ==)
        TestAssert(RandomUI8s( ), label: "simd_reduce_min-ui8" , reference: simd.simd_reduce_min, subject: kvSIMD.simd_reduce_min, validator: ==)
        TestAssert(RandomUI16s(), label: "simd_reduce_min-ui16", reference: simd.simd_reduce_min, subject: kvSIMD.simd_reduce_min, validator: ==)
    }

    func test_simd_reduce_min_l() {
        TestAssert(RandomL2s( ), label: "simd_reduce_min-l2" , reference: simd.simd_reduce_min, subject: kvSIMD.simd_reduce_min, validator: ==)
        TestAssert(RandomL3s( ), label: "simd_reduce_min-l3" , reference: simd.simd_reduce_min, subject: kvSIMD.simd_reduce_min, validator: ==)
        TestAssert(RandomL4s( ), label: "simd_reduce_min-l4" , reference: simd.simd_reduce_min, subject: kvSIMD.simd_reduce_min, validator: ==)
        TestAssert(RandomL8s( ), label: "simd_reduce_min-l8" , reference: simd.simd_reduce_min, subject: kvSIMD.simd_reduce_min, validator: ==)
    }

    func test_simd_reduce_min_ul() {
        TestAssert(RandomUL2s( ), label: "simd_reduce_min-ul2" , reference: simd.simd_reduce_min, subject: kvSIMD.simd_reduce_min, validator: ==)
        TestAssert(RandomUL3s( ), label: "simd_reduce_min-ul3" , reference: simd.simd_reduce_min, subject: kvSIMD.simd_reduce_min, validator: ==)
        TestAssert(RandomUL4s( ), label: "simd_reduce_min-ul4" , reference: simd.simd_reduce_min, subject: kvSIMD.simd_reduce_min, validator: ==)
        TestAssert(RandomUL8s( ), label: "simd_reduce_min-ul8" , reference: simd.simd_reduce_min, subject: kvSIMD.simd_reduce_min, validator: ==)
    }

    func test_simd_reduce_min_f() {
        TestAssert(RandomF2s( ), label: "simd_reduce_min-f2" , reference: simd.simd_reduce_min, subject: kvSIMD.simd_reduce_min, validator: IsEqual(_:_:))
        TestAssert(RandomF3s( ), label: "simd_reduce_min-f3" , reference: simd.simd_reduce_min, subject: kvSIMD.simd_reduce_min, validator: IsEqual(_:_:))
        TestAssert(RandomF4s( ), label: "simd_reduce_min-f4" , reference: simd.simd_reduce_min, subject: kvSIMD.simd_reduce_min, validator: IsEqual(_:_:))
        TestAssert(RandomF8s( ), label: "simd_reduce_min-f8" , reference: simd.simd_reduce_min, subject: kvSIMD.simd_reduce_min, validator: IsEqual(_:_:))
        TestAssert(RandomF16s(), label: "simd_reduce_min-f16", reference: simd.simd_reduce_min, subject: kvSIMD.simd_reduce_min, validator: IsEqual(_:_:))
    }

    func test_simd_reduce_min_d() {
        TestAssert(RandomD2s( ), label: "simd_reduce_min-d2" , reference: simd.simd_reduce_min, subject: kvSIMD.simd_reduce_min, validator: IsEqual(_:_:))
        TestAssert(RandomD3s( ), label: "simd_reduce_min-d3" , reference: simd.simd_reduce_min, subject: kvSIMD.simd_reduce_min, validator: IsEqual(_:_:))
        TestAssert(RandomD4s( ), label: "simd_reduce_min-d4" , reference: simd.simd_reduce_min, subject: kvSIMD.simd_reduce_min, validator: IsEqual(_:_:))
        TestAssert(RandomD8s( ), label: "simd_reduce_min-d8" , reference: simd.simd_reduce_min, subject: kvSIMD.simd_reduce_min, validator: IsEqual(_:_:))
    }



    // MARK: test_simd_reflect()

    func test_simd_reflect() {
        TestAssert(RandomF2s(), RandomF2s().lazy.map(simd.normalize), label: "simd_reflect-f2f2", reference: simd.simd_reflect, subject: kvSIMD.simd_reflect, validator: IsEqual(_:_:))
        TestAssert(RandomF3s(), RandomF3s().lazy.map(simd.normalize), label: "simd_reflect-f3f3", reference: simd.simd_reflect, subject: kvSIMD.simd_reflect, validator: IsEqual(_:_:))
        TestAssert(RandomF4s(), RandomF4s().lazy.map(simd.normalize), label: "simd_reflect-f4f4", reference: simd.simd_reflect, subject: kvSIMD.simd_reflect, validator: IsEqual(_:_:))

        TestAssert(RandomD2s(), RandomD2s().lazy.map(simd.normalize), label: "simd_reflect-d2d2", reference: simd.simd_reflect, subject: kvSIMD.simd_reflect, validator: IsEqual(_:_:))
        TestAssert(RandomD3s(), RandomD3s().lazy.map(simd.normalize), label: "simd_reflect-d3d3", reference: simd.simd_reflect, subject: kvSIMD.simd_reflect, validator: IsEqual(_:_:))
        TestAssert(RandomD4s(), RandomD4s().lazy.map(simd.normalize), label: "simd_reflect-d4d4", reference: simd.simd_reflect, subject: kvSIMD.simd_reflect, validator: IsEqual(_:_:))
    }



    // MARK: test_simd_refract()

    func test_simd_refract() {
        TestAssert(RandomF2s(), RandomF2s().lazy.map(simd.normalize), RandomF1s(), label: "simd_refract-f2f2f1", reference: simd.simd_refract, subject: kvSIMD.simd_refract, validator: IsEqual(_:_:))
        TestAssert(RandomF3s(), RandomF3s().lazy.map(simd.normalize), RandomF1s(), label: "simd_refract-f3f3f1", reference: simd.simd_refract, subject: kvSIMD.simd_refract, validator: IsEqual(_:_:))
        TestAssert(RandomF4s(), RandomF4s().lazy.map(simd.normalize), RandomF1s(), label: "simd_refract-f4f4f1", reference: simd.simd_refract, subject: kvSIMD.simd_refract, validator: IsEqual(_:_:))

        TestAssert(RandomD2s(), RandomD2s().lazy.map(simd.normalize), RandomD1s(), label: "simd_refract-d2d2d1", reference: simd.simd_refract, subject: kvSIMD.simd_refract, validator: IsEqual(_:_:))
        TestAssert(RandomD3s(), RandomD3s().lazy.map(simd.normalize), RandomD1s(), label: "simd_refract-d3d3d1", reference: simd.simd_refract, subject: kvSIMD.simd_refract, validator: IsEqual(_:_:))
        TestAssert(RandomD4s(), RandomD4s().lazy.map(simd.normalize), RandomD1s(), label: "simd_refract-d4d4d1", reference: simd.simd_refract, subject: kvSIMD.simd_refract, validator: IsEqual(_:_:))
    }



    // MARK: test_simd_select()

    func test_simd_select() {
        TestAssert(RandomF2s( ), RandomF2s( ), RandomI2s( ), label: "simd_select-f2f2i2"   , reference: simd.simd_select, subject: kvSIMD.simd_select, validator: ==)
        TestAssert(RandomF3s( ), RandomF3s( ), RandomI3s( ), label: "simd_select-f3f3i3"   , reference: simd.simd_select, subject: kvSIMD.simd_select, validator: ==)
        TestAssert(RandomF4s( ), RandomF4s( ), RandomI4s( ), label: "simd_select-f4f4i4"   , reference: simd.simd_select, subject: kvSIMD.simd_select, validator: ==)
        TestAssert(RandomF8s( ), RandomF8s( ), RandomI8s( ), label: "simd_select-f8f8i8"   , reference: simd.simd_select, subject: kvSIMD.simd_select, validator: ==)
        TestAssert(RandomF16s(), RandomF16s(), RandomI16s(), label: "simd_select-f16f16i16", reference: simd.simd_select, subject: kvSIMD.simd_select, validator: ==)

        TestAssert(RandomD2s(), RandomD2s(), RandomL2s(), label: "simd_select-d2d2l2", reference: simd.simd_select, subject: kvSIMD.simd_select, validator: ==)
        TestAssert(RandomD3s(), RandomD3s(), RandomL3s(), label: "simd_select-d3d3l3", reference: simd.simd_select, subject: kvSIMD.simd_select, validator: ==)
        TestAssert(RandomD4s(), RandomD4s(), RandomL4s(), label: "simd_select-d4d4l4", reference: simd.simd_select, subject: kvSIMD.simd_select, validator: ==)
        TestAssert(RandomD8s(), RandomD8s(), RandomL8s(), label: "simd_select-d8d8l8", reference: simd.simd_select, subject: kvSIMD.simd_select, validator: ==)
    }



    // MARK: test_simd_sign()

    func test_simd_sign() {
        TestAssert(RandomF1s( ), label: "simd_sign-f1" , reference: simd.simd_sign, subject: kvSIMD.simd_sign, validator: ==)
        TestAssert(RandomF2s( ), label: "simd_sign-f2" , reference: simd.simd_sign, subject: kvSIMD.simd_sign, validator: ==)
        TestAssert(RandomF3s( ), label: "simd_sign-f3" , reference: simd.simd_sign, subject: kvSIMD.simd_sign, validator: ==)
        TestAssert(RandomF4s( ), label: "simd_sign-f4" , reference: simd.simd_sign, subject: kvSIMD.simd_sign, validator: ==)
        TestAssert(RandomF8s( ), label: "simd_sign-f8" , reference: simd.simd_sign, subject: kvSIMD.simd_sign, validator: ==)
        TestAssert(RandomF16s(), label: "simd_sign-f16", reference: simd.simd_sign, subject: kvSIMD.simd_sign, validator: ==)

        TestAssert(RandomD1s( ), label: "simd_sign-d1" , reference: simd.simd_sign, subject: kvSIMD.simd_sign, validator: ==)
        TestAssert(RandomD2s( ), label: "simd_sign-d2" , reference: simd.simd_sign, subject: kvSIMD.simd_sign, validator: ==)
        TestAssert(RandomD3s( ), label: "simd_sign-d3" , reference: simd.simd_sign, subject: kvSIMD.simd_sign, validator: ==)
        TestAssert(RandomD4s( ), label: "simd_sign-d4" , reference: simd.simd_sign, subject: kvSIMD.simd_sign, validator: ==)
        TestAssert(RandomD8s( ), label: "simd_sign-d8" , reference: simd.simd_sign, subject: kvSIMD.simd_sign, validator: ==)
    }



    // MARK: test_simd_slerp()

    func test_simd_slerp() {
        (0..<1000).forEach { _ in
            assertEqual((RandomInputQF(), RandomInputQF(), F1.random(in: -2.0 ... 2.0)), { kvSIMD.simd_slerp($0.0.subject, $0.1.subject, $0.2) }, { simd.simd_slerp($0.0.reference, $0.1.reference, $0.2) }, { IsEqualQ($0, $1, eps: .near(100.0)) })
            assertEqual((RandomInputQD(), RandomInputQD(), D1.random(in: -2.0 ... 2.0)), { kvSIMD.simd_slerp($0.0.subject, $0.1.subject, $0.2) }, { simd.simd_slerp($0.0.reference, $0.1.reference, $0.2) }, { IsEqualQ($0, $1, eps: .near(100.0)) })
        }
    }



    // MARK: test_simd_slerp_longest()

    func test_simd_slerp_longest() {
        (0..<1000).forEach { _ in
            assertEqual((RandomInputQF(), RandomInputQF(), F1.random(in: -2.0 ... 2.0)), { kvSIMD.simd_slerp_longest($0.0.subject, $0.1.subject, $0.2) }, { simd.simd_slerp_longest($0.0.reference, $0.1.reference, $0.2) }, { IsEqualQ($0, $1, eps: .near(100.0)) })
            assertEqual((RandomInputQD(), RandomInputQD(), D1.random(in: -2.0 ... 2.0)), { kvSIMD.simd_slerp_longest($0.0.subject, $0.1.subject, $0.2) }, { simd.simd_slerp_longest($0.0.reference, $0.1.reference, $0.2) }, { IsEqualQ($0, $1, eps: .near(100.0)) })
        }
    }



    // MARK: test_simd_spline()

    func test_simd_spline() {
        (0..<1000).forEach { _ in
            assertEqual((RandomInputQF(), RandomInputQF(), RandomInputQF(), RandomInputQF(), F1.random(in: -2.0 ... 2.0)), { kvSIMD.simd_spline($0.0.subject, $0.1.subject, $0.2.subject, $0.3.subject, $0.4) }, { simd.simd_spline($0.0.reference, $0.1.reference, $0.2.reference, $0.3.reference, $0.4) }, { IsEqualQ($0, $1, eps: .explicit(1e-2)) })
            assertEqual((RandomInputQD(), RandomInputQD(), RandomInputQD(), RandomInputQD(), D1.random(in: -2.0 ... 2.0)), { kvSIMD.simd_spline($0.0.subject, $0.1.subject, $0.2.subject, $0.3.subject, $0.4) }, { simd.simd_spline($0.0.reference, $0.1.reference, $0.2.reference, $0.3.reference, $0.4) }, { IsEqualQ($0, $1, eps: .explicit(1e-5)) })
        }
    }



    // MARK: test_simd_bezier()

    func test_simd_bezier() {
        (0..<1000).forEach { _ in
            assertEqual((RandomInputQF(), RandomInputQF(), RandomInputQF(), RandomInputQF(), F1.random(in: -2.0 ... 2.0)), { kvSIMD.simd_bezier($0.0.subject, $0.1.subject, $0.2.subject, $0.3.subject, $0.4) }, { simd.simd_bezier($0.0.reference, $0.1.reference, $0.2.reference, $0.3.reference, $0.4) }, { IsEqualQ($0, $1, eps: .explicit(1e-1)) })
            assertEqual((RandomInputQD(), RandomInputQD(), RandomInputQD(), RandomInputQD(), D1.random(in: -2.0 ... 2.0)), { kvSIMD.simd_bezier($0.0.subject, $0.1.subject, $0.2.subject, $0.3.subject, $0.4) }, { simd.simd_bezier($0.0.reference, $0.1.reference, $0.2.reference, $0.3.reference, $0.4) }, { IsEqualQ($0, $1, eps: .explicit(1e-10)) })
        }
    }



    // MARK: test_simd_smoothstep()

    func test_simd_smoothstep() {
        TestAssert(RandomF1s( ), RandomF1s( ), RandomF1s( ), label: "simd_smoothstep-f1f1f1"   , reference: simd.simd_smoothstep, subject: kvSIMD.simd_smoothstep, validator: IsEqual(_:_:))
        TestAssert(RandomF2s( ), RandomF2s( ), RandomF2s( ), label: "simd_smoothstep-f2f2f2"   , reference: simd.simd_smoothstep, subject: kvSIMD.simd_smoothstep, validator: IsEqual(_:_:))
        TestAssert(RandomF3s( ), RandomF3s( ), RandomF3s( ), label: "simd_smoothstep-f3f3f3"   , reference: simd.simd_smoothstep, subject: kvSIMD.simd_smoothstep, validator: IsEqual(_:_:))
        TestAssert(RandomF4s( ), RandomF4s( ), RandomF4s( ), label: "simd_smoothstep-f4f4f4"   , reference: simd.simd_smoothstep, subject: kvSIMD.simd_smoothstep, validator: IsEqual(_:_:))
        TestAssert(RandomF8s( ), RandomF8s( ), RandomF8s( ), label: "simd_smoothstep-f8f8f8"   , reference: simd.simd_smoothstep, subject: kvSIMD.simd_smoothstep, validator: IsEqual(_:_:))
        TestAssert(RandomF16s(), RandomF16s(), RandomF16s(), label: "simd_smoothstep-f16f16f16", reference: simd.simd_smoothstep, subject: kvSIMD.simd_smoothstep, validator: IsEqual(_:_:))

        TestAssert(RandomD1s( ), RandomD1s( ), RandomD1s( ), label: "simd_smoothstep-d1d1d1"   , reference: simd.simd_smoothstep, subject: kvSIMD.simd_smoothstep, validator: IsEqual(_:_:))
        TestAssert(RandomD2s( ), RandomD2s( ), RandomD2s( ), label: "simd_smoothstep-d2d2d2"   , reference: simd.simd_smoothstep, subject: kvSIMD.simd_smoothstep, validator: IsEqual(_:_:))
        TestAssert(RandomD3s( ), RandomD3s( ), RandomD3s( ), label: "simd_smoothstep-d3d3d3"   , reference: simd.simd_smoothstep, subject: kvSIMD.simd_smoothstep, validator: IsEqual(_:_:))
        TestAssert(RandomD4s( ), RandomD4s( ), RandomD4s( ), label: "simd_smoothstep-d4d4d4"   , reference: simd.simd_smoothstep, subject: kvSIMD.simd_smoothstep, validator: IsEqual(_:_:))
        TestAssert(RandomD8s( ), RandomD8s( ), RandomD8s( ), label: "simd_smoothstep-d8d8d8"   , reference: simd.simd_smoothstep, subject: kvSIMD.simd_smoothstep, validator: IsEqual(_:_:))
    }



    // MARK: test_simd_step()

    func test_simd_step() {
        TestAssert(RandomF1s( ), RandomF1s( ), label: "simd_step-f1f1"  , reference: simd.simd_step, subject: kvSIMD.simd_step, validator: ==)
        TestAssert(RandomF2s( ), RandomF2s( ), label: "simd_step-f2f2"  , reference: simd.simd_step, subject: kvSIMD.simd_step, validator: ==)
        TestAssert(RandomF3s( ), RandomF3s( ), label: "simd_step-f3f3"  , reference: simd.simd_step, subject: kvSIMD.simd_step, validator: ==)
        TestAssert(RandomF4s( ), RandomF4s( ), label: "simd_step-f4f4"  , reference: simd.simd_step, subject: kvSIMD.simd_step, validator: ==)
        TestAssert(RandomF8s( ), RandomF8s( ), label: "simd_step-f8f8"  , reference: simd.simd_step, subject: kvSIMD.simd_step, validator: ==)
        TestAssert(RandomF16s(), RandomF16s(), label: "simd_step-f16f16", reference: simd.simd_step, subject: kvSIMD.simd_step, validator: ==)

        TestAssert(RandomD1s( ), RandomD1s( ), label: "simd_step-d1d1"  , reference: simd.simd_step, subject: kvSIMD.simd_step, validator: ==)
        TestAssert(RandomD2s( ), RandomD2s( ), label: "simd_step-d2d2"  , reference: simd.simd_step, subject: kvSIMD.simd_step, validator: ==)
        TestAssert(RandomD3s( ), RandomD3s( ), label: "simd_step-d3d3"  , reference: simd.simd_step, subject: kvSIMD.simd_step, validator: ==)
        TestAssert(RandomD4s( ), RandomD4s( ), label: "simd_step-d4d4"  , reference: simd.simd_step, subject: kvSIMD.simd_step, validator: ==)
        TestAssert(RandomD8s( ), RandomD8s( ), label: "simd_step-d8d8"  , reference: simd.simd_step, subject: kvSIMD.simd_step, validator: ==)
    }



    // MARK: test_simd_trace()

    func test_simd_trace() {

        func Assert<C, M1, M2, R>(_ cols: C, _ fabric1: (C) -> M1, _ fabric2: (C) -> M2, _ block1: (M1) -> R, _ block2: (M2) -> R, _ validator: (R, R) -> Bool) {
            assertEqual(block1(fabric1(cols)), block2(fabric2(cols)), validator)
        }

        (0..<10).forEach { _ in
            Assert(RandomNxF2(2), F2x2.init(_:), simd.float2x2.init(_:), kvSIMD.simd_trace(_:) as (F2x2) -> Float, simd.simd_trace(_:), IsEqual(_:_:))
            Assert(RandomNxF3(3), F3x3.init(_:), simd.float3x3.init(_:), kvSIMD.simd_trace(_:) as (F3x3) -> Float, simd.simd_trace(_:), IsEqual(_:_:))
            Assert(RandomNxF4(4), F4x4.init(_:), simd.float4x4.init(_:), kvSIMD.simd_trace(_:) as (F4x4) -> Float, simd.simd_trace(_:), IsEqual(_:_:))
            
            Assert(RandomNxD2(2), D2x2.init(_:), simd.double2x2.init(_:), kvSIMD.simd_trace(_:) as (D2x2) -> Double, simd.simd_trace(_:), IsEqual(_:_:))
            Assert(RandomNxD3(3), D3x3.init(_:), simd.double3x3.init(_:), kvSIMD.simd_trace(_:) as (D3x3) -> Double, simd.simd_trace(_:), IsEqual(_:_:))
            Assert(RandomNxD4(4), D4x4.init(_:), simd.double4x4.init(_:), kvSIMD.simd_trace(_:) as (D4x4) -> Double, simd.simd_trace(_:), IsEqual(_:_:))
        }
    }



    // MARK: test_simd_transpose()

    func test_simd_transpose() {

        func Assert<C, I1, I2, M1, M2>(_ cols: C, _ fabric1: (C) -> I1, _ fabric2: (C) -> I2, _ block1: (I1) -> M1, _ block2: (I2) -> M2, _ validator: (M1, M2) -> Bool) {
            assertEqual(block1(fabric1(cols)), block2(fabric2(cols)), validator)
        }

        Assert(Cols2x2f, F2x2.init(columns:), simd.float2x2.init(columns:), kvSIMD.simd_transpose(_:) as (F2x2) -> F2x2, simd.simd_transpose(_:), IsEqual(_:_:))
        Assert(Cols3x2f, F3x2.init(columns:), simd.float3x2.init(columns:), kvSIMD.simd_transpose(_:) as (F3x2) -> F2x3, simd.simd_transpose(_:), IsEqual(_:_:))
        Assert(Cols4x2f, F4x2.init(columns:), simd.float4x2.init(columns:), kvSIMD.simd_transpose(_:) as (F4x2) -> F2x4, simd.simd_transpose(_:), IsEqual(_:_:))
        Assert(Cols2x3f, F2x3.init(columns:), simd.float2x3.init(columns:), kvSIMD.simd_transpose(_:) as (F2x3) -> F3x2, simd.simd_transpose(_:), IsEqual(_:_:))
        Assert(Cols3x3f, F3x3.init(columns:), simd.float3x3.init(columns:), kvSIMD.simd_transpose(_:) as (F3x3) -> F3x3, simd.simd_transpose(_:), IsEqual(_:_:))
        Assert(Cols4x3f, F4x3.init(columns:), simd.float4x3.init(columns:), kvSIMD.simd_transpose(_:) as (F4x3) -> F3x4, simd.simd_transpose(_:), IsEqual(_:_:))
        Assert(Cols2x4f, F2x4.init(columns:), simd.float2x4.init(columns:), kvSIMD.simd_transpose(_:) as (F2x4) -> F4x2, simd.simd_transpose(_:), IsEqual(_:_:))
        Assert(Cols3x4f, F3x4.init(columns:), simd.float3x4.init(columns:), kvSIMD.simd_transpose(_:) as (F3x4) -> F4x3, simd.simd_transpose(_:), IsEqual(_:_:))
        Assert(Cols4x4f, F4x4.init(columns:), simd.float4x4.init(columns:), kvSIMD.simd_transpose(_:) as (F4x4) -> F4x4, simd.simd_transpose(_:), IsEqual(_:_:))

        Assert(Cols2x2d, D2x2.init(columns:), simd.double2x2.init(columns:), kvSIMD.simd_transpose(_:) as (D2x2) -> D2x2, simd.simd_transpose(_:), IsEqual(_:_:))
        Assert(Cols3x2d, D3x2.init(columns:), simd.double3x2.init(columns:), kvSIMD.simd_transpose(_:) as (D3x2) -> D2x3, simd.simd_transpose(_:), IsEqual(_:_:))
        Assert(Cols4x2d, D4x2.init(columns:), simd.double4x2.init(columns:), kvSIMD.simd_transpose(_:) as (D4x2) -> D2x4, simd.simd_transpose(_:), IsEqual(_:_:))
        Assert(Cols2x3d, D2x3.init(columns:), simd.double2x3.init(columns:), kvSIMD.simd_transpose(_:) as (D2x3) -> D3x2, simd.simd_transpose(_:), IsEqual(_:_:))
        Assert(Cols3x3d, D3x3.init(columns:), simd.double3x3.init(columns:), kvSIMD.simd_transpose(_:) as (D3x3) -> D3x3, simd.simd_transpose(_:), IsEqual(_:_:))
        Assert(Cols4x3d, D4x3.init(columns:), simd.double4x3.init(columns:), kvSIMD.simd_transpose(_:) as (D4x3) -> D3x4, simd.simd_transpose(_:), IsEqual(_:_:))
        Assert(Cols2x4d, D2x4.init(columns:), simd.double2x4.init(columns:), kvSIMD.simd_transpose(_:) as (D2x4) -> D4x2, simd.simd_transpose(_:), IsEqual(_:_:))
        Assert(Cols3x4d, D3x4.init(columns:), simd.double3x4.init(columns:), kvSIMD.simd_transpose(_:) as (D3x4) -> D4x3, simd.simd_transpose(_:), IsEqual(_:_:))
        Assert(Cols4x4d, D4x4.init(columns:), simd.double4x4.init(columns:), kvSIMD.simd_transpose(_:) as (D4x4) -> D4x4, simd.simd_transpose(_:), IsEqual(_:_:))
    }



    // MARK: test_simd_sub()

    func test_simd_sub() {

        func Assert<C, M1, M2>(_ cn: Int, _ colsBlock: (Int) -> C, _ fabric1: (C) -> M1, _ fabric2: (C) -> M2, _ block1: (M1, M1) -> M1, _ block2: (M2, M2) -> M2, _ validator: (M1, M2) -> Bool) {
            let cols1 = colsBlock(cn), cols2 = colsBlock(cn)
            assertEqual(block1(fabric1(cols1), fabric1(cols2)), block2(fabric2(cols1), fabric2(cols2)), validator)
        }

        (0..<10).forEach { _ in
            Assert(2, RandomNxF2(_:), F2x2.init(_:), simd.float2x2.init(_:), kvSIMD.simd_sub(_:_:) as (F2x2, F2x2) -> F2x2, simd.simd_sub(_:_:), IsEqual(_:_:))
            Assert(3, RandomNxF2(_:), F3x2.init(_:), simd.float3x2.init(_:), kvSIMD.simd_sub(_:_:) as (F3x2, F3x2) -> F3x2, simd.simd_sub(_:_:), IsEqual(_:_:))
            Assert(4, RandomNxF2(_:), F4x2.init(_:), simd.float4x2.init(_:), kvSIMD.simd_sub(_:_:) as (F4x2, F4x2) -> F4x2, simd.simd_sub(_:_:), IsEqual(_:_:))
            Assert(2, RandomNxF3(_:), F2x3.init(_:), simd.float2x3.init(_:), kvSIMD.simd_sub(_:_:) as (F2x3, F2x3) -> F2x3, simd.simd_sub(_:_:), IsEqual(_:_:))
            Assert(3, RandomNxF3(_:), F3x3.init(_:), simd.float3x3.init(_:), kvSIMD.simd_sub(_:_:) as (F3x3, F3x3) -> F3x3, simd.simd_sub(_:_:), IsEqual(_:_:))
            Assert(4, RandomNxF3(_:), F4x3.init(_:), simd.float4x3.init(_:), kvSIMD.simd_sub(_:_:) as (F4x3, F4x3) -> F4x3, simd.simd_sub(_:_:), IsEqual(_:_:))
            Assert(2, RandomNxF4(_:), F2x4.init(_:), simd.float2x4.init(_:), kvSIMD.simd_sub(_:_:) as (F2x4, F2x4) -> F2x4, simd.simd_sub(_:_:), IsEqual(_:_:))
            Assert(3, RandomNxF4(_:), F3x4.init(_:), simd.float3x4.init(_:), kvSIMD.simd_sub(_:_:) as (F3x4, F3x4) -> F3x4, simd.simd_sub(_:_:), IsEqual(_:_:))
            Assert(4, RandomNxF4(_:), F4x4.init(_:), simd.float4x4.init(_:), kvSIMD.simd_sub(_:_:) as (F4x4, F4x4) -> F4x4, simd.simd_sub(_:_:), IsEqual(_:_:))

            Assert(2, RandomNxD2(_:), D2x2.init(_:), simd.double2x2.init(_:), kvSIMD.simd_sub(_:_:) as (D2x2, D2x2) -> D2x2, simd.simd_sub(_:_:), IsEqual(_:_:))
            Assert(3, RandomNxD2(_:), D3x2.init(_:), simd.double3x2.init(_:), kvSIMD.simd_sub(_:_:) as (D3x2, D3x2) -> D3x2, simd.simd_sub(_:_:), IsEqual(_:_:))
            Assert(4, RandomNxD2(_:), D4x2.init(_:), simd.double4x2.init(_:), kvSIMD.simd_sub(_:_:) as (D4x2, D4x2) -> D4x2, simd.simd_sub(_:_:), IsEqual(_:_:))
            Assert(2, RandomNxD3(_:), D2x3.init(_:), simd.double2x3.init(_:), kvSIMD.simd_sub(_:_:) as (D2x3, D2x3) -> D2x3, simd.simd_sub(_:_:), IsEqual(_:_:))
            Assert(3, RandomNxD3(_:), D3x3.init(_:), simd.double3x3.init(_:), kvSIMD.simd_sub(_:_:) as (D3x3, D3x3) -> D3x3, simd.simd_sub(_:_:), IsEqual(_:_:))
            Assert(4, RandomNxD3(_:), D4x3.init(_:), simd.double4x3.init(_:), kvSIMD.simd_sub(_:_:) as (D4x3, D4x3) -> D4x3, simd.simd_sub(_:_:), IsEqual(_:_:))
            Assert(2, RandomNxD4(_:), D2x4.init(_:), simd.double2x4.init(_:), kvSIMD.simd_sub(_:_:) as (D2x4, D2x4) -> D2x4, simd.simd_sub(_:_:), IsEqual(_:_:))
            Assert(3, RandomNxD4(_:), D3x4.init(_:), simd.double3x4.init(_:), kvSIMD.simd_sub(_:_:) as (D3x4, D3x4) -> D3x4, simd.simd_sub(_:_:), IsEqual(_:_:))
            Assert(4, RandomNxD4(_:), D4x4.init(_:), simd.double4x4.init(_:), kvSIMD.simd_sub(_:_:) as (D4x4, D4x4) -> D4x4, simd.simd_sub(_:_:), IsEqual(_:_:))
        }
    }



    // MARK: test_sin()

    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    func test_sin() {
        TestAssert(RandomF2s( ), label: "sin-f2" , reference: simd.sin, subject: kvSIMD.sin, validator: IsEqual(_:_:))
        TestAssert(RandomF3s( ), label: "sin-f3" , reference: simd.sin, subject: kvSIMD.sin, validator: IsEqual(_:_:))
        TestAssert(RandomF4s( ), label: "sin-f4" , reference: simd.sin, subject: kvSIMD.sin, validator: IsEqual(_:_:))
        TestAssert(RandomF8s( ), label: "sin-f8" , reference: simd.sin, subject: kvSIMD.sin, validator: IsEqual(_:_:))
        TestAssert(RandomF16s(), label: "sin-f16", reference: simd.sin, subject: kvSIMD.sin, validator: IsEqual(_:_:))

        TestAssert(RandomD2s( ), label: "sin-d2" , reference: simd.sin, subject: kvSIMD.sin, validator: IsEqual(_:_:))
        TestAssert(RandomD3s( ), label: "sin-d3" , reference: simd.sin, subject: kvSIMD.sin, validator: IsEqual(_:_:))
        TestAssert(RandomD4s( ), label: "sin-d4" , reference: simd.sin, subject: kvSIMD.sin, validator: IsEqual(_:_:))
        TestAssert(RandomD8s( ), label: "sin-d8" , reference: simd.sin, subject: kvSIMD.sin, validator: IsEqual(_:_:))
    }



    // MARK: test_sinh()

    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    func test_sinh() {
        TestAssert(RandomF2s( ), label: "sinh-f2" , reference: simd.sinh, subject: kvSIMD.sinh, validator: IsEqual(_:_:))
        TestAssert(RandomF3s( ), label: "sinh-f3" , reference: simd.sinh, subject: kvSIMD.sinh, validator: IsEqual(_:_:))
        TestAssert(RandomF4s( ), label: "sinh-f4" , reference: simd.sinh, subject: kvSIMD.sinh, validator: IsEqual(_:_:))
        TestAssert(RandomF8s( ), label: "sinh-f8" , reference: simd.sinh, subject: kvSIMD.sinh, validator: IsEqual(_:_:))
        TestAssert(RandomF16s(), label: "sinh-f16", reference: simd.sinh, subject: kvSIMD.sinh, validator: IsEqual(_:_:))

        TestAssert(RandomD2s( ), label: "sinh-d2" , reference: simd.sinh, subject: kvSIMD.sinh, validator: IsEqual(_:_:))
        TestAssert(RandomD3s( ), label: "sinh-d3" , reference: simd.sinh, subject: kvSIMD.sinh, validator: IsEqual(_:_:))
        TestAssert(RandomD4s( ), label: "sinh-d4" , reference: simd.sinh, subject: kvSIMD.sinh, validator: IsEqual(_:_:))
        TestAssert(RandomD8s( ), label: "sinh-d8" , reference: simd.sinh, subject: kvSIMD.sinh, validator: IsEqual(_:_:))
    }



    // MARK: test_sinpi_*()

    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    func test_sinpi_any() {
        TestAssert(RandomF2s( ), label: "__sinpi_any-f2" , reference: simd.sinpi(_:), subject: kvSIMD.__sinpi_any(_:), validator: { IsEqual($0, $1, eps: .near(1.0)) })
        TestAssert(RandomF3s( ), label: "__sinpi_any-f3" , reference: simd.sinpi(_:), subject: kvSIMD.__sinpi_any(_:), validator: { IsEqual($0, $1, eps: .near(1.0)) })
        TestAssert(RandomF4s( ), label: "__sinpi_any-f4" , reference: simd.sinpi(_:), subject: kvSIMD.__sinpi_any(_:), validator: { IsEqual($0, $1, eps: .near(1.0)) })
        TestAssert(RandomF8s( ), label: "__sinpi_any-f8" , reference: simd.sinpi(_:), subject: kvSIMD.__sinpi_any(_:), validator: { IsEqual($0, $1, eps: .near(1.0)) })
        TestAssert(RandomF16s(), label: "__sinpi_any-f16", reference: simd.sinpi(_:), subject: kvSIMD.__sinpi_any(_:), validator: { IsEqual($0, $1, eps: .near(1.0)) })

        TestAssert(RandomD2s( ), label: "__sinpi_any-d2" , reference: simd.sinpi(_:), subject: kvSIMD.__sinpi_any(_:), validator: { IsEqual($0, $1, eps: .near(1.0)) })
        TestAssert(RandomD3s( ), label: "__sinpi_any-d3" , reference: simd.sinpi(_:), subject: kvSIMD.__sinpi_any(_:), validator: { IsEqual($0, $1, eps: .near(1.0)) })
        TestAssert(RandomD4s( ), label: "__sinpi_any-d4" , reference: simd.sinpi(_:), subject: kvSIMD.__sinpi_any(_:), validator: { IsEqual($0, $1, eps: .near(1.0)) })
        TestAssert(RandomD8s( ), label: "__sinpi_any-d8" , reference: simd.sinpi(_:), subject: kvSIMD.__sinpi_any(_:), validator: { IsEqual($0, $1, eps: .near(1.0)) })
    }

#if canImport(Darwin)

    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    func test_sinpi_darwin() {
        TestAssert(RandomF2s( ), label: "__sinpi_darwin-f2" , reference: simd.sinpi(_:), subject: kvSIMD.__sinpi_darwin(_:), validator: IsEqual(_:_:))
        TestAssert(RandomF3s( ), label: "__sinpi_darwin-f3" , reference: simd.sinpi(_:), subject: kvSIMD.__sinpi_darwin(_:), validator: IsEqual(_:_:))
        TestAssert(RandomF4s( ), label: "__sinpi_darwin-f4" , reference: simd.sinpi(_:), subject: kvSIMD.__sinpi_darwin(_:), validator: IsEqual(_:_:))
        TestAssert(RandomF8s( ), label: "__sinpi_darwin-f8" , reference: simd.sinpi(_:), subject: kvSIMD.__sinpi_darwin(_:), validator: IsEqual(_:_:))
        TestAssert(RandomF16s(), label: "__sinpi_darwin-f16", reference: simd.sinpi(_:), subject: kvSIMD.__sinpi_darwin(_:), validator: IsEqual(_:_:))

        TestAssert(RandomD2s( ), label: "__sinpi_darwin-d2" , reference: simd.sinpi(_:), subject: kvSIMD.__sinpi_darwin(_:), validator: IsEqual(_:_:))
        TestAssert(RandomD3s( ), label: "__sinpi_darwin-d3" , reference: simd.sinpi(_:), subject: kvSIMD.__sinpi_darwin(_:), validator: IsEqual(_:_:))
        TestAssert(RandomD4s( ), label: "__sinpi_darwin-d4" , reference: simd.sinpi(_:), subject: kvSIMD.__sinpi_darwin(_:), validator: IsEqual(_:_:))
        TestAssert(RandomD8s( ), label: "__sinpi_darwin-d8" , reference: simd.sinpi(_:), subject: kvSIMD.__sinpi_darwin(_:), validator: IsEqual(_:_:))
    }

#endif // canImport(Darwin)



    // MARK: test_smoothstep()

    func test_smoothstep() {
        TestAssert(RandomF2s(), RandomF2s(), RandomF2s(), label: "smoothstep-f2f2f2", reference: simd.smoothstep, subject: kvSIMD.smoothstep, validator: IsEqual(_:_:))
        TestAssert(RandomF3s(), RandomF3s(), RandomF3s(), label: "smoothstep-f3f3f3", reference: simd.smoothstep, subject: kvSIMD.smoothstep, validator: IsEqual(_:_:))
        TestAssert(RandomF4s(), RandomF4s(), RandomF4s(), label: "smoothstep-f4f4f4", reference: simd.smoothstep, subject: kvSIMD.smoothstep, validator: IsEqual(_:_:))

        TestAssert(RandomD2s(), RandomD2s(), RandomD2s(), label: "smoothstep-d2d2d2", reference: simd.smoothstep, subject: kvSIMD.smoothstep, validator: IsEqual(_:_:))
        TestAssert(RandomD3s(), RandomD3s(), RandomD3s(), label: "smoothstep-d3d3d3", reference: simd.smoothstep, subject: kvSIMD.smoothstep, validator: IsEqual(_:_:))
        TestAssert(RandomD4s(), RandomD4s(), RandomD4s(), label: "smoothstep-d4d4d4", reference: simd.smoothstep, subject: kvSIMD.smoothstep, validator: IsEqual(_:_:))
    }



    // MARK: test_step()

    func test_step() {
        TestAssert(RandomF2s(), RandomF2s(), label: "step-f2f2", reference: simd.step, subject: kvSIMD.step, validator: IsEqual(_:_:))
        TestAssert(RandomF3s(), RandomF3s(), label: "step-f3f3", reference: simd.step, subject: kvSIMD.step, validator: IsEqual(_:_:))
        TestAssert(RandomF4s(), RandomF4s(), label: "step-f4f4", reference: simd.step, subject: kvSIMD.step, validator: IsEqual(_:_:))

        TestAssert(RandomD2s(), RandomD2s(), label: "step-d2d2", reference: simd.step, subject: kvSIMD.step, validator: IsEqual(_:_:))
        TestAssert(RandomD3s(), RandomD3s(), label: "step-d3d3", reference: simd.step, subject: kvSIMD.step, validator: IsEqual(_:_:))
        TestAssert(RandomD4s(), RandomD4s(), label: "step-d4d4", reference: simd.step, subject: kvSIMD.step, validator: IsEqual(_:_:))
    }



    // MARK: test_tan()

    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    func test_tan() {
        TestAssert(RandomF2s( ), label: "tan-f2" , reference: simd.tan, subject: kvSIMD.tan, validator: IsEqual(_:_:))
        TestAssert(RandomF3s( ), label: "tan-f3" , reference: simd.tan, subject: kvSIMD.tan, validator: IsEqual(_:_:))
        TestAssert(RandomF4s( ), label: "tan-f4" , reference: simd.tan, subject: kvSIMD.tan, validator: IsEqual(_:_:))
        TestAssert(RandomF8s( ), label: "tan-f8" , reference: simd.tan, subject: kvSIMD.tan, validator: IsEqual(_:_:))
        TestAssert(RandomF16s(), label: "tan-f16", reference: simd.tan, subject: kvSIMD.tan, validator: IsEqual(_:_:))

        TestAssert(RandomD2s( ), label: "tan-d2" , reference: simd.tan, subject: kvSIMD.tan, validator: IsEqual(_:_:))
        TestAssert(RandomD3s( ), label: "tan-d3" , reference: simd.tan, subject: kvSIMD.tan, validator: IsEqual(_:_:))
        TestAssert(RandomD4s( ), label: "tan-d4" , reference: simd.tan, subject: kvSIMD.tan, validator: IsEqual(_:_:))
        TestAssert(RandomD8s( ), label: "tan-d8" , reference: simd.tan, subject: kvSIMD.tan, validator: IsEqual(_:_:))
    }



    // MARK: test_tanh()

    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    func test_tanh() {
        TestAssert(RandomF2s( ), label: "tanh-f2" , reference: simd.tanh, subject: kvSIMD.tanh, validator: IsEqual(_:_:))
        TestAssert(RandomF3s( ), label: "tanh-f3" , reference: simd.tanh, subject: kvSIMD.tanh, validator: IsEqual(_:_:))
        TestAssert(RandomF4s( ), label: "tanh-f4" , reference: simd.tanh, subject: kvSIMD.tanh, validator: IsEqual(_:_:))
        TestAssert(RandomF8s( ), label: "tanh-f8" , reference: simd.tanh, subject: kvSIMD.tanh, validator: IsEqual(_:_:))
        TestAssert(RandomF16s(), label: "tanh-f16", reference: simd.tanh, subject: kvSIMD.tanh, validator: IsEqual(_:_:))

        TestAssert(RandomD2s( ), label: "tanh-d2" , reference: simd.tanh, subject: kvSIMD.tanh, validator: IsEqual(_:_:))
        TestAssert(RandomD3s( ), label: "tanh-d3" , reference: simd.tanh, subject: kvSIMD.tanh, validator: IsEqual(_:_:))
        TestAssert(RandomD4s( ), label: "tanh-d4" , reference: simd.tanh, subject: kvSIMD.tanh, validator: IsEqual(_:_:))
        TestAssert(RandomD8s( ), label: "tanh-d8" , reference: simd.tanh, subject: kvSIMD.tanh, validator: IsEqual(_:_:))
    }



    // MARK: test_tanpi_*()

    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    func test_tanpi_any() {

        /// Special equality function is required due to lack of precision when argument is close to (0.5·π + 2π·k) or (1.5·π + 2π·k) where k∈ℤ.
        func IsEqualTan(_ lhs: Float, _ rhs: Float) -> Bool {
            let magnitude = abs(lhs)

            if magnitude <= 1e1 { return IsEqual(lhs, rhs, eps: 1e-3) }
            else if magnitude <= 1e2 { return IsEqual(lhs, rhs, eps: 1e-1) }
            else if magnitude <= 1e3 { return IsEqual(lhs, rhs, eps: 1e1) }
            else if magnitude <= 1e4 { return IsEqual(lhs, rhs, eps: 1e3) }
            else { return abs(rhs) > 1e4 - 1e3 }
        }
        /// Special equality function is required due to lack of precision when argument is close to (0.5·π + 2π·k) or (1.5·π + 2π·k) where k∈ℤ.
        func IsEqualTan(_ lhs: Double, _ rhs: Double) -> Bool {
            let magnitude = abs(lhs)

            if magnitude <= 1e1 { return IsEqual(lhs, rhs, eps: 1e-12) }
            else if magnitude <= 1e2 { return IsEqual(lhs, rhs, eps: 1e-10) }
            else if magnitude <= 1e3 { return IsEqual(lhs, rhs, eps: 1e-8) }
            else if magnitude <= 1e4 { return IsEqual(lhs, rhs, eps: 1e-6) }
            else if magnitude <= 1e6 { return IsEqual(lhs, rhs, eps: 1e-2) }
            else if magnitude <= 1e8 { return IsEqual(lhs, rhs, eps: 1e1) }
            else { return abs(rhs) > 1e8 - 1e1 }
        }

        TestAssert(RandomF2s( ), label: "__tanpi_any-f2" , reference: simd.tanpi(_:), subject: kvSIMD.__tanpi_any(_:), validator: { AllSatisfy($0, $1, predicate: IsEqualTan(_:_:)) })
        TestAssert(RandomF3s( ), label: "__tanpi_any-f3" , reference: simd.tanpi(_:), subject: kvSIMD.__tanpi_any(_:), validator: { AllSatisfy($0, $1, predicate: IsEqualTan(_:_:)) })
        TestAssert(RandomF4s( ), label: "__tanpi_any-f4" , reference: simd.tanpi(_:), subject: kvSIMD.__tanpi_any(_:), validator: { AllSatisfy($0, $1, predicate: IsEqualTan(_:_:)) })
        TestAssert(RandomF8s( ), label: "__tanpi_any-f8" , reference: simd.tanpi(_:), subject: kvSIMD.__tanpi_any(_:), validator: { AllSatisfy($0, $1, predicate: IsEqualTan(_:_:)) })
        TestAssert(RandomF16s(), label: "__tanpi_any-f16", reference: simd.tanpi(_:), subject: kvSIMD.__tanpi_any(_:), validator: { AllSatisfy($0, $1, predicate: IsEqualTan(_:_:)) })
        
        TestAssert(RandomD2s( ), label: "__tanpi_any-d2" , reference: simd.tanpi(_:), subject: kvSIMD.__tanpi_any(_:), validator: { AllSatisfy($0, $1, predicate: IsEqualTan(_:_:)) })
        TestAssert(RandomD3s( ), label: "__tanpi_any-d3" , reference: simd.tanpi(_:), subject: kvSIMD.__tanpi_any(_:), validator: { AllSatisfy($0, $1, predicate: IsEqualTan(_:_:)) })
        TestAssert(RandomD4s( ), label: "__tanpi_any-d4" , reference: simd.tanpi(_:), subject: kvSIMD.__tanpi_any(_:), validator: { AllSatisfy($0, $1, predicate: IsEqualTan(_:_:)) })
        TestAssert(RandomD8s( ), label: "__tanpi_any-d8" , reference: simd.tanpi(_:), subject: kvSIMD.__tanpi_any(_:), validator: { AllSatisfy($0, $1, predicate: IsEqualTan(_:_:)) })
    }

#if canImport(Darwin)

    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    func test_tanpi_darwin() {
        TestAssert(RandomF2s( ), label: "__tanpi_darwin-f2" , reference: simd.tanpi(_:), subject: kvSIMD.__tanpi_darwin(_:), validator: IsEqual(_:_:))
        TestAssert(RandomF3s( ), label: "__tanpi_darwin-f3" , reference: simd.tanpi(_:), subject: kvSIMD.__tanpi_darwin(_:), validator: IsEqual(_:_:))
        TestAssert(RandomF4s( ), label: "__tanpi_darwin-f4" , reference: simd.tanpi(_:), subject: kvSIMD.__tanpi_darwin(_:), validator: IsEqual(_:_:))
        TestAssert(RandomF8s( ), label: "__tanpi_darwin-f8" , reference: simd.tanpi(_:), subject: kvSIMD.__tanpi_darwin(_:), validator: IsEqual(_:_:))
        TestAssert(RandomF16s(), label: "__tanpi_darwin-f16", reference: simd.tanpi(_:), subject: kvSIMD.__tanpi_darwin(_:), validator: IsEqual(_:_:))

        TestAssert(RandomD2s( ), label: "__tanpi_darwin-d2" , reference: simd.tanpi(_:), subject: kvSIMD.__tanpi_darwin(_:), validator: IsEqual(_:_:))
        TestAssert(RandomD3s( ), label: "__tanpi_darwin-d3" , reference: simd.tanpi(_:), subject: kvSIMD.__tanpi_darwin(_:), validator: IsEqual(_:_:))
        TestAssert(RandomD4s( ), label: "__tanpi_darwin-d4" , reference: simd.tanpi(_:), subject: kvSIMD.__tanpi_darwin(_:), validator: IsEqual(_:_:))
        TestAssert(RandomD8s( ), label: "__tanpi_darwin-d8" , reference: simd.tanpi(_:), subject: kvSIMD.__tanpi_darwin(_:), validator: IsEqual(_:_:))
    }

#endif // canImport(Darwin)



    // MARK: test_tgamma()

    @available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
    func test_tgamma() {
        TestAssert(RandomF2s( ), label: "tgamma-f2" , reference: simd.tgamma, subject: kvSIMD.tgamma, validator: IsEqual(_:_:))
        TestAssert(RandomF3s( ), label: "tgamma-f3" , reference: simd.tgamma, subject: kvSIMD.tgamma, validator: IsEqual(_:_:))
        TestAssert(RandomF4s( ), label: "tgamma-f4" , reference: simd.tgamma, subject: kvSIMD.tgamma, validator: IsEqual(_:_:))
        TestAssert(RandomF8s( ), label: "tgamma-f8" , reference: simd.tgamma, subject: kvSIMD.tgamma, validator: IsEqual(_:_:))
        TestAssert(RandomF16s(), label: "tgamma-f16", reference: simd.tgamma, subject: kvSIMD.tgamma, validator: IsEqual(_:_:))

        TestAssert(RandomD2s( ), label: "tgamma-d2" , reference: simd.tgamma, subject: kvSIMD.tgamma, validator: IsEqual(_:_:))
        TestAssert(RandomD3s( ), label: "tgamma-d3" , reference: simd.tgamma, subject: kvSIMD.tgamma, validator: IsEqual(_:_:))
        TestAssert(RandomD4s( ), label: "tgamma-d4" , reference: simd.tgamma, subject: kvSIMD.tgamma, validator: IsEqual(_:_:))
        TestAssert(RandomD8s( ), label: "tgamma-d8" , reference: simd.tgamma, subject: kvSIMD.tgamma, validator: IsEqual(_:_:))
    }



    // MARK: test_trunc()

    func test_trunc() {
        TestAssert(RandomF2s(), label: "trunc-f2", reference: simd.trunc, subject: kvSIMD.trunc, validator: IsEqual(_:_:))
        TestAssert(RandomF3s(), label: "trunc-f3", reference: simd.trunc, subject: kvSIMD.trunc, validator: IsEqual(_:_:))
        TestAssert(RandomF4s(), label: "trunc-f4", reference: simd.trunc, subject: kvSIMD.trunc, validator: IsEqual(_:_:))

        TestAssert(RandomD2s(), label: "trunc-d2", reference: simd.trunc, subject: kvSIMD.trunc, validator: IsEqual(_:_:))
        TestAssert(RandomD3s(), label: "trunc-d3", reference: simd.trunc, subject: kvSIMD.trunc, validator: IsEqual(_:_:))
        TestAssert(RandomD4s(), label: "trunc-d4", reference: simd.trunc, subject: kvSIMD.trunc, validator: IsEqual(_:_:))
    }



    // MARK: Auxiliaries

    private func assertEqual<L, R>(_ lhs: L, _ rhs: R, _ validator: (L, R) -> Bool) {
        XCTAssertTrue(validator(lhs, rhs), "\(lhs) is not equal to \(rhs)")
    }


    private func assertEqual<I, L, R>(_ input: I, _ lFabric: (I) -> L, _ rFabric: (I) -> R, _ validator: (L, R) -> Bool) {
        let lhs = lFabric(input)
        let rhs = rFabric(input)
        XCTAssertTrue(validator(lhs, rhs), "\(lhs) is not equal to \(rhs) for \(input) input")
    }

}
