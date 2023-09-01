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
//  KvMatrixTests.swift
//  kvSIMDTests
//
//  Created by Svyatoslav Popov on 19.08.2023.
//

import XCTest

@testable import kvSIMD

import simd



final class KvMatrixTests : XCTestCase {

    // MARK: testInit_*()

    func testInit_f() {
        assertEqual(F2x2(), simd.simd_float2x2(), IsEqual(_:_:))
        assertEqual(F2x2(columns: Cols2x2f), simd.simd_float2x2(columns: Cols2x2f), IsEqual(_:_:))
        assertEqual(F2x2(2.0), simd.simd_float2x2(2.0), IsEqual(_:_:))
        assertEqual(F2x2(diagonal: [ 1, 2 ]), simd.simd_float2x2(diagonal: [ 1, 2 ]), IsEqual(_:_:))
        assertEqual(F2x2([ Cols2x2f.0, Cols2x2f.1 ]), simd.simd_float2x2([ Cols2x2f.0, Cols2x2f.1 ]), IsEqual(_:_:))
        assertEqual(F2x2(rows: [ [ 00, 01 ], [ 10, 11 ] ]), simd.simd_float2x2(rows: [ [ 00, 01 ], [ 10, 11 ] ]), IsEqual(_:_:))
        assertEqual(F2x2(Cols2x2f.0, Cols2x2f.1), simd.simd_float2x2(Cols2x2f.0, Cols2x2f.1), IsEqual(_:_:))

        assertEqual(F2x3(), simd.simd_float2x3(), IsEqual(_:_:))
        assertEqual(F2x3(columns: Cols2x3f), simd.simd_float2x3(columns: Cols2x3f), IsEqual(_:_:))
        assertEqual(F2x3(2.0), simd.simd_float2x3(2.0), IsEqual(_:_:))
        assertEqual(F2x3(diagonal: [ 1, 2 ]), simd.simd_float2x3(diagonal: [ 1, 2 ]), IsEqual(_:_:))
        assertEqual(F2x3([ Cols2x3f.0, Cols2x3f.1 ]), simd.simd_float2x3([ Cols2x3f.0, Cols2x3f.1 ]), IsEqual(_:_:))
        assertEqual(F2x3(rows: [ [ 00, 01 ], [ 10, 11 ], [ 20, 21 ] ]), simd.simd_float2x3(rows: [ [ 00, 01 ], [ 10, 11 ], [ 20, 21 ] ]), IsEqual(_:_:))
        assertEqual(F2x3(Cols2x3f.0, Cols2x3f.1), simd.simd_float2x3(Cols2x3f.0, Cols2x3f.1), IsEqual(_:_:))

        assertEqual(F2x4(), simd.simd_float2x4(), IsEqual(_:_:))
        assertEqual(F2x4(columns: Cols2x4f), simd.simd_float2x4(columns: Cols2x4f), IsEqual(_:_:))
        assertEqual(F2x4(2.0), simd.simd_float2x4(2.0), IsEqual(_:_:))
        assertEqual(F2x4(diagonal: [ 1, 2 ]), simd.simd_float2x4(diagonal: [ 1, 2 ]), IsEqual(_:_:))
        assertEqual(F2x4([ Cols2x4f.0, Cols2x4f.1 ]), simd.simd_float2x4([ Cols2x4f.0, Cols2x4f.1 ]), IsEqual(_:_:))
        assertEqual(F2x4(rows: [ [ 00, 01 ], [ 10, 11 ], [ 20, 21 ], [ 30, 31 ] ]), simd.simd_float2x4(rows: [ [ 00, 01 ], [ 10, 11 ], [ 20, 21 ], [ 30, 31 ] ]), IsEqual(_:_:))
        assertEqual(F2x4(Cols2x4f.0, Cols2x4f.1), simd.simd_float2x4(Cols2x4f.0, Cols2x4f.1), IsEqual(_:_:))

        assertEqual(F3x2(), simd.simd_float3x2(), IsEqual(_:_:))
        assertEqual(F3x2(columns: Cols3x2f), simd.simd_float3x2(columns: Cols3x2f), IsEqual(_:_:))
        assertEqual(F3x2(2.0), simd.simd_float3x2(2.0), IsEqual(_:_:))
        assertEqual(F3x2(diagonal: [ 1, 2 ]), simd.simd_float3x2(diagonal: [ 1, 2 ]), IsEqual(_:_:))
        assertEqual(F3x2([ Cols3x2f.0, Cols3x2f.1, Cols3x2f.2 ]), simd.simd_float3x2([ Cols3x2f.0, Cols3x2f.1, Cols3x2f.2 ]), IsEqual(_:_:))
        assertEqual(F3x2(rows: [ [ 00, 01, 02 ], [ 10, 11, 12 ] ]), simd.simd_float3x2(rows: [ [ 00, 01, 02 ], [ 10, 11, 12 ] ]), IsEqual(_:_:))
        assertEqual(F3x2(Cols3x2f.0, Cols3x2f.1, Cols3x2f.2), simd.simd_float3x2(Cols3x2f.0, Cols3x2f.1, Cols3x2f.2), IsEqual(_:_:))

        assertEqual(F3x3(), simd.simd_float3x3(), IsEqual(_:_:))
        assertEqual(F3x3(columns: Cols3x3f), simd.simd_float3x3(columns: Cols3x3f), IsEqual(_:_:))
        assertEqual(F3x3(2.0), simd.simd_float3x3(2.0), IsEqual(_:_:))
        assertEqual(F3x3(diagonal: [ 1, 2, 3 ]), simd.simd_float3x3(diagonal: [ 1, 2, 3 ]), IsEqual(_:_:))
        assertEqual(F3x3([ Cols3x3f.0, Cols3x3f.1, Cols3x3f.2 ]), simd.simd_float3x3([ Cols3x3f.0, Cols3x3f.1, Cols3x3f.2 ]), IsEqual(_:_:))
        assertEqual(F3x3(rows: [ [ 00, 01, 02 ], [ 10, 11, 12 ], [ 20, 21, 22 ] ]), simd.simd_float3x3(rows: [ [ 00, 01, 02 ], [ 10, 11, 12 ], [ 20, 21, 22 ] ]), IsEqual(_:_:))
        assertEqual(F3x3(Cols3x3f.0, Cols3x3f.1, Cols3x3f.2), simd.simd_float3x3(Cols3x3f.0, Cols3x3f.1, Cols3x3f.2), IsEqual(_:_:))

        assertEqual(F3x4(), simd.simd_float3x4(), IsEqual(_:_:))
        assertEqual(F3x4(columns: Cols3x4f), simd.simd_float3x4(columns: Cols3x4f), IsEqual(_:_:))
        assertEqual(F3x4(2.0), simd.simd_float3x4(2.0), IsEqual(_:_:))
        assertEqual(F3x4(diagonal: [ 1, 2, 3 ]), simd.simd_float3x4(diagonal: [ 1, 2, 3 ]), IsEqual(_:_:))
        assertEqual(F3x4([ Cols3x4f.0, Cols3x4f.1, Cols3x4f.2 ]), simd.simd_float3x4([ Cols3x4f.0, Cols3x4f.1, Cols3x4f.2 ]), IsEqual(_:_:))
        assertEqual(F3x4(rows: [ [ 00, 01, 02 ], [ 10, 11, 12 ], [ 20, 21, 22 ], [ 30, 31, 32 ] ]), simd.simd_float3x4(rows: [ [ 00, 01, 02 ], [ 10, 11, 12 ], [ 20, 21, 22 ], [ 30, 31, 32 ] ]), IsEqual(_:_:))
        assertEqual(F3x4(Cols3x4f.0, Cols3x4f.1, Cols3x4f.2), simd.simd_float3x4(Cols3x4f.0, Cols3x4f.1, Cols3x4f.2), IsEqual(_:_:))

        assertEqual(F4x2(), simd.simd_float4x2(), IsEqual(_:_:))
        assertEqual(F4x2(columns: Cols4x2f), simd.simd_float4x2(columns: Cols4x2f), IsEqual(_:_:))
        assertEqual(F4x2(2.0), simd.simd_float4x2(2.0), IsEqual(_:_:))
        assertEqual(F4x2(diagonal: [ 1, 2 ]), simd.simd_float4x2(diagonal: [ 1, 2 ]), IsEqual(_:_:))
        assertEqual(F4x2([ Cols4x2f.0, Cols4x2f.1, Cols4x2f.2, Cols4x2f.3 ]), simd.simd_float4x2([ Cols4x2f.0, Cols4x2f.1, Cols4x2f.2, Cols4x2f.3 ]), IsEqual(_:_:))
        assertEqual(F4x2(rows: [ [ 00, 01, 02, 03 ], [ 10, 11, 12, 13 ] ]), simd.simd_float4x2(rows: [ [ 00, 01, 02, 03 ], [ 10, 11, 12, 13 ] ]), IsEqual(_:_:))
        assertEqual(F4x2(Cols4x2f.0, Cols4x2f.1, Cols4x2f.2, Cols4x2f.3), simd.simd_float4x2(Cols4x2f.0, Cols4x2f.1, Cols4x2f.2, Cols4x2f.3), IsEqual(_:_:))

        assertEqual(F4x3(), simd.simd_float4x3(), IsEqual(_:_:))
        assertEqual(F4x3(columns: Cols4x3f), simd.simd_float4x3(columns: Cols4x3f), IsEqual(_:_:))
        assertEqual(F4x3(2.0), simd.simd_float4x3(2.0), IsEqual(_:_:))
        assertEqual(F4x3(diagonal: [ 1, 2, 3 ]), simd.simd_float4x3(diagonal: [ 1, 2, 3 ]), IsEqual(_:_:))
        assertEqual(F4x3([ Cols4x3f.0, Cols4x3f.1, Cols4x3f.2, Cols4x3f.3 ]), simd.simd_float4x3([ Cols4x3f.0, Cols4x3f.1, Cols4x3f.2, Cols4x3f.3 ]), IsEqual(_:_:))
        assertEqual(F4x3(rows: [ [ 00, 01, 02, 03 ], [ 10, 11, 12, 13 ], [ 20, 21, 22, 23 ] ]), simd.simd_float4x3(rows: [ [ 00, 01, 02, 03 ], [ 10, 11, 12, 13 ], [ 20, 21, 22, 23 ] ]), IsEqual(_:_:))
        assertEqual(F4x3(Cols4x3f.0, Cols4x3f.1, Cols4x3f.2, Cols4x3f.3), simd.simd_float4x3(Cols4x3f.0, Cols4x3f.1, Cols4x3f.2, Cols4x3f.3), IsEqual(_:_:))

        assertEqual(F4x4(), simd.simd_float4x4(), IsEqual(_:_:))
        assertEqual(F4x4(columns: Cols4x4f), simd.simd_float4x4(columns: Cols4x4f), IsEqual(_:_:))
        assertEqual(F4x4(2.0), simd.simd_float4x4(2.0), IsEqual(_:_:))
        assertEqual(F4x4(diagonal: [ 1, 2, 3, 4 ]), simd.simd_float4x4(diagonal: [ 1, 2, 3, 4 ]), IsEqual(_:_:))
        assertEqual(F4x4([ Cols4x4f.0, Cols4x4f.1, Cols4x4f.2, Cols4x4f.3 ]), simd.simd_float4x4([ Cols4x4f.0, Cols4x4f.1, Cols4x4f.2, Cols4x4f.3 ]), IsEqual(_:_:))
        assertEqual(F4x4(rows: [ [ 00, 01, 02, 03 ], [ 10, 11, 12, 13 ], [ 20, 21, 22, 23 ], [ 30, 31, 32, 33 ] ]), simd.simd_float4x4(rows: [ [ 00, 01, 02, 03 ], [ 10, 11, 12, 13 ], [ 20, 21, 22, 23 ], [ 30, 31, 32, 33 ] ]), IsEqual(_:_:))
        assertEqual(F4x4(Cols4x4f.0, Cols4x4f.1, Cols4x4f.2, Cols4x4f.3), simd.simd_float4x4(Cols4x4f.0, Cols4x4f.1, Cols4x4f.2, Cols4x4f.3), IsEqual(_:_:))
    }

