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
//  KvFabricTests.swift
//  kvSIMDTests
//
//  Created by Svyatoslav Popov on 04.08.2023.
//

import XCTest

@testable import kvSIMD

import simd



final class KvFabricTests : XCTestCase {

    // MARK: test_matrix_from_rows()

    func test_matrix_from_rows() {
        assertEqual(Cols2x2f, kvSIMD.matrix_from_rows as (F2, F2)         -> F2x2, simd.matrix_from_rows, IsEqual(_:_:))
        assertEqual(Cols3x2f, kvSIMD.matrix_from_rows as (F2, F2, F2)     -> F2x3, simd.matrix_from_rows, IsEqual(_:_:))
        assertEqual(Cols4x2f, kvSIMD.matrix_from_rows as (F2, F2, F2, F2) -> F2x4, simd.matrix_from_rows, IsEqual(_:_:))

        assertEqual(Cols2x3f, kvSIMD.matrix_from_rows as (F3, F3)         -> F3x2, simd.matrix_from_rows, IsEqual(_:_:))
        assertEqual(Cols3x3f, kvSIMD.matrix_from_rows as (F3, F3, F3)     -> F3x3, simd.matrix_from_rows, IsEqual(_:_:))
        assertEqual(Cols4x3f, kvSIMD.matrix_from_rows as (F3, F3, F3, F3) -> F3x4, simd.matrix_from_rows, IsEqual(_:_:))

        assertEqual(Cols2x4f, kvSIMD.matrix_from_rows as (F4, F4)         -> F4x2, simd.matrix_from_rows, IsEqual(_:_:))
        assertEqual(Cols3x4f, kvSIMD.matrix_from_rows as (F4, F4, F4)     -> F4x3, simd.matrix_from_rows, IsEqual(_:_:))
        assertEqual(Cols4x4f, kvSIMD.matrix_from_rows as (F4, F4, F4, F4) -> F4x4, simd.matrix_from_rows, IsEqual(_:_:))

        assertEqual(Cols2x2d, kvSIMD.matrix_from_rows as (D2, D2)         -> D2x2, simd.matrix_from_rows, IsEqual(_:_:))
        assertEqual(Cols3x2d, kvSIMD.matrix_from_rows as (D2, D2, D2)     -> D2x3, simd.matrix_from_rows, IsEqual(_:_:))
        assertEqual(Cols4x2d, kvSIMD.matrix_from_rows as (D2, D2, D2, D2) -> D2x4, simd.matrix_from_rows, IsEqual(_:_:))

        assertEqual(Cols2x3d, kvSIMD.matrix_from_rows as (D3, D3)         -> D3x2, simd.matrix_from_rows, IsEqual(_:_:))
        assertEqual(Cols3x3d, kvSIMD.matrix_from_rows as (D3, D3, D3)     -> D3x3, simd.matrix_from_rows, IsEqual(_:_:))
        assertEqual(Cols4x3d, kvSIMD.matrix_from_rows as (D3, D3, D3, D3) -> D3x4, simd.matrix_from_rows, IsEqual(_:_:))

        assertEqual(Cols2x4d, kvSIMD.matrix_from_rows as (D4, D4)         -> D4x2, simd.matrix_from_rows, IsEqual(_:_:))
        assertEqual(Cols3x4d, kvSIMD.matrix_from_rows as (D4, D4, D4)     -> D4x3, simd.matrix_from_rows, IsEqual(_:_:))
        assertEqual(Cols4x4d, kvSIMD.matrix_from_rows as (D4, D4, D4, D4) -> D4x4, simd.matrix_from_rows, IsEqual(_:_:))
    }



    // MARK: test_simd_diagonal_matrix()

    func test_simd_diagonal_matrix() {
        assertEqual(simd_float2(1.0, 2.0), kvSIMD.simd_diagonal_matrix, simd.simd_diagonal_matrix, IsEqual(_:_:))
        assertEqual(simd_float3(1.0, 2.0, 3.0), kvSIMD.simd_diagonal_matrix, simd.simd_diagonal_matrix, IsEqual(_:_:))
        assertEqual(simd_float4(1.0, 2.0, 3.0, 4.0), kvSIMD.simd_diagonal_matrix, simd.simd_diagonal_matrix, IsEqual(_:_:))

        assertEqual(simd_double2(1.0, 2.0), kvSIMD.simd_diagonal_matrix, simd.simd_diagonal_matrix, IsEqual(_:_:))
        assertEqual(simd_double3(1.0, 2.0, 3.0), kvSIMD.simd_diagonal_matrix, simd.simd_diagonal_matrix, IsEqual(_:_:))
        assertEqual(simd_double4(1.0, 2.0, 3.0, 4.0), kvSIMD.simd_diagonal_matrix, simd.simd_diagonal_matrix, IsEqual(_:_:))
    }



    // MARK: test_simd_make_char2()

    func test_simd_make_char2() {
        XCTAssertEqual(kvSIMD.simd_make_char2(0, 1), c2)

        XCTAssertEqual(kvSIMD.simd_make_char2(c1), C2(c1, 0))

        XCTAssertEqual(kvSIMD.simd_make_char2_undef(c1).x, c1)

        XCTAssertEqual(kvSIMD.simd_make_char2(c2 ), c2)
        XCTAssertEqual(kvSIMD.simd_make_char2(c3 ), c2)
        XCTAssertEqual(kvSIMD.simd_make_char2(c4 ), c2)
        XCTAssertEqual(kvSIMD.simd_make_char2(c8 ), c2)
        XCTAssertEqual(kvSIMD.simd_make_char2(c16), c2)
        XCTAssertEqual(kvSIMD.simd_make_char2(c32), c2)
        XCTAssertEqual(kvSIMD.simd_make_char2(c64), c2)
    }



    // MARK: test_simd_make_char3()

    func test_simd_make_char3() {
        XCTAssertEqual(kvSIMD.simd_make_char3(0, 1, 2)     , c3)
        XCTAssertEqual(kvSIMD.simd_make_char3(0, C2(1...2)), c3)
        XCTAssertEqual(kvSIMD.simd_make_char3(C2(0...1), 2), c3)

        XCTAssertEqual(kvSIMD.simd_make_char3(c1), C3(c1, 0, 0))
        XCTAssertEqual(kvSIMD.simd_make_char3(c2), C3(c2, 0))

        XCTAssertEqual(kvSIMD.simd_make_char3_undef(c1).x, c1)
        XCTAssertEqual(kvSIMD.simd_make_char2(kvSIMD.simd_make_char3_undef(c2)), c2)

        XCTAssertEqual(kvSIMD.simd_make_char3(c3 ), c3)
        XCTAssertEqual(kvSIMD.simd_make_char3(c4 ), c3)
        XCTAssertEqual(kvSIMD.simd_make_char3(c8 ), c3)
        XCTAssertEqual(kvSIMD.simd_make_char3(c16), c3)
        XCTAssertEqual(kvSIMD.simd_make_char3(c32), c3)
        XCTAssertEqual(kvSIMD.simd_make_char3(c64), c3)
    }



    // MARK: test_simd_make_char4()

    func test_simd_make_char4() {
        XCTAssertEqual(kvSIMD.simd_make_char4(0, 1, 2, 3)          , c4)
        XCTAssertEqual(kvSIMD.simd_make_char4(0, 1, C2(2...3))     , c4)
        XCTAssertEqual(kvSIMD.simd_make_char4(0, C2(1...2), 3)     , c4)
        XCTAssertEqual(kvSIMD.simd_make_char4(C2(0...1), 2, 3)     , c4)
        XCTAssertEqual(kvSIMD.simd_make_char4(0, C3(1...3))        , c4)
        XCTAssertEqual(kvSIMD.simd_make_char4(C3(0...2), 3)        , c4)
        XCTAssertEqual(kvSIMD.simd_make_char4(C2(0...1), C2(2...3)), c4)

        XCTAssertEqual(kvSIMD.simd_make_char4(c1), C4(lowHalf: C2(c1, 0), highHalf: .zero))
        XCTAssertEqual(kvSIMD.simd_make_char4(c2), C4(lowHalf: c2, highHalf: .zero))
        XCTAssertEqual(kvSIMD.simd_make_char4(c3), C4(c3, 0))

        XCTAssertEqual(kvSIMD.simd_make_char4_undef(c1).x, c1)
        XCTAssertEqual(kvSIMD.simd_make_char2(kvSIMD.simd_make_char4_undef(c2)), c2)
        XCTAssertEqual(kvSIMD.simd_make_char3(kvSIMD.simd_make_char4_undef(c3)), c3)

        XCTAssertEqual(kvSIMD.simd_make_char4(c4) , c4)
        XCTAssertEqual(kvSIMD.simd_make_char4(c8) , c4)
        XCTAssertEqual(kvSIMD.simd_make_char4(c16), c4)
        XCTAssertEqual(kvSIMD.simd_make_char4(c32), c4)
        XCTAssertEqual(kvSIMD.simd_make_char4(c64), c4)
    }



    // MARK: test_simd_make_char8()

    func test_simd_make_char8() {
        XCTAssertEqual(kvSIMD.simd_make_char8(C4(0...3), C4(4...7)), c8)

        XCTAssertEqual(kvSIMD.simd_make_char8(c1), C8(lowHalf: C4(lowHalf: C2(c1, 0), highHalf: .zero), highHalf: .zero))
        XCTAssertEqual(kvSIMD.simd_make_char8(c2), C8(lowHalf: C4(lowHalf: c2, highHalf: .zero), highHalf: .zero))
        XCTAssertEqual(kvSIMD.simd_make_char8(c3), C8(lowHalf: C4(c3, 0), highHalf: .zero))
        XCTAssertEqual(kvSIMD.simd_make_char8(c4), C8(lowHalf: c4, highHalf: .zero))

        XCTAssertEqual(kvSIMD.simd_make_char8_undef(c1)[0], c1)
        XCTAssertEqual(kvSIMD.simd_make_char2(kvSIMD.simd_make_char8_undef(c2)), c2)
        XCTAssertEqual(kvSIMD.simd_make_char3(kvSIMD.simd_make_char8_undef(c3)), c3)
        XCTAssertEqual(kvSIMD.simd_make_char4(kvSIMD.simd_make_char8_undef(c4)), c4)

        XCTAssertEqual(kvSIMD.simd_make_char8(c8) , c8)
        XCTAssertEqual(kvSIMD.simd_make_char8(c16), c8)
        XCTAssertEqual(kvSIMD.simd_make_char8(c32), c8)
        XCTAssertEqual(kvSIMD.simd_make_char8(c64), c8)
    }



    // MARK: test_simd_make_char16()

    func test_simd_make_char16() {
        XCTAssertEqual(kvSIMD.simd_make_char16(C8(0...7), C8(8...15)), c16)

        XCTAssertEqual(kvSIMD.simd_make_char16(c1), C16(lowHalf: C8(lowHalf: C4(lowHalf: C2(c1, 0), highHalf: .zero), highHalf: .zero), highHalf: .zero))
        XCTAssertEqual(kvSIMD.simd_make_char16(c2), C16(lowHalf: C8(lowHalf: C4(lowHalf: c2, highHalf: .zero), highHalf: .zero), highHalf: .zero))
        XCTAssertEqual(kvSIMD.simd_make_char16(c3), C16(lowHalf: C8(lowHalf: C4(c3, 0), highHalf: .zero), highHalf: .zero))
        XCTAssertEqual(kvSIMD.simd_make_char16(c4), C16(lowHalf: C8(lowHalf: c4, highHalf: .zero), highHalf: .zero))
        XCTAssertEqual(kvSIMD.simd_make_char16(c8), C16(lowHalf: c8, highHalf: .zero))

        XCTAssertEqual(kvSIMD.simd_make_char16_undef(c1)[0], c1)
        XCTAssertEqual(kvSIMD.simd_make_char2(kvSIMD.simd_make_char16_undef(c2)), c2)
        XCTAssertEqual(kvSIMD.simd_make_char3(kvSIMD.simd_make_char16_undef(c3)), c3)
        XCTAssertEqual(kvSIMD.simd_make_char4(kvSIMD.simd_make_char16_undef(c4)), c4)
        XCTAssertEqual(kvSIMD.simd_make_char8(kvSIMD.simd_make_char16_undef(c8)), c8)

        XCTAssertEqual(kvSIMD.simd_make_char16(c16), c16)
        XCTAssertEqual(kvSIMD.simd_make_char16(c32), c16)
        XCTAssertEqual(kvSIMD.simd_make_char16(c64), c16)
    }



    // MARK: test_simd_make_char32()

    func test_simd_make_char32() {
        XCTAssertEqual(kvSIMD.simd_make_char32(C16(0...15), C16(16...31)), c32)

        XCTAssertEqual(kvSIMD.simd_make_char32(c1 ), C32(lowHalf: C16(lowHalf: C8(lowHalf: C4(lowHalf: C2(c1, 0), highHalf: .zero), highHalf: .zero), highHalf: .zero), highHalf: .zero))
        XCTAssertEqual(kvSIMD.simd_make_char32(c2 ), C32(lowHalf: C16(lowHalf: C8(lowHalf: C4(lowHalf: c2, highHalf: .zero), highHalf: .zero), highHalf: .zero), highHalf: .zero))
        XCTAssertEqual(kvSIMD.simd_make_char32(c3 ), C32(lowHalf: C16(lowHalf: C8(lowHalf: C4(c3, 0), highHalf: .zero), highHalf: .zero), highHalf: .zero))
        XCTAssertEqual(kvSIMD.simd_make_char32(c4 ), C32(lowHalf: C16(lowHalf: C8(lowHalf: c4, highHalf: .zero), highHalf: .zero), highHalf: .zero))
        XCTAssertEqual(kvSIMD.simd_make_char32(c8 ), C32(lowHalf: C16(lowHalf: c8, highHalf: .zero), highHalf: .zero))
        XCTAssertEqual(kvSIMD.simd_make_char32(c16), C32(lowHalf: c16, highHalf: .zero))

        XCTAssertEqual(kvSIMD.simd_make_char32_undef(c1)[0], c1)
        XCTAssertEqual(kvSIMD.simd_make_char2( kvSIMD.simd_make_char32_undef(c2 )), c2 )
        XCTAssertEqual(kvSIMD.simd_make_char3( kvSIMD.simd_make_char32_undef(c3 )), c3 )
        XCTAssertEqual(kvSIMD.simd_make_char4( kvSIMD.simd_make_char32_undef(c4 )), c4 )
        XCTAssertEqual(kvSIMD.simd_make_char8( kvSIMD.simd_make_char32_undef(c8 )), c8 )
        XCTAssertEqual(kvSIMD.simd_make_char16(kvSIMD.simd_make_char32_undef(c16)), c16)

        XCTAssertEqual(kvSIMD.simd_make_char32(c32), c32)
        XCTAssertEqual(kvSIMD.simd_make_char32(c64), c32)
    }



