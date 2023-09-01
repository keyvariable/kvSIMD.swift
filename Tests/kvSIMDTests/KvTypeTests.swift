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
//  KvTypeTests.swift
//  kvSIMDTests
//
//  Created by Svyatoslav Popov on 29.08.2023.
//

import XCTest

@testable import kvSIMD

import simd



final class KvTypeTests : XCTestCase {

    // MARK: test_packed_alignment()

    /// Checking whether alighments of the packed types meet the requirements.
    func test_packed_alignment() {

        func AssertAlignment<T1, T2>(_ type1: T1.Type, _ type2: T2.Type) {
            XCTAssertEqual(MemoryLayout<T1>.alignment, MemoryLayout<T2>.alignment)
        }

        AssertAlignment(kvSIMD.simd_packed_char2 .self, simd.simd_packed_char2 .self)
        AssertAlignment(kvSIMD.simd_packed_char4 .self, simd.simd_packed_char4 .self)
        AssertAlignment(kvSIMD.simd_packed_char8 .self, simd.simd_packed_char8 .self)
        AssertAlignment(kvSIMD.simd_packed_char16.self, simd.simd_packed_char16.self)
        AssertAlignment(kvSIMD.simd_packed_char32.self, simd.simd_packed_char32.self)
        AssertAlignment(kvSIMD.simd_packed_char64.self, simd.simd_packed_char64.self)

        AssertAlignment(kvSIMD.simd_packed_uchar2 .self, simd.simd_packed_uchar2 .self)
        AssertAlignment(kvSIMD.simd_packed_uchar4 .self, simd.simd_packed_uchar4 .self)
        AssertAlignment(kvSIMD.simd_packed_uchar8 .self, simd.simd_packed_uchar8 .self)
        AssertAlignment(kvSIMD.simd_packed_uchar16.self, simd.simd_packed_uchar16.self)
        AssertAlignment(kvSIMD.simd_packed_uchar32.self, simd.simd_packed_uchar32.self)
        AssertAlignment(kvSIMD.simd_packed_uchar64.self, simd.simd_packed_uchar64.self)

        AssertAlignment(kvSIMD.simd_packed_short2 .self, simd.simd_packed_short2 .self)
        AssertAlignment(kvSIMD.simd_packed_short4 .self, simd.simd_packed_short4 .self)
        AssertAlignment(kvSIMD.simd_packed_short8 .self, simd.simd_packed_short8 .self)
        AssertAlignment(kvSIMD.simd_packed_short16.self, simd.simd_packed_short16.self)
        AssertAlignment(kvSIMD.simd_packed_short32.self, simd.simd_packed_short32.self)

        AssertAlignment(kvSIMD.simd_packed_ushort2 .self, simd.simd_packed_ushort2 .self)
        AssertAlignment(kvSIMD.simd_packed_ushort4 .self, simd.simd_packed_ushort4 .self)
        AssertAlignment(kvSIMD.simd_packed_ushort8 .self, simd.simd_packed_ushort8 .self)
        AssertAlignment(kvSIMD.simd_packed_ushort16.self, simd.simd_packed_ushort16.self)
        AssertAlignment(kvSIMD.simd_packed_ushort32.self, simd.simd_packed_ushort32.self)

        AssertAlignment(kvSIMD.simd_packed_int2 .self, simd.simd_packed_int2 .self)
        AssertAlignment(kvSIMD.simd_packed_int4 .self, simd.simd_packed_int4 .self)
        AssertAlignment(kvSIMD.simd_packed_int8 .self, simd.simd_packed_int8 .self)
        AssertAlignment(kvSIMD.simd_packed_int16.self, simd.simd_packed_int16.self)

        AssertAlignment(kvSIMD.simd_packed_uint2 .self, simd.simd_packed_uint2 .self)
        AssertAlignment(kvSIMD.simd_packed_uint4 .self, simd.simd_packed_uint4 .self)
        AssertAlignment(kvSIMD.simd_packed_uint8 .self, simd.simd_packed_uint8 .self)
        AssertAlignment(kvSIMD.simd_packed_uint16.self, simd.simd_packed_uint16.self)

        AssertAlignment(kvSIMD.simd_packed_long2.self, simd.simd_packed_long2.self)
        AssertAlignment(kvSIMD.simd_packed_long4.self, simd.simd_packed_long4.self)
        AssertAlignment(kvSIMD.simd_packed_long8.self, simd.simd_packed_long8.self)

        AssertAlignment(kvSIMD.simd_packed_ulong2.self, simd.simd_packed_ulong2.self)
        AssertAlignment(kvSIMD.simd_packed_ulong4.self, simd.simd_packed_ulong4.self)
        AssertAlignment(kvSIMD.simd_packed_ulong8.self, simd.simd_packed_ulong8.self)

        AssertAlignment(kvSIMD.simd_packed_float2 .self, simd.simd_packed_float2 .self)
        AssertAlignment(kvSIMD.simd_packed_float4 .self, simd.simd_packed_float4 .self)
        AssertAlignment(kvSIMD.simd_packed_float8 .self, simd.simd_packed_float8 .self)
        AssertAlignment(kvSIMD.simd_packed_float16.self, simd.simd_packed_float16.self)

        AssertAlignment(kvSIMD.simd_packed_double2.self, simd.simd_packed_double2.self)
        AssertAlignment(kvSIMD.simd_packed_double4.self, simd.simd_packed_double4.self)
        AssertAlignment(kvSIMD.simd_packed_double8.self, simd.simd_packed_double8.self)
    }

}