    func testInit_d() {
        assertEqual(D2x2(), simd.simd_double2x2(), IsEqual(_:_:))
        assertEqual(D2x2(columns: Cols2x2d), simd.simd_double2x2(columns: Cols2x2d), IsEqual(_:_:))
        assertEqual(D2x2(2.0), simd.simd_double2x2(2.0), IsEqual(_:_:))
        assertEqual(D2x2(diagonal: [ 1, 2 ]), simd.simd_double2x2(diagonal: [ 1, 2 ]), IsEqual(_:_:))
        assertEqual(D2x2([ Cols2x2d.0, Cols2x2d.1 ]), simd.simd_double2x2([ Cols2x2d.0, Cols2x2d.1 ]), IsEqual(_:_:))
        assertEqual(D2x2(rows: [ [ 00, 01 ], [ 10, 11 ] ]), simd.simd_double2x2(rows: [ [ 00, 01 ], [ 10, 11 ] ]), IsEqual(_:_:))
        assertEqual(D2x2(Cols2x2d.0, Cols2x2d.1), simd.simd_double2x2(Cols2x2d.0, Cols2x2d.1), IsEqual(_:_:))

        assertEqual(D2x3(), simd.simd_double2x3(), IsEqual(_:_:))
        assertEqual(D2x3(columns: Cols2x3d), simd.simd_double2x3(columns: Cols2x3d), IsEqual(_:_:))
        assertEqual(D2x3(2.0), simd.simd_double2x3(2.0), IsEqual(_:_:))
        assertEqual(D2x3(diagonal: [ 1, 2 ]), simd.simd_double2x3(diagonal: [ 1, 2 ]), IsEqual(_:_:))
        assertEqual(D2x3([ Cols2x3d.0, Cols2x3d.1 ]), simd.simd_double2x3([ Cols2x3d.0, Cols2x3d.1 ]), IsEqual(_:_:))
        assertEqual(D2x3(rows: [ [ 00, 01 ], [ 10, 11 ], [ 20, 21 ] ]), simd.simd_double2x3(rows: [ [ 00, 01 ], [ 10, 11 ], [ 20, 21 ] ]), IsEqual(_:_:))
        assertEqual(D2x3(Cols2x3d.0, Cols2x3d.1), simd.simd_double2x3(Cols2x3d.0, Cols2x3d.1), IsEqual(_:_:))

        assertEqual(D2x4(), simd.simd_double2x4(), IsEqual(_:_:))
        assertEqual(D2x4(columns: Cols2x4d), simd.simd_double2x4(columns: Cols2x4d), IsEqual(_:_:))
        assertEqual(D2x4(2.0), simd.simd_double2x4(2.0), IsEqual(_:_:))
        assertEqual(D2x4(diagonal: [ 1, 2 ]), simd.simd_double2x4(diagonal: [ 1, 2 ]), IsEqual(_:_:))
        assertEqual(D2x4([ Cols2x4d.0, Cols2x4d.1 ]), simd.simd_double2x4([ Cols2x4d.0, Cols2x4d.1 ]), IsEqual(_:_:))
        assertEqual(D2x4(rows: [ [ 00, 01 ], [ 10, 11 ], [ 20, 21 ], [ 30, 31 ] ]), simd.simd_double2x4(rows: [ [ 00, 01 ], [ 10, 11 ], [ 20, 21 ], [ 30, 31 ] ]), IsEqual(_:_:))
        assertEqual(D2x4(Cols2x4d.0, Cols2x4d.1), simd.simd_double2x4(Cols2x4d.0, Cols2x4d.1), IsEqual(_:_:))

        assertEqual(D3x2(), simd.simd_double3x2(), IsEqual(_:_:))
        assertEqual(D3x2(columns: Cols3x2d), simd.simd_double3x2(columns: Cols3x2d), IsEqual(_:_:))
        assertEqual(D3x2(2.0), simd.simd_double3x2(2.0), IsEqual(_:_:))
        assertEqual(D3x2(diagonal: [ 1, 2 ]), simd.simd_double3x2(diagonal: [ 1, 2 ]), IsEqual(_:_:))
        assertEqual(D3x2([ Cols3x2d.0, Cols3x2d.1, Cols3x2d.2 ]), simd.simd_double3x2([ Cols3x2d.0, Cols3x2d.1, Cols3x2d.2 ]), IsEqual(_:_:))
        assertEqual(D3x2(rows: [ [ 00, 01, 02 ], [ 10, 11, 12 ] ]), simd.simd_double3x2(rows: [ [ 00, 01, 02 ], [ 10, 11, 12 ] ]), IsEqual(_:_:))
        assertEqual(D3x2(Cols3x2d.0, Cols3x2d.1, Cols3x2d.2), simd.simd_double3x2(Cols3x2d.0, Cols3x2d.1, Cols3x2d.2), IsEqual(_:_:))

        assertEqual(D3x3(), simd.simd_double3x3(), IsEqual(_:_:))
        assertEqual(D3x3(columns: Cols3x3d), simd.simd_double3x3(columns: Cols3x3d), IsEqual(_:_:))
        assertEqual(D3x3(2.0), simd.simd_double3x3(2.0), IsEqual(_:_:))
        assertEqual(D3x3(diagonal: [ 1, 2, 3 ]), simd.simd_double3x3(diagonal: [ 1, 2, 3 ]), IsEqual(_:_:))
        assertEqual(D3x3([ Cols3x3d.0, Cols3x3d.1, Cols3x3d.2 ]), simd.simd_double3x3([ Cols3x3d.0, Cols3x3d.1, Cols3x3d.2 ]), IsEqual(_:_:))
        assertEqual(D3x3(rows: [ [ 00, 01, 02 ], [ 10, 11, 12 ], [ 20, 21, 22 ] ]), simd.simd_double3x3(rows: [ [ 00, 01, 02 ], [ 10, 11, 12 ], [ 20, 21, 22 ] ]), IsEqual(_:_:))
        assertEqual(D3x3(Cols3x3d.0, Cols3x3d.1, Cols3x3d.2), simd.simd_double3x3(Cols3x3d.0, Cols3x3d.1, Cols3x3d.2), IsEqual(_:_:))

        assertEqual(D3x4(), simd.simd_double3x4(), IsEqual(_:_:))
        assertEqual(D3x4(columns: Cols3x4d), simd.simd_double3x4(columns: Cols3x4d), IsEqual(_:_:))
        assertEqual(D3x4(2.0), simd.simd_double3x4(2.0), IsEqual(_:_:))
        assertEqual(D3x4(diagonal: [ 1, 2, 3 ]), simd.simd_double3x4(diagonal: [ 1, 2, 3 ]), IsEqual(_:_:))
        assertEqual(D3x4([ Cols3x4d.0, Cols3x4d.1, Cols3x4d.2 ]), simd.simd_double3x4([ Cols3x4d.0, Cols3x4d.1, Cols3x4d.2 ]), IsEqual(_:_:))
        assertEqual(D3x4(rows: [ [ 00, 01, 02 ], [ 10, 11, 12 ], [ 20, 21, 22 ], [ 30, 31, 32 ] ]), simd.simd_double3x4(rows: [ [ 00, 01, 02 ], [ 10, 11, 12 ], [ 20, 21, 22 ], [ 30, 31, 32 ] ]), IsEqual(_:_:))
        assertEqual(D3x4(Cols3x4d.0, Cols3x4d.1, Cols3x4d.2), simd.simd_double3x4(Cols3x4d.0, Cols3x4d.1, Cols3x4d.2), IsEqual(_:_:))

        assertEqual(D4x2(), simd.simd_double4x2(), IsEqual(_:_:))
        assertEqual(D4x2(columns: Cols4x2d), simd.simd_double4x2(columns: Cols4x2d), IsEqual(_:_:))
        assertEqual(D4x2(2.0), simd.simd_double4x2(2.0), IsEqual(_:_:))
        assertEqual(D4x2(diagonal: [ 1, 2 ]), simd.simd_double4x2(diagonal: [ 1, 2 ]), IsEqual(_:_:))
        assertEqual(D4x2([ Cols4x2d.0, Cols4x2d.1, Cols4x2d.2, Cols4x2d.3 ]), simd.simd_double4x2([ Cols4x2d.0, Cols4x2d.1, Cols4x2d.2, Cols4x2d.3 ]), IsEqual(_:_:))
        assertEqual(D4x2(rows: [ [ 00, 01, 02, 03 ], [ 10, 11, 12, 13 ] ]), simd.simd_double4x2(rows: [ [ 00, 01, 02, 03 ], [ 10, 11, 12, 13 ] ]), IsEqual(_:_:))
        assertEqual(D4x2(Cols4x2d.0, Cols4x2d.1, Cols4x2d.2, Cols4x2d.3), simd.simd_double4x2(Cols4x2d.0, Cols4x2d.1, Cols4x2d.2, Cols4x2d.3), IsEqual(_:_:))

        assertEqual(D4x3(), simd.simd_double4x3(), IsEqual(_:_:))
        assertEqual(D4x3(columns: Cols4x3d), simd.simd_double4x3(columns: Cols4x3d), IsEqual(_:_:))
        assertEqual(D4x3(2.0), simd.simd_double4x3(2.0), IsEqual(_:_:))
        assertEqual(D4x3(diagonal: [ 1, 2, 3 ]), simd.simd_double4x3(diagonal: [ 1, 2, 3 ]), IsEqual(_:_:))
        assertEqual(D4x3([ Cols4x3d.0, Cols4x3d.1, Cols4x3d.2, Cols4x3d.3 ]), simd.simd_double4x3([ Cols4x3d.0, Cols4x3d.1, Cols4x3d.2, Cols4x3d.3 ]), IsEqual(_:_:))
        assertEqual(D4x3(rows: [ [ 00, 01, 02, 03 ], [ 10, 11, 12, 13 ], [ 20, 21, 22, 23 ] ]), simd.simd_double4x3(rows: [ [ 00, 01, 02, 03 ], [ 10, 11, 12, 13 ], [ 20, 21, 22, 23 ] ]), IsEqual(_:_:))
        assertEqual(D4x3(Cols4x3d.0, Cols4x3d.1, Cols4x3d.2, Cols4x3d.3), simd.simd_double4x3(Cols4x3d.0, Cols4x3d.1, Cols4x3d.2, Cols4x3d.3), IsEqual(_:_:))

        assertEqual(D4x4(), simd.simd_double4x4(), IsEqual(_:_:))
        assertEqual(D4x4(columns: Cols4x4d), simd.simd_double4x4(columns: Cols4x4d), IsEqual(_:_:))
        assertEqual(D4x4(2.0), simd.simd_double4x4(2.0), IsEqual(_:_:))
        assertEqual(D4x4(diagonal: [ 1, 2, 3, 4 ]), simd.simd_double4x4(diagonal: [ 1, 2, 3, 4 ]), IsEqual(_:_:))
        assertEqual(D4x4([ Cols4x4d.0, Cols4x4d.1, Cols4x4d.2, Cols4x4d.3 ]), simd.simd_double4x4([ Cols4x4d.0, Cols4x4d.1, Cols4x4d.2, Cols4x4d.3 ]), IsEqual(_:_:))
        assertEqual(D4x4(rows: [ [ 00, 01, 02, 03 ], [ 10, 11, 12, 13 ], [ 20, 21, 22, 23 ], [ 30, 31, 32, 33 ] ]), simd.simd_double4x4(rows: [ [ 00, 01, 02, 03 ], [ 10, 11, 12, 13 ], [ 20, 21, 22, 23 ], [ 30, 31, 32, 33 ] ]), IsEqual(_:_:))
        assertEqual(D4x4(Cols4x4d.0, Cols4x4d.1, Cols4x4d.2, Cols4x4d.3), simd.simd_double4x4(Cols4x4d.0, Cols4x4d.1, Cols4x4d.2, Cols4x4d.3), IsEqual(_:_:))
    }



    // MARK: testInitBytQuaterion()

    func testInitBytQuaterion() {
        do {
            let q = RandomInputQF()
            assertEqual(F3x3(q.subject), simd.simd_float3x3(q.reference), IsEqual(_:_:))
            assertEqual(F4x4(q.subject), simd.simd_float4x4(q.reference), IsEqual(_:_:))
        }
        do {
            let q = RandomInputQD()
            assertEqual(D3x3(q.subject), simd.simd_double3x3(q.reference), IsEqual(_:_:))
            assertEqual(D4x4(q.subject), simd.simd_double4x4(q.reference), IsEqual(_:_:))
        }
    }



    // MARK: testSubscripts_*()