    // MARK: test_simd_make_char64()

    func test_simd_make_char64() {
        XCTAssertEqual(kvSIMD.simd_make_char64(C32(0...31), C32(32...63)), c64)

        XCTAssertEqual(kvSIMD.simd_make_char64(c1 ), C64(lowHalf: C32(lowHalf: C16(lowHalf: C8(lowHalf: C4(lowHalf: C2(c1, 0), highHalf: .zero), highHalf: .zero), highHalf: .zero), highHalf: .zero), highHalf: .zero))
        XCTAssertEqual(kvSIMD.simd_make_char64(c2 ), C64(lowHalf: C32(lowHalf: C16(lowHalf: C8(lowHalf: C4(lowHalf: c2, highHalf: .zero), highHalf: .zero), highHalf: .zero), highHalf: .zero), highHalf: .zero))
        XCTAssertEqual(kvSIMD.simd_make_char64(c3 ), C64(lowHalf: C32(lowHalf: C16(lowHalf: C8(lowHalf: C4(c3, 0), highHalf: .zero), highHalf: .zero), highHalf: .zero), highHalf: .zero))
        XCTAssertEqual(kvSIMD.simd_make_char64(c4 ), C64(lowHalf: C32(lowHalf: C16(lowHalf: C8(lowHalf: c4, highHalf: .zero), highHalf: .zero), highHalf: .zero), highHalf: .zero))
        XCTAssertEqual(kvSIMD.simd_make_char64(c8 ), C64(lowHalf: C32(lowHalf: C16(lowHalf: c8, highHalf: .zero), highHalf: .zero), highHalf: .zero))
        XCTAssertEqual(kvSIMD.simd_make_char64(c16), C64(lowHalf: C32(lowHalf: c16, highHalf: .zero), highHalf: .zero))
        XCTAssertEqual(kvSIMD.simd_make_char64(c32), C64(lowHalf: c32, highHalf: .zero))

        XCTAssertEqual(kvSIMD.simd_make_char64_undef(c1)[0], c1)
        XCTAssertEqual(kvSIMD.simd_make_char2( kvSIMD.simd_make_char64_undef(c2 )), c2 )
        XCTAssertEqual(kvSIMD.simd_make_char3( kvSIMD.simd_make_char64_undef(c3 )), c3 )
        XCTAssertEqual(kvSIMD.simd_make_char4( kvSIMD.simd_make_char64_undef(c4 )), c4 )
        XCTAssertEqual(kvSIMD.simd_make_char8( kvSIMD.simd_make_char64_undef(c8 )), c8 )
        XCTAssertEqual(kvSIMD.simd_make_char16(kvSIMD.simd_make_char64_undef(c16)), c16)
        XCTAssertEqual(kvSIMD.simd_make_char32(kvSIMD.simd_make_char64_undef(c32)), c32)

        XCTAssertEqual(kvSIMD.simd_make_char64(c64), c64)
    }



    // MARK: test_simd_make_uchar2()

    func test_simd_make_uchar2() {
        XCTAssertEqual(kvSIMD.simd_make_uchar2(0, 1), uc2)

        XCTAssertEqual(kvSIMD.simd_make_uchar2(uc1), UC2(uc1, 0))

        XCTAssertEqual(kvSIMD.simd_make_uchar2_undef(uc1).x, uc1)

        XCTAssertEqual(kvSIMD.simd_make_uchar2(uc2 ), uc2)
        XCTAssertEqual(kvSIMD.simd_make_uchar2(uc3 ), uc2)
        XCTAssertEqual(kvSIMD.simd_make_uchar2(uc4 ), uc2)
        XCTAssertEqual(kvSIMD.simd_make_uchar2(uc8 ), uc2)
        XCTAssertEqual(kvSIMD.simd_make_uchar2(uc16), uc2)
        XCTAssertEqual(kvSIMD.simd_make_uchar2(uc32), uc2)
        XCTAssertEqual(kvSIMD.simd_make_uchar2(uc64), uc2)
    }



    // MARK: test_simd_make_uchar3()

    func test_simd_make_uchar3() {
        XCTAssertEqual(kvSIMD.simd_make_uchar3(0, 1, 2)      , uc3)
        XCTAssertEqual(kvSIMD.simd_make_uchar3(0, UC2(1...2)), uc3)
        XCTAssertEqual(kvSIMD.simd_make_uchar3(UC2(0...1), 2), uc3)

        XCTAssertEqual(kvSIMD.simd_make_uchar3(uc1), UC3(uc1, 0, 0))
        XCTAssertEqual(kvSIMD.simd_make_uchar3(uc2), UC3(uc2, 0))

        XCTAssertEqual(kvSIMD.simd_make_uchar3_undef(uc1).x, uc1)
        XCTAssertEqual(kvSIMD.simd_make_uchar2(kvSIMD.simd_make_uchar3_undef(uc2)), uc2)

        XCTAssertEqual(kvSIMD.simd_make_uchar3(uc3 ), uc3)
        XCTAssertEqual(kvSIMD.simd_make_uchar3(uc4 ), uc3)
        XCTAssertEqual(kvSIMD.simd_make_uchar3(uc8 ), uc3)
        XCTAssertEqual(kvSIMD.simd_make_uchar3(uc16), uc3)
        XCTAssertEqual(kvSIMD.simd_make_uchar3(uc32), uc3)
        XCTAssertEqual(kvSIMD.simd_make_uchar3(uc64), uc3)
    }



    // MARK: test_simd_make_uchar4()

    func test_simd_make_uchar4() {
        XCTAssertEqual(kvSIMD.simd_make_uchar4(0, 1, 2, 3)            , uc4)
        XCTAssertEqual(kvSIMD.simd_make_uchar4(0, 1, UC2(2...3))      , uc4)
        XCTAssertEqual(kvSIMD.simd_make_uchar4(0, UC2(1...2), 3)      , uc4)
        XCTAssertEqual(kvSIMD.simd_make_uchar4(UC2(0...1), 2, 3)      , uc4)
        XCTAssertEqual(kvSIMD.simd_make_uchar4(0, UC3(1...3))         , uc4)
        XCTAssertEqual(kvSIMD.simd_make_uchar4(UC3(0...2), 3)         , uc4)
        XCTAssertEqual(kvSIMD.simd_make_uchar4(UC2(0...1), UC2(2...3)), uc4)

        XCTAssertEqual(kvSIMD.simd_make_uchar4(uc1), UC4(lowHalf: UC2(uc1, 0), highHalf: .zero))
        XCTAssertEqual(kvSIMD.simd_make_uchar4(uc2), UC4(lowHalf: uc2, highHalf: .zero))
        XCTAssertEqual(kvSIMD.simd_make_uchar4(uc3), UC4(uc3, 0))

        XCTAssertEqual(kvSIMD.simd_make_uchar4_undef(uc1).x, uc1)
        XCTAssertEqual(kvSIMD.simd_make_uchar2(kvSIMD.simd_make_uchar4_undef(uc2)), uc2)
        XCTAssertEqual(kvSIMD.simd_make_uchar3(kvSIMD.simd_make_uchar4_undef(uc3)), uc3)

        XCTAssertEqual(kvSIMD.simd_make_uchar4(uc4) , uc4)
        XCTAssertEqual(kvSIMD.simd_make_uchar4(uc8) , uc4)
        XCTAssertEqual(kvSIMD.simd_make_uchar4(uc16), uc4)
        XCTAssertEqual(kvSIMD.simd_make_uchar4(uc32), uc4)
        XCTAssertEqual(kvSIMD.simd_make_uchar4(uc64), uc4)
    }



    // MARK: test_simd_make_uchar8()

    func test_simd_make_uchar8() {
        XCTAssertEqual(kvSIMD.simd_make_uchar8(UC4(0...3), UC4(4...7)), uc8)

        XCTAssertEqual(kvSIMD.simd_make_uchar8(uc1), UC8(lowHalf: UC4(lowHalf: UC2(uc1, 0), highHalf: .zero), highHalf: .zero))
        XCTAssertEqual(kvSIMD.simd_make_uchar8(uc2), UC8(lowHalf: UC4(lowHalf: uc2, highHalf: .zero), highHalf: .zero))
        XCTAssertEqual(kvSIMD.simd_make_uchar8(uc3), UC8(lowHalf: UC4(uc3, 0), highHalf: .zero))
        XCTAssertEqual(kvSIMD.simd_make_uchar8(uc4), UC8(lowHalf: uc4, highHalf: .zero))

        XCTAssertEqual(kvSIMD.simd_make_uchar8_undef(uc1)[0], uc1)
        XCTAssertEqual(kvSIMD.simd_make_uchar2(kvSIMD.simd_make_uchar8_undef(uc2)), uc2)
        XCTAssertEqual(kvSIMD.simd_make_uchar3(kvSIMD.simd_make_uchar8_undef(uc3)), uc3)
        XCTAssertEqual(kvSIMD.simd_make_uchar4(kvSIMD.simd_make_uchar8_undef(uc4)), uc4)

        XCTAssertEqual(kvSIMD.simd_make_uchar8(uc8) , uc8)
        XCTAssertEqual(kvSIMD.simd_make_uchar8(uc16), uc8)
        XCTAssertEqual(kvSIMD.simd_make_uchar8(uc32), uc8)
        XCTAssertEqual(kvSIMD.simd_make_uchar8(uc64), uc8)
    }



    // MARK: test_simd_make_uchar16()

    func test_simd_make_uchar16() {
        XCTAssertEqual(kvSIMD.simd_make_uchar16(UC8(0...7), UC8(8...15)), uc16)

        XCTAssertEqual(kvSIMD.simd_make_uchar16(uc1), UC16(lowHalf: UC8(lowHalf: UC4(lowHalf: UC2(uc1, 0), highHalf: .zero), highHalf: .zero), highHalf: .zero))
        XCTAssertEqual(kvSIMD.simd_make_uchar16(uc2), UC16(lowHalf: UC8(lowHalf: UC4(lowHalf: uc2, highHalf: .zero), highHalf: .zero), highHalf: .zero))
        XCTAssertEqual(kvSIMD.simd_make_uchar16(uc3), UC16(lowHalf: UC8(lowHalf: UC4(uc3, 0), highHalf: .zero), highHalf: .zero))
        XCTAssertEqual(kvSIMD.simd_make_uchar16(uc4), UC16(lowHalf: UC8(lowHalf: uc4, highHalf: .zero), highHalf: .zero))
        XCTAssertEqual(kvSIMD.simd_make_uchar16(uc8), UC16(lowHalf: uc8, highHalf: .zero))

        XCTAssertEqual(kvSIMD.simd_make_uchar16_undef(uc1)[0], uc1)
        XCTAssertEqual(kvSIMD.simd_make_uchar2(kvSIMD.simd_make_uchar16_undef(uc2)), uc2)
        XCTAssertEqual(kvSIMD.simd_make_uchar3(kvSIMD.simd_make_uchar16_undef(uc3)), uc3)
        XCTAssertEqual(kvSIMD.simd_make_uchar4(kvSIMD.simd_make_uchar16_undef(uc4)), uc4)
        XCTAssertEqual(kvSIMD.simd_make_uchar8(kvSIMD.simd_make_uchar16_undef(uc8)), uc8)

        XCTAssertEqual(kvSIMD.simd_make_uchar16(uc16), uc16)
        XCTAssertEqual(kvSIMD.simd_make_uchar16(uc32), uc16)
        XCTAssertEqual(kvSIMD.simd_make_uchar16(uc64), uc16)
    }



    // MARK: test_simd_make_uchar32()

    func test_simd_make_uchar32() {
        XCTAssertEqual(kvSIMD.simd_make_uchar32(UC16(0...15), UC16(16...31)), uc32)

        XCTAssertEqual(kvSIMD.simd_make_uchar32(uc1 ), UC32(lowHalf: UC16(lowHalf: UC8(lowHalf: UC4(lowHalf: UC2(uc1, 0), highHalf: .zero), highHalf: .zero), highHalf: .zero), highHalf: .zero))
        XCTAssertEqual(kvSIMD.simd_make_uchar32(uc2 ), UC32(lowHalf: UC16(lowHalf: UC8(lowHalf: UC4(lowHalf: uc2, highHalf: .zero), highHalf: .zero), highHalf: .zero), highHalf: .zero))
        XCTAssertEqual(kvSIMD.simd_make_uchar32(uc3 ), UC32(lowHalf: UC16(lowHalf: UC8(lowHalf: UC4(uc3, 0), highHalf: .zero), highHalf: .zero), highHalf: .zero))
        XCTAssertEqual(kvSIMD.simd_make_uchar32(uc4 ), UC32(lowHalf: UC16(lowHalf: UC8(lowHalf: uc4, highHalf: .zero), highHalf: .zero), highHalf: .zero))
        XCTAssertEqual(kvSIMD.simd_make_uchar32(uc8 ), UC32(lowHalf: UC16(lowHalf: uc8, highHalf: .zero), highHalf: .zero))
        XCTAssertEqual(kvSIMD.simd_make_uchar32(uc16), UC32(lowHalf: uc16, highHalf: .zero))

        XCTAssertEqual(kvSIMD.simd_make_uchar32_undef(uc1)[0], uc1)
        XCTAssertEqual(kvSIMD.simd_make_uchar2( kvSIMD.simd_make_uchar32_undef(uc2 )), uc2 )
        XCTAssertEqual(kvSIMD.simd_make_uchar3( kvSIMD.simd_make_uchar32_undef(uc3 )), uc3 )
        XCTAssertEqual(kvSIMD.simd_make_uchar4( kvSIMD.simd_make_uchar32_undef(uc4 )), uc4 )
        XCTAssertEqual(kvSIMD.simd_make_uchar8( kvSIMD.simd_make_uchar32_undef(uc8 )), uc8 )
        XCTAssertEqual(kvSIMD.simd_make_uchar16(kvSIMD.simd_make_uchar32_undef(uc16)), uc16)

        XCTAssertEqual(kvSIMD.simd_make_uchar32(uc32), uc32)
        XCTAssertEqual(kvSIMD.simd_make_uchar32(uc64), uc32)
    }



