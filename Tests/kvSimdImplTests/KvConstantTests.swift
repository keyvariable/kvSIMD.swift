//===----------------------------------------------------------------------===//
//
//  Copyright (c) 2023 Svyatoslav Popov.
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
//  KvConstantTests.swift
//  kvSimdImplTests
//
//  Created by Svyatoslav Popov on 27.08.2023.
//

import XCTest

@testable import kvSimdImpl

import simd



final class KvConstantTests : XCTestCase {

    // MARK: test_identity_matrices()

    func test_identity_matrices() {
        assertEqual(kvSimdImpl.matrix_identity_float2x2, simd.matrix_identity_float2x2, IsEqual(_:_:))
        assertEqual(kvSimdImpl.matrix_identity_float3x3, simd.matrix_identity_float3x3, IsEqual(_:_:))
        assertEqual(kvSimdImpl.matrix_identity_float4x4, simd.matrix_identity_float4x4, IsEqual(_:_:))
        assertEqual(kvSimdImpl.matrix_identity_double2x2, simd.matrix_identity_double2x2, IsEqual(_:_:))
        assertEqual(kvSimdImpl.matrix_identity_double3x3, simd.matrix_identity_double3x3, IsEqual(_:_:))
        assertEqual(kvSimdImpl.matrix_identity_double4x4, simd.matrix_identity_double4x4, IsEqual(_:_:))
    }



    // MARK: Auxiliaries

    private func assertEqual<L, R>(_ lhs: L, _ rhs: R, _ validator: (L, R) -> Bool) {
        XCTAssertTrue(validator(lhs, rhs), "\(lhs) is not equal to \(rhs)")
    }

}