    func testSubscripts_f() {

        func With<T, C>(_ initialValue: T, _ columns: C, _ body: (inout T, C) -> Void) {
            var value = initialValue
            body(&value, columns)
        }

        func Test(action: () -> Void, assertion: () -> Void) {
            action()
            assertion()
        }

        With(F2x2(0.0), Cols2x2f) { m, columns in
            Test(action: { m[0] = columns.0 }, assertion: { XCTAssertEqual(m[0], columns.0) })
            Test(action: { m[1] = columns.1 }, assertion: { XCTAssertEqual(m[1], columns.1) })
        }
        With(F2x2(0.0), Cols2x2f) { m, columns in
            Test(action: { m[0, 0] = columns.0.x }, assertion: { XCTAssertEqual(m[0, 0], columns.0.x) })
            Test(action: { m[0, 1] = columns.0.y }, assertion: { XCTAssertEqual(m[0, 1], columns.0.y) })
            Test(action: { m[1, 0] = columns.1.x }, assertion: { XCTAssertEqual(m[1, 0], columns.1.x) })
            Test(action: { m[1, 1] = columns.1.y }, assertion: { XCTAssertEqual(m[1, 1], columns.1.y) })
        }
        With(F3x2(0.0), Cols3x2f) { m, columns in
            Test(action: { m[0] = columns.0 }, assertion: { XCTAssertEqual(m[0], columns.0) })
            Test(action: { m[1] = columns.1 }, assertion: { XCTAssertEqual(m[1], columns.1) })
            Test(action: { m[2] = columns.2 }, assertion: { XCTAssertEqual(m[2], columns.2) })
        }
        With(F3x2(0.0), Cols3x2f) { m, columns in
            Test(action: { m[0, 0] = columns.0.x }, assertion: { XCTAssertEqual(m[0, 0], columns.0.x) })
            Test(action: { m[0, 1] = columns.0.y }, assertion: { XCTAssertEqual(m[0, 1], columns.0.y) })
            Test(action: { m[1, 0] = columns.1.x }, assertion: { XCTAssertEqual(m[1, 0], columns.1.x) })
            Test(action: { m[1, 1] = columns.1.y }, assertion: { XCTAssertEqual(m[1, 1], columns.1.y) })
            Test(action: { m[2, 0] = columns.2.x }, assertion: { XCTAssertEqual(m[2, 0], columns.2.x) })
            Test(action: { m[2, 1] = columns.2.y }, assertion: { XCTAssertEqual(m[2, 1], columns.2.y) })
        }
        With(F4x2(0.0), Cols4x2f) { m, columns in
            Test(action: { m[0] = columns.0 }, assertion: { XCTAssertEqual(m[0], columns.0) })
            Test(action: { m[1] = columns.1 }, assertion: { XCTAssertEqual(m[1], columns.1) })
            Test(action: { m[2] = columns.2 }, assertion: { XCTAssertEqual(m[2], columns.2) })
            Test(action: { m[3] = columns.3 }, assertion: { XCTAssertEqual(m[3], columns.3) })
        }
        With(F4x2(0.0), Cols4x2f) { m, columns in
            Test(action: { m[0, 0] = columns.0.x }, assertion: { XCTAssertEqual(m[0, 0], columns.0.x) })
            Test(action: { m[0, 1] = columns.0.y }, assertion: { XCTAssertEqual(m[0, 1], columns.0.y) })
            Test(action: { m[1, 0] = columns.1.x }, assertion: { XCTAssertEqual(m[1, 0], columns.1.x) })
            Test(action: { m[1, 1] = columns.1.y }, assertion: { XCTAssertEqual(m[1, 1], columns.1.y) })
            Test(action: { m[2, 0] = columns.2.x }, assertion: { XCTAssertEqual(m[2, 0], columns.2.x) })
            Test(action: { m[2, 1] = columns.2.y }, assertion: { XCTAssertEqual(m[2, 1], columns.2.y) })
            Test(action: { m[3, 0] = columns.3.x }, assertion: { XCTAssertEqual(m[3, 0], columns.3.x) })
            Test(action: { m[3, 1] = columns.3.y }, assertion: { XCTAssertEqual(m[3, 1], columns.3.y) })
        }
        With(F2x3(0.0), Cols2x3f) { m, columns in
            Test(action: { m[0] = columns.0 }, assertion: { XCTAssertEqual(m[0], columns.0) })
            Test(action: { m[1] = columns.1 }, assertion: { XCTAssertEqual(m[1], columns.1) })
        }
        With(F2x3(0.0), Cols2x3f) { m, columns in
            Test(action: { m[0, 0] = columns.0.x }, assertion: { XCTAssertEqual(m[0, 0], columns.0.x) })
            Test(action: { m[0, 1] = columns.0.y }, assertion: { XCTAssertEqual(m[0, 1], columns.0.y) })
            Test(action: { m[0, 2] = columns.0.z }, assertion: { XCTAssertEqual(m[0, 2], columns.0.z) })
            Test(action: { m[1, 0] = columns.1.x }, assertion: { XCTAssertEqual(m[1, 0], columns.1.x) })
            Test(action: { m[1, 1] = columns.1.y }, assertion: { XCTAssertEqual(m[1, 1], columns.1.y) })
            Test(action: { m[1, 2] = columns.1.z }, assertion: { XCTAssertEqual(m[1, 2], columns.1.z) })
        }
        With(F3x3(0.0), Cols3x3f) { m, columns in
            Test(action: { m[0] = columns.0 }, assertion: { XCTAssertEqual(m[0], columns.0) })
            Test(action: { m[1] = columns.1 }, assertion: { XCTAssertEqual(m[1], columns.1) })
            Test(action: { m[2] = columns.2 }, assertion: { XCTAssertEqual(m[2], columns.2) })
        }
        With(F3x3(0.0), Cols3x3f) { m, columns in
            Test(action: { m[0, 0] = columns.0.x }, assertion: { XCTAssertEqual(m[0, 0], columns.0.x) })
            Test(action: { m[0, 1] = columns.0.y }, assertion: { XCTAssertEqual(m[0, 1], columns.0.y) })
            Test(action: { m[0, 2] = columns.0.z }, assertion: { XCTAssertEqual(m[0, 2], columns.0.z) })
            Test(action: { m[1, 0] = columns.1.x }, assertion: { XCTAssertEqual(m[1, 0], columns.1.x) })
            Test(action: { m[1, 1] = columns.1.y }, assertion: { XCTAssertEqual(m[1, 1], columns.1.y) })
            Test(action: { m[1, 2] = columns.1.z }, assertion: { XCTAssertEqual(m[1, 2], columns.1.z) })
            Test(action: { m[2, 0] = columns.2.x }, assertion: { XCTAssertEqual(m[2, 0], columns.2.x) })
            Test(action: { m[2, 1] = columns.2.y }, assertion: { XCTAssertEqual(m[2, 1], columns.2.y) })
            Test(action: { m[2, 2] = columns.2.z }, assertion: { XCTAssertEqual(m[2, 2], columns.2.z) })
        }
        With(F4x3(0.0), Cols4x3f) { m, columns in
            Test(action: { m[0] = columns.0 }, assertion: { XCTAssertEqual(m[0], columns.0) })
            Test(action: { m[1] = columns.1 }, assertion: { XCTAssertEqual(m[1], columns.1) })
            Test(action: { m[2] = columns.2 }, assertion: { XCTAssertEqual(m[2], columns.2) })
            Test(action: { m[3] = columns.3 }, assertion: { XCTAssertEqual(m[3], columns.3) })
        }
        With(F4x3(0.0), Cols4x3f) { m, columns in
            Test(action: { m[0, 0] = columns.0.x }, assertion: { XCTAssertEqual(m[0, 0], columns.0.x) })
            Test(action: { m[0, 1] = columns.0.y }, assertion: { XCTAssertEqual(m[0, 1], columns.0.y) })
            Test(action: { m[0, 2] = columns.0.z }, assertion: { XCTAssertEqual(m[0, 2], columns.0.z) })
            Test(action: { m[1, 0] = columns.1.x }, assertion: { XCTAssertEqual(m[1, 0], columns.1.x) })
            Test(action: { m[1, 1] = columns.1.y }, assertion: { XCTAssertEqual(m[1, 1], columns.1.y) })
            Test(action: { m[1, 2] = columns.1.z }, assertion: { XCTAssertEqual(m[1, 2], columns.1.z) })
            Test(action: { m[2, 0] = columns.2.x }, assertion: { XCTAssertEqual(m[2, 0], columns.2.x) })
            Test(action: { m[2, 1] = columns.2.y }, assertion: { XCTAssertEqual(m[2, 1], columns.2.y) })
            Test(action: { m[2, 2] = columns.2.z }, assertion: { XCTAssertEqual(m[2, 2], columns.2.z) })
            Test(action: { m[3, 0] = columns.3.x }, assertion: { XCTAssertEqual(m[3, 0], columns.3.x) })
            Test(action: { m[3, 1] = columns.3.y }, assertion: { XCTAssertEqual(m[3, 1], columns.3.y) })
            Test(action: { m[3, 2] = columns.3.z }, assertion: { XCTAssertEqual(m[3, 2], columns.3.z) })
        }
        With(F2x4(0.0), Cols2x4f) { m, columns in
            Test(action: { m[0] = columns.0 }, assertion: { XCTAssertEqual(m[0], columns.0) })
            Test(action: { m[1] = columns.1 }, assertion: { XCTAssertEqual(m[1], columns.1) })
        }
        With(F2x4(0.0), Cols2x4f) { m, columns in
            Test(action: { m[0, 0] = columns.0.x }, assertion: { XCTAssertEqual(m[0, 0], columns.0.x) })
            Test(action: { m[0, 1] = columns.0.y }, assertion: { XCTAssertEqual(m[0, 1], columns.0.y) })
            Test(action: { m[0, 2] = columns.0.z }, assertion: { XCTAssertEqual(m[0, 2], columns.0.z) })
            Test(action: { m[0, 3] = columns.0.w }, assertion: { XCTAssertEqual(m[0, 3], columns.0.w) })
            Test(action: { m[1, 0] = columns.1.x }, assertion: { XCTAssertEqual(m[1, 0], columns.1.x) })
            Test(action: { m[1, 1] = columns.1.y }, assertion: { XCTAssertEqual(m[1, 1], columns.1.y) })
            Test(action: { m[1, 2] = columns.1.z }, assertion: { XCTAssertEqual(m[1, 2], columns.1.z) })
            Test(action: { m[1, 3] = columns.1.w }, assertion: { XCTAssertEqual(m[1, 3], columns.1.w) })
        }
        With(F3x4(0.0), Cols3x4f) { m, columns in
            Test(action: { m[0] = columns.0 }, assertion: { XCTAssertEqual(m[0], columns.0) })
            Test(action: { m[1] = columns.1 }, assertion: { XCTAssertEqual(m[1], columns.1) })
            Test(action: { m[2] = columns.2 }, assertion: { XCTAssertEqual(m[2], columns.2) })
        }
        With(F3x4(0.0), Cols3x4f) { m, columns in
            Test(action: { m[0, 0] = columns.0.x }, assertion: { XCTAssertEqual(m[0, 0], columns.0.x) })
            Test(action: { m[0, 1] = columns.0.y }, assertion: { XCTAssertEqual(m[0, 1], columns.0.y) })
            Test(action: { m[0, 2] = columns.0.z }, assertion: { XCTAssertEqual(m[0, 2], columns.0.z) })
            Test(action: { m[0, 3] = columns.0.w }, assertion: { XCTAssertEqual(m[0, 3], columns.0.w) })
            Test(action: { m[1, 0] = columns.1.x }, assertion: { XCTAssertEqual(m[1, 0], columns.1.x) })
            Test(action: { m[1, 1] = columns.1.y }, assertion: { XCTAssertEqual(m[1, 1], columns.1.y) })
            Test(action: { m[1, 2] = columns.1.z }, assertion: { XCTAssertEqual(m[1, 2], columns.1.z) })
            Test(action: { m[1, 3] = columns.1.w }, assertion: { XCTAssertEqual(m[1, 3], columns.1.w) })
            Test(action: { m[2, 0] = columns.2.x }, assertion: { XCTAssertEqual(m[2, 0], columns.2.x) })
            Test(action: { m[2, 1] = columns.2.y }, assertion: { XCTAssertEqual(m[2, 1], columns.2.y) })
            Test(action: { m[2, 2] = columns.2.z }, assertion: { XCTAssertEqual(m[2, 2], columns.2.z) })
            Test(action: { m[2, 3] = columns.2.w }, assertion: { XCTAssertEqual(m[2, 3], columns.2.w) })
        }
        With(F4x4(0.0), Cols4x4f) { m, columns in
            Test(action: { m[0] = columns.0 }, assertion: { XCTAssertEqual(m[0], columns.0) })
            Test(action: { m[1] = columns.1 }, assertion: { XCTAssertEqual(m[1], columns.1) })
            Test(action: { m[2] = columns.2 }, assertion: { XCTAssertEqual(m[2], columns.2) })
            Test(action: { m[3] = columns.3 }, assertion: { XCTAssertEqual(m[3], columns.3) })
        }
        With(F4x4(0.0), Cols4x4f) { m, columns in
            Test(action: { m[0, 0] = columns.0.x }, assertion: { XCTAssertEqual(m[0, 0], columns.0.x) })
            Test(action: { m[0, 1] = columns.0.y }, assertion: { XCTAssertEqual(m[0, 1], columns.0.y) })
            Test(action: { m[0, 2] = columns.0.z }, assertion: { XCTAssertEqual(m[0, 2], columns.0.z) })
            Test(action: { m[0, 3] = columns.0.w }, assertion: { XCTAssertEqual(m[0, 3], columns.0.w) })
            Test(action: { m[1, 0] = columns.1.x }, assertion: { XCTAssertEqual(m[1, 0], columns.1.x) })
            Test(action: { m[1, 1] = columns.1.y }, assertion: { XCTAssertEqual(m[1, 1], columns.1.y) })
            Test(action: { m[1, 2] = columns.1.z }, assertion: { XCTAssertEqual(m[1, 2], columns.1.z) })
            Test(action: { m[1, 3] = columns.1.w }, assertion: { XCTAssertEqual(m[1, 3], columns.1.w) })
            Test(action: { m[2, 0] = columns.2.x }, assertion: { XCTAssertEqual(m[2, 0], columns.2.x) })
            Test(action: { m[2, 1] = columns.2.y }, assertion: { XCTAssertEqual(m[2, 1], columns.2.y) })
            Test(action: { m[2, 2] = columns.2.z }, assertion: { XCTAssertEqual(m[2, 2], columns.2.z) })
            Test(action: { m[2, 3] = columns.2.w }, assertion: { XCTAssertEqual(m[2, 3], columns.2.w) })
            Test(action: { m[3, 0] = columns.3.x }, assertion: { XCTAssertEqual(m[3, 0], columns.3.x) })
            Test(action: { m[3, 1] = columns.3.y }, assertion: { XCTAssertEqual(m[3, 1], columns.3.y) })
            Test(action: { m[3, 2] = columns.3.z }, assertion: { XCTAssertEqual(m[3, 2], columns.3.z) })
            Test(action: { m[3, 3] = columns.3.w }, assertion: { XCTAssertEqual(m[3, 3], columns.3.w) })
        }
    }