    // MARK: test_simd_make_uchar64()

    func test_simd_make_uchar64() {
        XCTAssertEqual(kvSIMD.simd_make_uchar64(UC32(0...31), UC32(32...63)), uc64)

        XCTAssertEqual(kvSIMD.simd_make_uchar64(uc1 ), UC64(lowHalf: UC32(lowHalf: UC16(lowHalf: UC8(lowHalf: UC4(lowHalf: UC2(uc1, 0), highHalf: .zero), highHalf: .zero), highHalf: .zero), highHalf: .zero), highHalf: .zero))
        XCTAssertEqual(kvSIMD.simd_make_uchar64(uc2 ), UC64(lowHalf: UC32(lowHalf: UC16(lowHalf: UC8(lowHalf: UC4(lowHalf: uc2, highHalf: .zero), highHalf: .zero), highHalf: .zero), highHalf: .zero), highHalf: .zero))
        XCTAssertEqual(kvSIMD.simd_make_uchar64(uc3 ), UC64(lowHalf: UC32(lowHalf: UC16(lowHalf: UC8(lowHalf: UC4(uc3, 0), highHalf: .zero), highHalf: .zero), highHalf: .zero), highHalf: .zero))
        XCTAssertEqual(kvSIMD.simd_make_uchar64(uc4 ), UC64(lowHalf: UC32(lowHalf: UC16(lowHalf: UC8(lowHalf: uc4, highHalf: .zero), highHalf: .zero), highHalf: .zero), highHalf: .zero))
        XCTAssertEqual(kvSIMD.simd_make_uchar64(uc8 ), UC64(lowHalf: UC32(lowHalf: UC16(lowHalf: uc8, highHalf: .zero), highHalf: .zero), highHalf: .zero))
        XCTAssertEqual(kvSIMD.simd_make_uchar64(uc16), UC64(lowHalf: UC32(lowHalf: uc16, highHalf: .zero), highHalf: .zero))
        XCTAssertEqual(kvSIMD.simd_make_uchar64(uc32), UC64(lowHalf: uc32, highHalf: .zero))

        XCTAssertEqual(kvSIMD.simd_make_uchar64_undef(uc1)[0], uc1)
        XCTAssertEqual(kvSIMD.simd_make_uchar2( kvSIMD.simd_make_uchar64_undef(uc2 )), uc2 )
        XCTAssertEqual(kvSIMD.simd_make_uchar3( kvSIMD.simd_make_uchar64_undef(uc3 )), uc3 )
        XCTAssertEqual(kvSIMD.simd_make_uchar4( kvSIMD.simd_make_uchar64_undef(uc4 )), uc4 )
        XCTAssertEqual(kvSIMD.simd_make_uchar8( kvSIMD.simd_make_uchar64_undef(uc8 )), uc8 )
        XCTAssertEqual(kvSIMD.simd_make_uchar16(kvSIMD.simd_make_uchar64_undef(uc16)), uc16)
        XCTAssertEqual(kvSIMD.simd_make_uchar32(kvSIMD.simd_make_uchar64_undef(uc32)), uc32)

        XCTAssertEqual(kvSIMD.simd_make_uchar64(uc64), uc64)
    }



    // MARK: test_simd_make_short2()

    func test_simd_make_short2() {
        XCTAssertEqual(kvSIMD.simd_make_short2(0, 1), s2)

        XCTAssertEqual(kvSIMD.simd_make_short2(s1), S2(s1, 0))

        XCTAssertEqual(kvSIMD.simd_make_short2_undef(s1).x, s1)

        XCTAssertEqual(kvSIMD.simd_make_short2(s2 ), s2)
        XCTAssertEqual(kvSIMD.simd_make_short2(s3 ), s2)
        XCTAssertEqual(kvSIMD.simd_make_short2(s4 ), s2)
        XCTAssertEqual(kvSIMD.simd_make_short2(s8 ), s2)
        XCTAssertEqual(kvSIMD.simd_make_short2(s16), s2)
        XCTAssertEqual(kvSIMD.simd_make_short2(s32), s2)
    }



    // MARK: test_simd_make_short3()

    func test_simd_make_short3() {
        XCTAssertEqual(kvSIMD.simd_make_short3(0, 1, 2)     , s3)
        XCTAssertEqual(kvSIMD.simd_make_short3(0, S2(1...2)), s3)
        XCTAssertEqual(kvSIMD.simd_make_short3(S2(0...1), 2), s3)

        XCTAssertEqual(kvSIMD.simd_make_short3(s1), S3(s1, 0, 0))
        XCTAssertEqual(kvSIMD.simd_make_short3(s2), S3(s2, 0))

        XCTAssertEqual(kvSIMD.simd_make_short3_undef(s1).x, s1)
        XCTAssertEqual(kvSIMD.simd_make_short2(kvSIMD.simd_make_short3_undef(s2)), s2)

        XCTAssertEqual(kvSIMD.simd_make_short3(s3 ), s3)
        XCTAssertEqual(kvSIMD.simd_make_short3(s4 ), s3)
        XCTAssertEqual(kvSIMD.simd_make_short3(s8 ), s3)
        XCTAssertEqual(kvSIMD.simd_make_short3(s16), s3)
        XCTAssertEqual(kvSIMD.simd_make_short3(s32), s3)
    }



    // MARK: test_simd_make_short4()

    func test_simd_make_short4() {
        XCTAssertEqual(kvSIMD.simd_make_short4(0, 1, 2, 3)          , s4)
        XCTAssertEqual(kvSIMD.simd_make_short4(0, 1, S2(2...3))     , s4)
        XCTAssertEqual(kvSIMD.simd_make_short4(0, S2(1...2), 3)     , s4)
        XCTAssertEqual(kvSIMD.simd_make_short4(S2(0...1), 2, 3)     , s4)
        XCTAssertEqual(kvSIMD.simd_make_short4(0, S3(1...3))        , s4)
        XCTAssertEqual(kvSIMD.simd_make_short4(S3(0...2), 3)        , s4)
        XCTAssertEqual(kvSIMD.simd_make_short4(S2(0...1), S2(2...3)), s4)

        XCTAssertEqual(kvSIMD.simd_make_short4(s1), S4(lowHalf: S2(s1, 0), highHalf: .zero))
        XCTAssertEqual(kvSIMD.simd_make_short4(s2), S4(lowHalf: s2, highHalf: .zero))
        XCTAssertEqual(kvSIMD.simd_make_short4(s3), S4(s3, 0))

        XCTAssertEqual(kvSIMD.simd_make_short4_undef(s1).x, s1)
        XCTAssertEqual(kvSIMD.simd_make_short2(kvSIMD.simd_make_short4_undef(s2)), s2)
        XCTAssertEqual(kvSIMD.simd_make_short3(kvSIMD.simd_make_short4_undef(s3)), s3)

        XCTAssertEqual(kvSIMD.simd_make_short4(s4) , s4)
        XCTAssertEqual(kvSIMD.simd_make_short4(s8) , s4)
        XCTAssertEqual(kvSIMD.simd_make_short4(s16), s4)
        XCTAssertEqual(kvSIMD.simd_make_short4(s32), s4)
    }



    // MARK: test_simd_make_short8()

    func test_simd_make_short8() {
        XCTAssertEqual(kvSIMD.simd_make_short8(S4(0...3), S4(4...7)), s8)

        XCTAssertEqual(kvSIMD.simd_make_short8(s1), S8(lowHalf: S4(lowHalf: S2(s1, 0), highHalf: .zero), highHalf: .zero))
        XCTAssertEqual(kvSIMD.simd_make_short8(s2), S8(lowHalf: S4(lowHalf: s2, highHalf: .zero), highHalf: .zero))
        XCTAssertEqual(kvSIMD.simd_make_short8(s3), S8(lowHalf: S4(s3, 0), highHalf: .zero))
        XCTAssertEqual(kvSIMD.simd_make_short8(s4), S8(lowHalf: s4, highHalf: .zero))

        XCTAssertEqual(kvSIMD.simd_make_short8_undef(s1)[0], s1)
        XCTAssertEqual(kvSIMD.simd_make_short2(kvSIMD.simd_make_short8_undef(s2)), s2)
        XCTAssertEqual(kvSIMD.simd_make_short3(kvSIMD.simd_make_short8_undef(s3)), s3)
        XCTAssertEqual(kvSIMD.simd_make_short4(kvSIMD.simd_make_short8_undef(s4)), s4)

        XCTAssertEqual(kvSIMD.simd_make_short8(s8) , s8)
        XCTAssertEqual(kvSIMD.simd_make_short8(s16), s8)
        XCTAssertEqual(kvSIMD.simd_make_short8(s32), s8)
    }



    // MARK: test_simd_make_short16()

    func test_simd_make_short16() {
        XCTAssertEqual(kvSIMD.simd_make_short16(S8(0...7), S8(8...15)), s16)

        XCTAssertEqual(kvSIMD.simd_make_short16(s1), S16(lowHalf: S8(lowHalf: S4(lowHalf: S2(s1, 0), highHalf: .zero), highHalf: .zero), highHalf: .zero))
        XCTAssertEqual(kvSIMD.simd_make_short16(s2), S16(lowHalf: S8(lowHalf: S4(lowHalf: s2, highHalf: .zero), highHalf: .zero), highHalf: .zero))
        XCTAssertEqual(kvSIMD.simd_make_short16(s3), S16(lowHalf: S8(lowHalf: S4(s3, 0), highHalf: .zero), highHalf: .zero))
        XCTAssertEqual(kvSIMD.simd_make_short16(s4), S16(lowHalf: S8(lowHalf: s4, highHalf: .zero), highHalf: .zero))
        XCTAssertEqual(kvSIMD.simd_make_short16(s8), S16(lowHalf: s8, highHalf: .zero))

        XCTAssertEqual(kvSIMD.simd_make_short16_undef(s1)[0], s1)
        XCTAssertEqual(kvSIMD.simd_make_short2(kvSIMD.simd_make_short16_undef(s2)), s2)
        XCTAssertEqual(kvSIMD.simd_make_short3(kvSIMD.simd_make_short16_undef(s3)), s3)
        XCTAssertEqual(kvSIMD.simd_make_short4(kvSIMD.simd_make_short16_undef(s4)), s4)
        XCTAssertEqual(kvSIMD.simd_make_short8(kvSIMD.simd_make_short16_undef(s8)), s8)

        XCTAssertEqual(kvSIMD.simd_make_short16(s16), s16)
        XCTAssertEqual(kvSIMD.simd_make_short16(s32), s16)
    }



    // MARK: test_simd_make_short32()

    func test_simd_make_short32() {
        XCTAssertEqual(kvSIMD.simd_make_short32(S16(0...15), S16(16...31)), s32)

        XCTAssertEqual(kvSIMD.simd_make_short32(s1 ), S32(lowHalf: S16(lowHalf: S8(lowHalf: S4(lowHalf: S2(s1, 0), highHalf: .zero), highHalf: .zero), highHalf: .zero), highHalf: .zero))
        XCTAssertEqual(kvSIMD.simd_make_short32(s2 ), S32(lowHalf: S16(lowHalf: S8(lowHalf: S4(lowHalf: s2, highHalf: .zero), highHalf: .zero), highHalf: .zero), highHalf: .zero))
        XCTAssertEqual(kvSIMD.simd_make_short32(s3 ), S32(lowHalf: S16(lowHalf: S8(lowHalf: S4(s3, 0), highHalf: .zero), highHalf: .zero), highHalf: .zero))
        XCTAssertEqual(kvSIMD.simd_make_short32(s4 ), S32(lowHalf: S16(lowHalf: S8(lowHalf: s4, highHalf: .zero), highHalf: .zero), highHalf: .zero))
        XCTAssertEqual(kvSIMD.simd_make_short32(s8 ), S32(lowHalf: S16(lowHalf: s8, highHalf: .zero), highHalf: .zero))
        XCTAssertEqual(kvSIMD.simd_make_short32(s16), S32(lowHalf: s16, highHalf: .zero))

        XCTAssertEqual(kvSIMD.simd_make_short32_undef(s1)[0], s1)
        XCTAssertEqual(kvSIMD.simd_make_short2( kvSIMD.simd_make_short32_undef(s2 )), s2 )
        XCTAssertEqual(kvSIMD.simd_make_short3( kvSIMD.simd_make_short32_undef(s3 )), s3 )
        XCTAssertEqual(kvSIMD.simd_make_short4( kvSIMD.simd_make_short32_undef(s4 )), s4 )
        XCTAssertEqual(kvSIMD.simd_make_short8( kvSIMD.simd_make_short32_undef(s8 )), s8 )
        XCTAssertEqual(kvSIMD.simd_make_short16(kvSIMD.simd_make_short32_undef(s16)), s16)

        XCTAssertEqual(kvSIMD.simd_make_short32(s32), s32)
    }



    // MARK: test_simd_make_ushort2()

