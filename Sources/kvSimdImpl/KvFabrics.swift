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
//  KvFabrics.swift
//  kvSimdImpl
//
//  Created by Svyatoslav Popov on 28.07.2023.
//


// MARK: - matrix_from_rows

/// - Returns: A matrix from given rows.
@inlinable
public func matrix_from_rows(_ row0: SIMD2<Float>, _ row1: SIMD2<Float>) -> simd_float2x2 { simd_matrix_from_rows(row0, row1) }

/// - Returns: A matrix from given rows.
@inlinable
public func matrix_from_rows(_ row0: SIMD3<Float>, _ row1: SIMD3<Float>) -> simd_float3x2 { simd_matrix_from_rows(row0, row1) }

/// - Returns: A matrix from given rows.
@inlinable
public func matrix_from_rows(_ row0: SIMD4<Float>, _ row1: SIMD4<Float>) -> simd_float4x2 { simd_matrix_from_rows(row0, row1) }

/// - Returns: A matrix from given rows.
@inlinable
public func matrix_from_rows(_ row0: SIMD2<Float>, _ row1: SIMD2<Float>, _ row2: SIMD2<Float>) -> simd_float2x3 { simd_matrix_from_rows(row0, row1, row2) }

/// - Returns: A matrix from given rows.
@inlinable
public func matrix_from_rows(_ row0: SIMD3<Float>, _ row1: SIMD3<Float>, _ row2: SIMD3<Float>) -> simd_float3x3 { simd_matrix_from_rows(row0, row1, row2) }

/// - Returns: A matrix from given rows.
@inlinable
public func matrix_from_rows(_ row0: SIMD4<Float>, _ row1: SIMD4<Float>, _ row2: SIMD4<Float>) -> simd_float4x3 { simd_matrix_from_rows(row0, row1, row2) }

/// - Returns: A matrix from given rows.
@inlinable
public func matrix_from_rows(_ row0: SIMD2<Float>, _ row1: SIMD2<Float>, _ row2: SIMD2<Float>, _ row3: SIMD2<Float>) -> simd_float2x4 { simd_matrix_from_rows(row0, row1, row2, row3) }

/// - Returns: A matrix from given rows.
@inlinable
public func matrix_from_rows(_ row0: SIMD3<Float>, _ row1: SIMD3<Float>, _ row2: SIMD3<Float>, _ row3: SIMD3<Float>) -> simd_float3x4 { simd_matrix_from_rows(row0, row1, row2, row3) }

/// - Returns: A matrix from given rows.
@inlinable
public func matrix_from_rows(_ row0: SIMD4<Float>, _ row1: SIMD4<Float>, _ row2: SIMD4<Float>, _ row3: SIMD4<Float>) -> simd_float4x4 { simd_matrix_from_rows(row0, row1, row2, row3) }

/// - Returns: A matrix from given rows.
@inlinable
public func matrix_from_rows(_ row0: SIMD2<Double>, _ row1: SIMD2<Double>) -> simd_double2x2 { simd_matrix_from_rows(row0, row1) }

/// - Returns: A matrix from given rows.
@inlinable
public func matrix_from_rows(_ row0: SIMD3<Double>, _ row1: SIMD3<Double>) -> simd_double3x2 { simd_matrix_from_rows(row0, row1) }

/// - Returns: A matrix from given rows.
@inlinable
public func matrix_from_rows(_ row0: SIMD4<Double>, _ row1: SIMD4<Double>) -> simd_double4x2 { simd_matrix_from_rows(row0, row1) }

/// - Returns: A matrix from given rows.
@inlinable
public func matrix_from_rows(_ row0: SIMD2<Double>, _ row1: SIMD2<Double>, _ row2: SIMD2<Double>) -> simd_double2x3 { simd_matrix_from_rows(row0, row1, row2) }

/// - Returns: A matrix from given rows.
@inlinable
public func matrix_from_rows(_ row0: SIMD3<Double>, _ row1: SIMD3<Double>, _ row2: SIMD3<Double>) -> simd_double3x3 { simd_matrix_from_rows(row0, row1, row2) }

/// - Returns: A matrix from given rows.
@inlinable
public func matrix_from_rows(_ row0: SIMD4<Double>, _ row1: SIMD4<Double>, _ row2: SIMD4<Double>) -> simd_double4x3 { simd_matrix_from_rows(row0, row1, row2) }

/// - Returns: A matrix from given rows.
@inlinable
public func matrix_from_rows(_ row0: SIMD2<Double>, _ row1: SIMD2<Double>, _ row2: SIMD2<Double>, _ row3: SIMD2<Double>) -> simd_double2x4 { simd_matrix_from_rows(row0, row1, row2, row3) }

/// - Returns: A matrix from given rows.
@inlinable
public func matrix_from_rows(_ row0: SIMD3<Double>, _ row1: SIMD3<Double>, _ row2: SIMD3<Double>, _ row3: SIMD3<Double>) -> simd_double3x4 { simd_matrix_from_rows(row0, row1, row2, row3) }

/// - Returns: A matrix from given rows.
@inlinable
public func matrix_from_rows(_ row0: SIMD4<Double>, _ row1: SIMD4<Double>, _ row2: SIMD4<Double>, _ row3: SIMD4<Double>) -> simd_double4x4 { simd_matrix_from_rows(row0, row1, row2, row3) }


// MARK: - simd_diagonal_matrix

/// - Returns: A matrix having given main diagonal and zeros elsewhere.
@inlinable
public func simd_diagonal_matrix(_ x: simd_float2) -> simd_float2x2 { .init(diagonal: x) }

/// - Returns: A matrix having given main diagonal and zeros elsewhere.
@inlinable
public func simd_diagonal_matrix(_ x: simd_float3) -> simd_float3x3 { .init(diagonal: x) }

/// - Returns: A matrix having given main diagonal and zeros elsewhere.
@inlinable
public func simd_diagonal_matrix(_ x: simd_float4) -> simd_float4x4 { .init(diagonal: x) }

/// - Returns: A matrix having given main diagonal and zeros elsewhere.
@inlinable
public func simd_diagonal_matrix(_ x: simd_double2) -> simd_double2x2 { .init(diagonal: x) }

/// - Returns: A matrix having given main diagonal and zeros elsewhere.
@inlinable
public func simd_diagonal_matrix(_ x: simd_double3) -> simd_double3x3 { .init(diagonal: x) }

/// - Returns: A matrix having given main diagonal and zeros elsewhere.
@inlinable
public func simd_diagonal_matrix(_ x: simd_double4) -> simd_double4x4 { .init(diagonal: x) }


// MARK: - simd_make_char2