    func testSubscripts_d() {

        func With<T, C>(_ initialValue: T, _ columns: C, _ body: (inout T, C) -> Void) {
            var value = initialValue
            body(&value, columns)
        }

        func Test(action: () -> Void, assertion: () -> Void) {
            action()
            assertion()
        }

        With(D2x2(0.0), Cols2x2d) { m, columns in
            Test(action: { m[0] = columns.0 }, assertion: { XCTAssertEqual(m[0], columns.0) })
            Test(action: { m[1] = columns.1 }, assertion: { XCTAssertEqual(m[1], columns.1) })
        }
        With(D2x2(0.0), Cols2x2d) { m, columns in
            Test(action: { m[0, 0] = columns.0.x }, assertion: { XCTAssertEqual(m[0, 0], columns.0.x) })
            Test(action: { m[0, 1] = columns.0.y }, assertion: { XCTAssertEqual(m[0, 1], columns.0.y) })
            Test(action: { m[1, 0] = columns.1.x }, assertion: { XCTAssertEqual(m[1, 0], columns.1.x) })
            Test(action: { m[1, 1] = columns.1.y }, assertion: { XCTAssertEqual(m[1, 1], columns.1.y) })
        }
        With(D3x2(0.0), Cols3x2d) { m, columns in
            Test(action: { m[0] = columns.0 }, assertion: { XCTAssertEqual(m[0], columns.0) })
            Test(action: { m[1] = columns.1 }, assertion: { XCTAssertEqual(m[1], columns.1) })
            Test(action: { m[2] = columns.2 }, assertion: { XCTAssertEqual(m[2], columns.2) })
        }
        With(D3x2(0.0), Cols3x2d) { m, columns in
            Test(action: { m[0, 0] = columns.0.x }, assertion: { XCTAssertEqual(m[0, 0], columns.0.x) })
            Test(action: { m[0, 1] = columns.0.y }, assertion: { XCTAssertEqual(m[0, 1], columns.0.y) })
            Test(action: { m[1, 0] = columns.1.x }, assertion: { XCTAssertEqual(m[1, 0], columns.1.x) })
            Test(action: { m[1, 1] = columns.1.y }, assertion: { XCTAssertEqual(m[1, 1], columns.1.y) })
            Test(action: { m[2, 0] = columns.2.x }, assertion: { XCTAssertEqual(m[2, 0], columns.2.x) })
            Test(action: { m[2, 1] = columns.2.y }, assertion: { XCTAssertEqual(m[2, 1], columns.2.y) })
        }
        With(D4x2(0.0), Cols4x2d) { m, columns in
            Test(action: { m[0] = columns.0 }, assertion: { XCTAssertEqual(m[0], columns.0) })
            Test(action: { m[1] = columns.1 }, assertion: { XCTAssertEqual(m[1], columns.1) })
            Test(action: { m[2] = columns.2 }, assertion: { XCTAssertEqual(m[2], columns.2) })
            Test(action: { m[3] = columns.3 }, assertion: { XCTAssertEqual(m[3], columns.3) })
        }
        With(D4x2(0.0), Cols4x2d) { m, columns in
            Test(action: { m[0, 0] = columns.0.x }, assertion: { XCTAssertEqual(m[0, 0], columns.0.x) })
            Test(action: { m[0, 1] = columns.0.y }, assertion: { XCTAssertEqual(m[0, 1], columns.0.y) })
            Test(action: { m[1, 0] = columns.1.x }, assertion: { XCTAssertEqual(m[1, 0], columns.1.x) })
            Test(action: { m[1, 1] = columns.1.y }, assertion: { XCTAssertEqual(m[1, 1], columns.1.y) })
            Test(action: { m[2, 0] = columns.2.x }, assertion: { XCTAssertEqual(m[2, 0], columns.2.x) })
            Test(action: { m[2, 1] = columns.2.y }, assertion: { XCTAssertEqual(m[2, 1], columns.2.y) })
            Test(action: { m[3, 0] = columns.3.x }, assertion: { XCTAssertEqual(m[3, 0], columns.3.x) })
            Test(action: { m[3, 1] = columns.3.y }, assertion: { XCTAssertEqual(m[3, 1], columns.3.y) })
        }
        With(D2x3(0.0), Cols2x3d) { m, columns in
            Test(action: { m[0] = columns.0 }, assertion: { XCTAssertEqual(m[0], columns.0) })
            Test(action: { m[1] = columns.1 }, assertion: { XCTAssertEqual(m[1], columns.1) })
        }
        With(D2x3(0.0), Cols2x3d) { m, columns in
            Test(action: { m[0, 0] = columns.0.x }, assertion: { XCTAssertEqual(m[0, 0], columns.0.x) })
            Test(action: { m[0, 1] = columns.0.y }, assertion: { XCTAssertEqual(m[0, 1], columns.0.y) })
            Test(action: { m[0, 2] = columns.0.z }, assertion: { XCTAssertEqual(m[0, 2], columns.0.z) })
            Test(action: { m[1, 0] = columns.1.x }, assertion: { XCTAssertEqual(m[1, 0], columns.1.x) })
            Test(action: { m[1, 1] = columns.1.y }, assertion: { XCTAssertEqual(m[1, 1], columns.1.y) })
            Test(action: { m[1, 2] = columns.1.z }, assertion: { XCTAssertEqual(m[1, 2], columns.1.z) })
        }
        With(D3x3(0.0), Cols3x3d) { m, columns in
            Test(action: { m[0] = columns.0 }, assertion: { XCTAssertEqual(m[0], columns.0) })
            Test(action: { m[1] = columns.1 }, assertion: { XCTAssertEqual(m[1], columns.1) })
            Test(action: { m[2] = columns.2 }, assertion: { XCTAssertEqual(m[2], columns.2) })
        }
        With(D3x3(0.0), Cols3x3d) { m, columns in
            Test(action: { m[0, 0] = columns.0.x }, assertion: { XCTAssertEqual(m[0, 0], columns.0.x) })
            Test(action: { m[0, 1] = columns.0.y }, assertion: { XCTAssertEqual(m[0, 1], columns.0.y) })
            Test(action: { m[0, 2] = columns.0.z }, assertion: { XCTAssertEqual(m[0, 2], columns.0.z) })
            Test(action: { m[1, 0] = columns.1.x }, assertion: { XCTAssertEqual(m[1, 0], columns.1.x) })
            Test(action: { m[1, 1] = columns.1.y }, assertion: { XCTAssertEqual(m[1, 1], columns.1.y) })
            Test(action: { m[1, 2] = columns.1.z }, assertion: { XCTAssertEqual(m[1, 2], columns.1.z) })
            Test(action: { m[2, 0] = columns.2.x }, assertion: { XCTAssertEqual(m[2, 0], columns.2.x) })
            Test(action: { m[2, 1] = columns.2.y }, assertion: { XCTAssertEqual(m[2, 1], columns.2.y) })
            Test(action: { m[2, 2] = columns.2.z }, assertion: { XCTAssertEqual(m[2, 2], columns.2.z) })
        }
        With(D4x3(0.0), Cols4x3d) { m, columns in
            Test(action: { m[0] = columns.0 }, assertion: { XCTAssertEqual(m[0], columns.0) })
            Test(action: { m[1] = columns.1 }, assertion: { XCTAssertEqual(m[1], columns.1) })
            Test(action: { m[2] = columns.2 }, assertion: { XCTAssertEqual(m[2], columns.2) })
            Test(action: { m[3] = columns.3 }, assertion: { XCTAssertEqual(m[3], columns.3) })
        }
        With(D4x3(0.0), Cols4x3d) { m, columns in
            Test(action: { m[0, 0] = columns.0.x }, assertion: { XCTAssertEqual(m[0, 0], columns.0.x) })
            Test(action: { m[0, 1] = columns.0.y }, assertion: { XCTAssertEqual(m[0, 1], columns.0.y) })
            Test(action: { m[0, 2] = columns.0.z }, assertion: { XCTAssertEqual(m[0, 2], columns.0.z) })
            Test(action: { m[1, 0] = columns.1.x }, assertion: { XCTAssertEqual(m[1, 0], columns.1.x) })
            Test(action: { m[1, 1] = columns.1.y }, assertion: { XCTAssertEqual(m[1, 1], columns.1.y) })
            Test(action: { m[1, 2] = columns.1.z }, assertion: { XCTAssertEqual(m[1, 2], columns.1.z) })
            Test(action: { m[2, 0] = columns.2.x }, assertion: { XCTAssertEqual(m[2, 0], columns.2.x) })
            Test(action: { m[2, 1] = columns.2.y }, assertion: { XCTAssertEqual(m[2, 1], columns.2.y) })
            Test(action: { m[2, 2] = columns.2.z }, assertion: { XCTAssertEqual(m[2, 2], columns.2.z) })
            Test(action: { m[3, 0] = columns.3.x }, assertion: { XCTAssertEqual(m[3, 0], columns.3.x) })
            Test(action: { m[3, 1] = columns.3.y }, assertion: { XCTAssertEqual(m[3, 1], columns.3.y) })
            Test(action: { m[3, 2] = columns.3.z }, assertion: { XCTAssertEqual(m[3, 2], columns.3.z) })
        }
        With(D2x4(0.0), Cols2x4d) { m, columns in
            Test(action: { m[0] = columns.0 }, assertion: { XCTAssertEqual(m[0], columns.0) })
            Test(action: { m[1] = columns.1 }, assertion: { XCTAssertEqual(m[1], columns.1) })
        }
        With(D2x4(0.0), Cols2x4d) { m, columns in
            Test(action: { m[0, 0] = columns.0.x }, assertion: { XCTAssertEqual(m[0, 0], columns.0.x) })
            Test(action: { m[0, 1] = columns.0.y }, assertion: { XCTAssertEqual(m[0, 1], columns.0.y) })
            Test(action: { m[0, 2] = columns.0.z }, assertion: { XCTAssertEqual(m[0, 2], columns.0.z) })
            Test(action: { m[0, 3] = columns.0.w }, assertion: { XCTAssertEqual(m[0, 3], columns.0.w) })
            Test(action: { m[1, 0] = columns.1.x }, assertion: { XCTAssertEqual(m[1, 0], columns.1.x) })
            Test(action: { m[1, 1] = columns.1.y }, assertion: { XCTAssertEqual(m[1, 1], columns.1.y) })
            Test(action: { m[1, 2] = columns.1.z }, assertion: { XCTAssertEqual(m[1, 2], columns.1.z) })
            Test(action: { m[1, 3] = columns.1.w }, assertion: { XCTAssertEqual(m[1, 3], columns.1.w) })
        }
        With(D3x4(0.0), Cols3x4d) { m, columns in
            Test(action: { m[0] = columns.0 }, assertion: { XCTAssertEqual(m[0], columns.0) })
            Test(action: { m[1] = columns.1 }, assertion: { XCTAssertEqual(m[1], columns.1) })
            Test(action: { m[2] = columns.2 }, assertion: { XCTAssertEqual(m[2], columns.2) })
        }
        With(D3x4(0.0), Cols3x4d) { m, columns in
            Test(action: { m[0, 0] = columns.0.x }, assertion: { XCTAssertEqual(m[0, 0], columns.0.x) })
            Test(action: { m[0, 1] = columns.0.y }, assertion: { XCTAssertEqual(m[0, 1], columns.0.y) })
            Test(action: { m[0, 2] = columns.0.z }, assertion: { XCTAssertEqual(m[0, 2], columns.0.z) })
            Test(action: { m[0, 3] = columns.0.w }, assertion: { XCTAssertEqual(m[0, 3], columns.0.w) })
            Test(action: { m[1, 0] = columns.1.x }, assertion: { XCTAssertEqual(m[1, 0], columns.1.x) })
            Test(action: { m[1, 1] = columns.1.y }, assertion: { XCTAssertEqual(m[1, 1], columns.1.y) })
            Test(action: { m[1, 2] = columns.1.z }, assertion: { XCTAssertEqual(m[1, 2], columns.1.z) })
            Test(action: { m[1, 3] = columns.1.w }, assertion: { XCTAssertEqual(m[1, 3], columns.1.w) })
            Test(action: { m[2, 0] = columns.2.x }, assertion: { XCTAssertEqual(m[2, 0], columns.2.x) })
            Test(action: { m[2, 1] = columns.2.y }, assertion: { XCTAssertEqual(m[2, 1], columns.2.y) })
            Test(action: { m[2, 2] = columns.2.z }, assertion: { XCTAssertEqual(m[2, 2], columns.2.z) })
            Test(action: { m[2, 3] = columns.2.w }, assertion: { XCTAssertEqual(m[2, 3], columns.2.w) })
        }
        With(D4x4(0.0), Cols4x4d) { m, columns in
            Test(action: { m[0] = columns.0 }, assertion: { XCTAssertEqual(m[0], columns.0) })
            Test(action: { m[1] = columns.1 }, assertion: { XCTAssertEqual(m[1], columns.1) })
            Test(action: { m[2] = columns.2 }, assertion: { XCTAssertEqual(m[2], columns.2) })
            Test(action: { m[3] = columns.3 }, assertion: { XCTAssertEqual(m[3], columns.3) })
        }
        With(D4x4(0.0), Cols4x4d) { m, columns in
            Test(action: { m[0, 0] = columns.0.x }, assertion: { XCTAssertEqual(m[0, 0], columns.0.x) })
            Test(action: { m[0, 1] = columns.0.y }, assertion: { XCTAssertEqual(m[0, 1], columns.0.y) })
            Test(action: { m[0, 2] = columns.0.z }, assertion: { XCTAssertEqual(m[0, 2], columns.0.z) })
            Test(action: { m[0, 3] = columns.0.w }, assertion: { XCTAssertEqual(m[0, 3], columns.0.w) })
            Test(action: { m[1, 0] = columns.1.x }, assertion: { XCTAssertEqual(m[1, 0], columns.1.x) })
            Test(action: { m[1, 1] = columns.1.y }, assertion: { XCTAssertEqual(m[1, 1], columns.1.y) })
            Test(action: { m[1, 2] = columns.1.z }, assertion: { XCTAssertEqual(m[1, 2], columns.1.z) })
            Test(action: { m[1, 3] = columns.1.w }, assertion: { XCTAssertEqual(m[1, 3], columns.1.w) })
            Test(action: { m[2, 0] = columns.2.x }, assertion: { XCTAssertEqual(m[2, 0], columns.2.x) })
            Test(action: { m[2, 1] = columns.2.y }, assertion: { XCTAssertEqual(m[2, 1], columns.2.y) })
            Test(action: { m[2, 2] = columns.2.z }, assertion: { XCTAssertEqual(m[2, 2], columns.2.z) })
            Test(action: { m[2, 3] = columns.2.w }, assertion: { XCTAssertEqual(m[2, 3], columns.2.w) })
            Test(action: { m[3, 0] = columns.3.x }, assertion: { XCTAssertEqual(m[3, 0], columns.3.x) })
            Test(action: { m[3, 1] = columns.3.y }, assertion: { XCTAssertEqual(m[3, 1], columns.3.y) })
            Test(action: { m[3, 2] = columns.3.z }, assertion: { XCTAssertEqual(m[3, 2], columns.3.z) })
            Test(action: { m[3, 3] = columns.3.w }, assertion: { XCTAssertEqual(m[3, 3], columns.3.w) })
        }
    }



    // MARK: testTranspose()

    func testTranspose() {
        assertEqual(F2x2(columns: Cols2x2f).transpose, simd.float2x2(columns: Cols2x2f).transpose, IsEqual(_:_:))
        assertEqual(F2x3(columns: Cols2x3f).transpose, simd.float2x3(columns: Cols2x3f).transpose, IsEqual(_:_:))
        assertEqual(F2x4(columns: Cols2x4f).transpose, simd.float2x4(columns: Cols2x4f).transpose, IsEqual(_:_:))

        assertEqual(F3x2(columns: Cols3x2f).transpose, simd.float3x2(columns: Cols3x2f).transpose, IsEqual(_:_:))
        assertEqual(F3x3(columns: Cols3x3f).transpose, simd.float3x3(columns: Cols3x3f).transpose, IsEqual(_:_:))
        assertEqual(F3x4(columns: Cols3x4f).transpose, simd.float3x4(columns: Cols3x4f).transpose, IsEqual(_:_:))

        assertEqual(F4x2(columns: Cols4x2f).transpose, simd.float4x2(columns: Cols4x2f).transpose, IsEqual(_:_:))
        assertEqual(F4x3(columns: Cols4x3f).transpose, simd.float4x3(columns: Cols4x3f).transpose, IsEqual(_:_:))
        assertEqual(F4x4(columns: Cols4x4f).transpose, simd.float4x4(columns: Cols4x4f).transpose, IsEqual(_:_:))

        assertEqual(D2x2(columns: Cols2x2d).transpose, simd.double2x2(columns: Cols2x2d).transpose, IsEqual(_:_:))
        assertEqual(D2x3(columns: Cols2x3d).transpose, simd.double2x3(columns: Cols2x3d).transpose, IsEqual(_:_:))
        assertEqual(D2x4(columns: Cols2x4d).transpose, simd.double2x4(columns: Cols2x4d).transpose, IsEqual(_:_:))

        assertEqual(D3x2(columns: Cols3x2d).transpose, simd.double3x2(columns: Cols3x2d).transpose, IsEqual(_:_:))
        assertEqual(D3x3(columns: Cols3x3d).transpose, simd.double3x3(columns: Cols3x3d).transpose, IsEqual(_:_:))
        assertEqual(D3x4(columns: Cols3x4d).transpose, simd.double3x4(columns: Cols3x4d).transpose, IsEqual(_:_:))

        assertEqual(D4x2(columns: Cols4x2d).transpose, simd.double4x2(columns: Cols4x2d).transpose, IsEqual(_:_:))
        assertEqual(D4x3(columns: Cols4x3d).transpose, simd.double4x3(columns: Cols4x3d).transpose, IsEqual(_:_:))
        assertEqual(D4x4(columns: Cols4x4d).transpose, simd.double4x4(columns: Cols4x4d).transpose, IsEqual(_:_:))
    }



    // MARK: testInverse()