    func test_simd_make_ushort2() {
        XCTAssertEqual(kvSIMD.simd_make_ushort2(0, 1), us2)

        XCTAssertEqual(kvSIMD.simd_make_ushort2(us1), US2(us1, 0))

        XCTAssertEqual(kvSIMD.simd_make_ushort2_undef(us1).x, us1)

        XCTAssertEqual(kvSIMD.simd_make_ushort2(us2 ), us2)
        XCTAssertEqual(kvSIMD.simd_make_ushort2(us3 ), us2)
        XCTAssertEqual(kvSIMD.simd_make_ushort2(us4 ), us2)
        XCTAssertEqual(kvSIMD.simd_make_ushort2(us8 ), us2)
        XCTAssertEqual(kvSIMD.simd_make_ushort2(us16), us2)
        XCTAssertEqual(kvSIMD.simd_make_ushort2(us32), us2)
    }



    // MARK: test_simd_make_ushort3()

    func test_simd_make_ushort3() {
        XCTAssertEqual(kvSIMD.simd_make_ushort3(0, 1, 2)      , us3)
        XCTAssertEqual(kvSIMD.simd_make_ushort3(0, US2(1...2)), us3)
        XCTAssertEqual(kvSIMD.simd_make_ushort3(US2(0...1), 2), us3)

        XCTAssertEqual(kvSIMD.simd_make_ushort3(us1), US3(us1, 0, 0))
        XCTAssertEqual(kvSIMD.simd_make_ushort3(us2), US3(us2, 0))

        XCTAssertEqual(kvSIMD.simd_make_ushort3_undef(us1).x, us1)
        XCTAssertEqual(kvSIMD.simd_make_ushort2(kvSIMD.simd_make_ushort3_undef(us2)), us2)

        XCTAssertEqual(kvSIMD.simd_make_ushort3(us3 ), us3)
        XCTAssertEqual(kvSIMD.simd_make_ushort3(us4 ), us3)
        XCTAssertEqual(kvSIMD.simd_make_ushort3(us8 ), us3)
        XCTAssertEqual(kvSIMD.simd_make_ushort3(us16), us3)
        XCTAssertEqual(kvSIMD.simd_make_ushort3(us32), us3)
    }



    // MARK: test_simd_make_ushort4()

    func test_simd_make_ushort4() {
        XCTAssertEqual(kvSIMD.simd_make_ushort4(0, 1, 2, 3)            , us4)
        XCTAssertEqual(kvSIMD.simd_make_ushort4(0, 1, US2(2...3))      , us4)
        XCTAssertEqual(kvSIMD.simd_make_ushort4(0, US2(1...2), 3)      , us4)
        XCTAssertEqual(kvSIMD.simd_make_ushort4(US2(0...1), 2, 3)      , us4)
        XCTAssertEqual(kvSIMD.simd_make_ushort4(0, US3(1...3))         , us4)
        XCTAssertEqual(kvSIMD.simd_make_ushort4(US3(0...2), 3)         , us4)
        XCTAssertEqual(kvSIMD.simd_make_ushort4(US2(0...1), US2(2...3)), us4)

        XCTAssertEqual(kvSIMD.simd_make_ushort4(us1), US4(lowHalf: US2(us1, 0), highHalf: .zero))
        XCTAssertEqual(kvSIMD.simd_make_ushort4(us2), US4(lowHalf: us2, highHalf: .zero))
        XCTAssertEqual(kvSIMD.simd_make_ushort4(us3), US4(us3, 0))

        XCTAssertEqual(kvSIMD.simd_make_ushort4_undef(us1).x, us1)
        XCTAssertEqual(kvSIMD.simd_make_ushort2(kvSIMD.simd_make_ushort4_undef(us2)), us2)
        XCTAssertEqual(kvSIMD.simd_make_ushort3(kvSIMD.simd_make_ushort4_undef(us3)), us3)

        XCTAssertEqual(kvSIMD.simd_make_ushort4(us4) , us4)
        XCTAssertEqual(kvSIMD.simd_make_ushort4(us8) , us4)
        XCTAssertEqual(kvSIMD.simd_make_ushort4(us16), us4)
        XCTAssertEqual(kvSIMD.simd_make_ushort4(us32), us4)
    }



    // MARK: test_simd_make_ushort8()

    func test_simd_make_ushort8() {
        XCTAssertEqual(kvSIMD.simd_make_ushort8(US4(0...3), US4(4...7)), us8)

        XCTAssertEqual(kvSIMD.simd_make_ushort8(us1), US8(lowHalf: US4(lowHalf: US2(us1, 0), highHalf: .zero), highHalf: .zero))
        XCTAssertEqual(kvSIMD.simd_make_ushort8(us2), US8(lowHalf: US4(lowHalf: us2, highHalf: .zero), highHalf: .zero))
        XCTAssertEqual(kvSIMD.simd_make_ushort8(us3), US8(lowHalf: US4(us3, 0), highHalf: .zero))
        XCTAssertEqual(kvSIMD.simd_make_ushort8(us4), US8(lowHalf: us4, highHalf: .zero))

        XCTAssertEqual(kvSIMD.simd_make_ushort8_undef(us1)[0], us1)
        XCTAssertEqual(kvSIMD.simd_make_ushort2(kvSIMD.simd_make_ushort8_undef(us2)), us2)
        XCTAssertEqual(kvSIMD.simd_make_ushort3(kvSIMD.simd_make_ushort8_undef(us3)), us3)
        XCTAssertEqual(kvSIMD.simd_make_ushort4(kvSIMD.simd_make_ushort8_undef(us4)), us4)

        XCTAssertEqual(kvSIMD.simd_make_ushort8(us8) , us8)
        XCTAssertEqual(kvSIMD.simd_make_ushort8(us16), us8)
        XCTAssertEqual(kvSIMD.simd_make_ushort8(us32), us8)
    }



    // MARK: test_simd_make_ushort16()

    func test_simd_make_ushort16() {
        XCTAssertEqual(kvSIMD.simd_make_ushort16(US8(0...7), US8(8...15)), us16)

        XCTAssertEqual(kvSIMD.simd_make_ushort16(us1), US16(lowHalf: US8(lowHalf: US4(lowHalf: US2(us1, 0), highHalf: .zero), highHalf: .zero), highHalf: .zero))
        XCTAssertEqual(kvSIMD.simd_make_ushort16(us2), US16(lowHalf: US8(lowHalf: US4(lowHalf: us2, highHalf: .zero), highHalf: .zero), highHalf: .zero))
        XCTAssertEqual(kvSIMD.simd_make_ushort16(us3), US16(lowHalf: US8(lowHalf: US4(us3, 0), highHalf: .zero), highHalf: .zero))
        XCTAssertEqual(kvSIMD.simd_make_ushort16(us4), US16(lowHalf: US8(lowHalf: us4, highHalf: .zero), highHalf: .zero))
        XCTAssertEqual(kvSIMD.simd_make_ushort16(us8), US16(lowHalf: us8, highHalf: .zero))

        XCTAssertEqual(kvSIMD.simd_make_ushort16_undef(us1)[0], us1)
        XCTAssertEqual(kvSIMD.simd_make_ushort2(kvSIMD.simd_make_ushort16_undef(us2)), us2)
        XCTAssertEqual(kvSIMD.simd_make_ushort3(kvSIMD.simd_make_ushort16_undef(us3)), us3)
        XCTAssertEqual(kvSIMD.simd_make_ushort4(kvSIMD.simd_make_ushort16_undef(us4)), us4)
        XCTAssertEqual(kvSIMD.simd_make_ushort8(kvSIMD.simd_make_ushort16_undef(us8)), us8)

        XCTAssertEqual(kvSIMD.simd_make_ushort16(us16), us16)
        XCTAssertEqual(kvSIMD.simd_make_ushort16(us32), us16)
    }



    // MARK: test_simd_make_ushort32()

    func test_simd_make_ushort32() {
        XCTAssertEqual(kvSIMD.simd_make_ushort32(US16(0...15), US16(16...31)), us32)

        XCTAssertEqual(kvSIMD.simd_make_ushort32(us1 ), US32(lowHalf: US16(lowHalf: US8(lowHalf: US4(lowHalf: US2(us1, 0), highHalf: .zero), highHalf: .zero), highHalf: .zero), highHalf: .zero))
        XCTAssertEqual(kvSIMD.simd_make_ushort32(us2 ), US32(lowHalf: US16(lowHalf: US8(lowHalf: US4(lowHalf: us2, highHalf: .zero), highHalf: .zero), highHalf: .zero), highHalf: .zero))
        XCTAssertEqual(kvSIMD.simd_make_ushort32(us3 ), US32(lowHalf: US16(lowHalf: US8(lowHalf: US4(us3, 0), highHalf: .zero), highHalf: .zero), highHalf: .zero))
        XCTAssertEqual(kvSIMD.simd_make_ushort32(us4 ), US32(lowHalf: US16(lowHalf: US8(lowHalf: us4, highHalf: .zero), highHalf: .zero), highHalf: .zero))
        XCTAssertEqual(kvSIMD.simd_make_ushort32(us8 ), US32(lowHalf: US16(lowHalf: us8, highHalf: .zero), highHalf: .zero))
        XCTAssertEqual(kvSIMD.simd_make_ushort32(us16), US32(lowHalf: us16, highHalf: .zero))

        XCTAssertEqual(kvSIMD.simd_make_ushort32_undef(us1)[0], us1)
        XCTAssertEqual(kvSIMD.simd_make_ushort2( kvSIMD.simd_make_ushort32_undef(us2 )), us2 )
        XCTAssertEqual(kvSIMD.simd_make_ushort3( kvSIMD.simd_make_ushort32_undef(us3 )), us3 )
        XCTAssertEqual(kvSIMD.simd_make_ushort4( kvSIMD.simd_make_ushort32_undef(us4 )), us4 )
        XCTAssertEqual(kvSIMD.simd_make_ushort8( kvSIMD.simd_make_ushort32_undef(us8 )), us8 )
        XCTAssertEqual(kvSIMD.simd_make_ushort16(kvSIMD.simd_make_ushort32_undef(us16)), us16)

        XCTAssertEqual(kvSIMD.simd_make_ushort32(us32), us32)
    }



    // MARK: test_simd_make_int2()

    func test_simd_make_int2() {
        XCTAssertEqual(kvSIMD.simd_make_int2(0, 1), i2)

        XCTAssertEqual(kvSIMD.simd_make_int2(i1), I2(i1, 0))

        XCTAssertEqual(kvSIMD.simd_make_int2_undef(i1).x, i1)

        XCTAssertEqual(kvSIMD.simd_make_int2(i2 ), i2)
        XCTAssertEqual(kvSIMD.simd_make_int2(i3 ), i2)
        XCTAssertEqual(kvSIMD.simd_make_int2(i4 ), i2)
        XCTAssertEqual(kvSIMD.simd_make_int2(i8 ), i2)
        XCTAssertEqual(kvSIMD.simd_make_int2(i16), i2)
    }



    // MARK: test_simd_make_int3()

    func test_simd_make_int3() {
        XCTAssertEqual(kvSIMD.simd_make_int3(0, 1, 2)     , i3)
        XCTAssertEqual(kvSIMD.simd_make_int3(0, I2(1...2)), i3)
        XCTAssertEqual(kvSIMD.simd_make_int3(I2(0...1), 2), i3)

        XCTAssertEqual(kvSIMD.simd_make_int3(i1), I3(i1, 0, 0))
        XCTAssertEqual(kvSIMD.simd_make_int3(i2), I3(i2, 0))

        XCTAssertEqual(kvSIMD.simd_make_int3_undef(i1).x, i1)
        XCTAssertEqual(kvSIMD.simd_make_int2(kvSIMD.simd_make_int3_undef(i2)), i2)

        XCTAssertEqual(kvSIMD.simd_make_int3(i3 ), i3)
        XCTAssertEqual(kvSIMD.simd_make_int3(i4 ), i3)
        XCTAssertEqual(kvSIMD.simd_make_int3(i8 ), i3)
        XCTAssertEqual(kvSIMD.simd_make_int3(i16), i3)
    }



    // MARK: test_simd_make_int4()

    func test_simd_make_int4() {
        XCTAssertEqual(kvSIMD.simd_make_int4(0, 1, 2, 3)          , i4)
        XCTAssertEqual(kvSIMD.simd_make_int4(0, 1, I2(2...3))     , i4)
        XCTAssertEqual(kvSIMD.simd_make_int4(0, I2(1...2), 3)     , i4)
        XCTAssertEqual(kvSIMD.simd_make_int4(I2(0...1), 2, 3)     , i4)
        XCTAssertEqual(kvSIMD.simd_make_int4(0, I3(1...3))        , i4)
        XCTAssertEqual(kvSIMD.simd_make_int4(I3(0...2), 3)        , i4)
        XCTAssertEqual(kvSIMD.simd_make_int4(I2(0...1), I2(2...3)), i4)

        XCTAssertEqual(kvSIMD.simd_make_int4(i1), I4(lowHalf: I2(i1, 0), highHalf: .zero))
        XCTAssertEqual(kvSIMD.simd_make_int4(i2), I4(lowHalf: i2, highHalf: .zero))
        XCTAssertEqual(kvSIMD.simd_make_int4(i3), I4(i3, 0))

        XCTAssertEqual(kvSIMD.simd_make_int4_undef(i1).x, i1)
        XCTAssertEqual(kvSIMD.simd_make_int2(kvSIMD.simd_make_int4_undef(i2)), i2)
        XCTAssertEqual(kvSIMD.simd_make_int3(kvSIMD.simd_make_int4_undef(i3)), i3)

        XCTAssertEqual(kvSIMD.simd_make_int4(i4) , i4)
        XCTAssertEqual(kvSIMD.simd_make_int4(i8) , i4)
        XCTAssertEqual(kvSIMD.simd_make_int4(i16), i4)
    }



    // MARK: test_simd_make_int8()