/// - Returns: Concatenated arguments.
@inlinable
public func simd_make_char2(_ x: CChar, _ y: CChar) -> simd_char2 { .init(x, y) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_char2(_ other: CChar) -> simd_char2 { .init(other, 0) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_char2_undef(_ other: CChar) -> simd_char2 { simd_make_char2(other) }

/// - Returns: Unmodified *other*.
@inlinable
public func simd_make_char2(_ other: simd_char2) -> simd_char2 { other }

/// - Returns: Truncated *other*.
@inlinable
public func simd_make_char2(_ other: simd_char3) -> simd_char2 { .init(other.x, other.y) }

/// - Returns: Truncated *other*.
@inlinable
public func simd_make_char2(_ other: simd_char4) -> simd_char2 { other.lowHalf }

/// - Returns: Truncated *other*.
@inlinable
public func simd_make_char2(_ other: simd_char8) -> simd_char2 { .init(other[0], other[1]) }

/// - Returns: Truncated *other*.
@inlinable
public func simd_make_char2(_ other: simd_char16) -> simd_char2 { .init(other[0], other[1]) }

/// - Returns: Truncated *other*.
@inlinable
public func simd_make_char2(_ other: simd_char32) -> simd_char2 { .init(other[0], other[1]) }

/// - Returns: Truncated *other*.
@inlinable
public func simd_make_char2(_ other: simd_char64) -> simd_char2 { .init(other[0], other[1]) }


// MARK: - simd_make_char3

/// - Returns: Concatenated arguments.
@inlinable
public func simd_make_char3(_ x: CChar, _ y: CChar, _ z: CChar) -> simd_char3 { .init(x, y, z) }

/// - Returns: Concatenated arguments.
@inlinable
public func simd_make_char3(_ x: CChar, _ yz: simd_char2) -> simd_char3 { .init(x, yz.x, yz.y) }

/// - Returns: Concatenated arguments.
@inlinable
public func simd_make_char3(_ xy: simd_char2, _ z: CChar) -> simd_char3 { .init(xy, z) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_char3(_ other: CChar) -> simd_char3 { .init(other, 0, 0) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_char3_undef(_ other: CChar) -> simd_char3 { simd_make_char3(other) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_char3(_ other: simd_char2) -> simd_char3 { .init(other, 0) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_char3_undef(_ other: simd_char2) -> simd_char3 { simd_make_char3(other) }

/// - Returns: Unmodified *other*.
@inlinable
public func simd_make_char3(_ other: simd_char3) -> simd_char3 { other }

/// - Returns: Truncated *other*.
@inlinable
public func simd_make_char3(_ other: simd_char4) -> simd_char3 { .init(other.x, other.y, other.z) }

/// - Returns: Truncated *other*.
@inlinable
public func simd_make_char3(_ other: simd_char8) -> simd_char3 { .init(other[0], other[1], other[2]) }

/// - Returns: Truncated *other*.
@inlinable
public func simd_make_char3(_ other: simd_char16) -> simd_char3 { .init(other[0], other[1], other[2]) }

/// - Returns: Truncated *other*.
@inlinable
public func simd_make_char3(_ other: simd_char32) -> simd_char3 { .init(other[0], other[1], other[2]) }

/// - Returns: Truncated *other*.
@inlinable
public func simd_make_char3(_ other: simd_char64) -> simd_char3 { .init(other[0], other[1], other[2]) }


// MARK: - simd_make_char4

/// - Returns: Concatenated arguments.
@inlinable
public func simd_make_char4(_ x: CChar, _ y: CChar, _ z: CChar, _ w: CChar) -> simd_char4 { .init(x, y, z, w) }

/// - Returns: Concatenated arguments.
@inlinable
public func simd_make_char4(_ x: CChar, _ y: CChar, _ zw: simd_char2) -> simd_char4 { .init(x, y, zw.x, zw.y) }

/// - Returns: Concatenated arguments.
@inlinable
public func simd_make_char4(_ x: CChar, _ yz: simd_char2, _ w: CChar) -> simd_char4 { .init(x, yz.x, yz.y, w) }

/// - Returns: Concatenated arguments.
@inlinable
public func simd_make_char4(_ xy: simd_char2, _ z: CChar, _ w: CChar) -> simd_char4 { .init(xy.x, xy.y, z, w) }

/// - Returns: Concatenated arguments.
@inlinable
public func simd_make_char4(_ x: CChar, _ yzw: simd_char3) -> simd_char4 { .init(x, yzw.x, yzw.y, yzw.z) }

/// - Returns: Concatenated arguments.
@inlinable
public func simd_make_char4(_ xy: simd_char2, _ zw: simd_char2) -> simd_char4 { .init(lowHalf: xy, highHalf: zw) }

/// - Returns: Concatenated arguments.
@inlinable
public func simd_make_char4(_ xyz: simd_char3, _ w: CChar) -> simd_char4 { .init(xyz, w) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_char4(_ other: CChar) -> simd_char4 { .init(other, 0, 0, 0) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_char4_undef(_ other: CChar) -> simd_char4 { simd_make_char4(other) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_char4(_ other: simd_char2) -> simd_char4 { .init(lowHalf: other, highHalf: .zero) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_char4_undef(_ other: simd_char2) -> simd_char4 { simd_make_char4(other) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_char4(_ other: simd_char3) -> simd_char4 { .init(other, 0) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_char4_undef(_ other: simd_char3) -> simd_char4 { simd_make_char4(other) }

/// - Returns: Unmodified *other*.
@inlinable
public func simd_make_char4(_ other: simd_char4) -> simd_char4 { other }

/// - Returns: Truncated *other*.
@inlinable
public func simd_make_char4(_ other: simd_char8) -> simd_char4 { other.lowHalf }

/// - Returns: Truncated *other*.
@inlinable
public func simd_make_char4(_ other: simd_char16) -> simd_char4 { .init(other[0], other[1], other[2], other[3]) }

/// - Returns: Truncated *other*.
@inlinable
public func simd_make_char4(_ other: simd_char32) -> simd_char4 { .init(other[0], other[1], other[2], other[3]) }

/// - Returns: Truncated *other*.
@inlinable
public func simd_make_char4(_ other: simd_char64) -> simd_char4 { .init(other[0], other[1], other[2], other[3]) }


// MARK: - simd_make_char8

/// - Returns: Concatenated arguments.
@inlinable
public func simd_make_char8(_ lowHalf: simd_char4, _ highHalf: simd_char4) -> simd_char8 { .init(lowHalf: lowHalf, highHalf: highHalf) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_char8(_ other: CChar) -> simd_char8 { .init(lowHalf: .init(lowHalf: .init(other, 0), highHalf: .zero), highHalf: .zero) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_char8_undef(_ other: CChar) -> simd_char8 { simd_make_char8(other) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_char8(_ other: simd_char2) -> simd_char8 { .init(lowHalf: .init(lowHalf: other, highHalf: .zero), highHalf: .zero) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_char8_undef(_ other: simd_char2) -> simd_char8 { simd_make_char8(other) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_char8(_ other: simd_char3) -> simd_char8 { .init(lowHalf: .init(other, 0), highHalf: .zero) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_char8_undef(_ other: simd_char3) -> simd_char8 { simd_make_char8(other) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_char8(_ other: simd_char4) -> simd_char8 { .init(lowHalf: other, highHalf: .zero) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_char8_undef(_ other: simd_char4) -> simd_char8 { simd_make_char8(other) }

/// - Returns: Unmodified *other*.
@inlinable
public func simd_make_char8(_ other: simd_char8) -> simd_char8 { other }

/// - Returns: Truncated *other*.
@inlinable
public func simd_make_char8(_ other: simd_char16) -> simd_char8 { other.lowHalf }

/// - Returns: Truncated *other*.
@inlinable
public func simd_make_char8(_ other: simd_char32) -> simd_char8 { .init(other[0], other[1], other[2], other[3], other[4], other[5], other[6], other[7]) }

/// - Returns: Truncated *other*.
@inlinable
public func simd_make_char8(_ other: simd_char64) -> simd_char8 { .init(other[0], other[1], other[2], other[3], other[4], other[5], other[6], other[7]) }


// MARK: - simd_make_char16

/// - Returns: Concatenated arguments.
@inlinable
public func simd_make_char16(_ lowHalf: simd_char8, _ highHalf: simd_char8) -> simd_char16 { .init(lowHalf: lowHalf, highHalf: highHalf) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_char16(_ other: CChar) -> simd_char16 { .init(lowHalf: .init(lowHalf: .init(lowHalf: .init(other, 0), highHalf: .zero), highHalf: .zero), highHalf: .zero) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_char16_undef(_ other: CChar) -> simd_char16 { simd_make_char16(other) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_char16(_ other: simd_char2) -> simd_char16 { .init(lowHalf: .init(lowHalf: .init(lowHalf: other, highHalf: .zero), highHalf: .zero), highHalf: .zero) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_char16_undef(_ other: simd_char2) -> simd_char16 { simd_make_char16(other) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_char16(_ other: simd_char3) -> simd_char16 { .init(lowHalf: .init(lowHalf: .init(other, 0), highHalf: .zero), highHalf: .zero) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_char16_undef(_ other: simd_char3) -> simd_char16 { simd_make_char16(other) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_char16(_ other: simd_char4) -> simd_char16 { .init(lowHalf: .init(lowHalf: other, highHalf: .zero), highHalf: .zero) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_char16_undef(_ other: simd_char4) -> simd_char16 { simd_make_char16(other) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_char16(_ other: simd_char8) -> simd_char16 { .init(lowHalf: other, highHalf: .zero) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_char16_undef(_ other: simd_char8) -> simd_char16 { simd_make_char16(other) }

/// - Returns: Unmodified *other*.
@inlinable
public func simd_make_char16(_ other: simd_char16) -> simd_char16 { other }

/// - Returns: Truncated *other*.
@inlinable
public func simd_make_char16(_ other: simd_char32) -> simd_char16 { other.lowHalf }

/// - Returns: Truncated *other*.
@inlinable
public func simd_make_char16(_ other: simd_char64) -> simd_char16 { .init(other[0], other[1], other[2], other[3], other[4], other[5], other[6], other[7], other[8], other[9], other[10], other[11], other[12], other[13], other[14], other[15]) }


// MARK: - simd_make_char32

/// - Returns: Concatenated arguments.
@inlinable
public func simd_make_char32(_ lowHalf: simd_char16, _ highHalf: simd_char16) -> simd_char32 { .init(lowHalf: lowHalf, highHalf: highHalf) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_char32(_ other: CChar) -> simd_char32 { .init(lowHalf: .init(lowHalf: .init(lowHalf: .init(lowHalf: .init(other, 0), highHalf: .zero), highHalf: .zero), highHalf: .zero), highHalf: .zero) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_char32_undef(_ other: CChar) -> simd_char32 { simd_make_char32(other) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_char32(_ other: simd_char2) -> simd_char32 { .init(lowHalf: .init(lowHalf: .init(lowHalf: .init(lowHalf: other, highHalf: .zero), highHalf: .zero), highHalf: .zero), highHalf: .zero) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_char32_undef(_ other: simd_char2) -> simd_char32 { simd_make_char32(other) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_char32(_ other: simd_char3) -> simd_char32 { .init(lowHalf: .init(lowHalf: .init(lowHalf: .init(other, 0), highHalf: .zero), highHalf: .zero), highHalf: .zero) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_char32_undef(_ other: simd_char3) -> simd_char32 { simd_make_char32(other) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_char32(_ other: simd_char4) -> simd_char32 { .init(lowHalf: .init(lowHalf: .init(lowHalf: other, highHalf: .zero), highHalf: .zero), highHalf: .zero) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_char32_undef(_ other: simd_char4) -> simd_char32 { simd_make_char32(other) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_char32(_ other: simd_char8) -> simd_char32 { .init(lowHalf: .init(lowHalf: other, highHalf: .zero), highHalf: .zero) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_char32_undef(_ other: simd_char8) -> simd_char32 { simd_make_char32(other) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_char32(_ other: simd_char16) -> simd_char32 { .init(lowHalf: other, highHalf: .zero) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_char32_undef(_ other: simd_char16) -> simd_char32 { simd_make_char32(other) }

/// - Returns: Unmodified *other*.
@inlinable
public func simd_make_char32(_ other: simd_char32) -> simd_char32 { other }

/// - Returns: Truncated *other*.
@inlinable
public func simd_make_char32(_ other: simd_char64) -> simd_char32 { other.lowHalf }


// MARK: - simd_make_char64

/// - Returns: Concatenated arguments.
@inlinable
public func simd_make_char64(_ lowHalf: simd_char32, _ highHalf: simd_char32) -> simd_char64 { .init(lowHalf: lowHalf, highHalf: highHalf) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_char64(_ other: CChar) -> simd_char64 { .init(lowHalf: .init(lowHalf: .init(lowHalf: .init(lowHalf: .init(lowHalf: .init(other, 0), highHalf: .zero), highHalf: .zero), highHalf: .zero), highHalf: .zero), highHalf: .zero) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_char64_undef(_ other: CChar) -> simd_char64 { simd_make_char64(other) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_char64(_ other: simd_char2) -> simd_char64 { .init(lowHalf: .init(lowHalf: .init(lowHalf: .init(lowHalf: .init(lowHalf: other, highHalf: .zero), highHalf: .zero), highHalf: .zero), highHalf: .zero), highHalf: .zero) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_char64_undef(_ other: simd_char2) -> simd_char64 { simd_make_char64(other) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_char64(_ other: simd_char3) -> simd_char64 { .init(lowHalf: .init(lowHalf: .init(lowHalf: .init(lowHalf: .init(other, 0), highHalf: .zero), highHalf: .zero), highHalf: .zero), highHalf: .zero) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_char64_undef(_ other: simd_char3) -> simd_char64 { simd_make_char64(other) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_char64(_ other: simd_char4) -> simd_char64 { .init(lowHalf: .init(lowHalf: .init(lowHalf: .init(lowHalf: other, highHalf: .zero), highHalf: .zero), highHalf: .zero), highHalf: .zero) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_char64_undef(_ other: simd_char4) -> simd_char64 { simd_make_char64(other) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_char64(_ other: simd_char8) -> simd_char64 { .init(lowHalf: .init(lowHalf: .init(lowHalf: other, highHalf: .zero), highHalf: .zero), highHalf: .zero) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_char64_undef(_ other: simd_char8) -> simd_char64 { simd_make_char64(other) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_char64(_ other: simd_char16) -> simd_char64 { .init(lowHalf: .init(lowHalf: other, highHalf: .zero), highHalf: .zero) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_char64_undef(_ other: simd_char16) -> simd_char64 { simd_make_char64(other) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_char64(_ other: simd_char32) -> simd_char64 { .init(lowHalf: other, highHalf: .zero) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_char64_undef(_ other: simd_char32) -> simd_char64 { simd_make_char64(other) }

/// - Returns: Unmodified *other*.
@inlinable
public func simd_make_char64(_ other: simd_char64) -> simd_char64 { other }


// MARK: - simd_make_uchar2

/// - Returns: Concatenated arguments.
@inlinable
public func simd_make_uchar2(_ x: UInt8, _ y: UInt8) -> simd_uchar2 { .init(x, y) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_uchar2(_ other: UInt8) -> simd_uchar2 { .init(other, 0) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_uchar2_undef(_ other: UInt8) -> simd_uchar2 { simd_make_uchar2(other) }

/// - Returns: Unmodified *other*.
@inlinable
public func simd_make_uchar2(_ other: simd_uchar2) -> simd_uchar2 { other }

/// - Returns: Truncated *other*.
@inlinable
public func simd_make_uchar2(_ other: simd_uchar3) -> simd_uchar2 { .init(other.x, other.y) }

/// - Returns: Truncated *other*.
@inlinable
public func simd_make_uchar2(_ other: simd_uchar4) -> simd_uchar2 { other.lowHalf }

/// - Returns: Truncated *other*.
@inlinable
public func simd_make_uchar2(_ other: simd_uchar8) -> simd_uchar2 { .init(other[0], other[1]) }

/// - Returns: Truncated *other*.
@inlinable
public func simd_make_uchar2(_ other: simd_uchar16) -> simd_uchar2 { .init(other[0], other[1]) }

/// - Returns: Truncated *other*.
@inlinable
public func simd_make_uchar2(_ other: simd_uchar32) -> simd_uchar2 { .init(other[0], other[1]) }

/// - Returns: Truncated *other*.
@inlinable
public func simd_make_uchar2(_ other: simd_uchar64) -> simd_uchar2 { .init(other[0], other[1]) }


// MARK: - simd_make_uchar3

/// - Returns: Concatenated arguments.
@inlinable
public func simd_make_uchar3(_ x: UInt8, _ y: UInt8, _ z: UInt8) -> simd_uchar3 { .init(x, y, z) }

/// - Returns: Concatenated arguments.
@inlinable
public func simd_make_uchar3(_ x: UInt8, _ yz: simd_uchar2) -> simd_uchar3 { .init(x, yz.x, yz.y) }

/// - Returns: Concatenated arguments.
@inlinable
public func simd_make_uchar3(_ xy: simd_uchar2, _ z: UInt8) -> simd_uchar3 { .init(xy, z) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_uchar3(_ other: UInt8) -> simd_uchar3 { .init(other, 0, 0) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_uchar3_undef(_ other: UInt8) -> simd_uchar3 { simd_make_uchar3(other) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_uchar3(_ other: simd_uchar2) -> simd_uchar3 { .init(other, 0) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_uchar3_undef(_ other: simd_uchar2) -> simd_uchar3 { simd_make_uchar3(other) }

/// - Returns: Unmodified *other*.
@inlinable
public func simd_make_uchar3(_ other: simd_uchar3) -> simd_uchar3 { other }

/// - Returns: Truncated *other*.
@inlinable
public func simd_make_uchar3(_ other: simd_uchar4) -> simd_uchar3 { .init(other.x, other.y, other.z) }

/// - Returns: Truncated *other*.
@inlinable
public func simd_make_uchar3(_ other: simd_uchar8) -> simd_uchar3 { .init(other[0], other[1], other[2]) }

/// - Returns: Truncated *other*.
@inlinable
public func simd_make_uchar3(_ other: simd_uchar16) -> simd_uchar3 { .init(other[0], other[1], other[2]) }

/// - Returns: Truncated *other*.
@inlinable
public func simd_make_uchar3(_ other: simd_uchar32) -> simd_uchar3 { .init(other[0], other[1], other[2]) }

/// - Returns: Truncated *other*.
@inlinable
public func simd_make_uchar3(_ other: simd_uchar64) -> simd_uchar3 { .init(other[0], other[1], other[2]) }


// MARK: - simd_make_uchar4

/// - Returns: Concatenated arguments.
@inlinable
public func simd_make_uchar4(_ x: UInt8, _ y: UInt8, _ z: UInt8, _ w: UInt8) -> simd_uchar4 { .init(x, y, z, w) }

/// - Returns: Concatenated arguments.
@inlinable
public func simd_make_uchar4(_ x: UInt8, _ y: UInt8, _ zw: simd_uchar2) -> simd_uchar4 { .init(x, y, zw.x, zw.y) }

/// - Returns: Concatenated arguments.
@inlinable
public func simd_make_uchar4(_ x: UInt8, _ yz: simd_uchar2, _ w: UInt8) -> simd_uchar4 { .init(x, yz.x, yz.y, w) }

/// - Returns: Concatenated arguments.
@inlinable
public func simd_make_uchar4(_ xy: simd_uchar2, _ z: UInt8, _ w: UInt8) -> simd_uchar4 { .init(xy.x, xy.y, z, w) }

/// - Returns: Concatenated arguments.
@inlinable
public func simd_make_uchar4(_ x: UInt8, _ yzw: simd_uchar3) -> simd_uchar4 { .init(x, yzw.x, yzw.y, yzw.z) }

/// - Returns: Concatenated arguments.
@inlinable
public func simd_make_uchar4(_ xy: simd_uchar2, _ zw: simd_uchar2) -> simd_uchar4 { .init(lowHalf: xy, highHalf: zw) }

/// - Returns: Concatenated arguments.
@inlinable
public func simd_make_uchar4(_ xyz: simd_uchar3, _ w: UInt8) -> simd_uchar4 { .init(xyz, w) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_uchar4(_ other: UInt8) -> simd_uchar4 { .init(other, 0, 0, 0) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_uchar4_undef(_ other: UInt8) -> simd_uchar4 { simd_make_uchar4(other) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_uchar4(_ other: simd_uchar2) -> simd_uchar4 { .init(lowHalf: other, highHalf: .zero) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_uchar4_undef(_ other: simd_uchar2) -> simd_uchar4 { simd_make_uchar4(other) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_uchar4(_ other: simd_uchar3) -> simd_uchar4 { .init(other, 0) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_uchar4_undef(_ other: simd_uchar3) -> simd_uchar4 { simd_make_uchar4(other) }

/// - Returns: Unmodified *other*.
@inlinable
public func simd_make_uchar4(_ other: simd_uchar4) -> simd_uchar4 { other }

/// - Returns: Truncated *other*.
@inlinable
public func simd_make_uchar4(_ other: simd_uchar8) -> simd_uchar4 { other.lowHalf }

/// - Returns: Truncated *other*.
@inlinable
public func simd_make_uchar4(_ other: simd_uchar16) -> simd_uchar4 { .init(other[0], other[1], other[2], other[3]) }

/// - Returns: Truncated *other*.
@inlinable
public func simd_make_uchar4(_ other: simd_uchar32) -> simd_uchar4 { .init(other[0], other[1], other[2], other[3]) }

/// - Returns: Truncated *other*.
@inlinable
public func simd_make_uchar4(_ other: simd_uchar64) -> simd_uchar4 { .init(other[0], other[1], other[2], other[3]) }


// MARK: - simd_make_uchar8

/// - Returns: Concatenated arguments.
@inlinable
public func simd_make_uchar8(_ lowHalf: simd_uchar4, _ highHalf: simd_uchar4) -> simd_uchar8 { .init(lowHalf: lowHalf, highHalf: highHalf) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_uchar8(_ other: UInt8) -> simd_uchar8 { .init(lowHalf: .init(lowHalf: .init(other, 0), highHalf: .zero), highHalf: .zero) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_uchar8_undef(_ other: UInt8) -> simd_uchar8 { simd_make_uchar8(other) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_uchar8(_ other: simd_uchar2) -> simd_uchar8 { .init(lowHalf: .init(lowHalf: other, highHalf: .zero), highHalf: .zero) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_uchar8_undef(_ other: simd_uchar2) -> simd_uchar8 { simd_make_uchar8(other) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_uchar8(_ other: simd_uchar3) -> simd_uchar8 { .init(lowHalf: .init(other, 0), highHalf: .zero) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_uchar8_undef(_ other: simd_uchar3) -> simd_uchar8 { simd_make_uchar8(other) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_uchar8(_ other: simd_uchar4) -> simd_uchar8 { .init(lowHalf: other, highHalf: .zero) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_uchar8_undef(_ other: simd_uchar4) -> simd_uchar8 { simd_make_uchar8(other) }

/// - Returns: Unmodified *other*.
@inlinable
public func simd_make_uchar8(_ other: simd_uchar8) -> simd_uchar8 { other }

/// - Returns: Truncated *other*.
@inlinable
public func simd_make_uchar8(_ other: simd_uchar16) -> simd_uchar8 { other.lowHalf }

/// - Returns: Truncated *other*.
@inlinable
public func simd_make_uchar8(_ other: simd_uchar32) -> simd_uchar8 { .init(other[0], other[1], other[2], other[3], other[4], other[5], other[6], other[7]) }

/// - Returns: Truncated *other*.
@inlinable
public func simd_make_uchar8(_ other: simd_uchar64) -> simd_uchar8 { .init(other[0], other[1], other[2], other[3], other[4], other[5], other[6], other[7]) }


// MARK: - simd_make_uchar16

/// - Returns: Concatenated arguments.
@inlinable
public func simd_make_uchar16(_ lowHalf: simd_uchar8, _ highHalf: simd_uchar8) -> simd_uchar16 { .init(lowHalf: lowHalf, highHalf: highHalf) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_uchar16(_ other: UInt8) -> simd_uchar16 { .init(lowHalf: .init(lowHalf: .init(lowHalf: .init(other, 0), highHalf: .zero), highHalf: .zero), highHalf: .zero) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_uchar16_undef(_ other: UInt8) -> simd_uchar16 { simd_make_uchar16(other) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_uchar16(_ other: simd_uchar2) -> simd_uchar16 { .init(lowHalf: .init(lowHalf: .init(lowHalf: other, highHalf: .zero), highHalf: .zero), highHalf: .zero) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_uchar16_undef(_ other: simd_uchar2) -> simd_uchar16 { simd_make_uchar16(other) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_uchar16(_ other: simd_uchar3) -> simd_uchar16 { .init(lowHalf: .init(lowHalf: .init(other, 0), highHalf: .zero), highHalf: .zero) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_uchar16_undef(_ other: simd_uchar3) -> simd_uchar16 { simd_make_uchar16(other) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_uchar16(_ other: simd_uchar4) -> simd_uchar16 { .init(lowHalf: .init(lowHalf: other, highHalf: .zero), highHalf: .zero) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_uchar16_undef(_ other: simd_uchar4) -> simd_uchar16 { simd_make_uchar16(other) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_uchar16(_ other: simd_uchar8) -> simd_uchar16 { .init(lowHalf: other, highHalf: .zero) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_uchar16_undef(_ other: simd_uchar8) -> simd_uchar16 { simd_make_uchar16(other) }

/// - Returns: Unmodified *other*.
@inlinable
public func simd_make_uchar16(_ other: simd_uchar16) -> simd_uchar16 { other }

/// - Returns: Truncated *other*.
@inlinable
public func simd_make_uchar16(_ other: simd_uchar32) -> simd_uchar16 { other.lowHalf }

/// - Returns: Truncated *other*.
@inlinable
public func simd_make_uchar16(_ other: simd_uchar64) -> simd_uchar16 { .init(other[0], other[1], other[2], other[3], other[4], other[5], other[6], other[7], other[8], other[9], other[10], other[11], other[12], other[13], other[14], other[15]) }


// MARK: - simd_make_uchar32

/// - Returns: Concatenated arguments.
@inlinable
public func simd_make_uchar32(_ lowHalf: simd_uchar16, _ highHalf: simd_uchar16) -> simd_uchar32 { .init(lowHalf: lowHalf, highHalf: highHalf) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_uchar32(_ other: UInt8) -> simd_uchar32 { .init(lowHalf: .init(lowHalf: .init(lowHalf: .init(lowHalf: .init(other, 0), highHalf: .zero), highHalf: .zero), highHalf: .zero), highHalf: .zero) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_uchar32_undef(_ other: UInt8) -> simd_uchar32 { simd_make_uchar32(other) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_uchar32(_ other: simd_uchar2) -> simd_uchar32 { .init(lowHalf: .init(lowHalf: .init(lowHalf: .init(lowHalf: other, highHalf: .zero), highHalf: .zero), highHalf: .zero), highHalf: .zero) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_uchar32_undef(_ other: simd_uchar2) -> simd_uchar32 { simd_make_uchar32(other) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_uchar32(_ other: simd_uchar3) -> simd_uchar32 { .init(lowHalf: .init(lowHalf: .init(lowHalf: .init(other, 0), highHalf: .zero), highHalf: .zero), highHalf: .zero) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_uchar32_undef(_ other: simd_uchar3) -> simd_uchar32 { simd_make_uchar32(other) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_uchar32(_ other: simd_uchar4) -> simd_uchar32 { .init(lowHalf: .init(lowHalf: .init(lowHalf: other, highHalf: .zero), highHalf: .zero), highHalf: .zero) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_uchar32_undef(_ other: simd_uchar4) -> simd_uchar32 { simd_make_uchar32(other) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_uchar32(_ other: simd_uchar8) -> simd_uchar32 { .init(lowHalf: .init(lowHalf: other, highHalf: .zero), highHalf: .zero) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_uchar32_undef(_ other: simd_uchar8) -> simd_uchar32 { simd_make_uchar32(other) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_uchar32(_ other: simd_uchar16) -> simd_uchar32 { .init(lowHalf: other, highHalf: .zero) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_uchar32_undef(_ other: simd_uchar16) -> simd_uchar32 { simd_make_uchar32(other) }

/// - Returns: Unmodified *other*.
@inlinable
public func simd_make_uchar32(_ other: simd_uchar32) -> simd_uchar32 { other }

/// - Returns: Truncated *other*.
@inlinable
public func simd_make_uchar32(_ other: simd_uchar64) -> simd_uchar32 { other.lowHalf }


// MARK: - simd_make_uchar64

/// - Returns: Concatenated arguments.
@inlinable
public func simd_make_uchar64(_ lowHalf: simd_uchar32, _ highHalf: simd_uchar32) -> simd_uchar64 { .init(lowHalf: lowHalf, highHalf: highHalf) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_uchar64(_ other: UInt8) -> simd_uchar64 { .init(lowHalf: .init(lowHalf: .init(lowHalf: .init(lowHalf: .init(lowHalf: .init(other, 0), highHalf: .zero), highHalf: .zero), highHalf: .zero), highHalf: .zero), highHalf: .zero) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_uchar64_undef(_ other: UInt8) -> simd_uchar64 { simd_make_uchar64(other) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_uchar64(_ other: simd_uchar2) -> simd_uchar64 { .init(lowHalf: .init(lowHalf: .init(lowHalf: .init(lowHalf: .init(lowHalf: other, highHalf: .zero), highHalf: .zero), highHalf: .zero), highHalf: .zero), highHalf: .zero) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_uchar64_undef(_ other: simd_uchar2) -> simd_uchar64 { simd_make_uchar64(other) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_uchar64(_ other: simd_uchar3) -> simd_uchar64 { .init(lowHalf: .init(lowHalf: .init(lowHalf: .init(lowHalf: .init(other, 0), highHalf: .zero), highHalf: .zero), highHalf: .zero), highHalf: .zero) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_uchar64_undef(_ other: simd_uchar3) -> simd_uchar64 { simd_make_uchar64(other) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_uchar64(_ other: simd_uchar4) -> simd_uchar64 { .init(lowHalf: .init(lowHalf: .init(lowHalf: .init(lowHalf: other, highHalf: .zero), highHalf: .zero), highHalf: .zero), highHalf: .zero) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_uchar64_undef(_ other: simd_uchar4) -> simd_uchar64 { simd_make_uchar64(other) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_uchar64(_ other: simd_uchar8) -> simd_uchar64 { .init(lowHalf: .init(lowHalf: .init(lowHalf: other, highHalf: .zero), highHalf: .zero), highHalf: .zero) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_uchar64_undef(_ other: simd_uchar8) -> simd_uchar64 { simd_make_uchar64(other) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_uchar64(_ other: simd_uchar16) -> simd_uchar64 { .init(lowHalf: .init(lowHalf: other, highHalf: .zero), highHalf: .zero) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_uchar64_undef(_ other: simd_uchar16) -> simd_uchar64 { simd_make_uchar64(other) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_uchar64(_ other: simd_uchar32) -> simd_uchar64 { .init(lowHalf: other, highHalf: .zero) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_uchar64_undef(_ other: simd_uchar32) -> simd_uchar64 { simd_make_uchar64(other) }

/// - Returns: Unmodified *other*.
@inlinable
public func simd_make_uchar64(_ other: simd_uchar64) -> simd_uchar64 { other }


// MARK: - simd_make_short2

/// - Returns: Concatenated arguments.
@inlinable
public func simd_make_short2(_ x: Int16, _ y: Int16) -> simd_short2 { .init(x, y) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_short2(_ other: Int16) -> simd_short2 { .init(other, 0) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_short2_undef(_ other: Int16) -> simd_short2 { simd_make_short2(other) }

/// - Returns: Unmodified *other*.
@inlinable
public func simd_make_short2(_ other: simd_short2) -> simd_short2 { other }

/// - Returns: Truncated *other*.
@inlinable
public func simd_make_short2(_ other: simd_short3) -> simd_short2 { .init(other.x, other.y) }

/// - Returns: Truncated *other*.
@inlinable
public func simd_make_short2(_ other: simd_short4) -> simd_short2 { other.lowHalf }

/// - Returns: Truncated *other*.
@inlinable
public func simd_make_short2(_ other: simd_short8) -> simd_short2 { .init(other[0], other[1]) }

/// - Returns: Truncated *other*.
@inlinable
public func simd_make_short2(_ other: simd_short16) -> simd_short2 { .init(other[0], other[1]) }

/// - Returns: Truncated *other*.
@inlinable
public func simd_make_short2(_ other: simd_short32) -> simd_short2 { .init(other[0], other[1]) }


// MARK: - simd_make_short3

/// - Returns: Concatenated arguments.
@inlinable
public func simd_make_short3(_ x: Int16, _ y: Int16, _ z: Int16) -> simd_short3 { .init(x, y, z) }

/// - Returns: Concatenated arguments.
@inlinable
public func simd_make_short3(_ x: Int16, _ yz: simd_short2) -> simd_short3 { .init(x, yz.x, yz.y) }

/// - Returns: Concatenated arguments.
@inlinable
public func simd_make_short3(_ xy: simd_short2, _ z: Int16) -> simd_short3 { .init(xy, z) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_short3(_ other: Int16) -> simd_short3 { .init(other, 0, 0) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_short3_undef(_ other: Int16) -> simd_short3 { simd_make_short3(other) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_short3(_ other: simd_short2) -> simd_short3 { .init(other, 0) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_short3_undef(_ other: simd_short2) -> simd_short3 { simd_make_short3(other) }

/// - Returns: Unmodified *other*.
@inlinable
public func simd_make_short3(_ other: simd_short3) -> simd_short3 { other }

/// - Returns: Truncated *other*.
@inlinable
public func simd_make_short3(_ other: simd_short4) -> simd_short3 { .init(other.x, other.y, other.z) }

/// - Returns: Truncated *other*.
@inlinable
public func simd_make_short3(_ other: simd_short8) -> simd_short3 { .init(other[0], other[1], other[2]) }

/// - Returns: Truncated *other*.
@inlinable
public func simd_make_short3(_ other: simd_short16) -> simd_short3 { .init(other[0], other[1], other[2]) }

/// - Returns: Truncated *other*.
@inlinable
public func simd_make_short3(_ other: simd_short32) -> simd_short3 { .init(other[0], other[1], other[2]) }


// MARK: - simd_make_short4

/// - Returns: Concatenated arguments.
@inlinable
public func simd_make_short4(_ x: Int16, _ y: Int16, _ z: Int16, _ w: Int16) -> simd_short4 { .init(x, y, z, w) }

/// - Returns: Concatenated arguments.
@inlinable
public func simd_make_short4(_ x: Int16, _ y: Int16, _ zw: simd_short2) -> simd_short4 { .init(x, y, zw.x, zw.y) }

/// - Returns: Concatenated arguments.
@inlinable
public func simd_make_short4(_ x: Int16, _ yz: simd_short2, _ w: Int16) -> simd_short4 { .init(x, yz.x, yz.y, w) }

/// - Returns: Concatenated arguments.
@inlinable
public func simd_make_short4(_ xy: simd_short2, _ z: Int16, _ w: Int16) -> simd_short4 { .init(xy.x, xy.y, z, w) }

/// - Returns: Concatenated arguments.
@inlinable
public func simd_make_short4(_ x: Int16, _ yzw: simd_short3) -> simd_short4 { .init(x, yzw.x, yzw.y, yzw.z) }

/// - Returns: Concatenated arguments.
@inlinable
public func simd_make_short4(_ xy: simd_short2, _ zw: simd_short2) -> simd_short4 { .init(lowHalf: xy, highHalf: zw) }

/// - Returns: Concatenated arguments.
@inlinable
public func simd_make_short4(_ xyz: simd_short3, _ w: Int16) -> simd_short4 { .init(xyz, w) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_short4(_ other: Int16) -> simd_short4 { .init(other, 0, 0, 0) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_short4_undef(_ other: Int16) -> simd_short4 { simd_make_short4(other) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_short4(_ other: simd_short2) -> simd_short4 { .init(lowHalf: other, highHalf: .zero) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_short4_undef(_ other: simd_short2) -> simd_short4 { simd_make_short4(other) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_short4(_ other: simd_short3) -> simd_short4 { .init(other, 0) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_short4_undef(_ other: simd_short3) -> simd_short4 { simd_make_short4(other) }

/// - Returns: Unmodified *other*.
@inlinable
public func simd_make_short4(_ other: simd_short4) -> simd_short4 { other }

/// - Returns: Truncated *other*.
@inlinable
public func simd_make_short4(_ other: simd_short8) -> simd_short4 { other.lowHalf }

/// - Returns: Truncated *other*.
@inlinable
public func simd_make_short4(_ other: simd_short16) -> simd_short4 { .init(other[0], other[1], other[2], other[3]) }

/// - Returns: Truncated *other*.
@inlinable
public func simd_make_short4(_ other: simd_short32) -> simd_short4 { .init(other[0], other[1], other[2], other[3]) }


// MARK: - simd_make_short8

/// - Returns: Concatenated arguments.
@inlinable
public func simd_make_short8(_ lowHalf: simd_short4, _ highHalf: simd_short4) -> simd_short8 { .init(lowHalf: lowHalf, highHalf: highHalf) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_short8(_ other: Int16) -> simd_short8 { .init(lowHalf: .init(lowHalf: .init(other, 0), highHalf: .zero), highHalf: .zero) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_short8_undef(_ other: Int16) -> simd_short8 { simd_make_short8(other) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_short8(_ other: simd_short2) -> simd_short8 { .init(lowHalf: .init(lowHalf: other, highHalf: .zero), highHalf: .zero) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_short8_undef(_ other: simd_short2) -> simd_short8 { simd_make_short8(other) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_short8(_ other: simd_short3) -> simd_short8 { .init(lowHalf: .init(other, 0), highHalf: .zero) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_short8_undef(_ other: simd_short3) -> simd_short8 { simd_make_short8(other) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_short8(_ other: simd_short4) -> simd_short8 { .init(lowHalf: other, highHalf: .zero) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_short8_undef(_ other: simd_short4) -> simd_short8 { simd_make_short8(other) }

/// - Returns: Unmodified *other*.
@inlinable
public func simd_make_short8(_ other: simd_short8) -> simd_short8 { other }

/// - Returns: Truncated *other*.
@inlinable
public func simd_make_short8(_ other: simd_short16) -> simd_short8 { other.lowHalf }

/// - Returns: Truncated *other*.
@inlinable
public func simd_make_short8(_ other: simd_short32) -> simd_short8 { .init(other[0], other[1], other[2], other[3], other[4], other[5], other[6], other[7]) }


// MARK: - simd_make_short16

/// - Returns: Concatenated arguments.
@inlinable
public func simd_make_short16(_ lowHalf: simd_short8, _ highHalf: simd_short8) -> simd_short16 { .init(lowHalf: lowHalf, highHalf: highHalf) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_short16(_ other: Int16) -> simd_short16 { .init(lowHalf: .init(lowHalf: .init(lowHalf: .init(other, 0), highHalf: .zero), highHalf: .zero), highHalf: .zero) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_short16_undef(_ other: Int16) -> simd_short16 { simd_make_short16(other) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_short16(_ other: simd_short2) -> simd_short16 { .init(lowHalf: .init(lowHalf: .init(lowHalf: other, highHalf: .zero), highHalf: .zero), highHalf: .zero) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_short16_undef(_ other: simd_short2) -> simd_short16 { simd_make_short16(other) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_short16(_ other: simd_short3) -> simd_short16 { .init(lowHalf: .init(lowHalf: .init(other, 0), highHalf: .zero), highHalf: .zero) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_short16_undef(_ other: simd_short3) -> simd_short16 { simd_make_short16(other) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_short16(_ other: simd_short4) -> simd_short16 { .init(lowHalf: .init(lowHalf: other, highHalf: .zero), highHalf: .zero) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_short16_undef(_ other: simd_short4) -> simd_short16 { simd_make_short16(other) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_short16(_ other: simd_short8) -> simd_short16 { .init(lowHalf: other, highHalf: .zero) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_short16_undef(_ other: simd_short8) -> simd_short16 { simd_make_short16(other) }

/// - Returns: Unmodified *other*.
@inlinable
public func simd_make_short16(_ other: simd_short16) -> simd_short16 { other }

/// - Returns: Truncated *other*.
@inlinable
public func simd_make_short16(_ other: simd_short32) -> simd_short16 { other.lowHalf }


// MARK: - simd_make_short32

/// - Returns: Concatenated arguments.
@inlinable
public func simd_make_short32(_ lowHalf: simd_short16, _ highHalf: simd_short16) -> simd_short32 { .init(lowHalf: lowHalf, highHalf: highHalf) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_short32(_ other: Int16) -> simd_short32 { .init(lowHalf: .init(lowHalf: .init(lowHalf: .init(lowHalf: .init(other, 0), highHalf: .zero), highHalf: .zero), highHalf: .zero), highHalf: .zero) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_short32_undef(_ other: Int16) -> simd_short32 { simd_make_short32(other) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_short32(_ other: simd_short2) -> simd_short32 { .init(lowHalf: .init(lowHalf: .init(lowHalf: .init(lowHalf: other, highHalf: .zero), highHalf: .zero), highHalf: .zero), highHalf: .zero) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_short32_undef(_ other: simd_short2) -> simd_short32 { simd_make_short32(other) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_short32(_ other: simd_short3) -> simd_short32 { .init(lowHalf: .init(lowHalf: .init(lowHalf: .init(other, 0), highHalf: .zero), highHalf: .zero), highHalf: .zero) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_short32_undef(_ other: simd_short3) -> simd_short32 { simd_make_short32(other) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_short32(_ other: simd_short4) -> simd_short32 { .init(lowHalf: .init(lowHalf: .init(lowHalf: other, highHalf: .zero), highHalf: .zero), highHalf: .zero) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_short32_undef(_ other: simd_short4) -> simd_short32 { simd_make_short32(other) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_short32(_ other: simd_short8) -> simd_short32 { .init(lowHalf: .init(lowHalf: other, highHalf: .zero), highHalf: .zero) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_short32_undef(_ other: simd_short8) -> simd_short32 { simd_make_short32(other) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_short32(_ other: simd_short16) -> simd_short32 { .init(lowHalf: other, highHalf: .zero) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_short32_undef(_ other: simd_short16) -> simd_short32 { simd_make_short32(other) }

/// - Returns: Unmodified *other*.
@inlinable
public func simd_make_short32(_ other: simd_short32) -> simd_short32 { other }


// MARK: - simd_make_ushort2

/// - Returns: Concatenated arguments.
@inlinable
public func simd_make_ushort2(_ x: UInt16, _ y: UInt16) -> simd_ushort2 { .init(x, y) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_ushort2(_ other: UInt16) -> simd_ushort2 { .init(other, 0) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_ushort2_undef(_ other: UInt16) -> simd_ushort2 { simd_make_ushort2(other) }

/// - Returns: Unmodified *other*.
@inlinable
public func simd_make_ushort2(_ other: simd_ushort2) -> simd_ushort2 { other }

/// - Returns: Truncated *other*.
@inlinable
public func simd_make_ushort2(_ other: simd_ushort3) -> simd_ushort2 { .init(other.x, other.y) }

/// - Returns: Truncated *other*.
@inlinable
public func simd_make_ushort2(_ other: simd_ushort4) -> simd_ushort2 { other.lowHalf }

/// - Returns: Truncated *other*.
@inlinable
public func simd_make_ushort2(_ other: simd_ushort8) -> simd_ushort2 { .init(other[0], other[1]) }

/// - Returns: Truncated *other*.
@inlinable
public func simd_make_ushort2(_ other: simd_ushort16) -> simd_ushort2 { .init(other[0], other[1]) }

/// - Returns: Truncated *other*.
@inlinable
public func simd_make_ushort2(_ other: simd_ushort32) -> simd_ushort2 { .init(other[0], other[1]) }


// MARK: - simd_make_ushort3

/// - Returns: Concatenated arguments.
@inlinable
public func simd_make_ushort3(_ x: UInt16, _ y: UInt16, _ z: UInt16) -> simd_ushort3 { .init(x, y, z) }

/// - Returns: Concatenated arguments.
@inlinable
public func simd_make_ushort3(_ x: UInt16, _ yz: simd_ushort2) -> simd_ushort3 { .init(x, yz.x, yz.y) }

/// - Returns: Concatenated arguments.
@inlinable
public func simd_make_ushort3(_ xy: simd_ushort2, _ z: UInt16) -> simd_ushort3 { .init(xy, z) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_ushort3(_ other: UInt16) -> simd_ushort3 { .init(other, 0, 0) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_ushort3_undef(_ other: UInt16) -> simd_ushort3 { simd_make_ushort3(other) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_ushort3(_ other: simd_ushort2) -> simd_ushort3 { .init(other, 0) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_ushort3_undef(_ other: simd_ushort2) -> simd_ushort3 { simd_make_ushort3(other) }

/// - Returns: Unmodified *other*.
@inlinable
public func simd_make_ushort3(_ other: simd_ushort3) -> simd_ushort3 { other }

/// - Returns: Truncated *other*.
@inlinable
public func simd_make_ushort3(_ other: simd_ushort4) -> simd_ushort3 { .init(other.x, other.y, other.z) }

/// - Returns: Truncated *other*.
@inlinable
public func simd_make_ushort3(_ other: simd_ushort8) -> simd_ushort3 { .init(other[0], other[1], other[2]) }

/// - Returns: Truncated *other*.
@inlinable
public func simd_make_ushort3(_ other: simd_ushort16) -> simd_ushort3 { .init(other[0], other[1], other[2]) }

/// - Returns: Truncated *other*.
@inlinable
public func simd_make_ushort3(_ other: simd_ushort32) -> simd_ushort3 { .init(other[0], other[1], other[2]) }


// MARK: - simd_make_ushort4

/// - Returns: Concatenated arguments.
@inlinable
public func simd_make_ushort4(_ x: UInt16, _ y: UInt16, _ z: UInt16, _ w: UInt16) -> simd_ushort4 { .init(x, y, z, w) }

/// - Returns: Concatenated arguments.
@inlinable
public func simd_make_ushort4(_ x: UInt16, _ y: UInt16, _ zw: simd_ushort2) -> simd_ushort4 { .init(x, y, zw.x, zw.y) }

/// - Returns: Concatenated arguments.
@inlinable
public func simd_make_ushort4(_ x: UInt16, _ yz: simd_ushort2, _ w: UInt16) -> simd_ushort4 { .init(x, yz.x, yz.y, w) }

/// - Returns: Concatenated arguments.
@inlinable
public func simd_make_ushort4(_ xy: simd_ushort2, _ z: UInt16, _ w: UInt16) -> simd_ushort4 { .init(xy.x, xy.y, z, w) }

/// - Returns: Concatenated arguments.
@inlinable
public func simd_make_ushort4(_ x: UInt16, _ yzw: simd_ushort3) -> simd_ushort4 { .init(x, yzw.x, yzw.y, yzw.z) }

/// - Returns: Concatenated arguments.
@inlinable
public func simd_make_ushort4(_ xy: simd_ushort2, _ zw: simd_ushort2) -> simd_ushort4 { .init(lowHalf: xy, highHalf: zw) }

/// - Returns: Concatenated arguments.
@inlinable
public func simd_make_ushort4(_ xyz: simd_ushort3, _ w: UInt16) -> simd_ushort4 { .init(xyz, w) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_ushort4(_ other: UInt16) -> simd_ushort4 { .init(other, 0, 0, 0) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_ushort4_undef(_ other: UInt16) -> simd_ushort4 { simd_make_ushort4(other) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_ushort4(_ other: simd_ushort2) -> simd_ushort4 { .init(lowHalf: other, highHalf: .zero) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_ushort4_undef(_ other: simd_ushort2) -> simd_ushort4 { simd_make_ushort4(other) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_ushort4(_ other: simd_ushort3) -> simd_ushort4 { .init(other, 0) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_ushort4_undef(_ other: simd_ushort3) -> simd_ushort4 { simd_make_ushort4(other) }

/// - Returns: Unmodified *other*.
@inlinable
public func simd_make_ushort4(_ other: simd_ushort4) -> simd_ushort4 { other }

/// - Returns: Truncated *other*.
@inlinable
public func simd_make_ushort4(_ other: simd_ushort8) -> simd_ushort4 { other.lowHalf }

/// - Returns: Truncated *other*.
@inlinable
public func simd_make_ushort4(_ other: simd_ushort16) -> simd_ushort4 { .init(other[0], other[1], other[2], other[3]) }

/// - Returns: Truncated *other*.
@inlinable
public func simd_make_ushort4(_ other: simd_ushort32) -> simd_ushort4 { .init(other[0], other[1], other[2], other[3]) }


// MARK: - simd_make_ushort8

/// - Returns: Concatenated arguments.
@inlinable
public func simd_make_ushort8(_ lowHalf: simd_ushort4, _ highHalf: simd_ushort4) -> simd_ushort8 { .init(lowHalf: lowHalf, highHalf: highHalf) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_ushort8(_ other: UInt16) -> simd_ushort8 { .init(lowHalf: .init(lowHalf: .init(other, 0), highHalf: .zero), highHalf: .zero) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_ushort8_undef(_ other: UInt16) -> simd_ushort8 { simd_make_ushort8(other) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_ushort8(_ other: simd_ushort2) -> simd_ushort8 { .init(lowHalf: .init(lowHalf: other, highHalf: .zero), highHalf: .zero) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_ushort8_undef(_ other: simd_ushort2) -> simd_ushort8 { simd_make_ushort8(other) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_ushort8(_ other: simd_ushort3) -> simd_ushort8 { .init(lowHalf: .init(other, 0), highHalf: .zero) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_ushort8_undef(_ other: simd_ushort3) -> simd_ushort8 { simd_make_ushort8(other) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_ushort8(_ other: simd_ushort4) -> simd_ushort8 { .init(lowHalf: other, highHalf: .zero) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_ushort8_undef(_ other: simd_ushort4) -> simd_ushort8 { simd_make_ushort8(other) }

/// - Returns: Unmodified *other*.
@inlinable
public func simd_make_ushort8(_ other: simd_ushort8) -> simd_ushort8 { other }

/// - Returns: Truncated *other*.
@inlinable
public func simd_make_ushort8(_ other: simd_ushort16) -> simd_ushort8 { other.lowHalf }

/// - Returns: Truncated *other*.
@inlinable
public func simd_make_ushort8(_ other: simd_ushort32) -> simd_ushort8 { .init(other[0], other[1], other[2], other[3], other[4], other[5], other[6], other[7]) }


// MARK: - simd_make_ushort16

/// - Returns: Concatenated arguments.
@inlinable
public func simd_make_ushort16(_ lowHalf: simd_ushort8, _ highHalf: simd_ushort8) -> simd_ushort16 { .init(lowHalf: lowHalf, highHalf: highHalf) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_ushort16(_ other: UInt16) -> simd_ushort16 { .init(lowHalf: .init(lowHalf: .init(lowHalf: .init(other, 0), highHalf: .zero), highHalf: .zero), highHalf: .zero) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_ushort16_undef(_ other: UInt16) -> simd_ushort16 { simd_make_ushort16(other) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_ushort16(_ other: simd_ushort2) -> simd_ushort16 { .init(lowHalf: .init(lowHalf: .init(lowHalf: other, highHalf: .zero), highHalf: .zero), highHalf: .zero) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_ushort16_undef(_ other: simd_ushort2) -> simd_ushort16 { simd_make_ushort16(other) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_ushort16(_ other: simd_ushort3) -> simd_ushort16 { .init(lowHalf: .init(lowHalf: .init(other, 0), highHalf: .zero), highHalf: .zero) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_ushort16_undef(_ other: simd_ushort3) -> simd_ushort16 { simd_make_ushort16(other) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_ushort16(_ other: simd_ushort4) -> simd_ushort16 { .init(lowHalf: .init(lowHalf: other, highHalf: .zero), highHalf: .zero) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_ushort16_undef(_ other: simd_ushort4) -> simd_ushort16 { simd_make_ushort16(other) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_ushort16(_ other: simd_ushort8) -> simd_ushort16 { .init(lowHalf: other, highHalf: .zero) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_ushort16_undef(_ other: simd_ushort8) -> simd_ushort16 { simd_make_ushort16(other) }

/// - Returns: Unmodified *other*.
@inlinable
public func simd_make_ushort16(_ other: simd_ushort16) -> simd_ushort16 { other }

/// - Returns: Truncated *other*.
@inlinable
public func simd_make_ushort16(_ other: simd_ushort32) -> simd_ushort16 { other.lowHalf }


// MARK: - simd_make_ushort32

/// - Returns: Concatenated arguments.
@inlinable
public func simd_make_ushort32(_ lowHalf: simd_ushort16, _ highHalf: simd_ushort16) -> simd_ushort32 { .init(lowHalf: lowHalf, highHalf: highHalf) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_ushort32(_ other: UInt16) -> simd_ushort32 { .init(lowHalf: .init(lowHalf: .init(lowHalf: .init(lowHalf: .init(other, 0), highHalf: .zero), highHalf: .zero), highHalf: .zero), highHalf: .zero) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_ushort32_undef(_ other: UInt16) -> simd_ushort32 { simd_make_ushort32(other) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_ushort32(_ other: simd_ushort2) -> simd_ushort32 { .init(lowHalf: .init(lowHalf: .init(lowHalf: .init(lowHalf: other, highHalf: .zero), highHalf: .zero), highHalf: .zero), highHalf: .zero) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_ushort32_undef(_ other: simd_ushort2) -> simd_ushort32 { simd_make_ushort32(other) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_ushort32(_ other: simd_ushort3) -> simd_ushort32 { .init(lowHalf: .init(lowHalf: .init(lowHalf: .init(other, 0), highHalf: .zero), highHalf: .zero), highHalf: .zero) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_ushort32_undef(_ other: simd_ushort3) -> simd_ushort32 { simd_make_ushort32(other) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_ushort32(_ other: simd_ushort4) -> simd_ushort32 { .init(lowHalf: .init(lowHalf: .init(lowHalf: other, highHalf: .zero), highHalf: .zero), highHalf: .zero) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_ushort32_undef(_ other: simd_ushort4) -> simd_ushort32 { simd_make_ushort32(other) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_ushort32(_ other: simd_ushort8) -> simd_ushort32 { .init(lowHalf: .init(lowHalf: other, highHalf: .zero), highHalf: .zero) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_ushort32_undef(_ other: simd_ushort8) -> simd_ushort32 { simd_make_ushort32(other) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_ushort32(_ other: simd_ushort16) -> simd_ushort32 { .init(lowHalf: other, highHalf: .zero) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_ushort32_undef(_ other: simd_ushort16) -> simd_ushort32 { simd_make_ushort32(other) }

/// - Returns: Unmodified *other*.
@inlinable
public func simd_make_ushort32(_ other: simd_ushort32) -> simd_ushort32 { other }


// MARK: - simd_make_int2

/// - Returns: Concatenated arguments.
@inlinable
public func simd_make_int2(_ x: Int32, _ y: Int32) -> simd_int2 { .init(x, y) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_int2(_ other: Int32) -> simd_int2 { .init(other, 0) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_int2_undef(_ other: Int32) -> simd_int2 { simd_make_int2(other) }

/// - Returns: Unmodified *other*.
@inlinable
public func simd_make_int2(_ other: simd_int2) -> simd_int2 { other }

/// - Returns: Truncated *other*.
@inlinable
public func simd_make_int2(_ other: simd_int3) -> simd_int2 { .init(other.x, other.y) }

/// - Returns: Truncated *other*.
@inlinable
public func simd_make_int2(_ other: simd_int4) -> simd_int2 { other.lowHalf }

/// - Returns: Truncated *other*.
@inlinable
public func simd_make_int2(_ other: simd_int8) -> simd_int2 { .init(other[0], other[1]) }

/// - Returns: Truncated *other*.
@inlinable
public func simd_make_int2(_ other: simd_int16) -> simd_int2 { .init(other[0], other[1]) }


// MARK: - simd_make_int3

/// - Returns: Concatenated arguments.
@inlinable
public func simd_make_int3(_ x: Int32, _ y: Int32, _ z: Int32) -> simd_int3 { .init(x, y, z) }

/// - Returns: Concatenated arguments.
@inlinable
public func simd_make_int3(_ x: Int32, _ yz: simd_int2) -> simd_int3 { .init(x, yz.x, yz.y) }

/// - Returns: Concatenated arguments.
@inlinable
public func simd_make_int3(_ xy: simd_int2, _ z: Int32) -> simd_int3 { .init(xy, z) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_int3(_ other: Int32) -> simd_int3 { .init(other, 0, 0) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_int3_undef(_ other: Int32) -> simd_int3 { simd_make_int3(other) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_int3(_ other: simd_int2) -> simd_int3 { .init(other, 0) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_int3_undef(_ other: simd_int2) -> simd_int3 { simd_make_int3(other) }

/// - Returns: Unmodified *other*.
@inlinable
public func simd_make_int3(_ other: simd_int3) -> simd_int3 { other }

/// - Returns: Truncated *other*.
@inlinable
public func simd_make_int3(_ other: simd_int4) -> simd_int3 { .init(other.x, other.y, other.z) }

/// - Returns: Truncated *other*.
@inlinable
public func simd_make_int3(_ other: simd_int8) -> simd_int3 { .init(other[0], other[1], other[2]) }

/// - Returns: Truncated *other*.
@inlinable
public func simd_make_int3(_ other: simd_int16) -> simd_int3 { .init(other[0], other[1], other[2]) }


// MARK: - simd_make_int4

/// - Returns: Concatenated arguments.
@inlinable
public func simd_make_int4(_ x: Int32, _ y: Int32, _ z: Int32, _ w: Int32) -> simd_int4 { .init(x, y, z, w) }

/// - Returns: Concatenated arguments.
@inlinable
public func simd_make_int4(_ x: Int32, _ y: Int32, _ zw: simd_int2) -> simd_int4 { .init(x, y, zw.x, zw.y) }

/// - Returns: Concatenated arguments.
@inlinable
public func simd_make_int4(_ x: Int32, _ yz: simd_int2, _ w: Int32) -> simd_int4 { .init(x, yz.x, yz.y, w) }

/// - Returns: Concatenated arguments.
@inlinable
public func simd_make_int4(_ xy: simd_int2, _ z: Int32, _ w: Int32) -> simd_int4 { .init(xy.x, xy.y, z, w) }

/// - Returns: Concatenated arguments.
@inlinable
public func simd_make_int4(_ x: Int32, _ yzw: simd_int3) -> simd_int4 { .init(x, yzw.x, yzw.y, yzw.z) }

/// - Returns: Concatenated arguments.
@inlinable
public func simd_make_int4(_ xy: simd_int2, _ zw: simd_int2) -> simd_int4 { .init(lowHalf: xy, highHalf: zw) }

/// - Returns: Concatenated arguments.
@inlinable
public func simd_make_int4(_ xyz: simd_int3, _ w: Int32) -> simd_int4 { .init(xyz, w) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_int4(_ other: Int32) -> simd_int4 { .init(other, 0, 0, 0) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_int4_undef(_ other: Int32) -> simd_int4 { simd_make_int4(other) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_int4(_ other: simd_int2) -> simd_int4 { .init(lowHalf: other, highHalf: .zero) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_int4_undef(_ other: simd_int2) -> simd_int4 { simd_make_int4(other) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_int4(_ other: simd_int3) -> simd_int4 { .init(other, 0) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_int4_undef(_ other: simd_int3) -> simd_int4 { simd_make_int4(other) }

/// - Returns: Unmodified *other*.
@inlinable
public func simd_make_int4(_ other: simd_int4) -> simd_int4 { other }

/// - Returns: Truncated *other*.
@inlinable
public func simd_make_int4(_ other: simd_int8) -> simd_int4 { other.lowHalf }

/// - Returns: Truncated *other*.
@inlinable
public func simd_make_int4(_ other: simd_int16) -> simd_int4 { .init(other[0], other[1], other[2], other[3]) }


// MARK: - simd_make_int8

/// - Returns: Concatenated arguments.
@inlinable
public func simd_make_int8(_ lowHalf: simd_int4, _ highHalf: simd_int4) -> simd_int8 { .init(lowHalf: lowHalf, highHalf: highHalf) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_int8(_ other: Int32) -> simd_int8 { .init(lowHalf: .init(lowHalf: .init(other, 0), highHalf: .zero), highHalf: .zero) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_int8_undef(_ other: Int32) -> simd_int8 { simd_make_int8(other) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_int8(_ other: simd_int2) -> simd_int8 { .init(lowHalf: .init(lowHalf: other, highHalf: .zero), highHalf: .zero) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_int8_undef(_ other: simd_int2) -> simd_int8 { simd_make_int8(other) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_int8(_ other: simd_int3) -> simd_int8 { .init(lowHalf: .init(other, 0), highHalf: .zero) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_int8_undef(_ other: simd_int3) -> simd_int8 { simd_make_int8(other) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_int8(_ other: simd_int4) -> simd_int8 { .init(lowHalf: other, highHalf: .zero) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_int8_undef(_ other: simd_int4) -> simd_int8 { simd_make_int8(other) }

/// - Returns: Unmodified *other*.
@inlinable
public func simd_make_int8(_ other: simd_int8) -> simd_int8 { other }

/// - Returns: Truncated *other*.
@inlinable
public func simd_make_int8(_ other: simd_int16) -> simd_int8 { other.lowHalf }


// MARK: - simd_make_int16

/// - Returns: Concatenated arguments.
@inlinable
public func simd_make_int16(_ lowHalf: simd_int8, _ highHalf: simd_int8) -> simd_int16 { .init(lowHalf: lowHalf, highHalf: highHalf) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_int16(_ other: Int32) -> simd_int16 { .init(lowHalf: .init(lowHalf: .init(lowHalf: .init(other, 0), highHalf: .zero), highHalf: .zero), highHalf: .zero) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_int16_undef(_ other: Int32) -> simd_int16 { simd_make_int16(other) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_int16(_ other: simd_int2) -> simd_int16 { .init(lowHalf: .init(lowHalf: .init(lowHalf: other, highHalf: .zero), highHalf: .zero), highHalf: .zero) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_int16_undef(_ other: simd_int2) -> simd_int16 { simd_make_int16(other) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_int16(_ other: simd_int3) -> simd_int16 { .init(lowHalf: .init(lowHalf: .init(other, 0), highHalf: .zero), highHalf: .zero) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_int16_undef(_ other: simd_int3) -> simd_int16 { simd_make_int16(other) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_int16(_ other: simd_int4) -> simd_int16 { .init(lowHalf: .init(lowHalf: other, highHalf: .zero), highHalf: .zero) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_int16_undef(_ other: simd_int4) -> simd_int16 { simd_make_int16(other) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_int16(_ other: simd_int8) -> simd_int16 { .init(lowHalf: other, highHalf: .zero) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_int16_undef(_ other: simd_int8) -> simd_int16 { simd_make_int16(other) }

/// - Returns: Unmodified *other*.
@inlinable
public func simd_make_int16(_ other: simd_int16) -> simd_int16 { other }


// MARK: - simd_make_uint2

/// - Returns: Concatenated arguments.
@inlinable
public func simd_make_uint2(_ x: UInt32, _ y: UInt32) -> simd_uint2 { .init(x, y) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_uint2(_ other: UInt32) -> simd_uint2 { .init(other, 0) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_uint2_undef(_ other: UInt32) -> simd_uint2 { simd_make_uint2(other) }

/// - Returns: Unmodified *other*.
@inlinable
public func simd_make_uint2(_ other: simd_uint2) -> simd_uint2 { other }

/// - Returns: Truncated *other*.
@inlinable
public func simd_make_uint2(_ other: simd_uint3) -> simd_uint2 { .init(other.x, other.y) }

/// - Returns: Truncated *other*.
@inlinable
public func simd_make_uint2(_ other: simd_uint4) -> simd_uint2 { other.lowHalf }

/// - Returns: Truncated *other*.
@inlinable
public func simd_make_uint2(_ other: simd_uint8) -> simd_uint2 { .init(other[0], other[1]) }

/// - Returns: Truncated *other*.
@inlinable
public func simd_make_uint2(_ other: simd_uint16) -> simd_uint2 { .init(other[0], other[1]) }


// MARK: - simd_make_uint3

/// - Returns: Concatenated arguments.
@inlinable
public func simd_make_uint3(_ x: UInt32, _ y: UInt32, _ z: UInt32) -> simd_uint3 { .init(x, y, z) }

/// - Returns: Concatenated arguments.
@inlinable
public func simd_make_uint3(_ x: UInt32, _ yz: simd_uint2) -> simd_uint3 { .init(x, yz.x, yz.y) }

/// - Returns: Concatenated arguments.
@inlinable
public func simd_make_uint3(_ xy: simd_uint2, _ z: UInt32) -> simd_uint3 { .init(xy, z) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_uint3(_ other: UInt32) -> simd_uint3 { .init(other, 0, 0) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_uint3_undef(_ other: UInt32) -> simd_uint3 { simd_make_uint3(other) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_uint3(_ other: simd_uint2) -> simd_uint3 { .init(other, 0) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_uint3_undef(_ other: simd_uint2) -> simd_uint3 { simd_make_uint3(other) }

/// - Returns: Unmodified *other*.
@inlinable
public func simd_make_uint3(_ other: simd_uint3) -> simd_uint3 { other }

/// - Returns: Truncated *other*.
@inlinable
public func simd_make_uint3(_ other: simd_uint4) -> simd_uint3 { .init(other.x, other.y, other.z) }

/// - Returns: Truncated *other*.
@inlinable
public func simd_make_uint3(_ other: simd_uint8) -> simd_uint3 { .init(other[0], other[1], other[2]) }

/// - Returns: Truncated *other*.
@inlinable
public func simd_make_uint3(_ other: simd_uint16) -> simd_uint3 { .init(other[0], other[1], other[2]) }


// MARK: - simd_make_uint4

/// - Returns: Concatenated arguments.
@inlinable
public func simd_make_uint4(_ x: UInt32, _ y: UInt32, _ z: UInt32, _ w: UInt32) -> simd_uint4 { .init(x, y, z, w) }

/// - Returns: Concatenated arguments.
@inlinable
public func simd_make_uint4(_ x: UInt32, _ y: UInt32, _ zw: simd_uint2) -> simd_uint4 { .init(x, y, zw.x, zw.y) }

/// - Returns: Concatenated arguments.
@inlinable
public func simd_make_uint4(_ x: UInt32, _ yz: simd_uint2, _ w: UInt32) -> simd_uint4 { .init(x, yz.x, yz.y, w) }

/// - Returns: Concatenated arguments.
@inlinable
public func simd_make_uint4(_ xy: simd_uint2, _ z: UInt32, _ w: UInt32) -> simd_uint4 { .init(xy.x, xy.y, z, w) }

/// - Returns: Concatenated arguments.
@inlinable
public func simd_make_uint4(_ x: UInt32, _ yzw: simd_uint3) -> simd_uint4 { .init(x, yzw.x, yzw.y, yzw.z) }

/// - Returns: Concatenated arguments.
@inlinable
public func simd_make_uint4(_ xy: simd_uint2, _ zw: simd_uint2) -> simd_uint4 { .init(lowHalf: xy, highHalf: zw) }

/// - Returns: Concatenated arguments.
@inlinable
public func simd_make_uint4(_ xyz: simd_uint3, _ w: UInt32) -> simd_uint4 { .init(xyz, w) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_uint4(_ other: UInt32) -> simd_uint4 { .init(other, 0, 0, 0) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_uint4_undef(_ other: UInt32) -> simd_uint4 { simd_make_uint4(other) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_uint4(_ other: simd_uint2) -> simd_uint4 { .init(lowHalf: other, highHalf: .zero) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_uint4_undef(_ other: simd_uint2) -> simd_uint4 { simd_make_uint4(other) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_uint4(_ other: simd_uint3) -> simd_uint4 { .init(other, 0) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_uint4_undef(_ other: simd_uint3) -> simd_uint4 { simd_make_uint4(other) }

/// - Returns: Unmodified *other*.
@inlinable
public func simd_make_uint4(_ other: simd_uint4) -> simd_uint4 { other }

/// - Returns: Truncated *other*.
@inlinable
public func simd_make_uint4(_ other: simd_uint8) -> simd_uint4 { other.lowHalf }

/// - Returns: Truncated *other*.
@inlinable
public func simd_make_uint4(_ other: simd_uint16) -> simd_uint4 { .init(other[0], other[1], other[2], other[3]) }


// MARK: - simd_make_uint8

/// - Returns: Concatenated arguments.
@inlinable
public func simd_make_uint8(_ lowHalf: simd_uint4, _ highHalf: simd_uint4) -> simd_uint8 { .init(lowHalf: lowHalf, highHalf: highHalf) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_uint8(_ other: UInt32) -> simd_uint8 { .init(lowHalf: .init(lowHalf: .init(other, 0), highHalf: .zero), highHalf: .zero) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_uint8_undef(_ other: UInt32) -> simd_uint8 { simd_make_uint8(other) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_uint8(_ other: simd_uint2) -> simd_uint8 { .init(lowHalf: .init(lowHalf: other, highHalf: .zero), highHalf: .zero) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_uint8_undef(_ other: simd_uint2) -> simd_uint8 { simd_make_uint8(other) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_uint8(_ other: simd_uint3) -> simd_uint8 { .init(lowHalf: .init(other, 0), highHalf: .zero) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_uint8_undef(_ other: simd_uint3) -> simd_uint8 { simd_make_uint8(other) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_uint8(_ other: simd_uint4) -> simd_uint8 { .init(lowHalf: other, highHalf: .zero) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_uint8_undef(_ other: simd_uint4) -> simd_uint8 { simd_make_uint8(other) }

/// - Returns: Unmodified *other*.
@inlinable
public func simd_make_uint8(_ other: simd_uint8) -> simd_uint8 { other }

/// - Returns: Truncated *other*.
@inlinable
public func simd_make_uint8(_ other: simd_uint16) -> simd_uint8 { .init(other[0], other[1], other[2], other[3], other[4], other[5], other[6], other[7]) }


// MARK: - simd_make_uint16

/// - Returns: Concatenated arguments.
@inlinable
public func simd_make_uint16(_ lowHalf: simd_uint8, _ highHalf: simd_uint8) -> simd_uint16 { .init(lowHalf: lowHalf, highHalf: highHalf) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_uint16(_ other: UInt32) -> simd_uint16 { .init(lowHalf: .init(lowHalf: .init(lowHalf: .init(other, 0), highHalf: .zero), highHalf: .zero), highHalf: .zero) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_uint16_undef(_ other: UInt32) -> simd_uint16 { simd_make_uint16(other) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_uint16(_ other: simd_uint2) -> simd_uint16 { .init(lowHalf: .init(lowHalf: .init(lowHalf: other, highHalf: .zero), highHalf: .zero), highHalf: .zero) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_uint16_undef(_ other: simd_uint2) -> simd_uint16 { simd_make_uint16(other) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_uint16(_ other: simd_uint3) -> simd_uint16 { .init(lowHalf: .init(lowHalf: .init(other, 0), highHalf: .zero), highHalf: .zero) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_uint16_undef(_ other: simd_uint3) -> simd_uint16 { simd_make_uint16(other) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_uint16(_ other: simd_uint4) -> simd_uint16 { .init(lowHalf: .init(lowHalf: other, highHalf: .zero), highHalf: .zero) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_uint16_undef(_ other: simd_uint4) -> simd_uint16 { simd_make_uint16(other) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_uint16(_ other: simd_uint8) -> simd_uint16 { .init(lowHalf: other, highHalf: .zero) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_uint16_undef(_ other: simd_uint8) -> simd_uint16 { simd_make_uint16(other) }

/// - Returns: Unmodified *other*.
@inlinable
public func simd_make_uint16(_ other: simd_uint16) -> simd_uint16 { other }


// MARK: - simd_make_long2

/// - Returns: Concatenated arguments.
@inlinable
public func simd_make_long2(_ x: simd_long1, _ y: simd_long1) -> simd_long2 { .init(x, y) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_long2(_ other: simd_long1) -> simd_long2 { .init(other, 0) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_long2_undef(_ other: simd_long1) -> simd_long2 { simd_make_long2(other) }

/// - Returns: Unmodified *other*.
@inlinable
public func simd_make_long2(_ other: simd_long2) -> simd_long2 { other }

/// - Returns: Truncated *other*.
@inlinable
public func simd_make_long2(_ other: simd_long3) -> simd_long2 { .init(other.x, other.y) }

/// - Returns: Truncated *other*.
@inlinable
public func simd_make_long2(_ other: simd_long4) -> simd_long2 { other.lowHalf }

/// - Returns: Truncated *other*.
@inlinable
public func simd_make_long2(_ other: simd_long8) -> simd_long2 { .init(other[0], other[1]) }


// MARK: - simd_make_long3

/// - Returns: Concatenated arguments.
@inlinable
public func simd_make_long3(_ x: simd_long1, _ y: simd_long1, _ z: simd_long1) -> simd_long3 { .init(x, y, z) }

/// - Returns: Concatenated arguments.
@inlinable
public func simd_make_long3(_ x: simd_long1, _ yz: simd_long2) -> simd_long3 { .init(x, yz.x, yz.y) }

/// - Returns: Concatenated arguments.
@inlinable
public func simd_make_long3(_ xy: simd_long2, _ z: simd_long1) -> simd_long3 { .init(xy, z) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_long3(_ other: simd_long1) -> simd_long3 { .init(other, 0, 0) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_long3_undef(_ other: simd_long1) -> simd_long3 { simd_make_long3(other) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_long3(_ other: simd_long2) -> simd_long3 { .init(other, 0) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_long3_undef(_ other: simd_long2) -> simd_long3 { simd_make_long3(other) }

/// - Returns: Unmodified *other*.
@inlinable
public func simd_make_long3(_ other: simd_long3) -> simd_long3 { other }

/// - Returns: Truncated *other*.
@inlinable
public func simd_make_long3(_ other: simd_long4) -> simd_long3 { .init(other.x, other.y, other.z) }

/// - Returns: Truncated *other*.
@inlinable
public func simd_make_long3(_ other: simd_long8) -> simd_long3 { .init(other[0], other[1], other[2]) }


// MARK: - simd_make_long4

/// - Returns: Concatenated arguments.
@inlinable
public func simd_make_long4(_ x: simd_long1, _ y: simd_long1, _ z: simd_long1, _ w: simd_long1) -> simd_long4 { .init(x, y, z, w) }

/// - Returns: Concatenated arguments.
@inlinable
public func simd_make_long4(_ x: simd_long1, _ y: simd_long1, _ zw: simd_long2) -> simd_long4 { .init(x, y, zw.x, zw.y) }

/// - Returns: Concatenated arguments.
@inlinable
public func simd_make_long4(_ x: simd_long1, _ yz: simd_long2, _ w: simd_long1) -> simd_long4 { .init(x, yz.x, yz.y, w) }

/// - Returns: Concatenated arguments.
@inlinable
public func simd_make_long4(_ xy: simd_long2, _ z: simd_long1, _ w: simd_long1) -> simd_long4 { .init(xy.x, xy.y, z, w) }

/// - Returns: Concatenated arguments.
@inlinable
public func simd_make_long4(_ x: simd_long1, _ yzw: simd_long3) -> simd_long4 { .init(x, yzw.x, yzw.y, yzw.z) }

/// - Returns: Concatenated arguments.
@inlinable
public func simd_make_long4(_ xy: simd_long2, _ zw: simd_long2) -> simd_long4 { .init(lowHalf: xy, highHalf: zw) }

/// - Returns: Concatenated arguments.
@inlinable
public func simd_make_long4(_ xyz: simd_long3, _ w: simd_long1) -> simd_long4 { .init(xyz, w) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_long4(_ other: simd_long1) -> simd_long4 { .init(other, 0, 0, 0) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_long4_undef(_ other: simd_long1) -> simd_long4 { simd_make_long4(other) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_long4(_ other: simd_long2) -> simd_long4 { .init(lowHalf: other, highHalf: .zero) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_long4_undef(_ other: simd_long2) -> simd_long4 { simd_make_long4(other) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_long4(_ other: simd_long3) -> simd_long4 { .init(other, 0) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_long4_undef(_ other: simd_long3) -> simd_long4 { simd_make_long4(other) }

/// - Returns: Unmodified *other*.
@inlinable
public func simd_make_long4(_ other: simd_long4) -> simd_long4 { other }

/// - Returns: Truncated *other*.
@inlinable
public func simd_make_long4(_ other: simd_long8) -> simd_long4 { other.lowHalf }


// MARK: - simd_make_long8

/// - Returns: Concatenated arguments.
@inlinable
public func simd_make_long8(_ lowHalf: simd_long4, _ highHalf: simd_long4) -> simd_long8 { .init(lowHalf: lowHalf, highHalf: highHalf) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_long8(_ other: simd_long1) -> simd_long8 { .init(lowHalf: .init(lowHalf: .init(other, 0), highHalf: .zero), highHalf: .zero) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_long8_undef(_ other: simd_long1) -> simd_long8 { simd_make_long8(other) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_long8(_ other: simd_long2) -> simd_long8 { .init(lowHalf: .init(lowHalf: other, highHalf: .zero), highHalf: .zero) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_long8_undef(_ other: simd_long2) -> simd_long8 { simd_make_long8(other) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_long8(_ other: simd_long3) -> simd_long8 { .init(lowHalf: .init(other, 0), highHalf: .zero) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_long8_undef(_ other: simd_long3) -> simd_long8 { simd_make_long8(other) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_long8(_ other: simd_long4) -> simd_long8 { .init(lowHalf: other, highHalf: .zero) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_long8_undef(_ other: simd_long4) -> simd_long8 { simd_make_long8(other) }

/// - Returns: Unmodified *other*.
@inlinable
public func simd_make_long8(_ other: simd_long8) -> simd_long8 { other }


// MARK: - simd_make_ulong2

/// - Returns: Concatenated arguments.
@inlinable
public func simd_make_ulong2(_ x: simd_ulong1, _ y: simd_ulong1) -> simd_ulong2 { .init(x, y) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_ulong2(_ other: simd_ulong1) -> simd_ulong2 { .init(other, 0) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_ulong2_undef(_ other: simd_ulong1) -> simd_ulong2 { simd_make_ulong2(other) }

/// - Returns: Unmodified *other*.
@inlinable
public func simd_make_ulong2(_ other: simd_ulong2) -> simd_ulong2 { other }

/// - Returns: Truncated *other*.
@inlinable
public func simd_make_ulong2(_ other: simd_ulong3) -> simd_ulong2 { .init(other.x, other.y) }

/// - Returns: Truncated *other*.
@inlinable
public func simd_make_ulong2(_ other: simd_ulong4) -> simd_ulong2 { other.lowHalf }

/// - Returns: Truncated *other*.
@inlinable
public func simd_make_ulong2(_ other: simd_ulong8) -> simd_ulong2 { .init(other[0], other[1]) }


// MARK: - simd_make_ulong3

/// - Returns: Concatenated arguments.
@inlinable
public func simd_make_ulong3(_ x: simd_ulong1, _ y: simd_ulong1, _ z: simd_ulong1) -> simd_ulong3 { .init(x, y, z) }

/// - Returns: Concatenated arguments.
@inlinable
public func simd_make_ulong3(_ x: simd_ulong1, _ yz: simd_ulong2) -> simd_ulong3 { .init(x, yz.x, yz.y) }

/// - Returns: Concatenated arguments.
@inlinable
public func simd_make_ulong3(_ xy: simd_ulong2, _ z: simd_ulong1) -> simd_ulong3 { .init(xy, z) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_ulong3(_ other: simd_ulong1) -> simd_ulong3 { .init(other, 0, 0) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_ulong3_undef(_ other: simd_ulong1) -> simd_ulong3 { simd_make_ulong3(other) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_ulong3(_ other: simd_ulong2) -> simd_ulong3 { .init(other, 0) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_ulong3_undef(_ other: simd_ulong2) -> simd_ulong3 { simd_make_ulong3(other) }

/// - Returns: Unmodified *other*.
@inlinable
public func simd_make_ulong3(_ other: simd_ulong3) -> simd_ulong3 { other }

/// - Returns: Truncated *other*.
@inlinable
public func simd_make_ulong3(_ other: simd_ulong4) -> simd_ulong3 { .init(other.x, other.y, other.z) }

/// - Returns: Truncated *other*.
@inlinable
public func simd_make_ulong3(_ other: simd_ulong8) -> simd_ulong3 { .init(other[0], other[1], other[2]) }


// MARK: - simd_make_ulong4

/// - Returns: Concatenated arguments.
@inlinable
public func simd_make_ulong4(_ x: simd_ulong1, _ y: simd_ulong1, _ z: simd_ulong1, _ w: simd_ulong1) -> simd_ulong4 { .init(x, y, z, w) }

/// - Returns: Concatenated arguments.
@inlinable
public func simd_make_ulong4(_ x: simd_ulong1, _ y: simd_ulong1, _ zw: simd_ulong2) -> simd_ulong4 { .init(x, y, zw.x, zw.y) }

/// - Returns: Concatenated arguments.
@inlinable
public func simd_make_ulong4(_ x: simd_ulong1, _ yz: simd_ulong2, _ w: simd_ulong1) -> simd_ulong4 { .init(x, yz.x, yz.y, w) }

/// - Returns: Concatenated arguments.
@inlinable
public func simd_make_ulong4(_ xy: simd_ulong2, _ z: simd_ulong1, _ w: simd_ulong1) -> simd_ulong4 { .init(xy.x, xy.y, z, w) }

/// - Returns: Concatenated arguments.
@inlinable
public func simd_make_ulong4(_ x: simd_ulong1, _ yzw: simd_ulong3) -> simd_ulong4 { .init(x, yzw.x, yzw.y, yzw.z) }

/// - Returns: Concatenated arguments.
@inlinable
public func simd_make_ulong4(_ xy: simd_ulong2, _ zw: simd_ulong2) -> simd_ulong4 { .init(lowHalf: xy, highHalf: zw) }

/// - Returns: Concatenated arguments.
@inlinable
public func simd_make_ulong4(_ xyz: simd_ulong3, _ w: simd_ulong1) -> simd_ulong4 { .init(xyz, w) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_ulong4(_ other: simd_ulong1) -> simd_ulong4 { .init(other, 0, 0, 0) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_ulong4_undef(_ other: simd_ulong1) -> simd_ulong4 { simd_make_ulong4(other) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_ulong4(_ other: simd_ulong2) -> simd_ulong4 { .init(lowHalf: other, highHalf: .zero) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_ulong4_undef(_ other: simd_ulong2) -> simd_ulong4 { simd_make_ulong4(other) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_ulong4(_ other: simd_ulong3) -> simd_ulong4 { .init(other, 0) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_ulong4_undef(_ other: simd_ulong3) -> simd_ulong4 { simd_make_ulong4(other) }

/// - Returns: Unmodified *other*.
@inlinable
public func simd_make_ulong4(_ other: simd_ulong4) -> simd_ulong4 { other }

/// - Returns: Truncated *other*.
@inlinable
public func simd_make_ulong4(_ other: simd_ulong8) -> simd_ulong4 { other.lowHalf }


// MARK: - simd_make_ulong8

/// - Returns: Concatenated arguments.
@inlinable
public func simd_make_ulong8(_ lowHalf: simd_ulong4, _ highHalf: simd_ulong4) -> simd_ulong8 { .init(lowHalf: lowHalf, highHalf: highHalf) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_ulong8(_ other: simd_ulong1) -> simd_ulong8 { .init(lowHalf: .init(lowHalf: .init(other, 0), highHalf: .zero), highHalf: .zero) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_ulong8_undef(_ other: simd_ulong1) -> simd_ulong8 { simd_make_ulong8(other) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_ulong8(_ other: simd_ulong2) -> simd_ulong8 { .init(lowHalf: .init(lowHalf: other, highHalf: .zero), highHalf: .zero) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_ulong8_undef(_ other: simd_ulong2) -> simd_ulong8 { simd_make_ulong8(other) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_ulong8(_ other: simd_ulong3) -> simd_ulong8 { .init(lowHalf: .init(other, 0), highHalf: .zero) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_ulong8_undef(_ other: simd_ulong3) -> simd_ulong8 { simd_make_ulong8(other) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_ulong8(_ other: simd_ulong4) -> simd_ulong8 { .init(lowHalf: other, highHalf: .zero) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_ulong8_undef(_ other: simd_ulong4) -> simd_ulong8 { simd_make_ulong8(other) }

/// - Returns: Unmodified *other*.
@inlinable
public func simd_make_ulong8(_ other: simd_ulong8) -> simd_ulong8 { other }


// MARK: - simd_make_float2

/// - Returns: Concatenated arguments.
@inlinable
public func simd_make_float2(_ x: Float, _ y: Float) -> simd_float2 { .init(x, y) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_float2(_ other: Float) -> simd_float2 { .init(other, 0.0) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_float2_undef(_ other: Float) -> simd_float2 { simd_make_float2(other) }

/// - Returns: Unmodified *other*.
@inlinable
public func simd_make_float2(_ other: simd_float2) -> simd_float2 { other }

/// - Returns: Truncated *other*.
@inlinable
public func simd_make_float2(_ other: simd_float3) -> simd_float2 { .init(other.x, other.y) }

/// - Returns: Truncated *other*.
@inlinable
public func simd_make_float2(_ other: simd_float4) -> simd_float2 { other.lowHalf }

/// - Returns: Truncated *other*.
@inlinable
public func simd_make_float2(_ other: simd_float8) -> simd_float2 { .init(other[0], other[1]) }

/// - Returns: Truncated *other*.
@inlinable
public func simd_make_float2(_ other: simd_float16) -> simd_float2 { .init(other[0], other[1]) }


// MARK: - simd_make_float3

/// - Returns: Concatenated arguments.
@inlinable
public func simd_make_float3(_ x: Float, _ y: Float, _ z: Float) -> simd_float3 { .init(x, y, z) }

/// - Returns: Concatenated arguments.
@inlinable
public func simd_make_float3(_ x: Float, _ yz: simd_float2) -> simd_float3 { .init(x, yz.x, yz.y) }

/// - Returns: Concatenated arguments.
@inlinable
public func simd_make_float3(_ xy: simd_float2, _ z: Float) -> simd_float3 { .init(xy, z) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_float3(_ other: Float) -> simd_float3 { .init(other, 0.0, 0.0) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_float3_undef(_ other: Float) -> simd_float3 { simd_make_float3(other) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_float3(_ other: simd_float2) -> simd_float3 { .init(other, 0.0) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_float3_undef(_ other: simd_float2) -> simd_float3 { simd_make_float3(other) }

/// - Returns: Unmodified *other*.
@inlinable
public func simd_make_float3(_ other: simd_float3) -> simd_float3 { other }

/// - Returns: Truncated argument.
@inlinable
public func simd_make_float3(_ other: simd_float4) -> simd_float3 { .init(other.x, other.y, other.z) }

/// - Returns: Truncated argument.
@inlinable
public func simd_make_float3(_ other: simd_float8) -> simd_float3 { .init(other[0], other[1], other[2]) }

/// - Returns: Truncated argument.
@inlinable
public func simd_make_float3(_ other: simd_float16) -> simd_float3 { .init(other[0], other[1], other[2]) }


// MARK: - simd_make_float4

/// - Returns: Concatenated arguments.
@inlinable
public func simd_make_float4(_ x: Float, _ y: Float, _ z: Float, _ w: Float) -> simd_float4 { .init(x, y, z, w) }

/// - Returns: Concatenated arguments.
@inlinable
public func simd_make_float4(_ x: Float, _ y: Float, _ zw: simd_float2) -> simd_float4 { .init(x, y, zw.x, zw.y) }

/// - Returns: Concatenated arguments.
@inlinable
public func simd_make_float4(_ x: Float, _ yz: simd_float2, _ w: Float) -> simd_float4 { .init(x, yz.x, yz.y, w) }

/// - Returns: Concatenated arguments.
@inlinable
public func simd_make_float4(_ xy: simd_float2, _ z: Float, _ w: Float) -> simd_float4 { .init(xy.x, xy.y, z, w) }

/// - Returns: Concatenated arguments.
@inlinable
public func simd_make_float4(_ x: Float, _ yzw: simd_float3) -> simd_float4 { .init(x, yzw.x, yzw.y, yzw.z) }

/// - Returns: Concatenated arguments.
@inlinable
public func simd_make_float4(_ xy: simd_float2, _ zw: simd_float2) -> simd_float4 { .init(lowHalf: xy, highHalf: zw) }

/// - Returns: Concatenated arguments.
@inlinable
public func simd_make_float4(_ xyz: simd_float3, _ w: Float) -> simd_float4 { .init(xyz, w) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_float4(_ other: Float) -> simd_float4 { .init(other, 0.0, 0.0, 0.0) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_float4_undef(_ other: Float) -> simd_float4 { simd_make_float4(other) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_float4(_ other: simd_float2) -> simd_float4 { .init(lowHalf: other, highHalf: .zero) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_float4_undef(_ other: simd_float2) -> simd_float4 { simd_make_float4(other) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_float4(_ other: simd_float3) -> simd_float4 { .init(other, 0.0) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_float4_undef(_ other: simd_float3) -> simd_float4 { simd_make_float4(other) }

/// - Returns: Unmodified *other*.
@inlinable
public func simd_make_float4(_ other: simd_float4) -> simd_float4 { other }

/// - Returns: Truncated *other*.
@inlinable
public func simd_make_float4(_ other: simd_float8) -> simd_float4 { other.lowHalf }

/// - Returns: Truncated *other*.
@inlinable
public func simd_make_float4(_ other: simd_float16) -> simd_float4 { .init(other[0], other[1], other[2], other[3]) }


// MARK: - simd_make_float8

/// - Returns: Concatenated arguments.
@inlinable
public func simd_make_float8(_ lowHalf: simd_float4, _ highHalf: simd_float4) -> simd_float8 { .init(lowHalf: lowHalf, highHalf: highHalf) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_float8(_ other: Float) -> simd_float8 { .init(lowHalf: .init(lowHalf: .init(other, 0.0), highHalf: .zero), highHalf: .zero) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_float8_undef(_ other: Float) -> simd_float8 { simd_make_float8(other) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_float8(_ other: simd_float2) -> simd_float8 { .init(lowHalf: .init(lowHalf: other, highHalf: .zero), highHalf: .zero) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_float8_undef(_ other: simd_float2) -> simd_float8 { simd_make_float8(other) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_float8(_ other: simd_float3) -> simd_float8 { .init(lowHalf: .init(other, 0.0), highHalf: .zero) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_float8_undef(_ other: simd_float3) -> simd_float8 { simd_make_float8(other) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_float8(_ other: simd_float4) -> simd_float8 { .init(lowHalf: other, highHalf: .zero) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_float8_undef(_ other: simd_float4) -> simd_float8 { simd_make_float8(other) }

/// - Returns: Unmodified *other*.
@inlinable
public func simd_make_float8(_ other: simd_float8) -> simd_float8 { other }

/// - Returns: Truncated *other*.
@inlinable
public func simd_make_float8(_ other: simd_float16) -> simd_float8 { other.lowHalf }


// MARK: - simd_make_float16

/// - Returns: Concatenated arguments.
@inlinable
public func simd_make_float16(_ lowHalf: simd_float8, _ highHalf: simd_float8) -> simd_float16 { .init(lowHalf: lowHalf, highHalf: highHalf) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_float16(_ other: Float) -> simd_float16 { .init(lowHalf: .init(lowHalf: .init(lowHalf: .init(other, 0.0), highHalf: .zero), highHalf: .zero), highHalf: .zero) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_float16_undef(_ other: Float) -> simd_float16 { simd_make_float16(other) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_float16(_ other: simd_float2) -> simd_float16 { .init(lowHalf: .init(lowHalf: .init(lowHalf: other, highHalf: .zero), highHalf: .zero), highHalf: .zero) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_float16_undef(_ other: simd_float2) -> simd_float16 { simd_make_float16(other) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_float16(_ other: simd_float3) -> simd_float16 { .init(lowHalf: .init(lowHalf: .init(other, 0.0), highHalf: .zero), highHalf: .zero) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_float16_undef(_ other: simd_float3) -> simd_float16 { simd_make_float16(other) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_float16(_ other: simd_float4) -> simd_float16 { .init(lowHalf: .init(lowHalf: other, highHalf: .zero), highHalf: .zero) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_float16_undef(_ other: simd_float4) -> simd_float16 { simd_make_float16(other) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_float16(_ other: simd_float8) -> simd_float16 { .init(lowHalf: other, highHalf: .zero) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_float16_undef(_ other: simd_float8) -> simd_float16 { simd_make_float16(other) }

/// - Returns: Unmodified *other*.
@inlinable
public func simd_make_float16(_ other: simd_float16) -> simd_float16 { other }


// MARK: - simd_make_double2

/// - Returns: Concatenated arguments.
@inlinable
public func simd_make_double2(_ x: Double, _ y: Double) -> simd_double2 { .init(x, y) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_double2(_ other: Double) -> simd_double2 { .init(other, 0.0) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_double2_undef(_ other: Double) -> simd_double2 { simd_make_double2(other) }

/// - Returns: Unmodified *other*.
@inlinable
public func simd_make_double2(_ other: simd_double2) -> simd_double2 { other }

/// - Returns: Truncated *other*.
@inlinable
public func simd_make_double2(_ other: simd_double3) -> simd_double2 { .init(other.x, other.y) }

/// - Returns: Truncated *other*.
@inlinable
public func simd_make_double2(_ other: simd_double4) -> simd_double2 { other.lowHalf }

/// - Returns: Truncated *other*.
@inlinable
public func simd_make_double2(_ other: simd_double8) -> simd_double2 { .init(other[0], other[1]) }


// MARK: - simd_make_double3

/// - Returns: Concatenated arguments.
@inlinable
public func simd_make_double3(_ x: Double, _ y: Double, _ z: Double) -> simd_double3 { .init(x, y, z) }

/// - Returns: Concatenated arguments.
@inlinable
public func simd_make_double3(_ x: Double, _ yz: simd_double2) -> simd_double3 { .init(x, yz.x, yz.y) }

/// - Returns: Concatenated arguments.
@inlinable
public func simd_make_double3(_ xy: simd_double2, _ z: Double) -> simd_double3 { .init(xy, z) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_double3(_ other: Double) -> simd_double3 { .init(other, 0.0, 0.0) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_double3_undef(_ other: Double) -> simd_double3 { simd_make_double3(other) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_double3(_ other: simd_double2) -> simd_double3 { .init(other, 0.0) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_double3_undef(_ other: simd_double2) -> simd_double3 { simd_make_double3(other) }

/// - Returns: Unmodified *other*.
@inlinable
public func simd_make_double3(_ other: simd_double3) -> simd_double3 { other }

/// - Returns: Truncated argument.
@inlinable
public func simd_make_double3(_ other: simd_double4) -> simd_double3 { .init(other.x, other.y, other.z) }

/// - Returns: Truncated argument.
@inlinable
public func simd_make_double3(_ other: simd_double8) -> simd_double3 { .init(other[0], other[1], other[2]) }


// MARK: - simd_make_double4

/// - Returns: Concatenated arguments.
@inlinable
public func simd_make_double4(_ x: Double, _ y: Double, _ z: Double, _ w: Double) -> simd_double4 { .init(x, y, z, w) }

/// - Returns: Concatenated arguments.
@inlinable
public func simd_make_double4(_ x: Double, _ y: Double, _ zw: simd_double2) -> simd_double4 { .init(x, y, zw.x, zw.y) }

/// - Returns: Concatenated arguments.
@inlinable
public func simd_make_double4(_ x: Double, _ yz: simd_double2, _ w: Double) -> simd_double4 { .init(x, yz.x, yz.y, w) }

/// - Returns: Concatenated arguments.
@inlinable
public func simd_make_double4(_ xy: simd_double2, _ z: Double, _ w: Double) -> simd_double4 { .init(xy.x, xy.y, z, w) }

/// - Returns: Concatenated arguments.
@inlinable
public func simd_make_double4(_ x: Double, _ yzw: simd_double3) -> simd_double4 { .init(x, yzw.x, yzw.y, yzw.z) }

/// - Returns: Concatenated arguments.
@inlinable
public func simd_make_double4(_ xy: simd_double2, _ zw: simd_double2) -> simd_double4 { .init(lowHalf: xy, highHalf: zw) }

/// - Returns: Concatenated arguments.
@inlinable
public func simd_make_double4(_ xyz: simd_double3, _ w: Double) -> simd_double4 { .init(xyz, w) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_double4(_ other: Double) -> simd_double4 { .init(other, 0.0, 0.0, 0.0) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_double4_undef(_ other: Double) -> simd_double4 { simd_make_double4(other) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_double4(_ other: simd_double2) -> simd_double4 { .init(lowHalf: other, highHalf: .zero) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_double4_undef(_ other: simd_double2) -> simd_double4 { simd_make_double4(other) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_double4(_ other: simd_double3) -> simd_double4 { .init(other, 0.0) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_double4_undef(_ other: simd_double3) -> simd_double4 { simd_make_double4(other) }

/// - Returns: Unmodified *other*.
@inlinable
public func simd_make_double4(_ other: simd_double4) -> simd_double4 { other }

/// - Returns: Truncated *other*.
@inlinable
public func simd_make_double4(_ other: simd_double8) -> simd_double4 { other.lowHalf }


// MARK: - simd_make_double8

/// - Returns: Concatenated arguments.
@inlinable
public func simd_make_double8(_ lowHalf: simd_double4, _ highHalf: simd_double4) -> simd_double8 { .init(lowHalf: lowHalf, highHalf: highHalf) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_double8(_ other: Double) -> simd_double8 { .init(lowHalf: .init(lowHalf: .init(other, 0.0), highHalf: .zero), highHalf: .zero) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_double8_undef(_ other: Double) -> simd_double8 { simd_make_double8(other) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_double8(_ other: simd_double2) -> simd_double8 { .init(lowHalf: .init(lowHalf: other, highHalf: .zero), highHalf: .zero) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_double8_undef(_ other: simd_double2) -> simd_double8 { simd_make_double8(other) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_double8(_ other: simd_double3) -> simd_double8 { .init(lowHalf: .init(other, 0.0), highHalf: .zero) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_double8_undef(_ other: simd_double3) -> simd_double8 { simd_make_double8(other) }

/// - Returns: Zero-extended *other*.
@inlinable
public func simd_make_double8(_ other: simd_double4) -> simd_double8 { .init(lowHalf: other, highHalf: .zero) }

/// - Returns: Extended *other*.
@inlinable
public func simd_make_double8_undef(_ other: simd_double4) -> simd_double8 { simd_make_double8(other) }

/// - Returns: Unmodified *other*.
 @inlinable
public func simd_make_double8(_ other: simd_double8) -> simd_double8 { other }


// MARK: - simd_matrix

/// - Returns: A matrix having given columns.
@inlinable
public func simd_matrix(_ col0: simd_float2, _ col1: simd_float2) -> simd_float2x2 { .init(col0, col1) }

/// - Returns: A matrix having given columns.
@inlinable
public func simd_matrix(_ col0: simd_float3, _ col1: simd_float3) -> simd_float2x3 { .init(col0, col1) }

/// - Returns: A matrix having given columns.
@inlinable
public func simd_matrix(_ col0: simd_float4, _ col1: simd_float4) -> simd_float2x4 { .init(col0, col1) }

/// - Returns: A matrix having given columns.
@inlinable
public func simd_matrix(_ col0: simd_float2, _ col1: simd_float2, _ col2: simd_float2) -> simd_float3x2 { .init(col0, col1, col2) }

/// - Returns: A matrix having given columns.
@inlinable
public func simd_matrix(_ col0: simd_float3, _ col1: simd_float3, _ col2: simd_float3) -> simd_float3x3 { .init(col0, col1, col2) }

/// - Returns: A matrix having given columns.
@inlinable
public func simd_matrix(_ col0: simd_float4, _ col1: simd_float4, _ col2: simd_float4) -> simd_float3x4 { .init(col0, col1, col2) }

/// - Returns: A matrix having given columns.
@inlinable
public func simd_matrix(_ col0: simd_float2, _ col1: simd_float2, _ col2: simd_float2, _ col3: simd_float2) -> simd_float4x2 { .init(col0, col1, col2, col3) }

/// - Returns: A matrix having given columns.
@inlinable
public func simd_matrix(_ col0: simd_float3, _ col1: simd_float3, _ col2: simd_float3, _ col3: simd_float3) -> simd_float4x3 { .init(col0, col1, col2, col3) }

/// - Returns: A matrix having given columns.
@inlinable
public func simd_matrix(_ col0: simd_float4, _ col1: simd_float4, _ col2: simd_float4, _ col3: simd_float4) -> simd_float4x4 { .init(col0, col1, col2, col3) }

/// - Returns: A matrix having given columns.
@inlinable
public func simd_matrix(_ col0: simd_double2, _ col1: simd_double2) -> simd_double2x2 { .init(col0, col1) }

/// - Returns: A matrix having given columns.
@inlinable
public func simd_matrix(_ col0: simd_double3, _ col1: simd_double3) -> simd_double2x3 { .init(col0, col1) }

/// - Returns: A matrix having given columns.
@inlinable
public func simd_matrix(_ col0: simd_double4, _ col1: simd_double4) -> simd_double2x4 { .init(col0, col1) }

/// - Returns: A matrix having given columns.
@inlinable
public func simd_matrix(_ col0: simd_double2, _ col1: simd_double2, _ col2: simd_double2) -> simd_double3x2 { .init(col0, col1, col2) }

/// - Returns: A matrix having given columns.
@inlinable
public func simd_matrix(_ col0: simd_double3, _ col1: simd_double3, _ col2: simd_double3) -> simd_double3x3 { .init(col0, col1, col2) }

/// - Returns: A matrix having given columns.
@inlinable
public func simd_matrix(_ col0: simd_double4, _ col1: simd_double4, _ col2: simd_double4) -> simd_double3x4 { .init(col0, col1, col2) }

/// - Returns: A matrix having given columns.
@inlinable
public func simd_matrix(_ col0: simd_double2, _ col1: simd_double2, _ col2: simd_double2, _ col3: simd_double2) -> simd_double4x2 { .init(col0, col1, col2, col3) }

/// - Returns: A matrix having given columns.
@inlinable
public func simd_matrix(_ col0: simd_double3, _ col1: simd_double3, _ col2: simd_double3, _ col3: simd_double3) -> simd_double4x3 { .init(col0, col1, col2, col3) }

/// - Returns: A matrix having given columns.
@inlinable
public func simd_matrix(_ col0: simd_double4, _ col1: simd_double4, _ col2: simd_double4, _ col3: simd_double4) -> simd_double4x4 { .init(col0, col1, col2, col3) }


// MARK: - simd_matrix_from_rows

/// - Returns: A matrix having given rows.
@inlinable
public func simd_matrix_from_rows(_ row0: simd_float2, _ row1: simd_float2) -> simd_float2x2 {
    .init(columns: (.init(row0.x, row1.x),
                    .init(row0.y, row1.y)))
}

/// - Returns: A matrix having given rows.
@inlinable
public func simd_matrix_from_rows(_ row0: simd_float3, _ row1: simd_float3) -> simd_float3x2 {
    .init(columns: (.init(row0.x, row1.x),
                    .init(row0.y, row1.y),
                    .init(row0.z, row1.z)))
}

/// - Returns: A matrix having given rows.
@inlinable
public func simd_matrix_from_rows(_ row0: simd_float4, _ row1: simd_float4) -> simd_float4x2 {
    .init(columns: (.init(row0.x, row1.x),
                    .init(row0.y, row1.y),
                    .init(row0.z, row1.z),
                    .init(row0.w, row1.w)))
}

/// - Returns: A matrix having given rows.
@inlinable
public func simd_matrix_from_rows(_ row0: simd_float2, _ row1: simd_float2, _ row2: simd_float2) -> simd_float2x3 {
    .init(columns: (.init(row0.x, row1.x, row2.x),
                    .init(row0.y, row1.y, row2.y)))
}

/// - Returns: A matrix having given rows.
@inlinable
public func simd_matrix_from_rows(_ row0: simd_float3, _ row1: simd_float3, _ row2: simd_float3) -> simd_float3x3 {
    .init(columns: (.init(row0.x, row1.x, row2.x),
                    .init(row0.y, row1.y, row2.y),
                    .init(row0.z, row1.z, row2.z)))
}

/// - Returns: A matrix having given rows.
@inlinable
public func simd_matrix_from_rows(_ row0: simd_float4, _ row1: simd_float4, _ row2: simd_float4) -> simd_float4x3 {
    .init(columns: (.init(row0.x, row1.x, row2.x),
                    .init(row0.y, row1.y, row2.y),
                    .init(row0.z, row1.z, row2.z),
                    .init(row0.w, row1.w, row2.w)))
}

/// - Returns: A matrix having given rows.
@inlinable
public func simd_matrix_from_rows(_ row0: simd_float2, _ row1: simd_float2, _ row2: simd_float2, _ row3: simd_float2) -> simd_float2x4 {
    .init(columns: (.init(row0.x, row1.x, row2.x, row3.x),
                    .init(row0.y, row1.y, row2.y, row3.y)))
}

/// - Returns: A matrix having given rows.
@inlinable
public func simd_matrix_from_rows(_ row0: simd_float3, _ row1: simd_float3, _ row2: simd_float3, _ row3: simd_float3) -> simd_float3x4 {
    .init(columns: (.init(row0.x, row1.x, row2.x, row3.x),
                    .init(row0.y, row1.y, row2.y, row3.y),
                    .init(row0.z, row1.z, row2.z, row3.z)))
}

/// - Returns: A matrix having given rows.
@inlinable
public func simd_matrix_from_rows(_ row0: simd_float4, _ row1: simd_float4, _ row2: simd_float4, _ row3: simd_float4) -> simd_float4x4 {
    .init(columns: (.init(row0.x, row1.x, row2.x, row3.x),
                    .init(row0.y, row1.y, row2.y, row3.y),
                    .init(row0.z, row1.z, row2.z, row3.z),
                    .init(row0.w, row1.w, row2.w, row3.w)))
}

/// - Returns: A matrix having given rows.
@inlinable
public func simd_matrix_from_rows(_ row0: simd_double2, _ row1: simd_double2) -> simd_double2x2 {
    .init(columns: (.init(row0.x, row1.x),
                    .init(row0.y, row1.y)))
}

/// - Returns: A matrix having given rows.
@inlinable
public func simd_matrix_from_rows(_ row0: simd_double3, _ row1: simd_double3) -> simd_double3x2 {
    .init(columns: (.init(row0.x, row1.x),
                    .init(row0.y, row1.y),
                    .init(row0.z, row1.z)))
}

/// - Returns: A matrix having given rows.
@inlinable
public func simd_matrix_from_rows(_ row0: simd_double4, _ row1: simd_double4) -> simd_double4x2 {
    .init(columns: (.init(row0.x, row1.x),
                    .init(row0.y, row1.y),
                    .init(row0.z, row1.z),
                    .init(row0.w, row1.w)))
}

/// - Returns: A matrix having given rows.
@inlinable
public func simd_matrix_from_rows(_ row0: simd_double2, _ row1: simd_double2, _ row2: simd_double2) -> simd_double2x3 {
    .init(columns: (.init(row0.x, row1.x, row2.x),
                    .init(row0.y, row1.y, row2.y)))
}

/// - Returns: A matrix having given rows.
@inlinable
public func simd_matrix_from_rows(_ row0: simd_double3, _ row1: simd_double3, _ row2: simd_double3) -> simd_double3x3 {
    .init(columns: (.init(row0.x, row1.x, row2.x),
                    .init(row0.y, row1.y, row2.y),
                    .init(row0.z, row1.z, row2.z)))
}

/// - Returns: A matrix having given rows.
@inlinable
public func simd_matrix_from_rows(_ row0: simd_double4, _ row1: simd_double4, _ row2: simd_double4) -> simd_double4x3 {
    .init(columns: (.init(row0.x, row1.x, row2.x),
                    .init(row0.y, row1.y, row2.y),
                    .init(row0.z, row1.z, row2.z),
                    .init(row0.w, row1.w, row2.w)))
}

/// - Returns: A matrix having given rows.
@inlinable
public func simd_matrix_from_rows(_ row0: simd_double2, _ row1: simd_double2, _ row2: simd_double2, _ row3: simd_double2) -> simd_double2x4 {
    .init(columns: (.init(row0.x, row1.x, row2.x, row3.x),
                    .init(row0.y, row1.y, row2.y, row3.y)))
}

/// - Returns: A matrix having given rows.
@inlinable
public func simd_matrix_from_rows(_ row0: simd_double3, _ row1: simd_double3, _ row2: simd_double3, _ row3: simd_double3) -> simd_double3x4 {
    .init(columns: (.init(row0.x, row1.x, row2.x, row3.x),
                    .init(row0.y, row1.y, row2.y, row3.y),
                    .init(row0.z, row1.z, row2.z, row3.z)))
}

/// - Returns: A matrix having given rows.
@inlinable
public func simd_matrix_from_rows(_ row0: simd_double4, _ row1: simd_double4, _ row2: simd_double4, _ row3: simd_double4) -> simd_double4x4 {
    .init(columns: (.init(row0.x, row1.x, row2.x, row3.x),
                    .init(row0.y, row1.y, row2.y, row3.y),
                    .init(row0.z, row1.z, row2.z, row3.z),
                    .init(row0.w, row1.w, row2.w, row3.w)))
}


// MARK: - simd_matrix3x3

/// - Returns: A rotation matrix by given quaternion.
@inlinable
public func simd_matrix3x3(_ q: simd_quatf) -> simd_float3x3 { .init(q) }


// MARK: - simd_matrix4x4

/// - Returns: A rotation matrix by given quaternion.
@inlinable
public func simd_matrix4x4(_ q: simd_quatf) -> simd_float4x4 { .init(q) }


// MARK: - simd_matrix3x3

/// - Returns: A rotation matrix by given quaternion.
@inlinable
public func simd_matrix3x3(_ q: simd_quatd) -> simd_double3x3 { .init(q) }


// MARK: - simd_matrix4x4

/// - Returns: A rotation matrix by given quaternion.
@inlinable
public func simd_matrix4x4(_ q: simd_quatd) -> simd_double4x4 { .init(q) }


// MARK: - simd_quaternion

/// - Parameter ix: The x-component of the vector (imaginary) part of quaternion.
/// - Parameter iy: The y-component of the vector (imaginary) part of quaternion.
/// - Parameter iz: The z-component of the vector (imaginary) part of quaternion.
/// - Parameter r: The scalar (real) par of quaternion.
///
/// - Returns: A quaternion from given components.
@inlinable
public func simd_quaternion(_ ix: Float, _ iy: Float, _ iz: Float, _ r: Float) -> simd_quatf { .init(ix: ix, iy: iy, iz: iz, r: r) }

/// - Parameter ix: The x-component of the vector (imaginary) part of quaternion.
/// - Parameter iy: The y-component of the vector (imaginary) part of quaternion.
/// - Parameter iz: The z-component of the vector (imaginary) part of quaternion.
/// - Parameter r: The scalar (real) par of quaternion.
///
/// - Returns: A quaternion from given components.
@inlinable
public func simd_quaternion(_ ix: Double, _ iy: Double, _ iz: Double, _ r: Double) -> simd_quatd { .init(ix: ix, iy: iy, iz: iz, r: r) }

/// - Parameter xyzr: An array of 4 elements where first 3 elements are components of the vector (imaginary) part of quaternion, last element is the scalar (real) part.
///
/// - Returns: A quaternion from given array of 4 components.
@inlinable
public func simd_quaternion(_ xyzr: UnsafePointer<Float>!) -> simd_quatf { .init(ix: xyzr[0], iy: xyzr[1], iz: xyzr[2], r: xyzr[3]) }

/// - Parameter xyzr: An array of 4 elements where first 3 elements are components of the vector (imaginary) part of quaternion, last element is the scalar (real) part.
///
/// - Returns: A quaternion from given array of 4 components.
@inlinable
public func simd_quaternion(_ xyzr: UnsafePointer<Double>!) -> simd_quatd { .init(ix: xyzr[0], iy: xyzr[1], iz: xyzr[2], r: xyzr[3]) }

/// - Parameter xyzr: An array of 4 elements where first 3 elements are components of the vector (imaginary) part of quaternion, last element is the scalar (real) part.
///
/// - Returns: A quaternion from given array of 4 components.
@inlinable
public func simd_quaternion(_ xyzr: simd_float4) -> simd_quatf { .init(vector: xyzr) }

/// - Parameter xyzr: An array of 4 elements where first 3 elements are components of the vector (imaginary) part of quaternion, last element is the scalar (real) part.
///
/// - Returns: A quaternion from given array of 4 components.
@inlinable
public func simd_quaternion(_ xyzr: simd_double4) -> simd_quatd { .init(vector: xyzr) }

/// - Returns: A rotation quaternion by *angle* about unit vector *axis* .
@inlinable
public func simd_quaternion(_ angle: Float, _ axis: simd_float3) -> simd_quatf { .init(angle: angle, axis: axis) }

/// - Returns: A rotation quaternion by *angle* about unit vector *axis* .
@inlinable
public func simd_quaternion(_ angle: Double, _ axis: simd_double3) -> simd_quatd { .init(angle: angle, axis: axis) }

/// - Returns: A rotation quaternion from unit vector *from* onto unit vector *to*.
@inlinable
public func simd_quaternion(_ from: simd_float3, _ to: simd_float3) -> simd_quatf { .init(from: from, to: to) }

/// - Returns: A rotation quaternion from unit vector *from* onto unit vector *to*.
@inlinable
public func simd_quaternion(_ from: simd_double3, _ to: simd_double3) -> simd_quatd { .init(from: from, to: to) }

/// - Returns: A quaternion from a rotation matrix.
@inlinable
public func simd_quaternion(_ matrix: simd_float3x3) -> simd_quatf { .init(matrix) }

/// - Returns: A quaternion from a rotation matrix.
@inlinable
public func simd_quaternion(_ matrix: simd_float4x4) -> simd_quatf { .init(matrix) }

/// - Returns: A quaternion from a rotation matrix.
@inlinable
public func simd_quaternion(_ matrix: simd_double3x3) -> simd_quatd { .init(matrix) }

/// - Returns: A quaternion from a rotation matrix.
@inlinable
public func simd_quaternion(_ matrix: simd_double4x4) -> simd_quatd { .init(matrix) }


// MARK: - vector2

/// - Returns: Concatenated arguments.
@inlinable
public func vector2(_ x: CChar, _ y: CChar) -> simd_char2 { .init(x, y) }

/// - Returns: Concatenated arguments.
@inlinable
public func vector2(_ x: UInt8, _ y: UInt8) -> simd_uchar2 { .init(x, y) }

/// - Returns: Concatenated arguments.
@inlinable
public func vector2(_ x: Int16, _ y: Int16) -> simd_short2 { .init(x, y) }

/// - Returns: Concatenated arguments.
@inlinable
public func vector2(_ x: UInt16, _ y: UInt16) -> simd_ushort2 { .init(x, y) }

/// - Returns: Concatenated arguments.
@inlinable
public func vector2(_ x: Int32, _ y: Int32) -> simd_int2 { .init(x, y) }

/// - Returns: Concatenated arguments.
@inlinable
public func vector2(_ x: UInt32, _ y: UInt32) -> simd_uint2 { .init(x, y) }

/// - Returns: Concatenated arguments.
@inlinable
public func vector2(_ x: simd_long1, _ y: simd_long1) -> simd_long2 { .init(x, y) }

/// - Returns: Concatenated arguments.
@inlinable
public func vector2(_ x: simd_ulong1, _ y: simd_ulong1) -> simd_ulong2 { .init(x, y) }

/// - Returns: Concatenated arguments.
@inlinable
public func vector2(_ x: Float, _ y: Float) -> simd_float2 { .init(x, y) }

/// - Returns: Concatenated arguments.
@inlinable
public func vector2(_ x: Double, _ y: Double) -> simd_double2 { .init(x, y) }


// MARK: - vector3

/// - Returns: Concatenated arguments.
@inlinable
public func vector3(_ x: CChar, _ y: CChar, _ z: CChar) -> simd_char3 { .init(x, y, z) }

/// - Returns: Concatenated arguments.
@inlinable
public func vector3(_ x: UInt8, _ y: UInt8, _ z: UInt8) -> simd_uchar3 { .init(x, y, z) }

/// - Returns: Concatenated arguments.
@inlinable
public func vector3(_ x: Int16, _ y: Int16, _ z: Int16) -> simd_short3 { .init(x, y, z) }

/// - Returns: Concatenated arguments.
@inlinable
public func vector3(_ x: UInt16, _ y: UInt16, _ z: UInt16) -> simd_ushort3 { .init(x, y, z) }

/// - Returns: Concatenated arguments.
@inlinable
public func vector3(_ x: Int32, _ y: Int32, _ z: Int32) -> simd_int3 { .init(x, y, z) }

/// - Returns: Concatenated arguments.
@inlinable
public func vector3(_ x: UInt32, _ y: UInt32, _ z: UInt32) -> simd_uint3 { .init(x, y, z) }

/// - Returns: Concatenated arguments.
@inlinable
public func vector3(_ x: simd_long1, _ y: simd_long1, _ z: simd_long1) -> simd_long3 { .init(x, y, z) }

/// - Returns: Concatenated arguments.
@inlinable
public func vector3(_ x: simd_ulong1, _ y: simd_ulong1, _ z: simd_ulong1) -> simd_ulong3 { .init(x, y, z) }

/// - Returns: Concatenated arguments.
@inlinable
public func vector3(_ x: Float, _ y: Float, _ z: Float) -> simd_float3 { .init(x, y, z) }

/// - Returns: Concatenated arguments.
@inlinable
public func vector3(_ x: Double, _ y: Double, _ z: Double) -> simd_double3 { .init(x, y, z) }


// MARK: - vector3

/// - Returns: Concatenated arguments.
@inlinable
public func vector3(_ xy: simd_char2, _ z: CChar) -> simd_char3 { .init(xy, z) }

/// - Returns: Concatenated arguments.
@inlinable
public func vector3(_ xy: simd_uchar2, _ z: UInt8) -> simd_uchar3 { .init(xy, z) }

/// - Returns: Concatenated arguments.
@inlinable
public func vector3(_ xy: simd_short2, _ z: Int16) -> simd_short3 { .init(xy, z) }

/// - Returns: Concatenated arguments.
@inlinable
public func vector3(_ xy: simd_ushort2, _ z: UInt16) -> simd_ushort3 { .init(xy, z) }

/// - Returns: Concatenated arguments.
@inlinable
public func vector3(_ xy: simd_int2, _ z: Int32) -> simd_int3 { .init(xy, z) }

/// - Returns: Concatenated arguments.
@inlinable
public func vector3(_ xy: simd_uint2, _ z: UInt32) -> simd_uint3 { .init(xy, z) }

/// - Returns: Concatenated arguments.
@inlinable
public func vector3(_ xy: simd_long2, _ z: simd_long1) -> simd_long3 { .init(xy, z) }

/// - Returns: Concatenated arguments.
@inlinable
public func vector3(_ xy: simd_ulong2, _ z: simd_ulong1) -> simd_ulong3 { .init(xy, z) }

/// - Returns: Concatenated arguments.
@inlinable
public func vector3(_ xy: simd_float2, _ z: Float) -> simd_float3 { .init(xy, z) }

/// - Returns: Concatenated arguments.
@inlinable
public func vector3(_ xy: simd_double2, _ z: Double) -> simd_double3 { .init(xy, z) }


// MARK: - vector4

/// - Returns: Concatenated arguments.
@inlinable
public func vector4(_ x: CChar, _ y: CChar, _ z: CChar, _ w: CChar) -> simd_char4 { .init(x, y, z, w) }

/// - Returns: Concatenated arguments.
@inlinable
public func vector4(_ x: UInt8, _ y: UInt8, _ z: UInt8, _ w: UInt8) -> simd_uchar4 { .init(x, y, z, w) }

/// - Returns: Concatenated arguments.
@inlinable
public func vector4(_ x: Int16, _ y: Int16, _ z: Int16, _ w: Int16) -> simd_short4 { .init(x, y, z, w) }

/// - Returns: Concatenated arguments.
@inlinable
public func vector4(_ x: UInt16, _ y: UInt16, _ z: UInt16, _ w: UInt16) -> simd_ushort4 { .init(x, y, z, w) }

/// - Returns: Concatenated arguments.
@inlinable
public func vector4(_ x: Int32, _ y: Int32, _ z: Int32, _ w: Int32) -> simd_int4 { .init(x, y, z, w) }

/// - Returns: Concatenated arguments.
@inlinable
public func vector4(_ x: UInt32, _ y: UInt32, _ z: UInt32, _ w: UInt32) -> simd_uint4 { .init(x, y, z, w) }

/// - Returns: Concatenated arguments.
@inlinable
public func vector4(_ x: simd_long1, _ y: simd_long1, _ z: simd_long1, _ w: simd_long1) -> simd_long4 { .init(x, y, z, w) }

/// - Returns: Concatenated arguments.
@inlinable
public func vector4(_ x: simd_ulong1, _ y: simd_ulong1, _ z: simd_ulong1, _ w: simd_ulong1) -> simd_ulong4 { .init(x, y, z, w) }

/// - Returns: Concatenated arguments.
@inlinable
public func vector4(_ x: Float, _ y: Float, _ z: Float, _ w: Float) -> simd_float4 { .init(x, y, z, w) }

/// - Returns: Concatenated arguments.
@inlinable
public func vector4(_ x: Double, _ y: Double, _ z: Double, _ w: Double) -> simd_double4 { .init(x, y, z, w) }


// MARK: - vector4

/// - Returns: Concatenated arguments.
@inlinable
public func vector4(_ xy: simd_char2, _ zw: simd_char2) -> simd_char4 { .init(lowHalf: xy, highHalf: zw) }

/// - Returns: Concatenated arguments.
@inlinable
public func vector4(_ xy: simd_uchar2, _ zw: simd_uchar2) -> simd_uchar4 { .init(lowHalf: xy, highHalf: zw) }

/// - Returns: Concatenated arguments.
@inlinable
public func vector4(_ xy: simd_short2, _ zw: simd_short2) -> simd_short4 { .init(lowHalf: xy, highHalf: zw) }

/// - Returns: Concatenated arguments.
@inlinable
public func vector4(_ xy: simd_ushort2, _ zw: simd_ushort2) -> simd_ushort4 { .init(lowHalf: xy, highHalf: zw) }

/// - Returns: Concatenated arguments.
@inlinable
public func vector4(_ xy: simd_int2, _ zw: simd_int2) -> simd_int4 { .init(lowHalf: xy, highHalf: zw) }

/// - Returns: Concatenated arguments.
@inlinable
public func vector4(_ xy: simd_uint2, _ zw: simd_uint2) -> simd_uint4 { .init(lowHalf: xy, highHalf: zw) }

/// - Returns: Concatenated arguments.
@inlinable
public func vector4(_ xy: simd_long2, _ zw: simd_long2) -> simd_long4 { .init(lowHalf: xy, highHalf: zw) }

/// - Returns: Concatenated arguments.
@inlinable
public func vector4(_ xy: simd_ulong2, _ zw: simd_ulong2) -> simd_ulong4 { .init(lowHalf: xy, highHalf: zw) }

/// - Returns: Concatenated arguments.
@inlinable
public func vector4(_ xy: simd_float2, _ zw: simd_float2) -> simd_float4 { .init(lowHalf: xy, highHalf: zw) }

/// - Returns: Concatenated arguments.
@inlinable
public func vector4(_ xy: simd_double2, _ zw: simd_double2) -> simd_double4 { .init(lowHalf: xy, highHalf: zw) }


// MARK: - vector4

/// - Returns: Concatenated arguments.
@inlinable
public func vector4(_ xyz: simd_char3, _ w: CChar) -> simd_char4 { .init(xyz, w) }

/// - Returns: Concatenated arguments.
@inlinable
public func vector4(_ xyz: simd_uchar3, _ w: UInt8) -> simd_uchar4 { .init(xyz, w) }

/// - Returns: Concatenated arguments.
@inlinable
public func vector4(_ xyz: simd_short3, _ w: Int16) -> simd_short4 { .init(xyz, w) }

/// - Returns: Concatenated arguments.
@inlinable
public func vector4(_ xyz: simd_ushort3, _ w: UInt16) -> simd_ushort4 { .init(xyz, w) }

/// - Returns: Concatenated arguments.
@inlinable
public func vector4(_ xyz: simd_int3, _ w: Int32) -> simd_int4 { .init(xyz, w) }

/// - Returns: Concatenated arguments.
@inlinable
public func vector4(_ xyz: simd_uint3, _ w: UInt32) -> simd_uint4 { .init(xyz, w) }

/// - Returns: Concatenated arguments.
@inlinable
public func vector4(_ xyz: simd_long3, _ w: simd_long1) -> simd_long4 { .init(xyz, w) }

/// - Returns: Concatenated arguments.
@inlinable
public func vector4(_ xyz: simd_ulong3, _ w: simd_ulong1) -> simd_ulong4 { .init(xyz, w) }

/// - Returns: Concatenated arguments.
@inlinable
public func vector4(_ xyz: simd_float3, _ w: Float) -> simd_float4 { .init(xyz, w) }

/// - Returns: Concatenated arguments.
@inlinable
public func vector4(_ xyz: simd_double3, _ w: Double) -> simd_double4 { .init(xyz, w) }


// MARK: - vector8

/// - Returns: Concatenated arguments.
@inlinable
public func vector8(_ lowHalf: simd_char4, _ highHalf: simd_char4) -> simd_char8 { .init(lowHalf: lowHalf, highHalf: highHalf) }

/// - Returns: Concatenated arguments.
@inlinable
public func vector8(_ lowHalf: simd_uchar4, _ highHalf: simd_uchar4) -> simd_uchar8 { .init(lowHalf: lowHalf, highHalf: highHalf) }

/// - Returns: Concatenated arguments.
@inlinable
public func vector8(_ lowHalf: simd_short4, _ highHalf: simd_short4) -> simd_short8 { .init(lowHalf: lowHalf, highHalf: highHalf) }

/// - Returns: Concatenated arguments.
@inlinable
public func vector8(_ lowHalf: simd_ushort4, _ highHalf: simd_ushort4) -> simd_ushort8 { .init(lowHalf: lowHalf, highHalf: highHalf) }

/// - Returns: Concatenated arguments.
@inlinable
public func vector8(_ lowHalf: simd_int4, _ highHalf: simd_int4) -> simd_int8 { .init(lowHalf: lowHalf, highHalf: highHalf) }

/// - Returns: Concatenated arguments.
@inlinable
public func vector8(_ lowHalf: simd_uint4, _ highHalf: simd_uint4) -> simd_uint8 { .init(lowHalf: lowHalf, highHalf: highHalf) }

/// - Returns: Concatenated arguments.
@inlinable
public func vector8(_ lowHalf: simd_long4, _ highHalf: simd_long4) -> simd_long8 { .init(lowHalf: lowHalf, highHalf: highHalf) }

/// - Returns: Concatenated arguments.
@inlinable
public func vector8(_ lowHalf: simd_ulong4, _ highHalf: simd_ulong4) -> simd_ulong8 { .init(lowHalf: lowHalf, highHalf: highHalf) }

/// - Returns: Concatenated arguments.
@inlinable
public func vector8(_ lowHalf: simd_float4, _ highHalf: simd_float4) -> simd_float8 { .init(lowHalf: lowHalf, highHalf: highHalf) }

/// - Returns: Concatenated arguments.
@inlinable
public func vector8(_ lowHalf: simd_double4, _ highHalf: simd_double4) -> simd_double8 { .init(lowHalf: lowHalf, highHalf: highHalf) }


// MARK: - vector16

/// - Returns: Concatenated arguments.
@inlinable
public func vector16(_ lowHalf: simd_char8, _ highHalf: simd_char8) -> simd_char16 { .init(lowHalf: lowHalf, highHalf: highHalf) }

/// - Returns: Concatenated arguments.
@inlinable
public func vector16(_ lowHalf: simd_uchar8, _ highHalf: simd_uchar8) -> simd_uchar16 { .init(lowHalf: lowHalf, highHalf: highHalf) }

/// - Returns: Concatenated arguments.
@inlinable
public func vector16(_ lowHalf: simd_short8, _ highHalf: simd_short8) -> simd_short16 { .init(lowHalf: lowHalf, highHalf: highHalf) }

/// - Returns: Concatenated arguments.
@inlinable
public func vector16(_ lowHalf: simd_ushort8, _ highHalf: simd_ushort8) -> simd_ushort16 { .init(lowHalf: lowHalf, highHalf: highHalf) }

/// - Returns: Concatenated arguments.
@inlinable
public func vector16(_ lowHalf: simd_int8, _ highHalf: simd_int8) -> simd_int16 { .init(lowHalf: lowHalf, highHalf: highHalf) }

/// - Returns: Concatenated arguments.
@inlinable
public func vector16(_ lowHalf: simd_uint8, _ highHalf: simd_uint8) -> simd_uint16 { .init(lowHalf: lowHalf, highHalf: highHalf) }

/// - Returns: Concatenated arguments.
@inlinable
public func vector16(_ lowHalf: simd_float8, _ highHalf: simd_float8) -> simd_float16 { .init(lowHalf: lowHalf, highHalf: highHalf) }


// MARK: - vector32

/// - Returns: Concatenated arguments.
@inlinable
public func vector32(_ lowHalf: simd_char16, _ highHalf: simd_char16) -> simd_char32 { .init(lowHalf: lowHalf, highHalf: highHalf) }

/// - Returns: Concatenated arguments.
@inlinable
public func vector32(_ lowHalf: simd_uchar16, _ highHalf: simd_uchar16) -> simd_uchar32 { .init(lowHalf: lowHalf, highHalf: highHalf) }

/// - Returns: Concatenated arguments.
@inlinable
public func vector32(_ lowHalf: simd_short16, _ highHalf: simd_short16) -> simd_short32 { .init(lowHalf: lowHalf, highHalf: highHalf) }

/// - Returns: Concatenated arguments.
@inlinable
public func vector32(_ lowHalf: simd_ushort16, _ highHalf: simd_ushort16) -> simd_ushort32 { .init(lowHalf: lowHalf, highHalf: highHalf) }