    func testInverse() {
        let Cols2x2f = (SIMD2<Float>(2, 1), SIMD2<Float>(1, 3))
        let Cols3x3f = (SIMD3<Float>(2, 1, 1), SIMD3<Float>(1, 3, 1), SIMD3<Float>(1, 1, 4))
        let Cols4x4f = (SIMD4<Float>(2, 1, 1, 1), SIMD4<Float>(1, 3, 1, 1), SIMD4<Float>(1, 1, 4, 1), SIMD4<Float>(1, 1, 1, 5))

        assertEqual(F2x2(columns: Cols2x2f).inverse, simd.float2x2(columns: Cols2x2f).inverse, IsEqual(_:_:))
        assertEqual(F3x3(columns: Cols3x3f).inverse, simd.float3x3(columns: Cols3x3f).inverse, IsEqual(_:_:))
        assertEqual(F4x4(columns: Cols4x4f).inverse, simd.float4x4(columns: Cols4x4f).inverse, IsEqual(_:_:))

        let Cols2x2d = (SIMD2<Double>(2, 1), SIMD2<Double>(1, 3))
        let Cols3x3d = (SIMD3<Double>(2, 1, 1), SIMD3<Double>(1, 3, 1), SIMD3<Double>(1, 1, 4))
        let Cols4x4d = (SIMD4<Double>(2, 1, 1, 1), SIMD4<Double>(1, 3, 1, 1), SIMD4<Double>(1, 1, 4, 1), SIMD4<Double>(1, 1, 1, 5))

        assertEqual(D2x2(columns: Cols2x2d).inverse, simd.double2x2(columns: Cols2x2d).inverse, IsEqual(_:_:))
        assertEqual(D3x3(columns: Cols3x3d).inverse, simd.double3x3(columns: Cols3x3d).inverse, IsEqual(_:_:))
        assertEqual(D4x4(columns: Cols4x4d).inverse, simd.double4x4(columns: Cols4x4d).inverse, IsEqual(_:_:))
    }



    // MARK: testDeterminant()

    func testDeterminant() {
        (0 ..< 100).forEach { _ in
            let cols2x2f = RandomNxF2(2)
            let cols3x3f = RandomNxF3(3)
            let cols4x4f = RandomNxF4(4)

            XCTAssertEqual(F2x2(cols2x2f).determinant, simd.float2x2(cols2x2f).determinant, accuracy: 64.0 * Float.ulpOfOne)
            XCTAssertEqual(F3x3(cols3x3f).determinant, simd.float3x3(cols3x3f).determinant, accuracy: 64.0 * Float.ulpOfOne)
            XCTAssertEqual(F4x4(cols4x4f).determinant, simd.float4x4(cols4x4f).determinant, accuracy: 64.0 * Float.ulpOfOne)

            let cols2x2d = RandomNxD2(2)
            let cols3x3d = RandomNxD3(3)
            let cols4x4d = RandomNxD4(4)

            XCTAssertEqual(D2x2(cols2x2d).determinant, simd.double2x2(cols2x2d).determinant, accuracy: 64.0 * Double.ulpOfOne)
            XCTAssertEqual(D3x3(cols3x3d).determinant, simd.double3x3(cols3x3d).determinant, accuracy: 64.0 * Double.ulpOfOne)
            XCTAssertEqual(D4x4(cols4x4d).determinant, simd.double4x4(cols4x4d).determinant, accuracy: 64.0 * Double.ulpOfOne)
        }
    }



    // MARK: testOperators_*()

    func testOperators_f2x2() {
        let lhs = (m2x2: makeInputs(RandomNxF2(2), F2x2.init(_:), simd.float2x2.init(_:)),
                   m3x2: makeInputs(RandomNxF2(3), F3x2.init(_:), simd.float3x2.init(_:)),
                   m4x2: makeInputs(RandomNxF2(4), F4x2.init(_:), simd.float4x2.init(_:)),
                   v2: SIMD2<Float>.random(in: -1.0 ... 1.0))

        let rhs = (m2x2: makeInputs(RandomNxF2(2), F2x2.init(_:), simd.float2x2.init(_:)),
                   m3x2: makeInputs(RandomNxF2(3), F3x2.init(_:), simd.float3x2.init(_:)),
                   m4x2: makeInputs(RandomNxF2(4), F4x2.init(_:), simd.float4x2.init(_:)),
                   v2: SIMD2<Float>.random(in: -1.0 ... 1.0))

        assertEqual(-rhs.m2x2.0, -rhs.m2x2.1, IsEqual(_:_:))
        assertEqual((lhs.m2x2.0 + rhs.m2x2.0) as F2x2, (lhs.m2x2.1 + rhs.m2x2.1) as simd.float2x2, IsEqual(_:_:))
        assertEqual((lhs.m2x2.0 - rhs.m2x2.0) as F2x2, (lhs.m2x2.1 - rhs.m2x2.1) as simd.float2x2, IsEqual(_:_:))

        XCTAssertTrue(IsEqual((lhs.v2 * rhs.m2x2.0) as F2, (lhs.v2 * rhs.m2x2.1) as F2))
        XCTAssertTrue(IsEqual((lhs.m2x2.0 * rhs.v2) as F2, (lhs.m2x2.1 * rhs.v2) as F2))

        assertEqual((lhs.m2x2.0 * rhs.m2x2.0) as F2x2, (lhs.m2x2.1 * rhs.m2x2.1) as simd.float2x2, IsEqual(_:_:))
        assertEqual((lhs.m2x2.0 * rhs.m3x2.0) as F3x2, (lhs.m2x2.1 * rhs.m3x2.1) as simd.float3x2, IsEqual(_:_:))
        assertEqual((lhs.m2x2.0 * rhs.m4x2.0) as F4x2, (lhs.m2x2.1 * rhs.m4x2.1) as simd.float4x2, IsEqual(_:_:))

        var result = lhs.m2x2.0, expected = lhs.m2x2.1

        result += rhs.m2x2.0
        expected += rhs.m2x2.1
        assertEqual(result, expected, IsEqual(_:_:))

        result -= rhs.m2x2.0
        expected -= rhs.m2x2.1
        assertEqual(result, expected, IsEqual(_:_:))

        result *= rhs.m2x2.0
        expected *= rhs.m2x2.1
        assertEqual(result, expected, IsEqual(_:_:))
    }

    func testOperators_f3x2() {
        let lhs = (m2x3: makeInputs(RandomNxF3(2), F2x3.init(_:), simd.float2x3.init(_:)),
                   m3x2: makeInputs(RandomNxF2(3), F3x2.init(_:), simd.float3x2.init(_:)),
                   m3x3: makeInputs(RandomNxF3(3), F3x3.init(_:), simd.float3x3.init(_:)),
                   m4x3: makeInputs(RandomNxF3(4), F4x3.init(_:), simd.float4x3.init(_:)),
                   v2: SIMD2<Float>.random(in: -1.0 ... 1.0),
                   v3: SIMD3<Float>.random(in: -1.0 ... 1.0))

        let rhs = (m2x3: makeInputs(RandomNxF3(2), F2x3.init(_:), simd.float2x3.init(_:)),
                   m3x2: makeInputs(RandomNxF2(3), F3x2.init(_:), simd.float3x2.init(_:)),
                   m3x3: makeInputs(RandomNxF3(3), F3x3.init(_:), simd.float3x3.init(_:)),
                   m4x3: makeInputs(RandomNxF3(4), F4x3.init(_:), simd.float4x3.init(_:)),
                   v2: SIMD2<Float>.random(in: -1.0 ... 1.0),
                   v3: SIMD3<Float>.random(in: -1.0 ... 1.0))

        assertEqual(-rhs.m3x2.0, -rhs.m3x2.1, IsEqual(_:_:))
        assertEqual((lhs.m3x2.0 + rhs.m3x2.0) as F3x2, (lhs.m3x2.1 + rhs.m3x2.1) as simd.float3x2, IsEqual(_:_:))
        assertEqual((lhs.m3x2.0 - rhs.m3x2.0) as F3x2, (lhs.m3x2.1 - rhs.m3x2.1) as simd.float3x2, IsEqual(_:_:))

        XCTAssertTrue(IsEqual((lhs.v2 * rhs.m3x2.0) as F3, (lhs.v2 * rhs.m3x2.1) as F3))
        XCTAssertTrue(IsEqual((lhs.m3x2.0 * rhs.v3) as F2, (lhs.m3x2.1 * rhs.v3) as F2))

        assertEqual((lhs.m3x2.0 * rhs.m2x3.0) as F2x2, (lhs.m3x2.1 * rhs.m2x3.1) as simd.float2x2, IsEqual(_:_:))
        assertEqual((lhs.m3x2.0 * rhs.m3x3.0) as F3x2, (lhs.m3x2.1 * rhs.m3x3.1) as simd.float3x2, IsEqual(_:_:))
        assertEqual((lhs.m3x2.0 * rhs.m4x3.0) as F4x2, (lhs.m3x2.1 * rhs.m4x3.1) as simd.float4x2, IsEqual(_:_:))

        var result = lhs.m3x2.0, expected = lhs.m3x2.1

        result += rhs.m3x2.0
        expected += rhs.m3x2.1
        assertEqual(result, expected, IsEqual(_:_:))

        result -= rhs.m3x2.0
        expected -= rhs.m3x2.1
        assertEqual(result, expected, IsEqual(_:_:))

        result *= rhs.m3x3.0
        expected *= rhs.m3x3.1
        assertEqual(result, expected, IsEqual(_:_:))
    }

    func testOperators_f4x2() {
        let lhs = (m2x4: makeInputs(RandomNxF4(2), F2x4.init(_:), simd.float2x4.init(_:)),
                   m3x4: makeInputs(RandomNxF4(3), F3x4.init(_:), simd.float3x4.init(_:)),
                   m4x2: makeInputs(RandomNxF2(4), F4x2.init(_:), simd.float4x2.init(_:)),
                   m4x4: makeInputs(RandomNxF4(4), F4x4.init(_:), simd.float4x4.init(_:)),
                   v2: SIMD2<Float>.random(in: -1.0 ... 1.0),
                   v4: SIMD4<Float>.random(in: -1.0 ... 1.0))

        let rhs = (m2x4: makeInputs(RandomNxF4(2), F2x4.init(_:), simd.float2x4.init(_:)),
                   m3x4: makeInputs(RandomNxF4(3), F3x4.init(_:), simd.float3x4.init(_:)),
                   m4x2: makeInputs(RandomNxF2(4), F4x2.init(_:), simd.float4x2.init(_:)),
                   m4x4: makeInputs(RandomNxF4(4), F4x4.init(_:), simd.float4x4.init(_:)),
                   v2: SIMD2<Float>.random(in: -1.0 ... 1.0),
                   v4: SIMD4<Float>.random(in: -1.0 ... 1.0))

        assertEqual(-rhs.m4x2.0, -rhs.m4x2.1, IsEqual(_:_:))
        assertEqual((lhs.m4x2.0 + rhs.m4x2.0) as F4x2, (lhs.m4x2.1 + rhs.m4x2.1) as simd.float4x2, IsEqual(_:_:))
        assertEqual((lhs.m4x2.0 - rhs.m4x2.0) as F4x2, (lhs.m4x2.1 - rhs.m4x2.1) as simd.float4x2, IsEqual(_:_:))

        XCTAssertTrue(IsEqual((lhs.v2 * rhs.m4x2.0) as F4, (lhs.v2 * rhs.m4x2.1) as F4))
        XCTAssertTrue(IsEqual((lhs.m4x2.0 * rhs.v4) as F2, (lhs.m4x2.1 * rhs.v4) as F2))

        assertEqual((lhs.m4x2.0 * rhs.m2x4.0) as F2x2, (lhs.m4x2.1 * rhs.m2x4.1) as simd.float2x2, IsEqual(_:_:))
        assertEqual((lhs.m4x2.0 * rhs.m3x4.0) as F3x2, (lhs.m4x2.1 * rhs.m3x4.1) as simd.float3x2, IsEqual(_:_:))
        assertEqual((lhs.m4x2.0 * rhs.m4x4.0) as F4x2, (lhs.m4x2.1 * rhs.m4x4.1) as simd.float4x2, IsEqual(_:_:))

        var result = lhs.m4x2.0, expected = lhs.m4x2.1

        result += rhs.m4x2.0
        expected += rhs.m4x2.1
        assertEqual(result, expected, IsEqual(_:_:))

        result -= rhs.m4x2.0
        expected -= rhs.m4x2.1
        assertEqual(result, expected, IsEqual(_:_:))

        result *= rhs.m4x4.0
        expected *= rhs.m4x4.1
        assertEqual(result, expected, IsEqual(_:_:))
    }

    func testOperators_f2x3() {
        let lhs = (m2x2: makeInputs(RandomNxF2(2), F2x2.init(_:), simd.float2x2.init(_:)),
                   m2x3: makeInputs(RandomNxF3(2), F2x3.init(_:), simd.float2x3.init(_:)),
                   m3x2: makeInputs(RandomNxF2(3), F3x2.init(_:), simd.float3x2.init(_:)),
                   m4x2: makeInputs(RandomNxF2(4), F4x2.init(_:), simd.float4x2.init(_:)),
                   v2: SIMD2<Float>.random(in: -1.0 ... 1.0),
                   v3: SIMD3<Float>.random(in: -1.0 ... 1.0))

        let rhs = (m2x2: makeInputs(RandomNxF2(2), F2x2.init(_:), simd.float2x2.init(_:)),
                   m2x3: makeInputs(RandomNxF3(2), F2x3.init(_:), simd.float2x3.init(_:)),
                   m3x2: makeInputs(RandomNxF2(3), F3x2.init(_:), simd.float3x2.init(_:)),
                   m4x2: makeInputs(RandomNxF2(4), F4x2.init(_:), simd.float4x2.init(_:)),
                   v2: SIMD2<Float>.random(in: -1.0 ... 1.0),
                   v3: SIMD3<Float>.random(in: -1.0 ... 1.0))

        assertEqual(-rhs.m2x3.0, -rhs.m2x3.1, IsEqual(_:_:))
        assertEqual((lhs.m2x3.0 + rhs.m2x3.0) as F2x3, (lhs.m2x3.1 + rhs.m2x3.1) as simd.float2x3, IsEqual(_:_:))
        assertEqual((lhs.m2x3.0 - rhs.m2x3.0) as F2x3, (lhs.m2x3.1 - rhs.m2x3.1) as simd.float2x3, IsEqual(_:_:))

        XCTAssertTrue(IsEqual((lhs.v3 * rhs.m2x3.0) as F2, (lhs.v3 * rhs.m2x3.1) as F2))
        XCTAssertTrue(IsEqual((lhs.m2x3.0 * rhs.v2) as F3, (lhs.m2x3.1 * rhs.v2) as F3))

        assertEqual((lhs.m2x3.0 * rhs.m2x2.0) as F2x3, (lhs.m2x3.1 * rhs.m2x2.1) as simd.float2x3, IsEqual(_:_:))
        assertEqual((lhs.m2x3.0 * rhs.m3x2.0) as F3x3, (lhs.m2x3.1 * rhs.m3x2.1) as simd.float3x3, IsEqual(_:_:))
        assertEqual((lhs.m2x3.0 * rhs.m4x2.0) as F4x3, (lhs.m2x3.1 * rhs.m4x2.1) as simd.float4x3, IsEqual(_:_:))

        var result = lhs.m2x3.0, expected = lhs.m2x3.1

        result += rhs.m2x3.0
        expected += rhs.m2x3.1
        assertEqual(result, expected, IsEqual(_:_:))

        result -= rhs.m2x3.0
        expected -= rhs.m2x3.1
        assertEqual(result, expected, IsEqual(_:_:))

        result *= rhs.m2x2.0
        expected *= rhs.m2x2.1
        assertEqual(result, expected, IsEqual(_:_:))
    }