    func test_simd_make_int8() {
        XCTAssertEqual(kvSIMD.simd_make_int8(I4(0...3), I4(4...7)), i8)

        XCTAssertEqual(kvSIMD.simd_make_int8(i1), I8(lowHalf: I4(lowHalf: I2(i1, 0), highHalf: .zero), highHalf: .zero))
        XCTAssertEqual(kvSIMD.simd_make_int8(i2), I8(lowHalf: I4(lowHalf: i2, highHalf: .zero), highHalf: .zero))
        XCTAssertEqual(kvSIMD.simd_make_int8(i3), I8(lowHalf: I4(i3, 0), highHalf: .zero))
        XCTAssertEqual(kvSIMD.simd_make_int8(i4), I8(lowHalf: i4, highHalf: .zero))

        XCTAssertEqual(kvSIMD.simd_make_int8_undef(i1)[0], i1)
        XCTAssertEqual(kvSIMD.simd_make_int2(kvSIMD.simd_make_int8_undef(i2)), i2)
        XCTAssertEqual(kvSIMD.simd_make_int3(kvSIMD.simd_make_int8_undef(i3)), i3)
        XCTAssertEqual(kvSIMD.simd_make_int4(kvSIMD.simd_make_int8_undef(i4)), i4)

        XCTAssertEqual(kvSIMD.simd_make_int8(i8) , i8)
        XCTAssertEqual(kvSIMD.simd_make_int8(i16), i8)
    }



    // MARK: test_simd_make_int16()

    func test_simd_make_int16() {
        XCTAssertEqual(kvSIMD.simd_make_int16(I8(0...7), I8(8...15)), i16)

        XCTAssertEqual(kvSIMD.simd_make_int16(i1), I16(lowHalf: I8(lowHalf: I4(lowHalf: I2(i1, 0), highHalf: .zero), highHalf: .zero), highHalf: .zero))
        XCTAssertEqual(kvSIMD.simd_make_int16(i2), I16(lowHalf: I8(lowHalf: I4(lowHalf: i2, highHalf: .zero), highHalf: .zero), highHalf: .zero))
        XCTAssertEqual(kvSIMD.simd_make_int16(i3), I16(lowHalf: I8(lowHalf: I4(i3, 0), highHalf: .zero), highHalf: .zero))
        XCTAssertEqual(kvSIMD.simd_make_int16(i4), I16(lowHalf: I8(lowHalf: i4, highHalf: .zero), highHalf: .zero))
        XCTAssertEqual(kvSIMD.simd_make_int16(i8), I16(lowHalf: i8, highHalf: .zero))

        XCTAssertEqual(kvSIMD.simd_make_int16_undef(i1)[0], i1)
        XCTAssertEqual(kvSIMD.simd_make_int2(kvSIMD.simd_make_int16_undef(i2)), i2)
        XCTAssertEqual(kvSIMD.simd_make_int3(kvSIMD.simd_make_int16_undef(i3)), i3)
        XCTAssertEqual(kvSIMD.simd_make_int4(kvSIMD.simd_make_int16_undef(i4)), i4)
        XCTAssertEqual(kvSIMD.simd_make_int8(kvSIMD.simd_make_int16_undef(i8)), i8)

        XCTAssertEqual(kvSIMD.simd_make_int16(i16), i16)
    }



    // MARK: test_simd_make_uint2()

    func test_simd_make_uint2() {
        XCTAssertEqual(kvSIMD.simd_make_uint2(0, 1), ui2)

        XCTAssertEqual(kvSIMD.simd_make_uint2(ui1), UI2(ui1, 0))

        XCTAssertEqual(kvSIMD.simd_make_uint2_undef(ui1).x, ui1)

        XCTAssertEqual(kvSIMD.simd_make_uint2(ui2 ), ui2)
        XCTAssertEqual(kvSIMD.simd_make_uint2(ui3 ), ui2)
        XCTAssertEqual(kvSIMD.simd_make_uint2(ui4 ), ui2)
        XCTAssertEqual(kvSIMD.simd_make_uint2(ui8 ), ui2)
        XCTAssertEqual(kvSIMD.simd_make_uint2(ui16), ui2)
    }



    // MARK: test_simd_make_uint3()

    func test_simd_make_uint3() {
        XCTAssertEqual(kvSIMD.simd_make_uint3(0, 1, 2)      , ui3)
        XCTAssertEqual(kvSIMD.simd_make_uint3(0, UI2(1...2)), ui3)
        XCTAssertEqual(kvSIMD.simd_make_uint3(UI2(0...1), 2), ui3)

        XCTAssertEqual(kvSIMD.simd_make_uint3(ui1), UI3(ui1, 0, 0))
        XCTAssertEqual(kvSIMD.simd_make_uint3(ui2), UI3(ui2, 0))

        XCTAssertEqual(kvSIMD.simd_make_uint3_undef(ui1).x, ui1)
        XCTAssertEqual(kvSIMD.simd_make_uint2(kvSIMD.simd_make_uint3_undef(ui2)), ui2)

        XCTAssertEqual(kvSIMD.simd_make_uint3(ui3 ), ui3)
        XCTAssertEqual(kvSIMD.simd_make_uint3(ui4 ), ui3)
        XCTAssertEqual(kvSIMD.simd_make_uint3(ui8 ), ui3)
        XCTAssertEqual(kvSIMD.simd_make_uint3(ui16), ui3)
    }



    // MARK: test_simd_make_uint4()

    func test_simd_make_uint4() {
        XCTAssertEqual(kvSIMD.simd_make_uint4(0, 1, 2, 3)            , ui4)
        XCTAssertEqual(kvSIMD.simd_make_uint4(0, 1, UI2(2...3))      , ui4)
        XCTAssertEqual(kvSIMD.simd_make_uint4(0, UI2(1...2), 3)      , ui4)
        XCTAssertEqual(kvSIMD.simd_make_uint4(UI2(0...1), 2, 3)      , ui4)
        XCTAssertEqual(kvSIMD.simd_make_uint4(0, UI3(1...3))         , ui4)
        XCTAssertEqual(kvSIMD.simd_make_uint4(UI3(0...2), 3)         , ui4)
        XCTAssertEqual(kvSIMD.simd_make_uint4(UI2(0...1), UI2(2...3)), ui4)

        XCTAssertEqual(kvSIMD.simd_make_uint4(ui1), UI4(lowHalf: UI2(ui1, 0), highHalf: .zero))
        XCTAssertEqual(kvSIMD.simd_make_uint4(ui2), UI4(lowHalf: ui2, highHalf: .zero))
        XCTAssertEqual(kvSIMD.simd_make_uint4(ui3), UI4(ui3, 0))

        XCTAssertEqual(kvSIMD.simd_make_uint4_undef(ui1).x, ui1)
        XCTAssertEqual(kvSIMD.simd_make_uint2(kvSIMD.simd_make_uint4_undef(ui2)), ui2)
        XCTAssertEqual(kvSIMD.simd_make_uint3(kvSIMD.simd_make_uint4_undef(ui3)), ui3)

        XCTAssertEqual(kvSIMD.simd_make_uint4(ui4) , ui4)
        XCTAssertEqual(kvSIMD.simd_make_uint4(ui8) , ui4)
        XCTAssertEqual(kvSIMD.simd_make_uint4(ui16), ui4)
    }



    // MARK: test_simd_make_uint8()

    func test_simd_make_uint8() {
        XCTAssertEqual(kvSIMD.simd_make_uint8(UI4(0...3), UI4(4...7)), ui8)

        XCTAssertEqual(kvSIMD.simd_make_uint8(ui1), UI8(lowHalf: UI4(lowHalf: UI2(ui1, 0), highHalf: .zero), highHalf: .zero))
        XCTAssertEqual(kvSIMD.simd_make_uint8(ui2), UI8(lowHalf: UI4(lowHalf: ui2, highHalf: .zero), highHalf: .zero))
        XCTAssertEqual(kvSIMD.simd_make_uint8(ui3), UI8(lowHalf: UI4(ui3, 0), highHalf: .zero))
        XCTAssertEqual(kvSIMD.simd_make_uint8(ui4), UI8(lowHalf: ui4, highHalf: .zero))

        XCTAssertEqual(kvSIMD.simd_make_uint8_undef(ui1)[0], ui1)
        XCTAssertEqual(kvSIMD.simd_make_uint2(kvSIMD.simd_make_uint8_undef(ui2)), ui2)
        XCTAssertEqual(kvSIMD.simd_make_uint3(kvSIMD.simd_make_uint8_undef(ui3)), ui3)
        XCTAssertEqual(kvSIMD.simd_make_uint4(kvSIMD.simd_make_uint8_undef(ui4)), ui4)

        XCTAssertEqual(kvSIMD.simd_make_uint8(ui8) , ui8)
        XCTAssertEqual(kvSIMD.simd_make_uint8(ui16), ui8)
    }



    // MARK: test_simd_make_uint16()

    func test_simd_make_uint16() {
        XCTAssertEqual(kvSIMD.simd_make_uint16(UI8(0...7), UI8(8...15)), ui16)

        XCTAssertEqual(kvSIMD.simd_make_uint16(ui1), UI16(lowHalf: UI8(lowHalf: UI4(lowHalf: UI2(ui1, 0), highHalf: .zero), highHalf: .zero), highHalf: .zero))
        XCTAssertEqual(kvSIMD.simd_make_uint16(ui2), UI16(lowHalf: UI8(lowHalf: UI4(lowHalf: ui2, highHalf: .zero), highHalf: .zero), highHalf: .zero))
        XCTAssertEqual(kvSIMD.simd_make_uint16(ui3), UI16(lowHalf: UI8(lowHalf: UI4(ui3, 0), highHalf: .zero), highHalf: .zero))
        XCTAssertEqual(kvSIMD.simd_make_uint16(ui4), UI16(lowHalf: UI8(lowHalf: ui4, highHalf: .zero), highHalf: .zero))
        XCTAssertEqual(kvSIMD.simd_make_uint16(ui8), UI16(lowHalf: ui8, highHalf: .zero))

        XCTAssertEqual(kvSIMD.simd_make_uint16_undef(ui1)[0], ui1)
        XCTAssertEqual(kvSIMD.simd_make_uint2(kvSIMD.simd_make_uint16_undef(ui2)), ui2)
        XCTAssertEqual(kvSIMD.simd_make_uint3(kvSIMD.simd_make_uint16_undef(ui3)), ui3)
        XCTAssertEqual(kvSIMD.simd_make_uint4(kvSIMD.simd_make_uint16_undef(ui4)), ui4)
        XCTAssertEqual(kvSIMD.simd_make_uint8(kvSIMD.simd_make_uint16_undef(ui8)), ui8)

        XCTAssertEqual(kvSIMD.simd_make_uint16(ui16), ui16)
    }



    // MARK: test_simd_make_long2()

    func test_simd_make_long2() {
        XCTAssertEqual(kvSIMD.simd_make_long2(0, 1), l2)

        XCTAssertEqual(kvSIMD.simd_make_long2(l1), L2(l1, 0))

        XCTAssertEqual(kvSIMD.simd_make_long2_undef(l1).x, l1)

        XCTAssertEqual(kvSIMD.simd_make_long2(l2), l2)
        XCTAssertEqual(kvSIMD.simd_make_long2(l3), l2)
        XCTAssertEqual(kvSIMD.simd_make_long2(l4), l2)
        XCTAssertEqual(kvSIMD.simd_make_long2(l8), l2)
    }



    // MARK: test_simd_make_long3()

    func test_simd_make_long3() {
        XCTAssertEqual(kvSIMD.simd_make_long3(0, 1, 2)     , l3)
        XCTAssertEqual(kvSIMD.simd_make_long3(0, L2(1...2)), l3)
        XCTAssertEqual(kvSIMD.simd_make_long3(L2(0...1), 2), l3)

        XCTAssertEqual(kvSIMD.simd_make_long3(l1), L3(l1, 0, 0))
        XCTAssertEqual(kvSIMD.simd_make_long3(l2), L3(l2, 0))

        XCTAssertEqual(kvSIMD.simd_make_long3_undef(l1).x, l1)
        XCTAssertEqual(kvSIMD.simd_make_long2(kvSIMD.simd_make_long3_undef(l2)), l2)

        XCTAssertEqual(kvSIMD.simd_make_long3(l3), l3)
        XCTAssertEqual(kvSIMD.simd_make_long3(l4), l3)
        XCTAssertEqual(kvSIMD.simd_make_long3(l8), l3)
    }



    // MARK: test_simd_make_long4()

    func test_simd_make_long4() {
        XCTAssertEqual(kvSIMD.simd_make_long4(0, 1, 2, 3)          , l4)
        XCTAssertEqual(kvSIMD.simd_make_long4(0, 1, L2(2...3))     , l4)
        XCTAssertEqual(kvSIMD.simd_make_long4(0, L2(1...2), 3)     , l4)
        XCTAssertEqual(kvSIMD.simd_make_long4(L2(0...1), 2, 3)     , l4)
        XCTAssertEqual(kvSIMD.simd_make_long4(0, L3(1...3))        , l4)
        XCTAssertEqual(kvSIMD.simd_make_long4(L3(0...2), 3)        , l4)
        XCTAssertEqual(kvSIMD.simd_make_long4(L2(0...1), L2(2...3)), l4)

        XCTAssertEqual(kvSIMD.simd_make_long4(l1), L4(lowHalf: L2(l1, 0), highHalf: .zero))
        XCTAssertEqual(kvSIMD.simd_make_long4(l2), L4(lowHalf: l2, highHalf: .zero))
        XCTAssertEqual(kvSIMD.simd_make_long4(l3), L4(l3, 0))

        XCTAssertEqual(kvSIMD.simd_make_long4_undef(l1).x, l1)
        XCTAssertEqual(kvSIMD.simd_make_long2(kvSIMD.simd_make_long4_undef(l2)), l2)
        XCTAssertEqual(kvSIMD.simd_make_long3(kvSIMD.simd_make_long4_undef(l3)), l3)

        XCTAssertEqual(kvSIMD.simd_make_long4(l4), l4)
        XCTAssertEqual(kvSIMD.simd_make_long4(l8), l4)
    }



    // MARK: test_simd_make_long8()