    func testOperators_f3x3() {
        let lhs = (m2x3: makeInputs(RandomNxF3(2), F2x3.init(_:), simd.float2x3.init(_:)),
                   m3x3: makeInputs(RandomNxF3(3), F3x3.init(_:), simd.float3x3.init(_:)),
                   m4x3: makeInputs(RandomNxF3(4), F4x3.init(_:), simd.float4x3.init(_:)),
                   v3: SIMD3<Float>.random(in: -1.0 ... 1.0))

        let rhs = (m2x3: makeInputs(RandomNxF3(2), F2x3.init(_:), simd.float2x3.init(_:)),
                   m3x3: makeInputs(RandomNxF3(3), F3x3.init(_:), simd.float3x3.init(_:)),
                   m4x3: makeInputs(RandomNxF3(4), F4x3.init(_:), simd.float4x3.init(_:)),
                   v3: SIMD3<Float>.random(in: -1.0 ... 1.0))

        assertEqual(-rhs.m3x3.0, -rhs.m3x3.1, IsEqual(_:_:))
        assertEqual((lhs.m3x3.0 + rhs.m3x3.0) as F3x3, (lhs.m3x3.1 + rhs.m3x3.1) as simd.float3x3, IsEqual(_:_:))
        assertEqual((lhs.m3x3.0 - rhs.m3x3.0) as F3x3, (lhs.m3x3.1 - rhs.m3x3.1) as simd.float3x3, IsEqual(_:_:))

        XCTAssertTrue(IsEqual((lhs.v3 * rhs.m3x3.0) as F3, (lhs.v3 * rhs.m3x3.1) as F3))
        XCTAssertTrue(IsEqual((lhs.m3x3.0 * rhs.v3) as F3, (lhs.m3x3.1 * rhs.v3) as F3))

        assertEqual((lhs.m3x3.0 * rhs.m2x3.0) as F2x3, (lhs.m3x3.1 * rhs.m2x3.1) as simd.float2x3, IsEqual(_:_:))
        assertEqual((lhs.m3x3.0 * rhs.m3x3.0) as F3x3, (lhs.m3x3.1 * rhs.m3x3.1) as simd.float3x3, IsEqual(_:_:))
        assertEqual((lhs.m3x3.0 * rhs.m4x3.0) as F4x3, (lhs.m3x3.1 * rhs.m4x3.1) as simd.float4x3, IsEqual(_:_:))

        var result = lhs.m3x3.0, expected = lhs.m3x3.1

        result += rhs.m3x3.0
        expected += rhs.m3x3.1
        assertEqual(result, expected, IsEqual(_:_:))

        result -= rhs.m3x3.0
        expected -= rhs.m3x3.1
        assertEqual(result, expected, IsEqual(_:_:))

        result *= rhs.m3x3.0
        expected *= rhs.m3x3.1
        assertEqual(result, expected, IsEqual(_:_:))
    }

    func testOperators_f4x3() {
        let lhs = (m2x4: makeInputs(RandomNxF4(2), F2x4.init(_:), simd.float2x4.init(_:)),
                   m3x4: makeInputs(RandomNxF4(3), F3x4.init(_:), simd.float3x4.init(_:)),
                   m4x3: makeInputs(RandomNxF3(4), F4x3.init(_:), simd.float4x3.init(_:)),
                   m4x4: makeInputs(RandomNxF4(4), F4x4.init(_:), simd.float4x4.init(_:)),
                   v3: SIMD3<Float>.random(in: -1.0 ... 1.0),
                   v4: SIMD4<Float>.random(in: -1.0 ... 1.0))

        let rhs = (m2x4: makeInputs(RandomNxF4(2), F2x4.init(_:), simd.float2x4.init(_:)),
                   m3x4: makeInputs(RandomNxF4(3), F3x4.init(_:), simd.float3x4.init(_:)),
                   m4x3: makeInputs(RandomNxF3(4), F4x3.init(_:), simd.float4x3.init(_:)),
                   m4x4: makeInputs(RandomNxF4(4), F4x4.init(_:), simd.float4x4.init(_:)),
                   v3: SIMD3<Float>.random(in: -1.0 ... 1.0),
                   v4: SIMD4<Float>.random(in: -1.0 ... 1.0))

        assertEqual(-rhs.m4x3.0, -rhs.m4x3.1, IsEqual(_:_:))
        assertEqual((lhs.m4x3.0 + rhs.m4x3.0) as F4x3, (lhs.m4x3.1 + rhs.m4x3.1) as simd.float4x3, IsEqual(_:_:))
        assertEqual((lhs.m4x3.0 - rhs.m4x3.0) as F4x3, (lhs.m4x3.1 - rhs.m4x3.1) as simd.float4x3, IsEqual(_:_:))

        XCTAssertTrue(IsEqual((lhs.v3 * rhs.m4x3.0) as F4, (lhs.v3 * rhs.m4x3.1) as F4))
        XCTAssertTrue(IsEqual((lhs.m4x3.0 * rhs.v4) as F3, (lhs.m4x3.1 * rhs.v4) as F3))

        assertEqual((lhs.m4x3.0 * rhs.m2x4.0) as F2x3, (lhs.m4x3.1 * rhs.m2x4.1) as simd.float2x3, IsEqual(_:_:))
        assertEqual((lhs.m4x3.0 * rhs.m3x4.0) as F3x3, (lhs.m4x3.1 * rhs.m3x4.1) as simd.float3x3, IsEqual(_:_:))
        assertEqual((lhs.m4x3.0 * rhs.m4x4.0) as F4x3, (lhs.m4x3.1 * rhs.m4x4.1) as simd.float4x3, IsEqual(_:_:))

        var result = lhs.m4x3.0, expected = lhs.m4x3.1

        result += rhs.m4x3.0
        expected += rhs.m4x3.1
        assertEqual(result, expected, IsEqual(_:_:))

        result -= rhs.m4x3.0
        expected -= rhs.m4x3.1
        assertEqual(result, expected, IsEqual(_:_:))

        result *= rhs.m4x4.0
        expected *= rhs.m4x4.1
        assertEqual(result, expected, IsEqual(_:_:))
    }

    func testOperators_f2x4() {
        let lhs = (m2x2: makeInputs(RandomNxF2(2), F2x2.init(_:), simd.float2x2.init(_:)),
                   m2x4: makeInputs(RandomNxF4(2), F2x4.init(_:), simd.float2x4.init(_:)),
                   m3x2: makeInputs(RandomNxF2(3), F3x2.init(_:), simd.float3x2.init(_:)),
                   m4x2: makeInputs(RandomNxF2(4), F4x2.init(_:), simd.float4x2.init(_:)),
                   v2: SIMD2<Float>.random(in: -1.0 ... 1.0),
                   v4: SIMD4<Float>.random(in: -1.0 ... 1.0))

        let rhs = (m2x2: makeInputs(RandomNxF2(2), F2x2.init(_:), simd.float2x2.init(_:)),
                   m2x4: makeInputs(RandomNxF4(2), F2x4.init(_:), simd.float2x4.init(_:)),
                   m3x2: makeInputs(RandomNxF2(3), F3x2.init(_:), simd.float3x2.init(_:)),
                   m4x2: makeInputs(RandomNxF2(4), F4x2.init(_:), simd.float4x2.init(_:)),
                   v2: SIMD2<Float>.random(in: -1.0 ... 1.0),
                   v4: SIMD4<Float>.random(in: -1.0 ... 1.0))

        assertEqual(-rhs.m2x4.0, -rhs.m2x4.1, IsEqual(_:_:))
        assertEqual((lhs.m2x4.0 + rhs.m2x4.0) as F2x4, (lhs.m2x4.1 + rhs.m2x4.1) as simd.float2x4, IsEqual(_:_:))
        assertEqual((lhs.m2x4.0 - rhs.m2x4.0) as F2x4, (lhs.m2x4.1 - rhs.m2x4.1) as simd.float2x4, IsEqual(_:_:))

        XCTAssertTrue(IsEqual((lhs.v4 * rhs.m2x4.0) as F2, (lhs.v4 * rhs.m2x4.1) as F2))
        XCTAssertTrue(IsEqual((lhs.m2x4.0 * rhs.v2) as F4, (lhs.m2x4.1 * rhs.v2) as F4))

        assertEqual((lhs.m2x4.0 * rhs.m2x2.0) as F2x4, (lhs.m2x4.1 * rhs.m2x2.1) as simd.float2x4, IsEqual(_:_:))
        assertEqual((lhs.m2x4.0 * rhs.m3x2.0) as F3x4, (lhs.m2x4.1 * rhs.m3x2.1) as simd.float3x4, IsEqual(_:_:))
        assertEqual((lhs.m2x4.0 * rhs.m4x2.0) as F4x4, (lhs.m2x4.1 * rhs.m4x2.1) as simd.float4x4, IsEqual(_:_:))

        var result = lhs.m2x4.0, expected = lhs.m2x4.1

        result += rhs.m2x4.0
        expected += rhs.m2x4.1
        assertEqual(result, expected, IsEqual(_:_:))

        result -= rhs.m2x4.0
        expected -= rhs.m2x4.1
        assertEqual(result, expected, IsEqual(_:_:))

        result *= rhs.m2x2.0
        expected *= rhs.m2x2.1
        assertEqual(result, expected, IsEqual(_:_:))
    }

    func testOperators_f3x4() {
        let lhs = (m2x3: makeInputs(RandomNxF3(2), F2x3.init(_:), simd.float2x3.init(_:)),
                   m3x3: makeInputs(RandomNxF3(3), F3x3.init(_:), simd.float3x3.init(_:)),
                   m3x4: makeInputs(RandomNxF4(3), F3x4.init(_:), simd.float3x4.init(_:)),
                   m4x3: makeInputs(RandomNxF3(4), F4x3.init(_:), simd.float4x3.init(_:)),
                   v3: SIMD3<Float>.random(in: -1.0 ... 1.0),
                   v4: SIMD4<Float>.random(in: -1.0 ... 1.0))

        let rhs = (m2x3: makeInputs(RandomNxF3(2), F2x3.init(_:), simd.float2x3.init(_:)),
                   m3x3: makeInputs(RandomNxF3(3), F3x3.init(_:), simd.float3x3.init(_:)),
                   m3x4: makeInputs(RandomNxF4(3), F3x4.init(_:), simd.float3x4.init(_:)),
                   m4x3: makeInputs(RandomNxF3(4), F4x3.init(_:), simd.float4x3.init(_:)),
                   v3: SIMD3<Float>.random(in: -1.0 ... 1.0),
                   v4: SIMD4<Float>.random(in: -1.0 ... 1.0))

        assertEqual(-rhs.m3x4.0, -rhs.m3x4.1, IsEqual(_:_:))
        assertEqual((lhs.m3x4.0 + rhs.m3x4.0) as F3x4, (lhs.m3x4.1 + rhs.m3x4.1) as simd.float3x4, IsEqual(_:_:))
        assertEqual((lhs.m3x4.0 - rhs.m3x4.0) as F3x4, (lhs.m3x4.1 - rhs.m3x4.1) as simd.float3x4, IsEqual(_:_:))

        XCTAssertTrue(IsEqual((lhs.v4 * rhs.m3x4.0) as F3, (lhs.v4 * rhs.m3x4.1) as F3))
        XCTAssertTrue(IsEqual((lhs.m3x4.0 * rhs.v3) as F4, (lhs.m3x4.1 * rhs.v3) as F4))

        assertEqual((lhs.m3x4.0 * rhs.m2x3.0) as F2x4, (lhs.m3x4.1 * rhs.m2x3.1) as simd.float2x4, IsEqual(_:_:))
        assertEqual((lhs.m3x4.0 * rhs.m3x3.0) as F3x4, (lhs.m3x4.1 * rhs.m3x3.1) as simd.float3x4, IsEqual(_:_:))
        assertEqual((lhs.m3x4.0 * rhs.m4x3.0) as F4x4, (lhs.m3x4.1 * rhs.m4x3.1) as simd.float4x4, IsEqual(_:_:))

        var result = lhs.m3x4.0, expected = lhs.m3x4.1

        result += rhs.m3x4.0
        expected += rhs.m3x4.1
        assertEqual(result, expected, IsEqual(_:_:))

        result -= rhs.m3x4.0
        expected -= rhs.m3x4.1
        assertEqual(result, expected, IsEqual(_:_:))

        result *= rhs.m3x3.0
        expected *= rhs.m3x3.1
        assertEqual(result, expected, IsEqual(_:_:))
    }

    func testOperators_f4x4() {
        let lhs = (m2x4: makeInputs(RandomNxF4(2), F2x4.init(_:), simd.float2x4.init(_:)),
                   m3x4: makeInputs(RandomNxF4(3), F3x4.init(_:), simd.float3x4.init(_:)),
                   m4x4: makeInputs(RandomNxF4(4), F4x4.init(_:), simd.float4x4.init(_:)),
                   v4: SIMD4<Float>.random(in: -1.0 ... 1.0))

        let rhs = (m2x4: makeInputs(RandomNxF4(2), F2x4.init(_:), simd.float2x4.init(_:)),
                   m3x4: makeInputs(RandomNxF4(3), F3x4.init(_:), simd.float3x4.init(_:)),
                   m4x4: makeInputs(RandomNxF4(4), F4x4.init(_:), simd.float4x4.init(_:)),
                   v4: SIMD4<Float>.random(in: -1.0 ... 1.0))

        assertEqual(-rhs.m4x4.0, -rhs.m4x4.1, IsEqual(_:_:))
        assertEqual((lhs.m4x4.0 + rhs.m4x4.0) as F4x4, (lhs.m4x4.1 + rhs.m4x4.1) as simd.float4x4, IsEqual(_:_:))
        assertEqual((lhs.m4x4.0 - rhs.m4x4.0) as F4x4, (lhs.m4x4.1 - rhs.m4x4.1) as simd.float4x4, IsEqual(_:_:))

        XCTAssertTrue(IsEqual((lhs.v4 * rhs.m4x4.0) as F4, (lhs.v4 * rhs.m4x4.1) as F4))
        XCTAssertTrue(IsEqual((lhs.m4x4.0 * rhs.v4) as F4, (lhs.m4x4.1 * rhs.v4) as F4))

        assertEqual((lhs.m4x4.0 * rhs.m2x4.0) as F2x4, (lhs.m4x4.1 * rhs.m2x4.1) as simd.float2x4, IsEqual(_:_:))
        assertEqual((lhs.m4x4.0 * rhs.m3x4.0) as F3x4, (lhs.m4x4.1 * rhs.m3x4.1) as simd.float3x4, IsEqual(_:_:))
        assertEqual((lhs.m4x4.0 * rhs.m4x4.0) as F4x4, (lhs.m4x4.1 * rhs.m4x4.1) as simd.float4x4, IsEqual(_:_:))

        var result = lhs.m4x4.0, expected = lhs.m4x4.1

        result += rhs.m4x4.0
        expected += rhs.m4x4.1
        assertEqual(result, expected, IsEqual(_:_:))

        result -= rhs.m4x4.0
        expected -= rhs.m4x4.1
        assertEqual(result, expected, IsEqual(_:_:))

        result *= rhs.m4x4.0
        expected *= rhs.m4x4.1
        assertEqual(result, expected, IsEqual(_:_:))
    }