    func test_simd_make_long8() {
        XCTAssertEqual(kvSIMD.simd_make_long8(L4(0...3), L4(4...7)), l8)

        XCTAssertEqual(kvSIMD.simd_make_long8(l1), L8(lowHalf: L4(lowHalf: L2(l1, 0), highHalf: .zero), highHalf: .zero))
        XCTAssertEqual(kvSIMD.simd_make_long8(l2), L8(lowHalf: L4(lowHalf: l2, highHalf: .zero), highHalf: .zero))
        XCTAssertEqual(kvSIMD.simd_make_long8(l3), L8(lowHalf: L4(l3, 0), highHalf: .zero))
        XCTAssertEqual(kvSIMD.simd_make_long8(l4), L8(lowHalf: l4, highHalf: .zero))

        XCTAssertEqual(kvSIMD.simd_make_long8_undef(l1)[0], l1)
        XCTAssertEqual(kvSIMD.simd_make_long2(kvSIMD.simd_make_long8_undef(l2)), l2)
        XCTAssertEqual(kvSIMD.simd_make_long3(kvSIMD.simd_make_long8_undef(l3)), l3)
        XCTAssertEqual(kvSIMD.simd_make_long4(kvSIMD.simd_make_long8_undef(l4)), l4)

        XCTAssertEqual(kvSIMD.simd_make_long8(l8), l8)
    }



    // MARK: test_simd_make_ulong2()

    func test_simd_make_ulong2() {
        XCTAssertEqual(kvSIMD.simd_make_ulong2(0, 1), ul2)

        XCTAssertEqual(kvSIMD.simd_make_ulong2(ul1), UL2(ul1, 0))

        XCTAssertEqual(kvSIMD.simd_make_ulong2_undef(ul1).x, ul1)

        XCTAssertEqual(kvSIMD.simd_make_ulong2(ul2), ul2)
        XCTAssertEqual(kvSIMD.simd_make_ulong2(ul3), ul2)
        XCTAssertEqual(kvSIMD.simd_make_ulong2(ul4), ul2)
        XCTAssertEqual(kvSIMD.simd_make_ulong2(ul8), ul2)
    }



    // MARK: test_simd_make_ulong3()

    func test_simd_make_ulong3() {
        XCTAssertEqual(kvSIMD.simd_make_ulong3(0, 1, 2)      , ul3)
        XCTAssertEqual(kvSIMD.simd_make_ulong3(0, UL2(1...2)), ul3)
        XCTAssertEqual(kvSIMD.simd_make_ulong3(UL2(0...1), 2), ul3)

        XCTAssertEqual(kvSIMD.simd_make_ulong3(ul1), UL3(ul1, 0, 0))
        XCTAssertEqual(kvSIMD.simd_make_ulong3(ul2), UL3(ul2, 0))

        XCTAssertEqual(kvSIMD.simd_make_ulong3_undef(ul1).x, ul1)
        XCTAssertEqual(kvSIMD.simd_make_ulong2(kvSIMD.simd_make_ulong3_undef(ul2)), ul2)

        XCTAssertEqual(kvSIMD.simd_make_ulong3(ul3), ul3)
        XCTAssertEqual(kvSIMD.simd_make_ulong3(ul4), ul3)
        XCTAssertEqual(kvSIMD.simd_make_ulong3(ul8), ul3)
    }



    // MARK: test_simd_make_ulong4()

    func test_simd_make_ulong4() {
        XCTAssertEqual(kvSIMD.simd_make_ulong4(0, 1, 2, 3)            , ul4)
        XCTAssertEqual(kvSIMD.simd_make_ulong4(0, 1, UL2(2...3))      , ul4)
        XCTAssertEqual(kvSIMD.simd_make_ulong4(0, UL2(1...2), 3)      , ul4)
        XCTAssertEqual(kvSIMD.simd_make_ulong4(UL2(0...1), 2, 3)      , ul4)
        XCTAssertEqual(kvSIMD.simd_make_ulong4(0, UL3(1...3))         , ul4)
        XCTAssertEqual(kvSIMD.simd_make_ulong4(UL3(0...2), 3)         , ul4)
        XCTAssertEqual(kvSIMD.simd_make_ulong4(UL2(0...1), UL2(2...3)), ul4)

        XCTAssertEqual(kvSIMD.simd_make_ulong4(ul1), UL4(lowHalf: UL2(ul1, 0), highHalf: .zero))
        XCTAssertEqual(kvSIMD.simd_make_ulong4(ul2), UL4(lowHalf: ul2, highHalf: .zero))
        XCTAssertEqual(kvSIMD.simd_make_ulong4(ul3), UL4(ul3, 0))

        XCTAssertEqual(kvSIMD.simd_make_ulong4_undef(ul1).x, ul1)
        XCTAssertEqual(kvSIMD.simd_make_ulong2(kvSIMD.simd_make_ulong4_undef(ul2)), ul2)
        XCTAssertEqual(kvSIMD.simd_make_ulong3(kvSIMD.simd_make_ulong4_undef(ul3)), ul3)

        XCTAssertEqual(kvSIMD.simd_make_ulong4(ul4), ul4)
        XCTAssertEqual(kvSIMD.simd_make_ulong4(ul8), ul4)
    }



    // MARK: test_simd_make_ulong8()

    func test_simd_make_ulong8() {
        XCTAssertEqual(kvSIMD.simd_make_ulong8(UL4(0...3), UL4(4...7)), ul8)

        XCTAssertEqual(kvSIMD.simd_make_ulong8(ul1), UL8(lowHalf: UL4(lowHalf: UL2(ul1, 0), highHalf: .zero), highHalf: .zero))
        XCTAssertEqual(kvSIMD.simd_make_ulong8(ul2), UL8(lowHalf: UL4(lowHalf: ul2, highHalf: .zero), highHalf: .zero))
        XCTAssertEqual(kvSIMD.simd_make_ulong8(ul3), UL8(lowHalf: UL4(ul3, 0), highHalf: .zero))
        XCTAssertEqual(kvSIMD.simd_make_ulong8(ul4), UL8(lowHalf: ul4, highHalf: .zero))

        XCTAssertEqual(kvSIMD.simd_make_ulong8_undef(ul1)[0], ul1)
        XCTAssertEqual(kvSIMD.simd_make_ulong2(kvSIMD.simd_make_ulong8_undef(ul2)), ul2)
        XCTAssertEqual(kvSIMD.simd_make_ulong3(kvSIMD.simd_make_ulong8_undef(ul3)), ul3)
        XCTAssertEqual(kvSIMD.simd_make_ulong4(kvSIMD.simd_make_ulong8_undef(ul4)), ul4)

        XCTAssertEqual(kvSIMD.simd_make_ulong8(ul8), ul8)
    }



    // MARK: test_simd_make_float2()

    func test_simd_make_float2() {
        XCTAssertEqual(kvSIMD.simd_make_float2(0.0, 1.0), f2)

        XCTAssertEqual(kvSIMD.simd_make_float2(f1), F2(f1, 0.0))

        XCTAssertEqual(kvSIMD.simd_make_float2_undef(f1).x, f1)

        XCTAssertEqual(kvSIMD.simd_make_float2(f2 ), f2)
        XCTAssertEqual(kvSIMD.simd_make_float2(f3 ), f2)
        XCTAssertEqual(kvSIMD.simd_make_float2(f4 ), f2)
        XCTAssertEqual(kvSIMD.simd_make_float2(f8 ), f2)
        XCTAssertEqual(kvSIMD.simd_make_float2(f16), f2)
    }



    // MARK: test_simd_make_float3()

    func test_simd_make_float3() {
        XCTAssertEqual(kvSIMD.simd_make_float3(0.0, 1.0, 2.0)    , f3)
        XCTAssertEqual(kvSIMD.simd_make_float3(0.0, F2(1.0, 2.0)), f3)
        XCTAssertEqual(kvSIMD.simd_make_float3(F2(0.0, 1.0), 2.0), f3)

        XCTAssertEqual(kvSIMD.simd_make_float3(f1), F3(f1, 0.0, 0.0))
        XCTAssertEqual(kvSIMD.simd_make_float3(f2), F3(f2, 0.0))

        XCTAssertEqual(kvSIMD.simd_make_float3_undef(f1).x, f1)
        XCTAssertEqual(kvSIMD.simd_make_float2(kvSIMD.simd_make_float3_undef(f2)), f2)

        XCTAssertEqual(kvSIMD.simd_make_float3(f3 ), f3)
        XCTAssertEqual(kvSIMD.simd_make_float3(f4 ), f3)
        XCTAssertEqual(kvSIMD.simd_make_float3(f8 ), f3)
        XCTAssertEqual(kvSIMD.simd_make_float3(f16), f3)
    }



    // MARK: test_simd_make_float4()

    func test_simd_make_float4() {
        XCTAssertEqual(kvSIMD.simd_make_float4(0.0, 1.0, 2.0, 3.0)        , f4)
        XCTAssertEqual(kvSIMD.simd_make_float4(0.0, 1.0, F2(2.0, 3.0))    , f4)
        XCTAssertEqual(kvSIMD.simd_make_float4(0.0, F2(1.0, 2.0), 3.0)    , f4)
        XCTAssertEqual(kvSIMD.simd_make_float4(F2(0.0, 1.0), 2.0, 3.0)    , f4)
        XCTAssertEqual(kvSIMD.simd_make_float4(0.0, F3(1.0, 2.0, 3.0))    , f4)
        XCTAssertEqual(kvSIMD.simd_make_float4(F3(0.0, 1.0, 2.0), 3.0)    , f4)
        XCTAssertEqual(kvSIMD.simd_make_float4(F2(0.0, 1.0), F2(2.0, 3.0)), f4)

        XCTAssertEqual(kvSIMD.simd_make_float4(f1), F4(lowHalf: F2(f1, 0.0), highHalf: .zero))
        XCTAssertEqual(kvSIMD.simd_make_float4(f2), F4(lowHalf: f2, highHalf: .zero))
        XCTAssertEqual(kvSIMD.simd_make_float4(f3), F4(f3, 0.0))

        XCTAssertEqual(kvSIMD.simd_make_float4_undef(f1).x, f1)
        XCTAssertEqual(kvSIMD.simd_make_float2(kvSIMD.simd_make_float4_undef(f2)), f2)
        XCTAssertEqual(kvSIMD.simd_make_float3(kvSIMD.simd_make_float4_undef(f3)), f3)

        XCTAssertEqual(kvSIMD.simd_make_float4(f4) , f4)
        XCTAssertEqual(kvSIMD.simd_make_float4(f8) , f4)
        XCTAssertEqual(kvSIMD.simd_make_float4(f16), f4)
    }



    // MARK: test_simd_make_float8()

    func test_simd_make_float8() {
        XCTAssertEqual(kvSIMD.simd_make_float8(F4(0.0, 1.0, 2.0, 3.0), F4(4.0, 5.0, 6.0, 7.0)), f8)

        XCTAssertEqual(kvSIMD.simd_make_float8(f1), F8(lowHalf: F4(lowHalf: F2(f1, 0.0), highHalf: .zero), highHalf: .zero))
        XCTAssertEqual(kvSIMD.simd_make_float8(f2), F8(lowHalf: F4(lowHalf: f2, highHalf: .zero), highHalf: .zero))
        XCTAssertEqual(kvSIMD.simd_make_float8(f3), F8(lowHalf: F4(f3, 0.0), highHalf: .zero))
        XCTAssertEqual(kvSIMD.simd_make_float8(f4), F8(lowHalf: f4, highHalf: .zero))

        XCTAssertEqual(kvSIMD.simd_make_float8_undef(f1)[0], f1)
        XCTAssertEqual(kvSIMD.simd_make_float2(kvSIMD.simd_make_float8_undef(f2)), f2)
        XCTAssertEqual(kvSIMD.simd_make_float3(kvSIMD.simd_make_float8_undef(f3)), f3)
        XCTAssertEqual(kvSIMD.simd_make_float4(kvSIMD.simd_make_float8_undef(f4)), f4)

        XCTAssertEqual(kvSIMD.simd_make_float8(f8) , f8)
        XCTAssertEqual(kvSIMD.simd_make_float8(f16), f8)
    }



    // MARK: test_simd_make_float16()

    func test_simd_make_float16() {
        XCTAssertEqual(kvSIMD.simd_make_float16(F8(0.0, 1.0, 2.0, 3.0, 4.0, 5.0, 6.0, 7.0), F8(8.0, 9.0, 10.0, 11.0, 12.0, 13.0, 14.0, 15.0)), f16)

        XCTAssertEqual(kvSIMD.simd_make_float16(f1), F16(lowHalf: F8(lowHalf: F4(lowHalf: F2(f1, 0.0), highHalf: .zero), highHalf: .zero), highHalf: .zero))
        XCTAssertEqual(kvSIMD.simd_make_float16(f2), F16(lowHalf: F8(lowHalf: F4(lowHalf: f2, highHalf: .zero), highHalf: .zero), highHalf: .zero))
        XCTAssertEqual(kvSIMD.simd_make_float16(f3), F16(lowHalf: F8(lowHalf: F4(f3, 0.0), highHalf: .zero), highHalf: .zero))
        XCTAssertEqual(kvSIMD.simd_make_float16(f4), F16(lowHalf: F8(lowHalf: f4, highHalf: .zero), highHalf: .zero))
        XCTAssertEqual(kvSIMD.simd_make_float16(f8), F16(lowHalf: f8, highHalf: .zero))

        XCTAssertEqual(kvSIMD.simd_make_float16_undef(f1)[0], f1)
        XCTAssertEqual(kvSIMD.simd_make_float2(kvSIMD.simd_make_float16_undef(f2)), f2)
        XCTAssertEqual(kvSIMD.simd_make_float3(kvSIMD.simd_make_float16_undef(f3)), f3)
        XCTAssertEqual(kvSIMD.simd_make_float4(kvSIMD.simd_make_float16_undef(f4)), f4)
        XCTAssertEqual(kvSIMD.simd_make_float8(kvSIMD.simd_make_float16_undef(f8)), f8)

        XCTAssertEqual(kvSIMD.simd_make_float16(f16), f16)
    }



    // MARK: test_simd_make_double2()