    func testOperators_d2x2() {
        let lhs = (m2x2: makeInputs(RandomNxD2(2), D2x2.init(_:), simd.double2x2.init(_:)),
                   m3x2: makeInputs(RandomNxD2(3), D3x2.init(_:), simd.double3x2.init(_:)),
                   m4x2: makeInputs(RandomNxD2(4), D4x2.init(_:), simd.double4x2.init(_:)),
                   v2: SIMD2<Double>.random(in: -1.0 ... 1.0))

        let rhs = (m2x2: makeInputs(RandomNxD2(2), D2x2.init(_:), simd.double2x2.init(_:)),
                   m3x2: makeInputs(RandomNxD2(3), D3x2.init(_:), simd.double3x2.init(_:)),
                   m4x2: makeInputs(RandomNxD2(4), D4x2.init(_:), simd.double4x2.init(_:)),
                   v2: SIMD2<Double>.random(in: -1.0 ... 1.0))

        assertEqual(-rhs.m2x2.0, -rhs.m2x2.1, IsEqual(_:_:))
        assertEqual((lhs.m2x2.0 + rhs.m2x2.0) as D2x2, (lhs.m2x2.1 + rhs.m2x2.1) as simd.double2x2, IsEqual(_:_:))
        assertEqual((lhs.m2x2.0 - rhs.m2x2.0) as D2x2, (lhs.m2x2.1 - rhs.m2x2.1) as simd.double2x2, IsEqual(_:_:))

        XCTAssertTrue(IsEqual((lhs.v2 * rhs.m2x2.0) as D2, (lhs.v2 * rhs.m2x2.1) as D2))
        XCTAssertTrue(IsEqual((lhs.m2x2.0 * rhs.v2) as D2, (lhs.m2x2.1 * rhs.v2) as D2))

        assertEqual((lhs.m2x2.0 * rhs.m2x2.0) as D2x2, (lhs.m2x2.1 * rhs.m2x2.1) as simd.double2x2, IsEqual(_:_:))
        assertEqual((lhs.m2x2.0 * rhs.m3x2.0) as D3x2, (lhs.m2x2.1 * rhs.m3x2.1) as simd.double3x2, IsEqual(_:_:))
        assertEqual((lhs.m2x2.0 * rhs.m4x2.0) as D4x2, (lhs.m2x2.1 * rhs.m4x2.1) as simd.double4x2, IsEqual(_:_:))

        var result = lhs.m2x2.0, expected = lhs.m2x2.1

        result += rhs.m2x2.0
        expected += rhs.m2x2.1
        assertEqual(result, expected, IsEqual(_:_:))

        result -= rhs.m2x2.0
        expected -= rhs.m2x2.1
        assertEqual(result, expected, IsEqual(_:_:))

        result *= rhs.m2x2.0
        expected *= rhs.m2x2.1
        assertEqual(result, expected, IsEqual(_:_:))
    }

    func testOperators_d3x2() {
        let lhs = (m2x3: makeInputs(RandomNxD3(2), D2x3.init(_:), simd.double2x3.init(_:)),
                   m3x2: makeInputs(RandomNxD2(3), D3x2.init(_:), simd.double3x2.init(_:)),
                   m3x3: makeInputs(RandomNxD3(3), D3x3.init(_:), simd.double3x3.init(_:)),
                   m4x3: makeInputs(RandomNxD3(4), D4x3.init(_:), simd.double4x3.init(_:)),
                   v2: SIMD2<Double>.random(in: -1.0 ... 1.0),
                   v3: SIMD3<Double>.random(in: -1.0 ... 1.0))

        let rhs = (m2x3: makeInputs(RandomNxD3(2), D2x3.init(_:), simd.double2x3.init(_:)),
                   m3x2: makeInputs(RandomNxD2(3), D3x2.init(_:), simd.double3x2.init(_:)),
                   m3x3: makeInputs(RandomNxD3(3), D3x3.init(_:), simd.double3x3.init(_:)),
                   m4x3: makeInputs(RandomNxD3(4), D4x3.init(_:), simd.double4x3.init(_:)),
                   v2: SIMD2<Double>.random(in: -1.0 ... 1.0),
                   v3: SIMD3<Double>.random(in: -1.0 ... 1.0))

        assertEqual(-rhs.m3x2.0, -rhs.m3x2.1, IsEqual(_:_:))
        assertEqual((lhs.m3x2.0 + rhs.m3x2.0) as D3x2, (lhs.m3x2.1 + rhs.m3x2.1) as simd.double3x2, IsEqual(_:_:))
        assertEqual((lhs.m3x2.0 - rhs.m3x2.0) as D3x2, (lhs.m3x2.1 - rhs.m3x2.1) as simd.double3x2, IsEqual(_:_:))

        XCTAssertTrue(IsEqual((lhs.v2 * rhs.m3x2.0) as D3, (lhs.v2 * rhs.m3x2.1) as D3))
        XCTAssertTrue(IsEqual((lhs.m3x2.0 * rhs.v3) as D2, (lhs.m3x2.1 * rhs.v3) as D2))

        assertEqual((lhs.m3x2.0 * rhs.m2x3.0) as D2x2, (lhs.m3x2.1 * rhs.m2x3.1) as simd.double2x2, IsEqual(_:_:))
        assertEqual((lhs.m3x2.0 * rhs.m3x3.0) as D3x2, (lhs.m3x2.1 * rhs.m3x3.1) as simd.double3x2, IsEqual(_:_:))
        assertEqual((lhs.m3x2.0 * rhs.m4x3.0) as D4x2, (lhs.m3x2.1 * rhs.m4x3.1) as simd.double4x2, IsEqual(_:_:))

        var result = lhs.m3x2.0, expected = lhs.m3x2.1

        result += rhs.m3x2.0
        expected += rhs.m3x2.1
        assertEqual(result, expected, IsEqual(_:_:))

        result -= rhs.m3x2.0
        expected -= rhs.m3x2.1
        assertEqual(result, expected, IsEqual(_:_:))

        result *= rhs.m3x3.0
        expected *= rhs.m3x3.1
        assertEqual(result, expected, IsEqual(_:_:))
    }

    func testOperators_d4x2() {
        let lhs = (m2x4: makeInputs(RandomNxD4(2), D2x4.init(_:), simd.double2x4.init(_:)),
                   m3x4: makeInputs(RandomNxD4(3), D3x4.init(_:), simd.double3x4.init(_:)),
                   m4x2: makeInputs(RandomNxD2(4), D4x2.init(_:), simd.double4x2.init(_:)),
                   m4x4: makeInputs(RandomNxD4(4), D4x4.init(_:), simd.double4x4.init(_:)),
                   v2: SIMD2<Double>.random(in: -1.0 ... 1.0),
                   v4: SIMD4<Double>.random(in: -1.0 ... 1.0))

        let rhs = (m2x4: makeInputs(RandomNxD4(2), D2x4.init(_:), simd.double2x4.init(_:)),
                   m3x4: makeInputs(RandomNxD4(3), D3x4.init(_:), simd.double3x4.init(_:)),
                   m4x2: makeInputs(RandomNxD2(4), D4x2.init(_:), simd.double4x2.init(_:)),
                   m4x4: makeInputs(RandomNxD4(4), D4x4.init(_:), simd.double4x4.init(_:)),
                   v2: SIMD2<Double>.random(in: -1.0 ... 1.0),
                   v4: SIMD4<Double>.random(in: -1.0 ... 1.0))

        assertEqual(-rhs.m4x2.0, -rhs.m4x2.1, IsEqual(_:_:))
        assertEqual((lhs.m4x2.0 + rhs.m4x2.0) as D4x2, (lhs.m4x2.1 + rhs.m4x2.1) as simd.double4x2, IsEqual(_:_:))
        assertEqual((lhs.m4x2.0 - rhs.m4x2.0) as D4x2, (lhs.m4x2.1 - rhs.m4x2.1) as simd.double4x2, IsEqual(_:_:))

        XCTAssertTrue(IsEqual((lhs.v2 * rhs.m4x2.0) as D4, (lhs.v2 * rhs.m4x2.1) as D4))
        XCTAssertTrue(IsEqual((lhs.m4x2.0 * rhs.v4) as D2, (lhs.m4x2.1 * rhs.v4) as D2))

        assertEqual((lhs.m4x2.0 * rhs.m2x4.0) as D2x2, (lhs.m4x2.1 * rhs.m2x4.1) as simd.double2x2, IsEqual(_:_:))
        assertEqual((lhs.m4x2.0 * rhs.m3x4.0) as D3x2, (lhs.m4x2.1 * rhs.m3x4.1) as simd.double3x2, IsEqual(_:_:))
        assertEqual((lhs.m4x2.0 * rhs.m4x4.0) as D4x2, (lhs.m4x2.1 * rhs.m4x4.1) as simd.double4x2, IsEqual(_:_:))

        var result = lhs.m4x2.0, expected = lhs.m4x2.1

        result += rhs.m4x2.0
        expected += rhs.m4x2.1
        assertEqual(result, expected, IsEqual(_:_:))

        result -= rhs.m4x2.0
        expected -= rhs.m4x2.1
        assertEqual(result, expected, IsEqual(_:_:))

        result *= rhs.m4x4.0
        expected *= rhs.m4x4.1
        assertEqual(result, expected, IsEqual(_:_:))
    }

    func testOperators_d2x3() {
        let lhs = (m2x2: makeInputs(RandomNxD2(2), D2x2.init(_:), simd.double2x2.init(_:)),
                   m2x3: makeInputs(RandomNxD3(2), D2x3.init(_:), simd.double2x3.init(_:)),
                   m3x2: makeInputs(RandomNxD2(3), D3x2.init(_:), simd.double3x2.init(_:)),
                   m4x2: makeInputs(RandomNxD2(4), D4x2.init(_:), simd.double4x2.init(_:)),
                   v2: SIMD2<Double>.random(in: -1.0 ... 1.0),
                   v3: SIMD3<Double>.random(in: -1.0 ... 1.0))

        let rhs = (m2x2: makeInputs(RandomNxD2(2), D2x2.init(_:), simd.double2x2.init(_:)),
                   m2x3: makeInputs(RandomNxD3(2), D2x3.init(_:), simd.double2x3.init(_:)),
                   m3x2: makeInputs(RandomNxD2(3), D3x2.init(_:), simd.double3x2.init(_:)),
                   m4x2: makeInputs(RandomNxD2(4), D4x2.init(_:), simd.double4x2.init(_:)),
                   v2: SIMD2<Double>.random(in: -1.0 ... 1.0),
                   v3: SIMD3<Double>.random(in: -1.0 ... 1.0))

        assertEqual(-rhs.m2x3.0, -rhs.m2x3.1, IsEqual(_:_:))
        assertEqual((lhs.m2x3.0 + rhs.m2x3.0) as D2x3, (lhs.m2x3.1 + rhs.m2x3.1) as simd.double2x3, IsEqual(_:_:))
        assertEqual((lhs.m2x3.0 - rhs.m2x3.0) as D2x3, (lhs.m2x3.1 - rhs.m2x3.1) as simd.double2x3, IsEqual(_:_:))

        XCTAssertTrue(IsEqual((lhs.v3 * rhs.m2x3.0) as D2, (lhs.v3 * rhs.m2x3.1) as D2))
        XCTAssertTrue(IsEqual((lhs.m2x3.0 * rhs.v2) as D3, (lhs.m2x3.1 * rhs.v2) as D3))

        assertEqual((lhs.m2x3.0 * rhs.m2x2.0) as D2x3, (lhs.m2x3.1 * rhs.m2x2.1) as simd.double2x3, IsEqual(_:_:))
        assertEqual((lhs.m2x3.0 * rhs.m3x2.0) as D3x3, (lhs.m2x3.1 * rhs.m3x2.1) as simd.double3x3, IsEqual(_:_:))
        assertEqual((lhs.m2x3.0 * rhs.m4x2.0) as D4x3, (lhs.m2x3.1 * rhs.m4x2.1) as simd.double4x3, IsEqual(_:_:))

        var result = lhs.m2x3.0, expected = lhs.m2x3.1

        result += rhs.m2x3.0
        expected += rhs.m2x3.1
        assertEqual(result, expected, IsEqual(_:_:))

        result -= rhs.m2x3.0
        expected -= rhs.m2x3.1
        assertEqual(result, expected, IsEqual(_:_:))

        result *= rhs.m2x2.0
        expected *= rhs.m2x2.1
        assertEqual(result, expected, IsEqual(_:_:))
    }