    func test_simd_make_double2() {
        XCTAssertEqual(kvSIMD.simd_make_double2(0.0, 1.0), d2)

        XCTAssertEqual(kvSIMD.simd_make_double2(d1), D2(d1, 0.0))

        XCTAssertEqual(kvSIMD.simd_make_double2_undef(d1).x, d1)

        XCTAssertEqual(kvSIMD.simd_make_double2(d2), d2)
        XCTAssertEqual(kvSIMD.simd_make_double2(d3), d2)
        XCTAssertEqual(kvSIMD.simd_make_double2(d4), d2)
        XCTAssertEqual(kvSIMD.simd_make_double2(d8), d2)
    }



    // MARK: test_simd_make_double3()

    func test_simd_make_double3() {
        XCTAssertEqual(kvSIMD.simd_make_double3(0.0, 1.0, 2.0)    , d3)
        XCTAssertEqual(kvSIMD.simd_make_double3(0.0, D2(1.0, 2.0)), d3)
        XCTAssertEqual(kvSIMD.simd_make_double3(D2(0.0, 1.0), 2.0), d3)

        XCTAssertEqual(kvSIMD.simd_make_double3(d1), D3(d1, 0.0, 0.0))
        XCTAssertEqual(kvSIMD.simd_make_double3(d2), D3(d2, 0.0))

        XCTAssertEqual(kvSIMD.simd_make_double3_undef(d1).x, d1)
        XCTAssertEqual(kvSIMD.simd_make_double2(kvSIMD.simd_make_double3_undef(d2)), d2)

        XCTAssertEqual(kvSIMD.simd_make_double3(d3), d3)
        XCTAssertEqual(kvSIMD.simd_make_double3(d4), d3)
        XCTAssertEqual(kvSIMD.simd_make_double3(d8), d3)
    }



    // MARK: test_simd_make_double4()

    func test_simd_make_double4() {
        XCTAssertEqual(kvSIMD.simd_make_double4(0.0, 1.0, 2.0, 3.0)        , d4)
        XCTAssertEqual(kvSIMD.simd_make_double4(0.0, 1.0, D2(2.0, 3.0))    , d4)
        XCTAssertEqual(kvSIMD.simd_make_double4(0.0, D2(1.0, 2.0), 3.0)    , d4)
        XCTAssertEqual(kvSIMD.simd_make_double4(D2(0.0, 1.0), 2.0, 3.0)    , d4)
        XCTAssertEqual(kvSIMD.simd_make_double4(0.0, D3(1.0, 2.0, 3.0))    , d4)
        XCTAssertEqual(kvSIMD.simd_make_double4(D3(0.0, 1.0, 2.0), 3.0)    , d4)
        XCTAssertEqual(kvSIMD.simd_make_double4(D2(0.0, 1.0), D2(2.0, 3.0)), d4)

        XCTAssertEqual(kvSIMD.simd_make_double4(d1), D4(lowHalf: D2(d1, 0.0), highHalf: .zero))
        XCTAssertEqual(kvSIMD.simd_make_double4(d2), D4(lowHalf: d2, highHalf: .zero))
        XCTAssertEqual(kvSIMD.simd_make_double4(d3), D4(d3, 0.0))

        XCTAssertEqual(kvSIMD.simd_make_double4_undef(d1).x, d1)
        XCTAssertEqual(kvSIMD.simd_make_double2(kvSIMD.simd_make_double4_undef(d2)), d2)
        XCTAssertEqual(kvSIMD.simd_make_double3(kvSIMD.simd_make_double4_undef(d3)), d3)

        XCTAssertEqual(kvSIMD.simd_make_double4(d4), d4)
        XCTAssertEqual(kvSIMD.simd_make_double4(d8), d4)
    }



    // MARK: test_simd_make_double8()

    func test_simd_make_double8() {
        XCTAssertEqual(kvSIMD.simd_make_double8(D4(0.0, 1.0, 2.0, 3.0), D4(4.0, 5.0, 6.0, 7.0)), d8)

        XCTAssertEqual(kvSIMD.simd_make_double8(d1), D8(lowHalf: D4(lowHalf: D2(d1, 0.0), highHalf: .zero), highHalf: .zero))
        XCTAssertEqual(kvSIMD.simd_make_double8(d2), D8(lowHalf: D4(lowHalf: d2, highHalf: .zero), highHalf: .zero))
        XCTAssertEqual(kvSIMD.simd_make_double8(d3), D8(lowHalf: D4(d3, 0.0), highHalf: .zero))
        XCTAssertEqual(kvSIMD.simd_make_double8(d4), D8(lowHalf: d4, highHalf: .zero))

        XCTAssertEqual(kvSIMD.simd_make_double8_undef(d1)[0], d1)
        XCTAssertEqual(kvSIMD.simd_make_double2(kvSIMD.simd_make_double8_undef(d2)), d2)
        XCTAssertEqual(kvSIMD.simd_make_double3(kvSIMD.simd_make_double8_undef(d3)), d3)
        XCTAssertEqual(kvSIMD.simd_make_double4(kvSIMD.simd_make_double8_undef(d4)), d4)

        XCTAssertEqual(kvSIMD.simd_make_double8(d8), d8)
    }



    // MARK: test_simd_matrix()

    func test_simd_matrix() {
        assertEqual(Cols2x2f, kvSIMD.simd_matrix as (F2, F2) -> F2x2, simd.simd_matrix, IsEqual(_:_:))
        assertEqual(Cols2x3f, kvSIMD.simd_matrix as (F3, F3) -> F2x3, simd.simd_matrix, IsEqual(_:_:))
        assertEqual(Cols2x4f, kvSIMD.simd_matrix as (F4, F4) -> F2x4, simd.simd_matrix, IsEqual(_:_:))

        assertEqual(Cols3x2f, kvSIMD.simd_matrix as (F2, F2, F2) -> F3x2, simd.simd_matrix, IsEqual(_:_:))
        assertEqual(Cols3x3f, kvSIMD.simd_matrix as (F3, F3, F3) -> F3x3, simd.simd_matrix, IsEqual(_:_:))
        assertEqual(Cols3x4f, kvSIMD.simd_matrix as (F4, F4, F4) -> F3x4, simd.simd_matrix, IsEqual(_:_:))

        assertEqual(Cols4x2f, kvSIMD.simd_matrix as (F2, F2, F2, F2) -> F4x2, simd.simd_matrix, IsEqual(_:_:))
        assertEqual(Cols4x3f, kvSIMD.simd_matrix as (F3, F3, F3, F3) -> F4x3, simd.simd_matrix, IsEqual(_:_:))
        assertEqual(Cols4x4f, kvSIMD.simd_matrix as (F4, F4, F4, F4) -> F4x4, simd.simd_matrix, IsEqual(_:_:))

        assertEqual(Cols2x2d, kvSIMD.simd_matrix as (D2, D2) -> D2x2, simd.simd_matrix, IsEqual(_:_:))
        assertEqual(Cols2x3d, kvSIMD.simd_matrix as (D3, D3) -> D2x3, simd.simd_matrix, IsEqual(_:_:))
        assertEqual(Cols2x4d, kvSIMD.simd_matrix as (D4, D4) -> D2x4, simd.simd_matrix, IsEqual(_:_:))

        assertEqual(Cols3x2d, kvSIMD.simd_matrix as (D2, D2, D2) -> D3x2, simd.simd_matrix, IsEqual(_:_:))
        assertEqual(Cols3x3d, kvSIMD.simd_matrix as (D3, D3, D3) -> D3x3, simd.simd_matrix, IsEqual(_:_:))
        assertEqual(Cols3x4d, kvSIMD.simd_matrix as (D4, D4, D4) -> D3x4, simd.simd_matrix, IsEqual(_:_:))

        assertEqual(Cols4x2d, kvSIMD.simd_matrix as (D2, D2, D2, D2) -> D4x2, simd.simd_matrix, IsEqual(_:_:))
        assertEqual(Cols4x3d, kvSIMD.simd_matrix as (D3, D3, D3, D3) -> D4x3, simd.simd_matrix, IsEqual(_:_:))
        assertEqual(Cols4x4d, kvSIMD.simd_matrix as (D4, D4, D4, D4) -> D4x4, simd.simd_matrix, IsEqual(_:_:))
    }



    // MARK: test_simd_matrix_from_rows()

    func test_simd_matrix_from_rows() {
        assertEqual(Cols2x2f, kvSIMD.simd_matrix_from_rows as (F2, F2)         -> F2x2, simd.simd_matrix_from_rows, IsEqual(_:_:))
        assertEqual(Cols3x2f, kvSIMD.simd_matrix_from_rows as (F2, F2, F2)     -> F2x3, simd.simd_matrix_from_rows, IsEqual(_:_:))
        assertEqual(Cols4x2f, kvSIMD.simd_matrix_from_rows as (F2, F2, F2, F2) -> F2x4, simd.simd_matrix_from_rows, IsEqual(_:_:))

        assertEqual(Cols2x3f, kvSIMD.simd_matrix_from_rows as (F3, F3)         -> F3x2, simd.simd_matrix_from_rows, IsEqual(_:_:))
        assertEqual(Cols3x3f, kvSIMD.simd_matrix_from_rows as (F3, F3, F3)     -> F3x3, simd.simd_matrix_from_rows, IsEqual(_:_:))
        assertEqual(Cols4x3f, kvSIMD.simd_matrix_from_rows as (F3, F3, F3, F3) -> F3x4, simd.simd_matrix_from_rows, IsEqual(_:_:))

        assertEqual(Cols2x4f, kvSIMD.simd_matrix_from_rows as (F4, F4)         -> F4x2, simd.simd_matrix_from_rows, IsEqual(_:_:))
        assertEqual(Cols3x4f, kvSIMD.simd_matrix_from_rows as (F4, F4, F4)     -> F4x3, simd.simd_matrix_from_rows, IsEqual(_:_:))
        assertEqual(Cols4x4f, kvSIMD.simd_matrix_from_rows as (F4, F4, F4, F4) -> F4x4, simd.simd_matrix_from_rows, IsEqual(_:_:))

        assertEqual(Cols2x2d, kvSIMD.simd_matrix_from_rows as (D2, D2)         -> D2x2, simd.simd_matrix_from_rows, IsEqual(_:_:))
        assertEqual(Cols3x2d, kvSIMD.simd_matrix_from_rows as (D2, D2, D2)     -> D2x3, simd.simd_matrix_from_rows, IsEqual(_:_:))
        assertEqual(Cols4x2d, kvSIMD.simd_matrix_from_rows as (D2, D2, D2, D2) -> D2x4, simd.simd_matrix_from_rows, IsEqual(_:_:))

        assertEqual(Cols2x3d, kvSIMD.simd_matrix_from_rows as (D3, D3)         -> D3x2, simd.simd_matrix_from_rows, IsEqual(_:_:))
        assertEqual(Cols3x3d, kvSIMD.simd_matrix_from_rows as (D3, D3, D3)     -> D3x3, simd.simd_matrix_from_rows, IsEqual(_:_:))
        assertEqual(Cols4x3d, kvSIMD.simd_matrix_from_rows as (D3, D3, D3, D3) -> D3x4, simd.simd_matrix_from_rows, IsEqual(_:_:))

        assertEqual(Cols2x4d, kvSIMD.simd_matrix_from_rows as (D4, D4)         -> D4x2, simd.simd_matrix_from_rows, IsEqual(_:_:))
        assertEqual(Cols3x4d, kvSIMD.simd_matrix_from_rows as (D4, D4, D4)     -> D4x3, simd.simd_matrix_from_rows, IsEqual(_:_:))
        assertEqual(Cols4x4d, kvSIMD.simd_matrix_from_rows as (D4, D4, D4, D4) -> D4x4, simd.simd_matrix_from_rows, IsEqual(_:_:))
    }



    // MARK: test_simd_matrix3x3()

    func test_simd_matrix3x3() {
        (0..<10).forEach { _ in
            assertEqual(RandomInputQF(), { kvSIMD.simd_matrix3x3($0.subject) }, { simd.simd_matrix3x3($0.reference) }, IsEqual(_:_:))
            assertEqual(RandomInputQD(), { kvSIMD.simd_matrix3x3($0.subject) }, { simd.simd_matrix3x3($0.reference) }, IsEqual(_:_:))
        }
    }



    // MARK: test_simd_matrix4x4()

    func test_simd_matrix4x4() {
        (0..<10).forEach { _ in
            assertEqual(RandomInputQF(), { kvSIMD.simd_matrix4x4($0.subject) }, { simd.simd_matrix4x4($0.reference) }, IsEqual(_:_:))
            assertEqual(RandomInputQD(), { kvSIMD.simd_matrix4x4($0.subject) }, { simd.simd_matrix4x4($0.reference) }, IsEqual(_:_:))
        }
    }



    // MARK: test_simd_quaternion()

    func test_simd_quaternion() {
        assertEqual((1.0 as F1, 2.0 as F1, 3.0 as F1, 4.0 as F1), kvSIMD.simd_quaternion(_:_:_:_:), simd.simd_quaternion(_:_:_:_:), IsEqualQ(_:_:))
        assertEqual((1.0 as D1, 2.0 as D1, 3.0 as D1, 4.0 as D1), kvSIMD.simd_quaternion(_:_:_:_:), simd.simd_quaternion(_:_:_:_:), IsEqualQ(_:_:))

        [ 1.0 as F1, 2.0 as F1, 3.0 as F1, 4.0 as F1 ].withUnsafeBufferPointer { assertEqual($0.baseAddress, kvSIMD.simd_quaternion(_:), simd.simd_quaternion(_:), IsEqualQ(_:_:)) }
        [ 1.0 as D1, 2.0 as D1, 3.0 as D1, 4.0 as D1 ].withUnsafeBufferPointer { assertEqual($0.baseAddress, kvSIMD.simd_quaternion(_:), simd.simd_quaternion(_:), IsEqualQ(_:_:)) }

        assertEqual(F4(1.0, 2.0, 3.0, 4.0), kvSIMD.simd_quaternion(_:), simd.simd_quaternion(_:), IsEqualQ(_:_:))
        assertEqual(D4(1.0, 2.0, 3.0, 4.0), kvSIMD.simd_quaternion(_:), simd.simd_quaternion(_:), IsEqualQ(_:_:))

        (0..<100).forEach { _ in
            assertEqual(RandomAngleAxisF(), kvSIMD.simd_quaternion(_:_:), simd.simd_quaternion(_:_:), IsEqualQ(_:_:))
            assertEqual(RandomAngleAxisD(), kvSIMD.simd_quaternion(_:_:), simd.simd_quaternion(_:_:), IsEqualQ(_:_:))
        }
        (0..<100).forEach { _ in
            assertEqual((RandomUnitF3(), RandomUnitF3()), kvSIMD.simd_quaternion(_:_:), simd.simd_quaternion(_:_:), { IsEqualQ($0, $1, eps: .near(10.0)) })
            assertEqual((RandomUnitD3(), RandomUnitD3()), kvSIMD.simd_quaternion(_:_:), simd.simd_quaternion(_:_:), { IsEqualQ($0, $1, eps: .near(10.0)) })
        }
        (0..<10).forEach { _ in
            assertEqual(RandomInputQF(), { kvSIMD.simd_quaternion(F3x3($0.subject)) }, { simd.simd_quaternion(simd.float3x3($0.reference)) }, IsEqualQ(_:_:))
            assertEqual(RandomInputQF(), { kvSIMD.simd_quaternion(F4x4($0.subject)) }, { simd.simd_quaternion(simd.float4x4($0.reference)) }, IsEqualQ(_:_:))

            assertEqual(RandomInputQD(), { kvSIMD.simd_quaternion(D3x3($0.subject)) }, { simd.simd_quaternion(simd.double3x3($0.reference)) }, IsEqualQ(_:_:))
            assertEqual(RandomInputQD(), { kvSIMD.simd_quaternion(D4x4($0.subject)) }, { simd.simd_quaternion(simd.double4x4($0.reference)) }, IsEqualQ(_:_:))
        }
    }



    // MARK: test_vector2()

    func test_vector2() {
        XCTAssertEqual(kvSIMD.vector2(0, 1),  c2)
        XCTAssertEqual(kvSIMD.vector2(0, 1), uc2)
        XCTAssertEqual(kvSIMD.vector2(0, 1),  s2)
        XCTAssertEqual(kvSIMD.vector2(0, 1), us2)
        XCTAssertEqual(kvSIMD.vector2(0, 1),  i2)
        XCTAssertEqual(kvSIMD.vector2(0, 1), ui2)
        XCTAssertEqual(kvSIMD.vector2(0, 1),  l2)
        XCTAssertEqual(kvSIMD.vector2(0, 1), ul2)
        XCTAssertEqual(kvSIMD.vector2(0.0, 1.0), f2)
        XCTAssertEqual(kvSIMD.vector2(0.0, 1.0), d2)
    }



    // MARK: test_vector3()

    func test_vector3() {
        XCTAssertEqual(kvSIMD.vector3(0, 1, 2),  c3)
        XCTAssertEqual(kvSIMD.vector3(0, 1, 2), uc3)
        XCTAssertEqual(kvSIMD.vector3(0, 1, 2),  s3)
        XCTAssertEqual(kvSIMD.vector3(0, 1, 2), us3)
        XCTAssertEqual(kvSIMD.vector3(0, 1, 2),  i3)
        XCTAssertEqual(kvSIMD.vector3(0, 1, 2), ui3)
        XCTAssertEqual(kvSIMD.vector3(0, 1, 2),  l3)
        XCTAssertEqual(kvSIMD.vector3(0, 1, 2), ul3)
        XCTAssertEqual(kvSIMD.vector3(0.0, 1.0, 2.0), f3)
        XCTAssertEqual(kvSIMD.vector3(0.0, 1.0, 2.0), d3)

        XCTAssertEqual(kvSIMD.vector3( C2(0...1), 2),  c3)
        XCTAssertEqual(kvSIMD.vector3(UC2(0...1), 2), uc3)
        XCTAssertEqual(kvSIMD.vector3( S2(0...1), 2),  s3)
        XCTAssertEqual(kvSIMD.vector3(US2(0...1), 2), us3)
        XCTAssertEqual(kvSIMD.vector3( I2(0...1), 2),  i3)
        XCTAssertEqual(kvSIMD.vector3(UI2(0...1), 2), ui3)
        XCTAssertEqual(kvSIMD.vector3( L2(0...1), 2),  l3)
        XCTAssertEqual(kvSIMD.vector3(UL2(0...1), 2), ul3)
        XCTAssertEqual(kvSIMD.vector3(F2(0.0, 1.0), 2.0), f3)
        XCTAssertEqual(kvSIMD.vector3(D2(0.0, 1.0), 2.0), d3)
    }



    // MARK: test_vector4()

    func test_vector4() {
        XCTAssertEqual(kvSIMD.vector4(0, 1, 2, 3),  c4)
        XCTAssertEqual(kvSIMD.vector4(0, 1, 2, 3), uc4)
        XCTAssertEqual(kvSIMD.vector4(0, 1, 2, 3),  s4)
        XCTAssertEqual(kvSIMD.vector4(0, 1, 2, 3), us4)
        XCTAssertEqual(kvSIMD.vector4(0, 1, 2, 3),  i4)
        XCTAssertEqual(kvSIMD.vector4(0, 1, 2, 3), ui4)
        XCTAssertEqual(kvSIMD.vector4(0, 1, 2, 3),  l4)
        XCTAssertEqual(kvSIMD.vector4(0, 1, 2, 3), ul4)
        XCTAssertEqual(kvSIMD.vector4(0.0, 1.0, 2.0, 3.0), f4)
        XCTAssertEqual(kvSIMD.vector4(0.0, 1.0, 2.0, 3.0), d4)

        XCTAssertEqual(kvSIMD.vector4( C2(0...1),  C2(2...3)),  c4)
        XCTAssertEqual(kvSIMD.vector4(UC2(0...1), UC2(2...3)), uc4)
        XCTAssertEqual(kvSIMD.vector4( S2(0...1),  S2(2...3)),  s4)
        XCTAssertEqual(kvSIMD.vector4(US2(0...1), US2(2...3)), us4)
        XCTAssertEqual(kvSIMD.vector4( I2(0...1),  I2(2...3)),  i4)
        XCTAssertEqual(kvSIMD.vector4(UI2(0...1), UI2(2...3)), ui4)
        XCTAssertEqual(kvSIMD.vector4( L2(0...1),  L2(2...3)),  l4)
        XCTAssertEqual(kvSIMD.vector4(UL2(0...1), UL2(2...3)), ul4)
        XCTAssertEqual(kvSIMD.vector4(F2(0.0, 1.0), F2(2.0, 3.0)), f4)
        XCTAssertEqual(kvSIMD.vector4(D2(0.0, 1.0), D2(2.0, 3.0)), d4)

        XCTAssertEqual(kvSIMD.vector4( C3(0...2), 3),  c4)
        XCTAssertEqual(kvSIMD.vector4(UC3(0...2), 3), uc4)
        XCTAssertEqual(kvSIMD.vector4( S3(0...2), 3),  s4)
        XCTAssertEqual(kvSIMD.vector4(US3(0...2), 3), us4)
        XCTAssertEqual(kvSIMD.vector4( I3(0...2), 3),  i4)
        XCTAssertEqual(kvSIMD.vector4(UI3(0...2), 3), ui4)
        XCTAssertEqual(kvSIMD.vector4( L3(0...2), 3),  l4)
        XCTAssertEqual(kvSIMD.vector4(UL3(0...2), 3), ul4)
        XCTAssertEqual(kvSIMD.vector4(F3(0.0, 1.0, 2.0), 3.0), f4)
        XCTAssertEqual(kvSIMD.vector4(D3(0.0, 1.0, 2.0), 3.0), d4)
    }



    // MARK: test_vector8()

    func test_vector8() {
        XCTAssertEqual(kvSIMD.vector8( C4(0...3),  C4(4...7)),  c8)
        XCTAssertEqual(kvSIMD.vector8(UC4(0...3), UC4(4...7)), uc8)
        XCTAssertEqual(kvSIMD.vector8( S4(0...3),  S4(4...7)),  s8)
        XCTAssertEqual(kvSIMD.vector8(US4(0...3), US4(4...7)), us8)
        XCTAssertEqual(kvSIMD.vector8( I4(0...3),  I4(4...7)),  i8)
        XCTAssertEqual(kvSIMD.vector8(UI4(0...3), UI4(4...7)), ui8)
        XCTAssertEqual(kvSIMD.vector8( L4(0...3),  L4(4...7)),  l8)
        XCTAssertEqual(kvSIMD.vector8(UL4(0...3), UL4(4...7)), ul8)
        XCTAssertEqual(kvSIMD.vector8(F4(0.0, 1.0, 2.0, 3.0), F4(4.0, 5.0, 6.0, 7.0)), f8)
        XCTAssertEqual(kvSIMD.vector8(D4(0.0, 1.0, 2.0, 3.0), D4(4.0, 5.0, 6.0, 7.0)), d8)
    }



    // MARK: test_vector16()

    func test_vector16() {
        XCTAssertEqual(kvSIMD.vector16( C8(0...7),  C8(8...15)),  c16)
        XCTAssertEqual(kvSIMD.vector16(UC8(0...7), UC8(8...15)), uc16)
        XCTAssertEqual(kvSIMD.vector16( S8(0...7),  S8(8...15)),  s16)
        XCTAssertEqual(kvSIMD.vector16(US8(0...7), US8(8...15)), us16)
        XCTAssertEqual(kvSIMD.vector16( I8(0...7),  I8(8...15)),  i16)
        XCTAssertEqual(kvSIMD.vector16(UI8(0...7), UI8(8...15)), ui16)
        XCTAssertEqual(kvSIMD.vector16(F8(0.0, 1.0, 2.0, 3.0, 4.0, 5.0, 6.0, 7.0), F8(8.0, 9.0, 10.0, 11.0, 12.0, 13.0, 14.0, 15.0)), f16)
    }



    // MARK: test_vector32()

    func test_vector32() {
        XCTAssertEqual(kvSIMD.vector32( C16(0...15),  C16(16...31)),  c32)
        XCTAssertEqual(kvSIMD.vector32(UC16(0...15), UC16(16...31)), uc32)
        XCTAssertEqual(kvSIMD.vector32( S16(0...15),  S16(16...31)),  s32)
        XCTAssertEqual(kvSIMD.vector32(US16(0...15), US16(16...31)), us32)
    }



    // MARK: Auxiliaries

    private let c1: C1 = 0
    private let c2 =  C2 (0..<2 )
    private let c3 =  C3 (0..<3 )
    private let c4 =  C4 (0..<4 )
    private let c8 =  C8 (0..<8 )
    private let c16 = C16(0..<16)
    private let c32 = C32(0..<32)
    private let c64 = C64(0..<64)

    private let uc1: UC1 = 0
    private let uc2 =  UC2 (0..<2 )
    private let uc3 =  UC3 (0..<3 )
    private let uc4 =  UC4 (0..<4 )
    private let uc8 =  UC8 (0..<8 )
    private let uc16 = UC16(0..<16)
    private let uc32 = UC32(0..<32)
    private let uc64 = UC64(0..<64)

    private let s1: S1 = 0
    private let s2 =  S2 (0..<2 )
    private let s3 =  S3 (0..<3 )
    private let s4 =  S4 (0..<4 )
    private let s8 =  S8 (0..<8 )
    private let s16 = S16(0..<16)
    private let s32 = S32(0..<32)

    private let us1: US1 = 0
    private let us2 =  US2 (0..<2 )
    private let us3 =  US3 (0..<3 )
    private let us4 =  US4 (0..<4 )
    private let us8 =  US8 (0..<8 )
    private let us16 = US16(0..<16)
    private let us32 = US32(0..<32)

    private let i1: I1 = 0
    private let i2 =  I2 (0..<2 )
    private let i3 =  I3 (0..<3 )
    private let i4 =  I4 (0..<4 )
    private let i8 =  I8 (0..<8 )
    private let i16 = I16(0..<16)

    private let ui1: UI1 = 0
    private let ui2 =  UI2 (0..<2 )
    private let ui3 =  UI3 (0..<3 )
    private let ui4 =  UI4 (0..<4 )
    private let ui8 =  UI8 (0..<8 )
    private let ui16 = UI16(0..<16)

    private let l1: L1 = 0
    private let l2 =  L2(0..<2)
    private let l3 =  L3(0..<3)
    private let l4 =  L4(0..<4)
    private let l8 =  L8(0..<8)

    private let ul1: UL1 = 0
    private let ul2 =  UL2(0..<2)
    private let ul3 =  UL3(0..<3)
    private let ul4 =  UL4(0..<4)
    private let ul8 =  UL8(0..<8)

    private let f1: F1 = 0.0
    private let f2 =  F2 (0.0, 1.0)
    private let f3 =  F3 (0.0, 1.0, 2.0)
    private let f4 =  F4 (0.0, 1.0, 2.0, 3.0)
    private let f8 =  F8 (0.0, 1.0, 2.0, 3.0, 4.0, 5.0, 6.0, 7.0)
    private let f16 = F16(0.0, 1.0, 2.0, 3.0, 4.0, 5.0, 6.0, 7.0, 8.0, 9.0, 10.0, 11.0, 12.0, 13.0, 14.0, 15.0)

    private let d1: D1 = 0.0
    private let d2 = D2(0.0, 1.0)
    private let d3 = D3(0.0, 1.0, 2.0)
    private let d4 = D4(0.0, 1.0, 2.0, 3.0)
    private let d8 = D8(0.0, 1.0, 2.0, 3.0, 4.0, 5.0, 6.0, 7.0)



    private func assertEqual<I, L, R>(_ input: I, _ lFabric: (I) -> L, _ rFabric: (I) -> R, _ validator: (L, R) -> Bool) {
        let lhs = lFabric(input)
        let rhs = rFabric(input)
        XCTAssertTrue(validator(lhs, rhs), "\(lhs) is not equal to \(rhs) for \(input) input")
    }

}