    func testOperators_d3x3() {
        let lhs = (m2x3: makeInputs(RandomNxD3(2), D2x3.init(_:), simd.double2x3.init(_:)),
                   m3x3: makeInputs(RandomNxD3(3), D3x3.init(_:), simd.double3x3.init(_:)),
                   m4x3: makeInputs(RandomNxD3(4), D4x3.init(_:), simd.double4x3.init(_:)),
                   v3: SIMD3<Double>.random(in: -1.0 ... 1.0))

        let rhs = (m2x3: makeInputs(RandomNxD3(2), D2x3.init(_:), simd.double2x3.init(_:)),
                   m3x3: makeInputs(RandomNxD3(3), D3x3.init(_:), simd.double3x3.init(_:)),
                   m4x3: makeInputs(RandomNxD3(4), D4x3.init(_:), simd.double4x3.init(_:)),
                   v3: SIMD3<Double>.random(in: -1.0 ... 1.0))

        assertEqual(-rhs.m3x3.0, -rhs.m3x3.1, IsEqual(_:_:))
        assertEqual((lhs.m3x3.0 + rhs.m3x3.0) as D3x3, (lhs.m3x3.1 + rhs.m3x3.1) as simd.double3x3, IsEqual(_:_:))
        assertEqual((lhs.m3x3.0 - rhs.m3x3.0) as D3x3, (lhs.m3x3.1 - rhs.m3x3.1) as simd.double3x3, IsEqual(_:_:))

        XCTAssertTrue(IsEqual((lhs.v3 * rhs.m3x3.0) as D3, (lhs.v3 * rhs.m3x3.1) as D3))
        XCTAssertTrue(IsEqual((lhs.m3x3.0 * rhs.v3) as D3, (lhs.m3x3.1 * rhs.v3) as D3))

        assertEqual((lhs.m3x3.0 * rhs.m2x3.0) as D2x3, (lhs.m3x3.1 * rhs.m2x3.1) as simd.double2x3, IsEqual(_:_:))
        assertEqual((lhs.m3x3.0 * rhs.m3x3.0) as D3x3, (lhs.m3x3.1 * rhs.m3x3.1) as simd.double3x3, IsEqual(_:_:))
        assertEqual((lhs.m3x3.0 * rhs.m4x3.0) as D4x3, (lhs.m3x3.1 * rhs.m4x3.1) as simd.double4x3, IsEqual(_:_:))

        var result = lhs.m3x3.0, expected = lhs.m3x3.1

        result += rhs.m3x3.0
        expected += rhs.m3x3.1
        assertEqual(result, expected, IsEqual(_:_:))

        result -= rhs.m3x3.0
        expected -= rhs.m3x3.1
        assertEqual(result, expected, IsEqual(_:_:))

        result *= rhs.m3x3.0
        expected *= rhs.m3x3.1
        assertEqual(result, expected, IsEqual(_:_:))
    }

    func testOperators_d4x3() {
        let lhs = (m2x4: makeInputs(RandomNxD4(2), D2x4.init(_:), simd.double2x4.init(_:)),
                   m3x4: makeInputs(RandomNxD4(3), D3x4.init(_:), simd.double3x4.init(_:)),
                   m4x3: makeInputs(RandomNxD3(4), D4x3.init(_:), simd.double4x3.init(_:)),
                   m4x4: makeInputs(RandomNxD4(4), D4x4.init(_:), simd.double4x4.init(_:)),
                   v3: SIMD3<Double>.random(in: -1.0 ... 1.0),
                   v4: SIMD4<Double>.random(in: -1.0 ... 1.0))

        let rhs = (m2x4: makeInputs(RandomNxD4(2), D2x4.init(_:), simd.double2x4.init(_:)),
                   m3x4: makeInputs(RandomNxD4(3), D3x4.init(_:), simd.double3x4.init(_:)),
                   m4x3: makeInputs(RandomNxD3(4), D4x3.init(_:), simd.double4x3.init(_:)),
                   m4x4: makeInputs(RandomNxD4(4), D4x4.init(_:), simd.double4x4.init(_:)),
                   v3: SIMD3<Double>.random(in: -1.0 ... 1.0),
                   v4: SIMD4<Double>.random(in: -1.0 ... 1.0))

        assertEqual(-rhs.m4x3.0, -rhs.m4x3.1, IsEqual(_:_:))
        assertEqual((lhs.m4x3.0 + rhs.m4x3.0) as D4x3, (lhs.m4x3.1 + rhs.m4x3.1) as simd.double4x3, IsEqual(_:_:))
        assertEqual((lhs.m4x3.0 - rhs.m4x3.0) as D4x3, (lhs.m4x3.1 - rhs.m4x3.1) as simd.double4x3, IsEqual(_:_:))

        XCTAssertTrue(IsEqual((lhs.v3 * rhs.m4x3.0) as D4, (lhs.v3 * rhs.m4x3.1) as D4))
        XCTAssertTrue(IsEqual((lhs.m4x3.0 * rhs.v4) as D3, (lhs.m4x3.1 * rhs.v4) as D3))

        assertEqual((lhs.m4x3.0 * rhs.m2x4.0) as D2x3, (lhs.m4x3.1 * rhs.m2x4.1) as simd.double2x3, IsEqual(_:_:))
        assertEqual((lhs.m4x3.0 * rhs.m3x4.0) as D3x3, (lhs.m4x3.1 * rhs.m3x4.1) as simd.double3x3, IsEqual(_:_:))
        assertEqual((lhs.m4x3.0 * rhs.m4x4.0) as D4x3, (lhs.m4x3.1 * rhs.m4x4.1) as simd.double4x3, IsEqual(_:_:))

        var result = lhs.m4x3.0, expected = lhs.m4x3.1

        result += rhs.m4x3.0
        expected += rhs.m4x3.1
        assertEqual(result, expected, IsEqual(_:_:))

        result -= rhs.m4x3.0
        expected -= rhs.m4x3.1
        assertEqual(result, expected, IsEqual(_:_:))

        result *= rhs.m4x4.0
        expected *= rhs.m4x4.1
        assertEqual(result, expected, IsEqual(_:_:))
    }

    func testOperators_d2x4() {
        let lhs = (m2x2: makeInputs(RandomNxD2(2), D2x2.init(_:), simd.double2x2.init(_:)),
                   m2x4: makeInputs(RandomNxD4(2), D2x4.init(_:), simd.double2x4.init(_:)),
                   m3x2: makeInputs(RandomNxD2(3), D3x2.init(_:), simd.double3x2.init(_:)),
                   m4x2: makeInputs(RandomNxD2(4), D4x2.init(_:), simd.double4x2.init(_:)),
                   v2: SIMD2<Double>.random(in: -1.0 ... 1.0),
                   v4: SIMD4<Double>.random(in: -1.0 ... 1.0))

        let rhs = (m2x2: makeInputs(RandomNxD2(2), D2x2.init(_:), simd.double2x2.init(_:)),
                   m2x4: makeInputs(RandomNxD4(2), D2x4.init(_:), simd.double2x4.init(_:)),
                   m3x2: makeInputs(RandomNxD2(3), D3x2.init(_:), simd.double3x2.init(_:)),
                   m4x2: makeInputs(RandomNxD2(4), D4x2.init(_:), simd.double4x2.init(_:)),
                   v2: SIMD2<Double>.random(in: -1.0 ... 1.0),
                   v4: SIMD4<Double>.random(in: -1.0 ... 1.0))

        assertEqual(-rhs.m2x4.0, -rhs.m2x4.1, IsEqual(_:_:))
        assertEqual((lhs.m2x4.0 + rhs.m2x4.0) as D2x4, (lhs.m2x4.1 + rhs.m2x4.1) as simd.double2x4, IsEqual(_:_:))
        assertEqual((lhs.m2x4.0 - rhs.m2x4.0) as D2x4, (lhs.m2x4.1 - rhs.m2x4.1) as simd.double2x4, IsEqual(_:_:))

        XCTAssertTrue(IsEqual((lhs.v4 * rhs.m2x4.0) as D2, (lhs.v4 * rhs.m2x4.1) as D2))
        XCTAssertTrue(IsEqual((lhs.m2x4.0 * rhs.v2) as D4, (lhs.m2x4.1 * rhs.v2) as D4))

        assertEqual((lhs.m2x4.0 * rhs.m2x2.0) as D2x4, (lhs.m2x4.1 * rhs.m2x2.1) as simd.double2x4, IsEqual(_:_:))
        assertEqual((lhs.m2x4.0 * rhs.m3x2.0) as D3x4, (lhs.m2x4.1 * rhs.m3x2.1) as simd.double3x4, IsEqual(_:_:))
        assertEqual((lhs.m2x4.0 * rhs.m4x2.0) as D4x4, (lhs.m2x4.1 * rhs.m4x2.1) as simd.double4x4, IsEqual(_:_:))

        var result = lhs.m2x4.0, expected = lhs.m2x4.1

        result += rhs.m2x4.0
        expected += rhs.m2x4.1
        assertEqual(result, expected, IsEqual(_:_:))

        result -= rhs.m2x4.0
        expected -= rhs.m2x4.1
        assertEqual(result, expected, IsEqual(_:_:))

        result *= rhs.m2x2.0
        expected *= rhs.m2x2.1
        assertEqual(result, expected, IsEqual(_:_:))
    }

    func testOperators_d3x4() {
        let lhs = (m2x3: makeInputs(RandomNxD3(2), D2x3.init(_:), simd.double2x3.init(_:)),
                   m3x3: makeInputs(RandomNxD3(3), D3x3.init(_:), simd.double3x3.init(_:)),
                   m3x4: makeInputs(RandomNxD4(3), D3x4.init(_:), simd.double3x4.init(_:)),
                   m4x3: makeInputs(RandomNxD3(4), D4x3.init(_:), simd.double4x3.init(_:)),
                   v3: SIMD3<Double>.random(in: -1.0 ... 1.0),
                   v4: SIMD4<Double>.random(in: -1.0 ... 1.0))

        let rhs = (m2x3: makeInputs(RandomNxD3(2), D2x3.init(_:), simd.double2x3.init(_:)),
                   m3x3: makeInputs(RandomNxD3(3), D3x3.init(_:), simd.double3x3.init(_:)),
                   m3x4: makeInputs(RandomNxD4(3), D3x4.init(_:), simd.double3x4.init(_:)),
                   m4x3: makeInputs(RandomNxD3(4), D4x3.init(_:), simd.double4x3.init(_:)),
                   v3: SIMD3<Double>.random(in: -1.0 ... 1.0),
                   v4: SIMD4<Double>.random(in: -1.0 ... 1.0))

        assertEqual(-rhs.m3x4.0, -rhs.m3x4.1, IsEqual(_:_:))
        assertEqual((lhs.m3x4.0 + rhs.m3x4.0) as D3x4, (lhs.m3x4.1 + rhs.m3x4.1) as simd.double3x4, IsEqual(_:_:))
        assertEqual((lhs.m3x4.0 - rhs.m3x4.0) as D3x4, (lhs.m3x4.1 - rhs.m3x4.1) as simd.double3x4, IsEqual(_:_:))

        XCTAssertTrue(IsEqual((lhs.v4 * rhs.m3x4.0) as D3, (lhs.v4 * rhs.m3x4.1) as D3))
        XCTAssertTrue(IsEqual((lhs.m3x4.0 * rhs.v3) as D4, (lhs.m3x4.1 * rhs.v3) as D4))

        assertEqual((lhs.m3x4.0 * rhs.m2x3.0) as D2x4, (lhs.m3x4.1 * rhs.m2x3.1) as simd.double2x4, IsEqual(_:_:))
        assertEqual((lhs.m3x4.0 * rhs.m3x3.0) as D3x4, (lhs.m3x4.1 * rhs.m3x3.1) as simd.double3x4, IsEqual(_:_:))
        assertEqual((lhs.m3x4.0 * rhs.m4x3.0) as D4x4, (lhs.m3x4.1 * rhs.m4x3.1) as simd.double4x4, IsEqual(_:_:))

        var result = lhs.m3x4.0, expected = lhs.m3x4.1

        result += rhs.m3x4.0
        expected += rhs.m3x4.1
        assertEqual(result, expected, IsEqual(_:_:))

        result -= rhs.m3x4.0
        expected -= rhs.m3x4.1
        assertEqual(result, expected, IsEqual(_:_:))

        result *= rhs.m3x3.0
        expected *= rhs.m3x3.1
        assertEqual(result, expected, IsEqual(_:_:))
    }

    func testOperators_d4x4() {
        let lhs = (m2x4: makeInputs(RandomNxD4(2), D2x4.init(_:), simd.double2x4.init(_:)),
                   m3x4: makeInputs(RandomNxD4(3), D3x4.init(_:), simd.double3x4.init(_:)),
                   m4x4: makeInputs(RandomNxD4(4), D4x4.init(_:), simd.double4x4.init(_:)),
                   v4: SIMD4<Double>.random(in: -1.0 ... 1.0))

        let rhs = (m2x4: makeInputs(RandomNxD4(2), D2x4.init(_:), simd.double2x4.init(_:)),
                   m3x4: makeInputs(RandomNxD4(3), D3x4.init(_:), simd.double3x4.init(_:)),
                   m4x4: makeInputs(RandomNxD4(4), D4x4.init(_:), simd.double4x4.init(_:)),
                   v4: SIMD4<Double>.random(in: -1.0 ... 1.0))

        assertEqual(-rhs.m4x4.0, -rhs.m4x4.1, IsEqual(_:_:))
        assertEqual((lhs.m4x4.0 + rhs.m4x4.0) as D4x4, (lhs.m4x4.1 + rhs.m4x4.1) as simd.double4x4, IsEqual(_:_:))
        assertEqual((lhs.m4x4.0 - rhs.m4x4.0) as D4x4, (lhs.m4x4.1 - rhs.m4x4.1) as simd.double4x4, IsEqual(_:_:))

        XCTAssertTrue(IsEqual((lhs.v4 * rhs.m4x4.0) as D4, (lhs.v4 * rhs.m4x4.1) as D4))
        XCTAssertTrue(IsEqual((lhs.m4x4.0 * rhs.v4) as D4, (lhs.m4x4.1 * rhs.v4) as D4))

        assertEqual((lhs.m4x4.0 * rhs.m2x4.0) as D2x4, (lhs.m4x4.1 * rhs.m2x4.1) as simd.double2x4, IsEqual(_:_:))
        assertEqual((lhs.m4x4.0 * rhs.m3x4.0) as D3x4, (lhs.m4x4.1 * rhs.m3x4.1) as simd.double3x4, IsEqual(_:_:))
        assertEqual((lhs.m4x4.0 * rhs.m4x4.0) as D4x4, (lhs.m4x4.1 * rhs.m4x4.1) as simd.double4x4, IsEqual(_:_:))

        var result = lhs.m4x4.0, expected = lhs.m4x4.1

        result += rhs.m4x4.0
        expected += rhs.m4x4.1
        assertEqual(result, expected, IsEqual(_:_:))

        result -= rhs.m4x4.0
        expected -= rhs.m4x4.1
        assertEqual(result, expected, IsEqual(_:_:))

        result *= rhs.m4x4.0
        expected *= rhs.m4x4.1
        assertEqual(result, expected, IsEqual(_:_:))
    }



    // MARK: Auxiliaries

    private func assertEqual<L, R>(_ lhs: L, _ rhs: R, _ validator: (L, R) -> Bool) {
        XCTAssertTrue(validator(lhs, rhs), "\(lhs) is not equal to \(rhs)")
    }


    /// - Returns: Two instances from the same input.
    private func makeInputs<I, L, R>(_ input: I, _ lFabric: (I) -> L, _ rFabric: (I) -> R) -> (L, R) {
        (lFabric(input), rFabric(input))
    }

}
