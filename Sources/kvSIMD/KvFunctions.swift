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
//  KvFunctions.swift
//  kvSIMD
//
//  Created by Svyatoslav Popov on 23.07.2023.
//

import Foundation


// MARK: - abs

/// - Returns: Elementwise absolute value of *x*.
@inlinable
public func abs(_ x: SIMD2<Int32>) -> SIMD2<Int32> { simd_abs(x) }

/// - Returns: Elementwise absolute value of *x*.
@inlinable
public func abs(_ x: SIMD3<Int32>) -> SIMD3<Int32> { simd_abs(x) }

/// - Returns: Elementwise absolute value of *x*.
@inlinable
public func abs(_ x: SIMD4<Int32>) -> SIMD4<Int32> { simd_abs(x) }

/// - Returns: Elementwise absolute value of *x*.
@inlinable
public func abs(_ x: SIMD2<Float>) -> SIMD2<Float> { simd_abs(x) }

/// - Returns: Elementwise absolute value of *x*.
@inlinable
public func abs(_ x: SIMD3<Float>) -> SIMD3<Float> { simd_abs(x) }

/// - Returns: Elementwise absolute value of *x*.
@inlinable
public func abs(_ x: SIMD4<Float>) -> SIMD4<Float> { simd_abs(x) }

/// - Returns: Elementwise absolute value of *x*.
@inlinable
public func abs(_ x: SIMD2<Double>) -> SIMD2<Double> { simd_abs(x) }

/// - Returns: Elementwise absolute value of *x*.
@inlinable
public func abs(_ x: SIMD3<Double>) -> SIMD3<Double> { simd_abs(x) }

/// - Returns: Elementwise absolute value of *x*.
@inlinable
public func abs(_ x: SIMD4<Double>) -> SIMD4<Double> { simd_abs(x) }


// MARK: - acos

/// - Returns: Elementwise inverse cosine of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func acos(_ x: simd_float2) -> simd_float2 { .init(acos(x.x), acos(x.y)) }

/// - Returns: Elementwise inverse cosine of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func acos(_ x: simd_float3) -> simd_float3 { .init(acos(x.x), acos(x.y), acos(x.z)) }

/// - Returns: Elementwise inverse cosine of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func acos(_ x: simd_float4) -> simd_float4 { .init(acos(x.x), acos(x.y), acos(x.z), acos(x.w)) }

/// - Returns: Elementwise inverse cosine of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func acos(_ x: simd_float8) -> simd_float8 { .init(acos(x[0]), acos(x[1]), acos(x[2]), acos(x[3]), acos(x[4]), acos(x[5]), acos(x[6]), acos(x[7])) }

/// - Returns: Elementwise inverse cosine of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func acos(_ x: simd_float16) -> simd_float16 { .init(acos(x[0]), acos(x[1]), acos(x[2]), acos(x[3]), acos(x[4]), acos(x[5]), acos(x[6]), acos(x[7]), acos(x[8]), acos(x[9]), acos(x[10]), acos(x[11]), acos(x[12]), acos(x[13]), acos(x[14]), acos(x[15])) }

/// - Returns: Elementwise inverse cosine of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func acos(_ x: simd_double2) -> simd_double2 { .init(acos(x.x), acos(x.y)) }

/// - Returns: Elementwise inverse cosine of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func acos(_ x: simd_double3) -> simd_double3 { .init(acos(x.x), acos(x.y), acos(x.z)) }

/// - Returns: Elementwise inverse cosine of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func acos(_ x: simd_double4) -> simd_double4 { .init(acos(x.x), acos(x.y), acos(x.z), acos(x.w)) }

/// - Returns: Elementwise inverse cosine of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func acos(_ x: simd_double8) -> simd_double8 { .init(acos(x[0]), acos(x[1]), acos(x[2]), acos(x[3]), acos(x[4]), acos(x[5]), acos(x[6]), acos(x[7])) }


// MARK: - acosh

/// - Returns: Elementwise inverse hyperbolic cosine of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func acosh(_ x: simd_float2) -> simd_float2 { .init(acosh(x.x), acosh(x.y)) }

/// - Returns: Elementwise inverse hyperbolic cosine of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func acosh(_ x: simd_float3) -> simd_float3 { .init(acosh(x.x), acosh(x.y), acosh(x.z)) }

/// - Returns: Elementwise inverse hyperbolic cosine of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func acosh(_ x: simd_float4) -> simd_float4 { .init(acosh(x.x), acosh(x.y), acosh(x.z), acosh(x.w)) }

/// - Returns: Elementwise inverse hyperbolic cosine of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func acosh(_ x: simd_float8) -> simd_float8 { .init(acosh(x[0]), acosh(x[1]), acosh(x[2]), acosh(x[3]), acosh(x[4]), acosh(x[5]), acosh(x[6]), acosh(x[7])) }

/// - Returns: Elementwise inverse hyperbolic cosine of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func acosh(_ x: simd_float16) -> simd_float16 { .init(acosh(x[0]), acosh(x[1]), acosh(x[2]), acosh(x[3]), acosh(x[4]), acosh(x[5]), acosh(x[6]), acosh(x[7]), acosh(x[8]), acosh(x[9]), acosh(x[10]), acosh(x[11]), acosh(x[12]), acosh(x[13]), acosh(x[14]), acosh(x[15])) }

/// - Returns: Elementwise inverse hyperbolic cosine of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func acosh(_ x: simd_double2) -> simd_double2 { .init(acosh(x.x), acosh(x.y)) }

/// - Returns: Elementwise inverse hyperbolic cosine of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func acosh(_ x: simd_double3) -> simd_double3 { .init(acosh(x.x), acosh(x.y), acosh(x.z)) }

/// - Returns: Elementwise inverse hyperbolic cosine of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func acosh(_ x: simd_double4) -> simd_double4 { .init(acosh(x.x), acosh(x.y), acosh(x.z), acosh(x.w)) }

/// - Returns: Elementwise inverse hyperbolic cosine of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func acosh(_ x: simd_double8) -> simd_double8 { .init(acosh(x[0]), acosh(x[1]), acosh(x[2]), acosh(x[3]), acosh(x[4]), acosh(x[5]), acosh(x[6]), acosh(x[7])) }


// MARK: - asin

/// - Returns: Elementwise inverse sine of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func asin(_ x: simd_float2) -> simd_float2 { .init(asin(x.x), asin(x.y)) }

/// - Returns: Elementwise inverse sine of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func asin(_ x: simd_float3) -> simd_float3 { .init(asin(x.x), asin(x.y), asin(x.z)) }

/// - Returns: Elementwise inverse sine of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func asin(_ x: simd_float4) -> simd_float4 { .init(asin(x.x), asin(x.y), asin(x.z), asin(x.w)) }

/// - Returns: Elementwise inverse sine of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func asin(_ x: simd_float8) -> simd_float8 { .init(asin(x[0]), asin(x[1]), asin(x[2]), asin(x[3]), asin(x[4]), asin(x[5]), asin(x[6]), asin(x[7])) }

/// - Returns: Elementwise inverse sine of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func asin(_ x: simd_float16) -> simd_float16 { .init(asin(x[0]), asin(x[1]), asin(x[2]), asin(x[3]), asin(x[4]), asin(x[5]), asin(x[6]), asin(x[7]), asin(x[8]), asin(x[9]), asin(x[10]), asin(x[11]), asin(x[12]), asin(x[13]), asin(x[14]), asin(x[15])) }

/// - Returns: Elementwise inverse sine of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func asin(_ x: simd_double2) -> simd_double2 { .init(asin(x.x), asin(x.y)) }

/// - Returns: Elementwise inverse sine of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func asin(_ x: simd_double3) -> simd_double3 { .init(asin(x.x), asin(x.y), asin(x.z)) }

/// - Returns: Elementwise inverse sine of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func asin(_ x: simd_double4) -> simd_double4 { .init(asin(x.x), asin(x.y), asin(x.z), asin(x.w)) }

/// - Returns: Elementwise inverse sine of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func asin(_ x: simd_double8) -> simd_double8 { .init(asin(x[0]), asin(x[1]), asin(x[2]), asin(x[3]), asin(x[4]), asin(x[5]), asin(x[6]), asin(x[7])) }


// MARK: - asinh

/// - Returns: Elementwise inverse hyperbolic sine of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func asinh(_ x: simd_float2) -> simd_float2 { .init(asinh(x.x), asinh(x.y)) }

/// - Returns: Elementwise inverse hyperbolic sine of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func asinh(_ x: simd_float3) -> simd_float3 { .init(asinh(x.x), asinh(x.y), asinh(x.z)) }

/// - Returns: Elementwise inverse hyperbolic sine of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func asinh(_ x: simd_float4) -> simd_float4 { .init(asinh(x.x), asinh(x.y), asinh(x.z), asinh(x.w)) }

/// - Returns: Elementwise inverse hyperbolic sine of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func asinh(_ x: simd_float8) -> simd_float8 { .init(asinh(x[0]), asinh(x[1]), asinh(x[2]), asinh(x[3]), asinh(x[4]), asinh(x[5]), asinh(x[6]), asinh(x[7])) }

/// - Returns: Elementwise inverse hyperbolic sine of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func asinh(_ x: simd_float16) -> simd_float16 { .init(asinh(x[0]), asinh(x[1]), asinh(x[2]), asinh(x[3]), asinh(x[4]), asinh(x[5]), asinh(x[6]), asinh(x[7]), asinh(x[8]), asinh(x[9]), asinh(x[10]), asinh(x[11]), asinh(x[12]), asinh(x[13]), asinh(x[14]), asinh(x[15])) }

/// - Returns: Elementwise inverse hyperbolic sine of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func asinh(_ x: simd_double2) -> simd_double2 { .init(asinh(x.x), asinh(x.y)) }

/// - Returns: Elementwise inverse hyperbolic sine of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func asinh(_ x: simd_double3) -> simd_double3 { .init(asinh(x.x), asinh(x.y), asinh(x.z)) }

/// - Returns: Elementwise inverse hyperbolic sine of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func asinh(_ x: simd_double4) -> simd_double4 { .init(asinh(x.x), asinh(x.y), asinh(x.z), asinh(x.w)) }

/// - Returns: Elementwise inverse hyperbolic sine of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func asinh(_ x: simd_double8) -> simd_double8 { .init(asinh(x[0]), asinh(x[1]), asinh(x[2]), asinh(x[3]), asinh(x[4]), asinh(x[5]), asinh(x[6]), asinh(x[7])) }


// MARK: - atan

/// - Returns: Elementwise inverse tangent of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func atan(_ x: simd_float2) -> simd_float2 { .init(atan(x.x), atan(x.y)) }

/// - Returns: Elementwise inverse tangent of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func atan(_ x: simd_float3) -> simd_float3 { .init(atan(x.x), atan(x.y), atan(x.z)) }

/// - Returns: Elementwise inverse tangent of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func atan(_ x: simd_float4) -> simd_float4 { .init(atan(x.x), atan(x.y), atan(x.z), atan(x.w)) }

/// - Returns: Elementwise inverse tangent of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func atan(_ x: simd_float8) -> simd_float8 { .init(atan(x[0]), atan(x[1]), atan(x[2]), atan(x[3]), atan(x[4]), atan(x[5]), atan(x[6]), atan(x[7])) }

/// - Returns: Elementwise inverse tangent of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func atan(_ x: simd_float16) -> simd_float16 { .init(atan(x[0]), atan(x[1]), atan(x[2]), atan(x[3]), atan(x[4]), atan(x[5]), atan(x[6]), atan(x[7]), atan(x[8]), atan(x[9]), atan(x[10]), atan(x[11]), atan(x[12]), atan(x[13]), atan(x[14]), atan(x[15])) }

/// - Returns: Elementwise inverse tangent of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func atan(_ x: simd_double2) -> simd_double2 { .init(atan(x.x), atan(x.y)) }

/// - Returns: Elementwise inverse tangent of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func atan(_ x: simd_double3) -> simd_double3 { .init(atan(x.x), atan(x.y), atan(x.z)) }

/// - Returns: Elementwise inverse tangent of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func atan(_ x: simd_double4) -> simd_double4 { .init(atan(x.x), atan(x.y), atan(x.z), atan(x.w)) }

/// - Returns: Elementwise inverse tangent of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func atan(_ x: simd_double8) -> simd_double8 { .init(atan(x[0]), atan(x[1]), atan(x[2]), atan(x[3]), atan(x[4]), atan(x[5]), atan(x[6]), atan(x[7])) }


// MARK: - atan2

/// - Returns: Elementwise inverse tangent of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func atan2(_ x: simd_float2, _ y: simd_float2) -> simd_float2 { .init(atan2(x.x, y.x), atan2(x.y, y.y)) }

/// - Returns: Elementwise inverse tangent of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func atan2(_ x: simd_float3, _ y: simd_float3) -> simd_float3 { .init(atan2(x.x, y.x), atan2(x.y, y.y), atan2(x.z, y.z)) }

/// - Returns: Elementwise inverse tangent of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func atan2(_ x: simd_float4, _ y: simd_float4) -> simd_float4 { .init(atan2(x.x, y.x), atan2(x.y, y.y), atan2(x.z, y.z), atan2(x.w, y.w)) }

/// - Returns: Elementwise inverse tangent of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func atan2(_ x: simd_float8, _ y: simd_float8) -> simd_float8 { .init(atan2(x[0], y[0]), atan2(x[1], y[1]), atan2(x[2], y[2]), atan2(x[3], y[3]), atan2(x[4], y[4]), atan2(x[5], y[5]), atan2(x[6], y[6]), atan2(x[7], y[7])) }

/// - Returns: Elementwise inverse tangent of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func atan2(_ x: simd_float16, _ y: simd_float16) -> simd_float16 { .init(atan2(x[0], y[0]), atan2(x[1], y[1]), atan2(x[2], y[2]), atan2(x[3], y[3]), atan2(x[4], y[4]), atan2(x[5], y[5]), atan2(x[6], y[6]), atan2(x[7], y[7]), atan2(x[8], y[8]), atan2(x[9], y[9]), atan2(x[10], y[10]), atan2(x[11], y[11]), atan2(x[12], y[12]), atan2(x[13], y[13]), atan2(x[14], y[14]), atan2(x[15], y[15])) }

/// - Returns: Elementwise inverse tangent of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func atan2(_ x: simd_double2, _ y: simd_double2) -> simd_double2 { .init(atan2(x.x, y.x), atan2(x.y, y.y)) }

/// - Returns: Elementwise inverse tangent of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func atan2(_ x: simd_double3, _ y: simd_double3) -> simd_double3 { .init(atan2(x.x, y.x), atan2(x.y, y.y), atan2(x.z, y.z)) }

/// - Returns: Elementwise inverse tangent of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func atan2(_ x: simd_double4, _ y: simd_double4) -> simd_double4 { .init(atan2(x.x, y.x), atan2(x.y, y.y), atan2(x.z, y.z), atan2(x.w, y.w)) }

/// - Returns: Elementwise inverse tangent of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func atan2(_ x: simd_double8, _ y: simd_double8) -> simd_double8 { .init(atan2(x[0], y[0]), atan2(x[1], y[1]), atan2(x[2], y[2]), atan2(x[3], y[3]), atan2(x[4], y[4]), atan2(x[5], y[5]), atan2(x[6], y[6]), atan2(x[7], y[7])) }


// MARK: - atanh

/// - Returns: Elementwise inverse hyperbolic tangent of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func atanh(_ x: simd_float2) -> simd_float2 { .init(atanh(x.x), atanh(x.y)) }

/// - Returns: Elementwise inverse hyperbolic tangent of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func atanh(_ x: simd_float3) -> simd_float3 { .init(atanh(x.x), atanh(x.y), atanh(x.z)) }

/// - Returns: Elementwise inverse hyperbolic tangent of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func atanh(_ x: simd_float4) -> simd_float4 { .init(atanh(x.x), atanh(x.y), atanh(x.z), atanh(x.w)) }

/// - Returns: Elementwise inverse hyperbolic tangent of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func atanh(_ x: simd_float8) -> simd_float8 { .init(atanh(x[0]), atanh(x[1]), atanh(x[2]), atanh(x[3]), atanh(x[4]), atanh(x[5]), atanh(x[6]), atanh(x[7])) }

/// - Returns: Elementwise inverse hyperbolic tangent of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func atanh(_ x: simd_float16) -> simd_float16 { .init(atanh(x[0]), atanh(x[1]), atanh(x[2]), atanh(x[3]), atanh(x[4]), atanh(x[5]), atanh(x[6]), atanh(x[7]), atanh(x[8]), atanh(x[9]), atanh(x[10]), atanh(x[11]), atanh(x[12]), atanh(x[13]), atanh(x[14]), atanh(x[15])) }

/// - Returns: Elementwise inverse hyperbolic tangent of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func atanh(_ x: simd_double2) -> simd_double2 { .init(atanh(x.x), atanh(x.y)) }

/// - Returns: Elementwise inverse hyperbolic tangent of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func atanh(_ x: simd_double3) -> simd_double3 { .init(atanh(x.x), atanh(x.y), atanh(x.z)) }

/// - Returns: Elementwise inverse hyperbolic tangent of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func atanh(_ x: simd_double4) -> simd_double4 { .init(atanh(x.x), atanh(x.y), atanh(x.z), atanh(x.w)) }

/// - Returns: Elementwise inverse hyperbolic tangent of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func atanh(_ x: simd_double8) -> simd_double8 { .init(atanh(x[0]), atanh(x[1]), atanh(x[2]), atanh(x[3]), atanh(x[4]), atanh(x[5]), atanh(x[6]), atanh(x[7])) }


// MARK: - cbrt

/// - Returns: Elementwise cube root of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func cbrt(_ x: simd_float2) -> simd_float2 { .init(cbrt(x.x), cbrt(x.y)) }

/// - Returns: Elementwise cube root of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func cbrt(_ x: simd_float3) -> simd_float3 { .init(cbrt(x.x), cbrt(x.y), cbrt(x.z)) }

/// - Returns: Elementwise cube root of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func cbrt(_ x: simd_float4) -> simd_float4 { .init(cbrt(x.x), cbrt(x.y), cbrt(x.z), cbrt(x.w)) }

/// - Returns: Elementwise cube root of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func cbrt(_ x: simd_float8) -> simd_float8 { .init(cbrt(x[0]), cbrt(x[1]), cbrt(x[2]), cbrt(x[3]), cbrt(x[4]), cbrt(x[5]), cbrt(x[6]), cbrt(x[7])) }

/// - Returns: Elementwise cube root of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func cbrt(_ x: simd_float16) -> simd_float16 { .init(cbrt(x[0]), cbrt(x[1]), cbrt(x[2]), cbrt(x[3]), cbrt(x[4]), cbrt(x[5]), cbrt(x[6]), cbrt(x[7]), cbrt(x[8]), cbrt(x[9]), cbrt(x[10]), cbrt(x[11]), cbrt(x[12]), cbrt(x[13]), cbrt(x[14]), cbrt(x[15])) }

/// - Returns: Elementwise cube root of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func cbrt(_ x: simd_double2) -> simd_double2 { .init(cbrt(x.x), cbrt(x.y)) }

/// - Returns: Elementwise cube root of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func cbrt(_ x: simd_double3) -> simd_double3 { .init(cbrt(x.x), cbrt(x.y), cbrt(x.z)) }

/// - Returns: Elementwise cube root of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func cbrt(_ x: simd_double4) -> simd_double4 { .init(cbrt(x.x), cbrt(x.y), cbrt(x.z), cbrt(x.w)) }

/// - Returns: Elementwise cube root of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func cbrt(_ x: simd_double8) -> simd_double8 { .init(cbrt(x[0]), cbrt(x[1]), cbrt(x[2]), cbrt(x[3]), cbrt(x[4]), cbrt(x[5]), cbrt(x[6]), cbrt(x[7])) }


// MARK: - ceil

/// - Returns: Elementwise `ceil` rounding of *x*.
@inlinable
public func ceil(_ x: SIMD2<Float>) -> SIMD2<Float> { x.rounded(.up) }

/// - Returns: Elementwise `ceil` rounding of *x*.
@inlinable
public func ceil(_ x: SIMD3<Float>) -> SIMD3<Float> { x.rounded(.up) }

/// - Returns: Elementwise `ceil` rounding of *x*.
@inlinable
public func ceil(_ x: SIMD4<Float>) -> SIMD4<Float> { x.rounded(.up) }

/// - Returns: Elementwise `ceil` rounding of *x*.
@inlinable
public func ceil(_ x: SIMD2<Double>) -> SIMD2<Double> { x.rounded(.up) }

/// - Returns: Elementwise `ceil` rounding of *x*.
@inlinable
public func ceil(_ x: SIMD3<Double>) -> SIMD3<Double> { x.rounded(.up) }

/// - Returns: Elementwise `ceil` rounding of *x*.
@inlinable
public func ceil(_ x: SIMD4<Double>) -> SIMD4<Double> { x.rounded(.up) }


// MARK: - clamp

/// - Returns: Elementwise clamping to *min*...*max* range of *x*.
@inlinable
public func clamp(_ x: SIMD2<Int32>, min: SIMD2<Int32>, max: SIMD2<Int32>) -> SIMD2<Int32> { simd_clamp(x, min, max) }

/// - Returns: Elementwise clamping to *min*...*max* range of *x*.
@inlinable
public func clamp(_ x: SIMD2<Int32>, min: Int32, max: Int32) -> SIMD2<Int32> {
    .init(x.x <= min ? min : (x.x <= max ? x.x : max),
          x.y <= min ? min : (x.y <= max ? x.y : max))
}

/// - Returns: Elementwise clamping to *min*...*max* range of *x*.
@inlinable
public func clamp(_ x: SIMD3<Int32>, min: SIMD3<Int32>, max: SIMD3<Int32>) -> SIMD3<Int32> { simd_clamp(x, min, max) }

/// - Returns: Elementwise clamping to *min*...*max* range of *x*.
@inlinable
public func clamp(_ x: SIMD3<Int32>, min: Int32, max: Int32) -> SIMD3<Int32> {
    .init(x.x <= min ? min : (x.x <= max ? x.x : max),
          x.y <= min ? min : (x.y <= max ? x.y : max),
          x.z <= min ? min : (x.z <= max ? x.z : max))
}

/// - Returns: Elementwise clamping to *min*...*max* range of *x*.
@inlinable
public func clamp(_ x: SIMD4<Int32>, min: SIMD4<Int32>, max: SIMD4<Int32>) -> SIMD4<Int32> { simd_clamp(x, min, max) }

/// - Returns: Elementwise clamping to *min*...*max* range of *x*.
@inlinable
public func clamp(_ x: SIMD4<Int32>, min: Int32, max: Int32) -> SIMD4<Int32> {
    .init(x.x <= min ? min : (x.x <= max ? x.x : max),
          x.y <= min ? min : (x.y <= max ? x.y : max),
          x.z <= min ? min : (x.z <= max ? x.z : max),
          x.w <= min ? min : (x.w <= max ? x.w : max))
}

/// - Returns: Elementwise clamping to *min*...*max* range of *x*.
@inlinable
public func clamp(_ x: SIMD2<UInt32>, min: SIMD2<UInt32>, max: SIMD2<UInt32>) -> SIMD2<UInt32> { simd_clamp(x, min, max) }

/// - Returns: Elementwise clamping to *min*...*max* range of *x*.
@inlinable
public func clamp(_ x: SIMD2<UInt32>, min: UInt32, max: UInt32) -> SIMD2<UInt32> {
    .init(x.x <= min ? min : (x.x <= max ? x.x : max),
          x.y <= min ? min : (x.y <= max ? x.y : max))
}

/// - Returns: Elementwise clamping to *min*...*max* range of *x*.
@inlinable
public func clamp(_ x: SIMD3<UInt32>, min: SIMD3<UInt32>, max: SIMD3<UInt32>) -> SIMD3<UInt32> { simd_clamp(x, min, max) }

/// - Returns: Elementwise clamping to *min*...*max* range of *x*.
@inlinable
public func clamp(_ x: SIMD3<UInt32>, min: UInt32, max: UInt32) -> SIMD3<UInt32> {
    .init(x.x <= min ? min : (x.x <= max ? x.x : max),
          x.y <= min ? min : (x.y <= max ? x.y : max),
          x.z <= min ? min : (x.z <= max ? x.z : max))
}

/// - Returns: Elementwise clamping to *min*...*max* range of *x*.
@inlinable
public func clamp(_ x: SIMD4<UInt32>, min: SIMD4<UInt32>, max: SIMD4<UInt32>) -> SIMD4<UInt32> { simd_clamp(x, min, max) }

/// - Returns: Elementwise clamping to *min*...*max* range of *x*.
@inlinable
public func clamp(_ x: SIMD4<UInt32>, min: UInt32, max: UInt32) -> SIMD4<UInt32> {
    .init(x.x <= min ? min : (x.x <= max ? x.x : max),
          x.y <= min ? min : (x.y <= max ? x.y : max),
          x.z <= min ? min : (x.z <= max ? x.z : max),
          x.w <= min ? min : (x.w <= max ? x.w : max))
}

/// - Returns: Elementwise clamping to *min*...*max* range of *x*.
@inlinable
public func clamp(_ x: SIMD2<Float>, min: SIMD2<Float>, max: SIMD2<Float>) -> SIMD2<Float> { simd_clamp(x, min, max) }

/// - Returns: Elementwise clamping to *min*...*max* range of *x*.
@inlinable
public func clamp(_ x: SIMD2<Float>, min: Float, max: Float) -> SIMD2<Float> {
    .init(x.x <= min ? min : (x.x <= max ? x.x : max),
          x.y <= min ? min : (x.y <= max ? x.y : max))
}

/// - Returns: Elementwise clamping to *min*...*max* range of *x*.
@inlinable
public func clamp(_ x: SIMD3<Float>, min: SIMD3<Float>, max: SIMD3<Float>) -> SIMD3<Float> { simd_clamp(x, min, max) }

/// - Returns: Elementwise clamping to *min*...*max* range of *x*.
@inlinable
public func clamp(_ x: SIMD3<Float>, min: Float, max: Float) -> SIMD3<Float> {
    .init(x.x <= min ? min : (x.x <= max ? x.x : max),
          x.y <= min ? min : (x.y <= max ? x.y : max),
          x.z <= min ? min : (x.z <= max ? x.z : max))
}

/// - Returns: Elementwise clamping to *min*...*max* range of *x*.
@inlinable
public func clamp(_ x: SIMD4<Float>, min: SIMD4<Float>, max: SIMD4<Float>) -> SIMD4<Float> { simd_clamp(x, min, max) }

/// - Returns: Elementwise clamping to *min*...*max* range of *x*.
@inlinable
public func clamp(_ x: SIMD4<Float>, min: Float, max: Float) -> SIMD4<Float> {
    .init(x.x <= min ? min : (x.x <= max ? x.x : max),
          x.y <= min ? min : (x.y <= max ? x.y : max),
          x.z <= min ? min : (x.z <= max ? x.z : max),
          x.w <= min ? min : (x.w <= max ? x.w : max))
}

/// - Returns: Elementwise clamping to *min*...*max* range of *x*.
@inlinable
public func clamp(_ x: SIMD2<Double>, min: SIMD2<Double>, max: SIMD2<Double>) -> SIMD2<Double> { simd_clamp(x, min, max) }

/// - Returns: Elementwise clamping to *min*...*max* range of *x*.
@inlinable
public func clamp(_ x: SIMD2<Double>, min: Double, max: Double) -> SIMD2<Double> {
    .init(x.x <= min ? min : (x.x <= max ? x.x : max),
          x.y <= min ? min : (x.y <= max ? x.y : max))
}

/// - Returns: Elementwise clamping to *min*...*max* range of *x*.
@inlinable
public func clamp(_ x: SIMD3<Double>, min: SIMD3<Double>, max: SIMD3<Double>) -> SIMD3<Double> { simd_clamp(x, min, max) }

/// - Returns: Elementwise clamping to *min*...*max* range of *x*.
@inlinable
public func clamp(_ x: SIMD3<Double>, min: Double, max: Double) -> SIMD3<Double> {
    .init(x.x <= min ? min : (x.x <= max ? x.x : max),
          x.y <= min ? min : (x.y <= max ? x.y : max),
          x.z <= min ? min : (x.z <= max ? x.z : max))
}

/// - Returns: Elementwise clamping to *min*...*max* range of *x*.
@inlinable
public func clamp(_ x: SIMD4<Double>, min: SIMD4<Double>, max: SIMD4<Double>) -> SIMD4<Double> { simd_clamp(x, min, max) }

/// - Returns: Elementwise clamping to *min*...*max* range of *x*.
@inlinable
public func clamp(_ x: SIMD4<Double>, min: Double, max: Double) -> SIMD4<Double> {
    .init(x.x <= min ? min : (x.x <= max ? x.x : max),
          x.y <= min ? min : (x.y <= max ? x.y : max),
          x.z <= min ? min : (x.z <= max ? x.z : max),
          x.w <= min ? min : (x.w <= max ? x.w : max))
}


// MARK: - cos

/// - Returns: Elementwise cosine of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func cos(_ x: simd_float2) -> simd_float2 { .init(cos(x.x), cos(x.y)) }

/// - Returns: Elementwise cosine of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func cos(_ x: simd_float3) -> simd_float3 { .init(cos(x.x), cos(x.y), cos(x.z)) }

/// - Returns: Elementwise cosine of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func cos(_ x: simd_float4) -> simd_float4 { .init(cos(x.x), cos(x.y), cos(x.z), cos(x.w)) }

/// - Returns: Elementwise cosine of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func cos(_ x: simd_float8) -> simd_float8 { .init(cos(x[0]), cos(x[1]), cos(x[2]), cos(x[3]), cos(x[4]), cos(x[5]), cos(x[6]), cos(x[7])) }

/// - Returns: Elementwise cosine of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func cos(_ x: simd_float16) -> simd_float16 { .init(cos(x[0]), cos(x[1]), cos(x[2]), cos(x[3]), cos(x[4]), cos(x[5]), cos(x[6]), cos(x[7]), cos(x[8]), cos(x[9]), cos(x[10]), cos(x[11]), cos(x[12]), cos(x[13]), cos(x[14]), cos(x[15])) }

/// - Returns: Elementwise cosine of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func cos(_ x: simd_double2) -> simd_double2 { .init(cos(x.x), cos(x.y)) }

/// - Returns: Elementwise cosine of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func cos(_ x: simd_double3) -> simd_double3 { .init(cos(x.x), cos(x.y), cos(x.z)) }

/// - Returns: Elementwise cosine of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func cos(_ x: simd_double4) -> simd_double4 { .init(cos(x.x), cos(x.y), cos(x.z), cos(x.w)) }

/// - Returns: Elementwise cosine of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func cos(_ x: simd_double8) -> simd_double8 { .init(cos(x[0]), cos(x[1]), cos(x[2]), cos(x[3]), cos(x[4]), cos(x[5]), cos(x[6]), cos(x[7])) }


// MARK: - cosh

/// - Returns: Elementwise hyperbolic cosine of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func cosh(_ x: simd_float2) -> simd_float2 { .init(cosh(x.x), cosh(x.y)) }

/// - Returns: Elementwise hyperbolic cosine of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func cosh(_ x: simd_float3) -> simd_float3 { .init(cosh(x.x), cosh(x.y), cosh(x.z)) }

/// - Returns: Elementwise hyperbolic cosine of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func cosh(_ x: simd_float4) -> simd_float4 { .init(cosh(x.x), cosh(x.y), cosh(x.z), cosh(x.w)) }

/// - Returns: Elementwise hyperbolic cosine of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func cosh(_ x: simd_float8) -> simd_float8 { .init(cosh(x[0]), cosh(x[1]), cosh(x[2]), cosh(x[3]), cosh(x[4]), cosh(x[5]), cosh(x[6]), cosh(x[7])) }

/// - Returns: Elementwise hyperbolic cosine of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func cosh(_ x: simd_float16) -> simd_float16 { .init(cosh(x[0]), cosh(x[1]), cosh(x[2]), cosh(x[3]), cosh(x[4]), cosh(x[5]), cosh(x[6]), cosh(x[7]), cosh(x[8]), cosh(x[9]), cosh(x[10]), cosh(x[11]), cosh(x[12]), cosh(x[13]), cosh(x[14]), cosh(x[15])) }

/// - Returns: Elementwise hyperbolic cosine of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func cosh(_ x: simd_double2) -> simd_double2 { .init(cosh(x.x), cosh(x.y)) }

/// - Returns: Elementwise hyperbolic cosine of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func cosh(_ x: simd_double3) -> simd_double3 { .init(cosh(x.x), cosh(x.y), cosh(x.z)) }

/// - Returns: Elementwise hyperbolic cosine of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func cosh(_ x: simd_double4) -> simd_double4 { .init(cosh(x.x), cosh(x.y), cosh(x.z), cosh(x.w)) }

/// - Returns: Elementwise hyperbolic cosine of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func cosh(_ x: simd_double8) -> simd_double8 { .init(cosh(x[0]), cosh(x[1]), cosh(x[2]), cosh(x[3]), cosh(x[4]), cosh(x[5]), cosh(x[6]), cosh(x[7])) }


// MARK: - cospi

#if canImport(Darwin)

@inline(__always)
@usableFromInline
internal func __cospi_darwin(_ x: simd_float2) -> simd_float2 {
    .init(Darwin.__cospif(x.x), Darwin.__cospif(x.y))
}

@inline(__always)
@usableFromInline
internal func __cospi_darwin(_ x: simd_float3) -> simd_float3 {
    .init(Darwin.__cospif(x.x), Darwin.__cospif(x.y), Darwin.__cospif(x.z))
}

@inline(__always)
@usableFromInline
internal func __cospi_darwin(_ x: simd_float4) -> simd_float4 {
    .init(Darwin.__cospif(x.x), Darwin.__cospif(x.y), Darwin.__cospif(x.z), Darwin.__cospif(x.w))
}

@inline(__always)
@usableFromInline
internal func __cospi_darwin(_ x: simd_float8) -> simd_float8 {
    .init(Darwin.__cospif(x[0]), Darwin.__cospif(x[1]), Darwin.__cospif(x[2]), Darwin.__cospif(x[3]), Darwin.__cospif(x[4]), Darwin.__cospif(x[5]), Darwin.__cospif(x[6]), Darwin.__cospif(x[7]))
}

@inline(__always)
@usableFromInline
internal func __cospi_darwin(_ x: simd_float16) -> simd_float16 {
    .init(Darwin.__cospif(x[0]), Darwin.__cospif(x[1]), Darwin.__cospif(x[2]), Darwin.__cospif(x[3]), Darwin.__cospif(x[4]), Darwin.__cospif(x[5]), Darwin.__cospif(x[6]), Darwin.__cospif(x[7]), Darwin.__cospif(x[8]), Darwin.__cospif(x[9]), Darwin.__cospif(x[10]), Darwin.__cospif(x[11]), Darwin.__cospif(x[12]), Darwin.__cospif(x[13]), Darwin.__cospif(x[14]), Darwin.__cospif(x[15]))
}

@inline(__always)
@usableFromInline
internal func __cospi_darwin(_ x: simd_double2) -> simd_double2 {
    .init(Darwin.__cospi(x.x), Darwin.__cospi(x.y))
}

@inline(__always)
@usableFromInline
internal func __cospi_darwin(_ x: simd_double3) -> simd_double3 {
    .init(Darwin.__cospi(x.x), Darwin.__cospi(x.y), Darwin.__cospi(x.z))
}

@inline(__always)
@usableFromInline
internal func __cospi_darwin(_ x: simd_double4) -> simd_double4 {
    .init(Darwin.__cospi(x.x), Darwin.__cospi(x.y), Darwin.__cospi(x.z), Darwin.__cospi(x.w))
}

@inline(__always)
@usableFromInline
internal func __cospi_darwin(_ x: simd_double8) -> simd_double8 {
    .init(Darwin.__cospi(x[0]), Darwin.__cospi(x[1]), Darwin.__cospi(x[2]), Darwin.__cospi(x[3]), Darwin.__cospi(x[4]), Darwin.__cospi(x[5]), Darwin.__cospi(x[6]), Darwin.__cospi(x[7]))
}

#endif // canImport(Darwin)


@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inline(__always)
@usableFromInline
internal func __cospi_any(_ x: simd_float2) -> simd_float2 { cos(x * Float.pi) }

@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inline(__always)
@usableFromInline
internal func __cospi_any(_ x: simd_float3) -> simd_float3 { cos(x * Float.pi) }

@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inline(__always)
@usableFromInline
internal func __cospi_any(_ x: simd_float4) -> simd_float4 { cos(x * Float.pi) }

@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inline(__always)
@usableFromInline
internal func __cospi_any(_ x: simd_float8) -> simd_float8 { cos(x * Float.pi) }

@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inline(__always)
@usableFromInline
internal func __cospi_any(_ x: simd_float16) -> simd_float16 { cos(x * Float.pi) }

@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inline(__always)
@usableFromInline
internal func __cospi_any(_ x: simd_double2) -> simd_double2 { cos(x * Double.pi) }

@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inline(__always)
@usableFromInline
internal func __cospi_any(_ x: simd_double3) -> simd_double3 { cos(x * Double.pi) }

@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inline(__always)
@usableFromInline
internal func __cospi_any(_ x: simd_double4) -> simd_double4 { cos(x * Double.pi) }

@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inline(__always)
@usableFromInline
internal func __cospi_any(_ x: simd_double8) -> simd_double8 { cos(x * Double.pi) }


/// - Returns: Elementwise cosine of *x*∙π.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func cospi(_ x: simd_float2) -> simd_float2 {
#if canImport(Darwin)
    __cospi_darwin(x)
#else
    __cospi_any(x)
#endif
}

/// - Returns: Elementwise cosine of *x*∙π.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func cospi(_ x: simd_float3) -> simd_float3 {
#if canImport(Darwin)
    __cospi_darwin(x)
#else
    __cospi_any(x)
#endif
}

/// - Returns: Elementwise cosine of *x*∙π.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func cospi(_ x: simd_float4) -> simd_float4 {
#if canImport(Darwin)
    __cospi_darwin(x)
#else
    __cospi_any(x)
#endif
}

/// - Returns: Elementwise cosine of *x*∙π.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func cospi(_ x: simd_float8) -> simd_float8 {
#if canImport(Darwin)
    __cospi_darwin(x)
#else
    __cospi_any(x)
#endif
}

/// - Returns: Elementwise cosine of *x*∙π.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func cospi(_ x: simd_float16) -> simd_float16 {
#if canImport(Darwin)
    __cospi_darwin(x)
#else
    __cospi_any(x)
#endif
}

/// - Returns: Elementwise cosine of *x*∙π.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func cospi(_ x: simd_double2) -> simd_double2 {
#if canImport(Darwin)
    __cospi_darwin(x)
#else
    __cospi_any(x)
#endif
}

/// - Returns: Elementwise cosine of *x*∙π.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func cospi(_ x: simd_double3) -> simd_double3 {
#if canImport(Darwin)
    __cospi_darwin(x)
#else
    __cospi_any(x)
#endif
}

/// - Returns: Elementwise cosine of *x*∙π.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func cospi(_ x: simd_double4) -> simd_double4 {
#if canImport(Darwin)
    __cospi_darwin(x)
#else
    __cospi_any(x)
#endif
}

/// - Returns: Elementwise cosine of *x*∙π.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func cospi(_ x: simd_double8) -> simd_double8 {
#if canImport(Darwin)
    __cospi_darwin(x)
#else
    __cospi_any(x)
#endif
}


// MARK: - cross

/// - Returns: Cross product of (*x*, 0) and (*y*, 0).
@inlinable
public func cross(_ x: SIMD2<Float>, _ y: SIMD2<Float>) -> SIMD3<Float> { simd_cross(x, y) }

/// - Returns: Cross product of *x* and *y*.
@inlinable
public func cross(_ x: SIMD3<Float>, _ y: SIMD3<Float>) -> SIMD3<Float> { simd_cross(x, y) }

/// - Returns: Cross product of (*x*, 0) and (*y*, 0).
@inlinable
public func cross(_ x: SIMD2<Double>, _ y: SIMD2<Double>) -> SIMD3<Double> { simd_cross(x, y) }

/// - Returns: Cross product of *x* and *y*.
@inlinable
public func cross(_ x: SIMD3<Double>, _ y: SIMD3<Double>) -> SIMD3<Double> { simd_cross(x, y) }


// MARK: - distance

/// - Returns: Distance between *x* and *y*.
@inlinable
public func distance(_ x: SIMD2<Float>, _ y: SIMD2<Float>) -> Float { simd_distance(x, y) }

/// - Returns: Distance between *x* and *y*.
@inlinable
public func distance(_ x: SIMD3<Float>, _ y: SIMD3<Float>) -> Float { simd_distance(x, y) }

/// - Returns: Distance between *x* and *y*.
@inlinable
public func distance(_ x: SIMD4<Float>, _ y: SIMD4<Float>) -> Float { simd_distance(x, y) }

/// - Returns: Distance between *x* and *y*.
@inlinable
public func distance(_ x: SIMD2<Double>, _ y: SIMD2<Double>) -> Double { simd_distance(x, y) }

/// - Returns: Distance between *x* and *y*.
@inlinable
public func distance(_ x: SIMD3<Double>, _ y: SIMD3<Double>) -> Double { simd_distance(x, y) }

/// - Returns: Distance between *x* and *y*.
@inlinable
public func distance(_ x: SIMD4<Double>, _ y: SIMD4<Double>) -> Double { simd_distance(x, y) }


// MARK: - distance_squared

/// - Returns: Squared distance between *x* and *y*.
@inlinable
public func distance_squared(_ x: SIMD2<Float>, _ y: SIMD2<Float>) -> Float { simd_distance_squared(x, y) }

/// - Returns: Squared distance between *x* and *y*.
@inlinable
public func distance_squared(_ x: SIMD3<Float>, _ y: SIMD3<Float>) -> Float { simd_distance_squared(x, y) }

/// - Returns: Squared distance between *x* and *y*.
@inlinable
public func distance_squared(_ x: SIMD4<Float>, _ y: SIMD4<Float>) -> Float { simd_distance_squared(x, y) }

/// - Returns: Squared distance between *x* and *y*.
@inlinable
public func distance_squared(_ x: SIMD2<Double>, _ y: SIMD2<Double>) -> Double { simd_distance_squared(x, y) }

/// - Returns: Squared distance between *x* and *y*.
@inlinable
public func distance_squared(_ x: SIMD3<Double>, _ y: SIMD3<Double>) -> Double { simd_distance_squared(x, y) }

/// - Returns: Squared distance between *x* and *y*.
@inlinable
public func distance_squared(_ x: SIMD4<Double>, _ y: SIMD4<Double>) -> Double { simd_distance_squared(x, y) }


// MARK: - dot

/// - Returns: Dot product of *x* and *y*.
@inlinable
public func dot(_ x: SIMD2<Float>, _ y: SIMD2<Float>) -> Float { simd_dot(x, y) }

/// - Returns: Dot product of *x* and *y*.
@inlinable
public func dot(_ x: SIMD3<Float>, _ y: SIMD3<Float>) -> Float { simd_dot(x, y) }

/// - Returns: Dot product of *x* and *y*.
@inlinable
public func dot(_ x: SIMD4<Float>, _ y: SIMD4<Float>) -> Float { simd_dot(x, y) }

/// - Returns: Dot product of *x* and *y*.
@inlinable
public func dot(_ x: SIMD2<Double>, _ y: SIMD2<Double>) -> Double { simd_dot(x, y) }

/// - Returns: Dot product of *x* and *y*.
@inlinable
public func dot(_ x: SIMD3<Double>, _ y: SIMD3<Double>) -> Double { simd_dot(x, y) }

/// - Returns: Dot product of *x* and *y*.
@inlinable
public func dot(_ x: SIMD4<Double>, _ y: SIMD4<Double>) -> Double { simd_dot(x, y) }

/// - Returns: Dot product of *x* and *y* as 4-component vectors.
@inlinable
public func dot(_ x: simd_quatf, _ y: simd_quatf) -> Float { simd_dot(x, y) }

/// - Returns: Dot product of *x* and *y* as 4-component vectors.
@inlinable
public func dot(_ x: simd_quatd, _ y: simd_quatd) -> Double { simd_dot(x, y) }


// MARK: - erf

/// - Returns: The elementwise error function of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func erf(_ x: simd_float2) -> simd_float2 { .init(erf(x.x), erf(x.y)) }

/// - Returns: The elementwise error function of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func erf(_ x: simd_float3) -> simd_float3 { .init(erf(x.x), erf(x.y), erf(x.z)) }

/// - Returns: The elementwise error function of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func erf(_ x: simd_float4) -> simd_float4 { .init(erf(x.x), erf(x.y), erf(x.z), erf(x.w)) }

/// - Returns: The elementwise error function of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func erf(_ x: simd_float8) -> simd_float8 { .init(erf(x[0]), erf(x[1]), erf(x[2]), erf(x[3]), erf(x[4]), erf(x[5]), erf(x[6]), erf(x[7])) }

/// - Returns: The elementwise error function of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func erf(_ x: simd_float16) -> simd_float16 { .init(erf(x[0]), erf(x[1]), erf(x[2]), erf(x[3]), erf(x[4]), erf(x[5]), erf(x[6]), erf(x[7]), erf(x[8]), erf(x[9]), erf(x[10]), erf(x[11]), erf(x[12]), erf(x[13]), erf(x[14]), erf(x[15])) }

/// - Returns: The elementwise error function of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func erf(_ x: simd_double2) -> simd_double2 { .init(erf(x.x), erf(x.y)) }

/// - Returns: The elementwise error function of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func erf(_ x: simd_double3) -> simd_double3 { .init(erf(x.x), erf(x.y), erf(x.z)) }

/// - Returns: The elementwise error function of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func erf(_ x: simd_double4) -> simd_double4 { .init(erf(x.x), erf(x.y), erf(x.z), erf(x.w)) }

/// - Returns: The elementwise error function of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func erf(_ x: simd_double8) -> simd_double8 { .init(erf(x[0]), erf(x[1]), erf(x[2]), erf(x[3]), erf(x[4]), erf(x[5]), erf(x[6]), erf(x[7])) }


// MARK: - erfc

/// - Returns: The elementwise complementary error function of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func erfc(_ x: simd_float2) -> simd_float2 { .init(erfc(x.x), erfc(x.y)) }

/// - Returns: The elementwise complementary error function of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func erfc(_ x: simd_float3) -> simd_float3 { .init(erfc(x.x), erfc(x.y), erfc(x.z)) }

/// - Returns: The elementwise complementary error function of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func erfc(_ x: simd_float4) -> simd_float4 { .init(erfc(x.x), erfc(x.y), erfc(x.z), erfc(x.w)) }

/// - Returns: The elementwise complementary error function of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func erfc(_ x: simd_float8) -> simd_float8 { .init(erfc(x[0]), erfc(x[1]), erfc(x[2]), erfc(x[3]), erfc(x[4]), erfc(x[5]), erfc(x[6]), erfc(x[7])) }

/// - Returns: The elementwise complementary error function of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func erfc(_ x: simd_float16) -> simd_float16 { .init(erfc(x[0]), erfc(x[1]), erfc(x[2]), erfc(x[3]), erfc(x[4]), erfc(x[5]), erfc(x[6]), erfc(x[7]), erfc(x[8]), erfc(x[9]), erfc(x[10]), erfc(x[11]), erfc(x[12]), erfc(x[13]), erfc(x[14]), erfc(x[15])) }

/// - Returns: The elementwise complementary error function of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func erfc(_ x: simd_double2) -> simd_double2 { .init(erfc(x.x), erfc(x.y)) }

/// - Returns: The elementwise complementary error function of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func erfc(_ x: simd_double3) -> simd_double3 { .init(erfc(x.x), erfc(x.y), erfc(x.z)) }

/// - Returns: The elementwise complementary error function of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func erfc(_ x: simd_double4) -> simd_double4 { .init(erfc(x.x), erfc(x.y), erfc(x.z), erfc(x.w)) }

/// - Returns: The elementwise complementary error function of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func erfc(_ x: simd_double8) -> simd_double8 { .init(erfc(x[0]), erfc(x[1]), erfc(x[2]), erfc(x[3]), erfc(x[4]), erfc(x[5]), erfc(x[6]), erfc(x[7])) }


// MARK: - exp

/// - Returns: The elementwise exponential function of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func exp(_ x: simd_float2) -> simd_float2 { .init(exp(x.x), exp(x.y)) }

/// - Returns: The elementwise exponential function of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func exp(_ x: simd_float3) -> simd_float3 { .init(exp(x.x), exp(x.y), exp(x.z)) }

/// - Returns: The elementwise exponential function of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func exp(_ x: simd_float4) -> simd_float4 { .init(exp(x.x), exp(x.y), exp(x.z), exp(x.w)) }

/// - Returns: The elementwise exponential function of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func exp(_ x: simd_float8) -> simd_float8 { .init(exp(x[0]), exp(x[1]), exp(x[2]), exp(x[3]), exp(x[4]), exp(x[5]), exp(x[6]), exp(x[7])) }

/// - Returns: The elementwise exponential function of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func exp(_ x: simd_float16) -> simd_float16 { .init(exp(x[0]), exp(x[1]), exp(x[2]), exp(x[3]), exp(x[4]), exp(x[5]), exp(x[6]), exp(x[7]), exp(x[8]), exp(x[9]), exp(x[10]), exp(x[11]), exp(x[12]), exp(x[13]), exp(x[14]), exp(x[15])) }

/// - Returns: The elementwise exponential function of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func exp(_ x: simd_double2) -> simd_double2 { .init(exp(x.x), exp(x.y)) }

/// - Returns: The elementwise exponential function of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func exp(_ x: simd_double3) -> simd_double3 { .init(exp(x.x), exp(x.y), exp(x.z)) }

/// - Returns: The elementwise exponential function of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func exp(_ x: simd_double4) -> simd_double4 { .init(exp(x.x), exp(x.y), exp(x.z), exp(x.w)) }

/// - Returns: The elementwise exponential function of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func exp(_ x: simd_double8) -> simd_double8 { .init(exp(x[0]), exp(x[1]), exp(x[2]), exp(x[3]), exp(x[4]), exp(x[5]), exp(x[6]), exp(x[7])) }

/// - Returns: The complex exponential of *q*.
@inlinable
public func exp(_ q: simd_quatf) -> simd_quatf {
    let v = q.imag
    let s = exp(q.real)
    let l² = simd_length_squared(v)
    guard l² > 1e-12 else { return .init(real: s, imag: .zero) }
    let l = sqrt(l²)
    return .init(real: s * cosf(l), imag: (s * sinf(l) / l) * v)
}

/// - Returns: The complex exponential of *q*.
@inlinable
public func exp(_ q: simd_quatd) -> simd_quatd {
    let v = q.imag
    let s = exp(q.real)
    let l² = simd_length_squared(v)
    guard l² > 1e-24 else { return .init(real: s, imag: .zero) }
    let l = sqrt(l²)
    return .init(real: s * cos(l), imag: (s * sin(l) / l) * v)
}


// MARK: - exp10

@usableFromInline
internal let __M_LN10F: Float = 2.30258509299404568401799145468436421

// TODO: Refactor to use the standard constant `M_LN10` from <math.h> when `_USE_MATH_DEFINES` is defined.
#if os(Windows)
internal let M_LN10: Double = 2.30258509299404568401799145468436421
#endif // os(Windows)


#if canImport(Darwin)

@inline(__always)
@usableFromInline
internal func __exp10_darwin(_ x: simd_float2) -> simd_float2 {
    .init(Darwin.__exp10f(x.x), Darwin.__exp10f(x.y))
}

@inline(__always)
@usableFromInline
internal func __exp10_darwin(_ x: simd_float3) -> simd_float3 {
    .init(Darwin.__exp10f(x.x), Darwin.__exp10f(x.y), Darwin.__exp10f(x.z))
}

@inline(__always)
@usableFromInline
internal func __exp10_darwin(_ x: simd_float4) -> simd_float4 {
    .init(Darwin.__exp10f(x.x), Darwin.__exp10f(x.y), Darwin.__exp10f(x.z), Darwin.__exp10f(x.w))
}

@inline(__always)
@usableFromInline
internal func __exp10_darwin(_ x: simd_float8) -> simd_float8 {
    .init(Darwin.__exp10f(x[0]), Darwin.__exp10f(x[1]), Darwin.__exp10f(x[2]), Darwin.__exp10f(x[3]), Darwin.__exp10f(x[4]), Darwin.__exp10f(x[5]), Darwin.__exp10f(x[6]), Darwin.__exp10f(x[7]))
}

@inline(__always)
@usableFromInline
internal func __exp10_darwin(_ x: simd_float16) -> simd_float16 {
    .init(Darwin.__exp10f(x[0]), Darwin.__exp10f(x[1]), Darwin.__exp10f(x[2]), Darwin.__exp10f(x[3]), Darwin.__exp10f(x[4]), Darwin.__exp10f(x[5]), Darwin.__exp10f(x[6]), Darwin.__exp10f(x[7]), Darwin.__exp10f(x[8]), Darwin.__exp10f(x[9]), Darwin.__exp10f(x[10]), Darwin.__exp10f(x[11]), Darwin.__exp10f(x[12]), Darwin.__exp10f(x[13]), Darwin.__exp10f(x[14]), Darwin.__exp10f(x[15]))
}

@inline(__always)
@usableFromInline
internal func __exp10_darwin(_ x: simd_double2) -> simd_double2 {
    .init(Darwin.__exp10(x.x), Darwin.__exp10(x.y))
}

@inline(__always)
@usableFromInline
internal func __exp10_darwin(_ x: simd_double3) -> simd_double3 {
    .init(Darwin.__exp10(x.x), Darwin.__exp10(x.y), Darwin.__exp10(x.z))
}

@inline(__always)
@usableFromInline
internal func __exp10_darwin(_ x: simd_double4) -> simd_double4 {
    .init(Darwin.__exp10(x.x), Darwin.__exp10(x.y), Darwin.__exp10(x.z), Darwin.__exp10(x.w))
}

@inline(__always)
@usableFromInline
internal func __exp10_darwin(_ x: simd_double8) -> simd_double8 {
    .init(Darwin.__exp10(x[0]), Darwin.__exp10(x[1]), Darwin.__exp10(x[2]), Darwin.__exp10(x[3]), Darwin.__exp10(x[4]), Darwin.__exp10(x[5]), Darwin.__exp10(x[6]), Darwin.__exp10(x[7]))
}

#endif // canImport(Darwin)


@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inline(__always)
@usableFromInline
internal func __exp10_any(_ x: simd_float2) -> simd_float2 {
    exp(__M_LN10F * x)
}

@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inline(__always)
@usableFromInline
internal func __exp10_any(_ x: simd_float3) -> simd_float3 {
    exp(__M_LN10F * x)
}

@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inline(__always)
@usableFromInline
internal func __exp10_any(_ x: simd_float4) -> simd_float4 {
    exp(__M_LN10F * x)
}

@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inline(__always)
@usableFromInline
internal func __exp10_any(_ x: simd_float8) -> simd_float8 {
    exp(__M_LN10F * x)
}

@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inline(__always)
@usableFromInline
internal func __exp10_any(_ x: simd_float16) -> simd_float16 {
    exp(__M_LN10F * x)
}

@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inline(__always)
@usableFromInline
internal func __exp10_any(_ x: simd_double2) -> simd_double2 {
    exp(M_LN10 * x)
}

@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inline(__always)
@usableFromInline
internal func __exp10_any(_ x: simd_double3) -> simd_double3 {
    exp(M_LN10 * x)
}

@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inline(__always)
@usableFromInline
internal func __exp10_any(_ x: simd_double4) -> simd_double4 {
    exp(M_LN10 * x)
}

@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inline(__always)
@usableFromInline
internal func __exp10_any(_ x: simd_double8) -> simd_double8 {
    exp(M_LN10 * x)
}


/// - Returns: Elementwise 10 to the power of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func exp10(_ x: simd_float2) -> simd_float2 {
#if canImport(Darwin)
    __exp10_darwin(x)
#else
    __exp10_any(x)
#endif
}

/// - Returns: Elementwise 10 to the power of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func exp10(_ x: simd_float3) -> simd_float3 {
#if canImport(Darwin)
    __exp10_darwin(x)
#else
    __exp10_any(x)
#endif
}

/// - Returns: Elementwise 10 to the power of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func exp10(_ x: simd_float4) -> simd_float4 {
#if canImport(Darwin)
    __exp10_darwin(x)
#else
    __exp10_any(x)
#endif
}

/// - Returns: Elementwise 10 to the power of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func exp10(_ x: simd_float8) -> simd_float8 {
#if canImport(Darwin)
    __exp10_darwin(x)
#else
    __exp10_any(x)
#endif
}

/// - Returns: Elementwise 10 to the power of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func exp10(_ x: simd_float16) -> simd_float16 {
#if canImport(Darwin)
    __exp10_darwin(x)
#else
    __exp10_any(x)
#endif
}

/// - Returns: Elementwise 10 to the power of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func exp10(_ x: simd_double2) -> simd_double2 {
#if canImport(Darwin)
    __exp10_darwin(x)
#else
    __exp10_any(x)
#endif
}

/// - Returns: Elementwise 10 to the power of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func exp10(_ x: simd_double3) -> simd_double3 {
#if canImport(Darwin)
    __exp10_darwin(x)
#else
    __exp10_any(x)
#endif
}

/// - Returns: Elementwise 10 to the power of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func exp10(_ x: simd_double4) -> simd_double4 {
#if canImport(Darwin)
    __exp10_darwin(x)
#else
    __exp10_any(x)
#endif
}

/// - Returns: Elementwise 10 to the power of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func exp10(_ x: simd_double8) -> simd_double8 {
#if canImport(Darwin)
    __exp10_darwin(x)
#else
    __exp10_any(x)
#endif
}


// MARK: - exp2

/// - Returns: Elementwise 2 to the power of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func exp2(_ x: simd_float2) -> simd_float2 { .init(exp2(x.x), exp2(x.y)) }

/// - Returns: Elementwise 2 to the power of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func exp2(_ x: simd_float3) -> simd_float3 { .init(exp2(x.x), exp2(x.y), exp2(x.z)) }

/// - Returns: Elementwise 2 to the power of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func exp2(_ x: simd_float4) -> simd_float4 { .init(exp2(x.x), exp2(x.y), exp2(x.z), exp2(x.w)) }

/// - Returns: Elementwise 2 to the power of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func exp2(_ x: simd_float8) -> simd_float8 { .init(exp2(x[0]), exp2(x[1]), exp2(x[2]), exp2(x[3]), exp2(x[4]), exp2(x[5]), exp2(x[6]), exp2(x[7])) }

/// - Returns: Elementwise 2 to the power of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func exp2(_ x: simd_float16) -> simd_float16 { .init(exp2(x[0]), exp2(x[1]), exp2(x[2]), exp2(x[3]), exp2(x[4]), exp2(x[5]), exp2(x[6]), exp2(x[7]), exp2(x[8]), exp2(x[9]), exp2(x[10]), exp2(x[11]), exp2(x[12]), exp2(x[13]), exp2(x[14]), exp2(x[15])) }

/// - Returns: Elementwise 2 to the power of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func exp2(_ x: simd_double2) -> simd_double2 { .init(exp2(x.x), exp2(x.y)) }

/// - Returns: Elementwise 2 to the power of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func exp2(_ x: simd_double3) -> simd_double3 { .init(exp2(x.x), exp2(x.y), exp2(x.z)) }

/// - Returns: Elementwise 2 to the power of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func exp2(_ x: simd_double4) -> simd_double4 { .init(exp2(x.x), exp2(x.y), exp2(x.z), exp2(x.w)) }

/// - Returns: Elementwise 2 to the power of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func exp2(_ x: simd_double8) -> simd_double8 { .init(exp2(x[0]), exp2(x[1]), exp2(x[2]), exp2(x[3]), exp2(x[4]), exp2(x[5]), exp2(x[6]), exp2(x[7])) }


// MARK: - expm1

/// - Returns: `exp(x) - 1`.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func expm1(_ x: simd_float2) -> simd_float2 { .init(expm1(x.x), expm1(x.y)) }

/// - Returns: `exp(x) - 1`.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func expm1(_ x: simd_float3) -> simd_float3 { .init(expm1(x.x), expm1(x.y), expm1(x.z)) }

/// - Returns: `exp(x) - 1`.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func expm1(_ x: simd_float4) -> simd_float4 { .init(expm1(x.x), expm1(x.y), expm1(x.z), expm1(x.w)) }

/// - Returns: `exp(x) - 1`.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func expm1(_ x: simd_float8) -> simd_float8 { .init(expm1(x[0]), expm1(x[1]), expm1(x[2]), expm1(x[3]), expm1(x[4]), expm1(x[5]), expm1(x[6]), expm1(x[7])) }

/// - Returns: `exp(x) - 1`.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func expm1(_ x: simd_float16) -> simd_float16 { .init(expm1(x[0]), expm1(x[1]), expm1(x[2]), expm1(x[3]), expm1(x[4]), expm1(x[5]), expm1(x[6]), expm1(x[7]), expm1(x[8]), expm1(x[9]), expm1(x[10]), expm1(x[11]), expm1(x[12]), expm1(x[13]), expm1(x[14]), expm1(x[15])) }

/// - Returns: `exp(x) - 1`.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func expm1(_ x: simd_double2) -> simd_double2 { .init(expm1(x.x), expm1(x.y)) }

/// - Returns: `exp(x) - 1`.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func expm1(_ x: simd_double3) -> simd_double3 { .init(expm1(x.x), expm1(x.y), expm1(x.z)) }

/// - Returns: `exp(x) - 1`.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func expm1(_ x: simd_double4) -> simd_double4 { .init(expm1(x.x), expm1(x.y), expm1(x.z), expm1(x.w)) }

/// - Returns: `exp(x) - 1`.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func expm1(_ x: simd_double8) -> simd_double8 { .init(expm1(x[0]), expm1(x[1]), expm1(x[2]), expm1(x[3]), expm1(x[4]), expm1(x[5]), expm1(x[6]), expm1(x[7])) }


// MARK: - floor

/// - Returns: Elementwise `floor` rounding of *x*.
@inlinable
public func floor(_ x: SIMD2<Float>) -> SIMD2<Float> { x.rounded(.down) }

/// - Returns: Elementwise `floor` rounding of *x*.
@inlinable
public func floor(_ x: SIMD3<Float>) -> SIMD3<Float> { x.rounded(.down) }

/// - Returns: Elementwise `floor` rounding of *x*.
@inlinable
public func floor(_ x: SIMD4<Float>) -> SIMD4<Float> { x.rounded(.down) }

/// - Returns: Elementwise `floor` rounding of *x*.
@inlinable
public func floor(_ x: SIMD2<Double>) -> SIMD2<Double> { x.rounded(.down) }

/// - Returns: Elementwise `floor` rounding of *x*.
@inlinable
public func floor(_ x: SIMD3<Double>) -> SIMD3<Double> { x.rounded(.down) }

/// - Returns: Elementwise `floor` rounding of *x*.
@inlinable
public func floor(_ x: SIMD4<Double>) -> SIMD4<Double> { x.rounded(.down) }


// MARK: - fma

/// - Returns: `x * y + z`.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func fma(_ x: simd_float2, _ y: simd_float2, _ z: simd_float2) -> simd_float2 { x * y + z }

/// - Returns: `x * y + z`.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func fma(_ x: simd_float3, _ y: simd_float3, _ z: simd_float3) -> simd_float3 { x * y + z }

/// - Returns: `x * y + z`.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func fma(_ x: simd_float4, _ y: simd_float4, _ z: simd_float4) -> simd_float4 { x * y + z }

/// - Returns: `x * y + z`.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func fma(_ x: simd_float8, _ y: simd_float8, _ z: simd_float8) -> simd_float8 { x * y + z }

/// - Returns: `x * y + z`.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func fma(_ x: simd_float16, _ y: simd_float16, _ z: simd_float16) -> simd_float16 { x * y + z }

/// - Returns: `x * y + z`.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func fma(_ x: simd_double2, _ y: simd_double2, _ z: simd_double2) -> simd_double2 { x * y + z }

/// - Returns: `x * y + z`.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func fma(_ x: simd_double3, _ y: simd_double3, _ z: simd_double3) -> simd_double3 { x * y + z }

/// - Returns: `x * y + z`.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func fma(_ x: simd_double4, _ y: simd_double4, _ z: simd_double4) -> simd_double4 { x * y + z }

/// - Returns: `x * y + z`.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func fma(_ x: simd_double8, _ y: simd_double8, _ z: simd_double8) -> simd_double8 { x * y + z }


// MARK: - fmax

/// - Returns: Elementwise maximum of *x* and *y*.
@inlinable
public func fmax(_ x: SIMD2<Float>, _ y: SIMD2<Float>) -> SIMD2<Float> {
    .init(x.x >= y.x ? x.x : y.x,
          x.y >= y.y ? x.y : y.y)
}

/// - Returns: Elementwise maximum of *x* and *y*.
@inlinable
public func fmax(_ x: SIMD3<Float>, _ y: SIMD3<Float>) -> SIMD3<Float> {
    .init(x.x >= y.x ? x.x : y.x,
          x.y >= y.y ? x.y : y.y,
          x.z >= y.z ? x.z : y.z)
}

/// - Returns: Elementwise maximum of *x* and *y*.
@inlinable
public func fmax(_ x: SIMD4<Float>, _ y: SIMD4<Float>) -> SIMD4<Float> {
    .init(x.x >= y.x ? x.x : y.x,
          x.y >= y.y ? x.y : y.y,
          x.z >= y.z ? x.z : y.z,
          x.w >= y.w ? x.w : y.w)
}

/// - Returns: Elementwise maximum of *x* and *y*.
@inlinable
public func fmax(_ x: SIMD2<Double>, _ y: SIMD2<Double>) -> SIMD2<Double> {
    .init(x.x >= y.x ? x.x : y.x,
          x.y >= y.y ? x.y : y.y)
}

/// - Returns: Elementwise maximum of *x* and *y*.
@inlinable
public func fmax(_ x: SIMD3<Double>, _ y: SIMD3<Double>) -> SIMD3<Double> {
    .init(x.x >= y.x ? x.x : y.x,
          x.y >= y.y ? x.y : y.y,
          x.z >= y.z ? x.z : y.z)
}

/// - Returns: Elementwise maximum of *x* and *y*.
@inlinable
public func fmax(_ x: SIMD4<Double>, _ y: SIMD4<Double>) -> SIMD4<Double> {
    .init(x.x >= y.x ? x.x : y.x,
          x.y >= y.y ? x.y : y.y,
          x.z >= y.z ? x.z : y.z,
          x.w >= y.w ? x.w : y.w)
}


// MARK: - fmin

/// - Returns: Elementwise minimum of *x* and *y*.
@inlinable
public func fmin(_ x: SIMD2<Float>, _ y: SIMD2<Float>) -> SIMD2<Float> {
    .init(x.x <= y.x ? x.x : y.x,
          x.y <= y.y ? x.y : y.y)
}

/// - Returns: Elementwise minimum of *x* and *y*.
@inlinable
public func fmin(_ x: SIMD3<Float>, _ y: SIMD3<Float>) -> SIMD3<Float> {
    .init(x.x <= y.x ? x.x : y.x,
          x.y <= y.y ? x.y : y.y,
          x.z <= y.z ? x.z : y.z)
}

/// - Returns: Elementwise minimum of *x* and *y*.
@inlinable
public func fmin(_ x: SIMD4<Float>, _ y: SIMD4<Float>) -> SIMD4<Float> {
    .init(x.x <= y.x ? x.x : y.x,
          x.y <= y.y ? x.y : y.y,
          x.z <= y.z ? x.z : y.z,
          x.w <= y.w ? x.w : y.w)
}

/// - Returns: Elementwise minimum of *x* and *y*.
@inlinable
public func fmin(_ x: SIMD2<Double>, _ y: SIMD2<Double>) -> SIMD2<Double> {
    .init(x.x <= y.x ? x.x : y.x,
          x.y <= y.y ? x.y : y.y)
}

/// - Returns: Elementwise minimum of *x* and *y*.
@inlinable
public func fmin(_ x: SIMD3<Double>, _ y: SIMD3<Double>) -> SIMD3<Double> {
    .init(x.x <= y.x ? x.x : y.x,
          x.y <= y.y ? x.y : y.y,
          x.z <= y.z ? x.z : y.z)
}

/// - Returns: Elementwise minimum of *x* and *y*.
@inlinable
public func fmin(_ x: SIMD4<Double>, _ y: SIMD4<Double>) -> SIMD4<Double> {
    .init(x.x <= y.x ? x.x : y.x,
          x.y <= y.y ? x.y : y.y,
          x.z <= y.z ? x.z : y.z,
          x.w <= y.w ? x.w : y.w)
}


// MARK: - fmod

/// - Returns: The elementwise modulus after dividing *x* by *y*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func fmod(_ x: simd_float2, _ y: simd_float2) -> simd_float2 { x - (x / y).rounded(.towardZero) * y }

/// - Returns: The elementwise modulus after dividing *x* by *y*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func fmod(_ x: simd_float3, _ y: simd_float3) -> simd_float3 { x - (x / y).rounded(.towardZero) * y }

/// - Returns: The elementwise modulus after dividing *x* by *y*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func fmod(_ x: simd_float4, _ y: simd_float4) -> simd_float4 { x - (x / y).rounded(.towardZero) * y }

/// - Returns: The elementwise modulus after dividing *x* by *y*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func fmod(_ x: simd_float8, _ y: simd_float8) -> simd_float8 { x - (x / y).rounded(.towardZero) * y }

/// - Returns: The elementwise modulus after dividing *x* by *y*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func fmod(_ x: simd_float16, _ y: simd_float16) -> simd_float16 { x - (x / y).rounded(.towardZero) * y }

/// - Returns: The elementwise modulus after dividing *x* by *y*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func fmod(_ x: simd_double2, _ y: simd_double2) -> simd_double2 { x - (x / y).rounded(.towardZero) * y }

/// - Returns: The elementwise modulus after dividing *x* by *y*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func fmod(_ x: simd_double3, _ y: simd_double3) -> simd_double3 { x - (x / y).rounded(.towardZero) * y }

/// - Returns: The elementwise modulus after dividing *x* by *y*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func fmod(_ x: simd_double4, _ y: simd_double4) -> simd_double4 { x - (x / y).rounded(.towardZero) * y }

/// - Returns: The elementwise modulus after dividing *x* by *y*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func fmod(_ x: simd_double8, _ y: simd_double8) -> simd_double8 { x - (x / y).rounded(.towardZero) * y }


// MARK: - fract

/// - Returns: `x - floor(x)` where each element is clamped to 0..&lt;1 range.
@inlinable
public func fract(_ x: SIMD2<Float>) -> SIMD2<Float> { simd_fract(x) }

/// - Returns: `x - floor(x)` where each element is clamped to 0..&lt;1 range.
@inlinable
public func fract(_ x: SIMD3<Float>) -> SIMD3<Float> { simd_fract(x) }

/// - Returns: `x - floor(x)` where each element is clamped to 0..&lt;1 range.
@inlinable
public func fract(_ x: SIMD4<Float>) -> SIMD4<Float> { simd_fract(x) }

/// - Returns: `x - floor(x)` where each element is clamped to 0..&lt;1 range.
@inlinable
public func fract(_ x: SIMD2<Double>) -> SIMD2<Double> { simd_fract(x) }

/// - Returns: `x - floor(x)` where each element is clamped to 0..&lt;1 range.
@inlinable
public func fract(_ x: SIMD3<Double>) -> SIMD3<Double> { simd_fract(x) }

/// - Returns: `x - floor(x)` where each element is clamped to 0..&lt;1 range.
@inlinable
public func fract(_ x: SIMD4<Double>) -> SIMD4<Double> { simd_fract(x) }


// MARK: - hypot

/// - Returns: `sqrt(x * x + y * y)`.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func hypot(_ x: simd_float2, _ y: simd_float2) -> simd_float2 { .init(hypotf(x.x, y.x), hypotf(x.y, y.y)) }

/// - Returns: `sqrt(x * x + y * y)`.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func hypot(_ x: simd_float3, _ y: simd_float3) -> simd_float3 { .init(hypotf(x.x, y.x), hypotf(x.y, y.y), hypotf(x.z, y.z)) }

/// - Returns: `sqrt(x * x + y * y)`.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func hypot(_ x: simd_float4, _ y: simd_float4) -> simd_float4 { .init(hypotf(x.x, y.x), hypotf(x.y, y.y), hypotf(x.z, y.z), hypotf(x.w, y.w)) }

/// - Returns: `sqrt(x * x + y * y)`.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func hypot(_ x: simd_float8, _ y: simd_float8) -> simd_float8 { .init(hypotf(x[0], y[0]), hypotf(x[1], y[1]), hypotf(x[2], y[2]), hypotf(x[3], y[3]), hypotf(x[4], y[4]), hypotf(x[5], y[5]), hypotf(x[6], y[6]), hypotf(x[7], y[7])) }

/// - Returns: `sqrt(x * x + y * y)`.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func hypot(_ x: simd_float16, _ y: simd_float16) -> simd_float16 { .init(hypotf(x[0], y[0]), hypotf(x[1], y[1]), hypotf(x[2], y[2]), hypotf(x[3], y[3]), hypotf(x[4], y[4]), hypotf(x[5], y[5]), hypotf(x[6], y[6]), hypotf(x[7], y[7]), hypotf(x[8], y[8]), hypotf(x[9], y[9]), hypotf(x[10], y[10]), hypotf(x[11], y[11]), hypotf(x[12], y[12]), hypotf(x[13], y[13]), hypotf(x[14], y[14]), hypotf(x[15], y[15])) }

/// - Returns: `sqrt(x * x + y * y)`.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func hypot(_ x: simd_double2, _ y: simd_double2) -> simd_double2 { .init(hypot(x.x, y.x), hypot(x.y, y.y)) }

/// - Returns: `sqrt(x * x + y * y)`.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func hypot(_ x: simd_double3, _ y: simd_double3) -> simd_double3 { .init(hypot(x.x, y.x), hypot(x.y, y.y), hypot(x.z, y.z)) }

/// - Returns: `sqrt(x * x + y * y)`.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func hypot(_ x: simd_double4, _ y: simd_double4) -> simd_double4 { .init(hypot(x.x, y.x), hypot(x.y, y.y), hypot(x.z, y.z), hypot(x.w, y.w)) }

/// - Returns: `sqrt(x * x + y * y)`.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func hypot(_ x: simd_double8, _ y: simd_double8) -> simd_double8 { .init(hypot(x[0], y[0]), hypot(x[1], y[1]), hypot(x[2], y[2]), hypot(x[3], y[3]), hypot(x[4], y[4]), hypot(x[5], y[5]), hypot(x[6], y[6]), hypot(x[7], y[7])) }


// MARK: - isfinite

/// - Returns: Elementwise `isfinite` of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func isfinite(_ x: simd_float2) -> simd_int2 { .init(KvMakeInt(x.x.isFinite), KvMakeInt(x.y.isFinite)) }

/// - Returns: Elementwise `isfinite` of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func isfinite(_ x: simd_float3) -> simd_int3 { .init(KvMakeInt(x.x.isFinite), KvMakeInt(x.y.isFinite), KvMakeInt(x.z.isFinite)) }

/// - Returns: Elementwise `isfinite` of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func isfinite(_ x: simd_float4) -> simd_int4 { .init(KvMakeInt(x.x.isFinite), KvMakeInt(x.y.isFinite), KvMakeInt(x.z.isFinite), KvMakeInt(x.w.isFinite)) }

/// - Returns: Elementwise `isfinite` of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func isfinite(_ x: simd_float8) -> simd_int8 { .init(KvMakeInt(x[0].isFinite), KvMakeInt(x[1].isFinite), KvMakeInt(x[2].isFinite), KvMakeInt(x[3].isFinite), KvMakeInt(x[4].isFinite), KvMakeInt(x[5].isFinite), KvMakeInt(x[6].isFinite), KvMakeInt(x[7].isFinite)) }

/// - Returns: Elementwise `isfinite` of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func isfinite(_ x: simd_float16) -> simd_int16 { .init(KvMakeInt(x[0].isFinite), KvMakeInt(x[1].isFinite), KvMakeInt(x[2].isFinite), KvMakeInt(x[3].isFinite), KvMakeInt(x[4].isFinite), KvMakeInt(x[5].isFinite), KvMakeInt(x[6].isFinite), KvMakeInt(x[7].isFinite), KvMakeInt(x[8].isFinite), KvMakeInt(x[9].isFinite), KvMakeInt(x[10].isFinite), KvMakeInt(x[11].isFinite), KvMakeInt(x[12].isFinite), KvMakeInt(x[13].isFinite), KvMakeInt(x[14].isFinite), KvMakeInt(x[15].isFinite)) }

/// - Returns: Elementwise `isfinite` of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func isfinite(_ x: simd_double2) -> simd_long2 { .init(KvMakeLong(x.x.isFinite), KvMakeLong(x.y.isFinite)) }

/// - Returns: Elementwise `isfinite` of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func isfinite(_ x: simd_double3) -> simd_long3 { .init(KvMakeLong(x.x.isFinite), KvMakeLong(x.y.isFinite), KvMakeLong(x.z.isFinite)) }

/// - Returns: Elementwise `isfinite` of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func isfinite(_ x: simd_double4) -> simd_long4 { .init(KvMakeLong(x.x.isFinite), KvMakeLong(x.y.isFinite), KvMakeLong(x.z.isFinite), KvMakeLong(x.w.isFinite)) }

/// - Returns: Elementwise `isfinite` of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func isfinite(_ x: simd_double8) -> simd_long8 { .init(KvMakeLong(x[0].isFinite), KvMakeLong(x[1].isFinite), KvMakeLong(x[2].isFinite), KvMakeLong(x[3].isFinite), KvMakeLong(x[4].isFinite), KvMakeLong(x[5].isFinite), KvMakeLong(x[6].isFinite), KvMakeLong(x[7].isFinite)) }


// MARK: - isinf

/// - Returns: Elementwise `isinf` of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func isinf(_ x: simd_float2) -> simd_int2 { .init(KvMakeInt(x.x.isInfinite), KvMakeInt(x.y.isInfinite)) }

/// - Returns: Elementwise `isinf` of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func isinf(_ x: simd_float3) -> simd_int3 { .init(KvMakeInt(x.x.isInfinite), KvMakeInt(x.y.isInfinite), KvMakeInt(x.z.isInfinite)) }

/// - Returns: Elementwise `isinf` of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func isinf(_ x: simd_float4) -> simd_int4 { .init(KvMakeInt(x.x.isInfinite), KvMakeInt(x.y.isInfinite), KvMakeInt(x.z.isInfinite), KvMakeInt(x.w.isInfinite)) }

/// - Returns: Elementwise `isinf` of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func isinf(_ x: simd_float8) -> simd_int8 { .init(KvMakeInt(x[0].isInfinite), KvMakeInt(x[1].isInfinite), KvMakeInt(x[2].isInfinite), KvMakeInt(x[3].isInfinite), KvMakeInt(x[4].isInfinite), KvMakeInt(x[5].isInfinite), KvMakeInt(x[6].isInfinite), KvMakeInt(x[7].isInfinite)) }

/// - Returns: Elementwise `isinf` of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func isinf(_ x: simd_float16) -> simd_int16 { .init(KvMakeInt(x[0].isInfinite), KvMakeInt(x[1].isInfinite), KvMakeInt(x[2].isInfinite), KvMakeInt(x[3].isInfinite), KvMakeInt(x[4].isInfinite), KvMakeInt(x[5].isInfinite), KvMakeInt(x[6].isInfinite), KvMakeInt(x[7].isInfinite), KvMakeInt(x[8].isInfinite), KvMakeInt(x[9].isInfinite), KvMakeInt(x[10].isInfinite), KvMakeInt(x[11].isInfinite), KvMakeInt(x[12].isInfinite), KvMakeInt(x[13].isInfinite), KvMakeInt(x[14].isInfinite), KvMakeInt(x[15].isInfinite)) }

/// - Returns: Elementwise `isinf` of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func isinf(_ x: simd_double2) -> simd_long2 { .init(KvMakeLong(x.x.isInfinite), KvMakeLong(x.y.isInfinite)) }

/// - Returns: Elementwise `isinf` of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func isinf(_ x: simd_double3) -> simd_long3 { .init(KvMakeLong(x.x.isInfinite), KvMakeLong(x.y.isInfinite), KvMakeLong(x.z.isInfinite)) }

/// - Returns: Elementwise `isinf` of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func isinf(_ x: simd_double4) -> simd_long4 { .init(KvMakeLong(x.x.isInfinite), KvMakeLong(x.y.isInfinite), KvMakeLong(x.z.isInfinite), KvMakeLong(x.w.isInfinite)) }

/// - Returns: Elementwise `isinf` of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func isinf(_ x: simd_double8) -> simd_long8 { .init(KvMakeLong(x[0].isInfinite), KvMakeLong(x[1].isInfinite), KvMakeLong(x[2].isInfinite), KvMakeLong(x[3].isInfinite), KvMakeLong(x[4].isInfinite), KvMakeLong(x[5].isInfinite), KvMakeLong(x[6].isInfinite), KvMakeLong(x[7].isInfinite)) }


// MARK: - isnan

/// - Returns: Elementwise `isnan` of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func isnan(_ x: simd_float2) -> simd_int2 { .init(KvMakeInt(x.x.isNaN), KvMakeInt(x.y.isNaN)) }

/// - Returns: Elementwise `isnan` of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func isnan(_ x: simd_float3) -> simd_int3 { .init(KvMakeInt(x.x.isNaN), KvMakeInt(x.y.isNaN), KvMakeInt(x.z.isNaN)) }

/// - Returns: Elementwise `isnan` of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func isnan(_ x: simd_float4) -> simd_int4 { .init(KvMakeInt(x.x.isNaN), KvMakeInt(x.y.isNaN), KvMakeInt(x.z.isNaN), KvMakeInt(x.w.isNaN)) }

/// - Returns: Elementwise `isnan` of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func isnan(_ x: simd_float8) -> simd_int8 { .init(KvMakeInt(x[0].isNaN), KvMakeInt(x[1].isNaN), KvMakeInt(x[2].isNaN), KvMakeInt(x[3].isNaN), KvMakeInt(x[4].isNaN), KvMakeInt(x[5].isNaN), KvMakeInt(x[6].isNaN), KvMakeInt(x[7].isNaN)) }

/// - Returns: Elementwise `isnan` of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func isnan(_ x: simd_float16) -> simd_int16 { .init(KvMakeInt(x[0].isNaN), KvMakeInt(x[1].isNaN), KvMakeInt(x[2].isNaN), KvMakeInt(x[3].isNaN), KvMakeInt(x[4].isNaN), KvMakeInt(x[5].isNaN), KvMakeInt(x[6].isNaN), KvMakeInt(x[7].isNaN), KvMakeInt(x[8].isNaN), KvMakeInt(x[9].isNaN), KvMakeInt(x[10].isNaN), KvMakeInt(x[11].isNaN), KvMakeInt(x[12].isNaN), KvMakeInt(x[13].isNaN), KvMakeInt(x[14].isNaN), KvMakeInt(x[15].isNaN)) }

/// - Returns: Elementwise `isnan` of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func isnan(_ x: simd_double2) -> simd_long2 { .init(KvMakeLong(x.x.isNaN), KvMakeLong(x.y.isNaN)) }

/// - Returns: Elementwise `isnan` of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func isnan(_ x: simd_double3) -> simd_long3 { .init(KvMakeLong(x.x.isNaN), KvMakeLong(x.y.isNaN), KvMakeLong(x.z.isNaN)) }

/// - Returns: Elementwise `isnan` of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func isnan(_ x: simd_double4) -> simd_long4 { .init(KvMakeLong(x.x.isNaN), KvMakeLong(x.y.isNaN), KvMakeLong(x.z.isNaN), KvMakeLong(x.w.isNaN)) }

/// - Returns: Elementwise `isnan` of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func isnan(_ x: simd_double8) -> simd_long8 { .init(KvMakeLong(x[0].isNaN), KvMakeLong(x[1].isNaN), KvMakeLong(x[2].isNaN), KvMakeLong(x[3].isNaN), KvMakeLong(x[4].isNaN), KvMakeLong(x[5].isNaN), KvMakeLong(x[6].isNaN), KvMakeLong(x[7].isNaN)) }


// MARK: - isnormal

/// - Returns: Elementwise `isnormal` of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func isnormal(_ x: simd_float2) -> simd_int2 { .init(KvMakeInt(x.x.isNormal), KvMakeInt(x.y.isNormal)) }

/// - Returns: Elementwise `isnormal` of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func isnormal(_ x: simd_float3) -> simd_int3 { .init(KvMakeInt(x.x.isNormal), KvMakeInt(x.y.isNormal), KvMakeInt(x.z.isNormal)) }

/// - Returns: Elementwise `isnormal` of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func isnormal(_ x: simd_float4) -> simd_int4 { .init(KvMakeInt(x.x.isNormal), KvMakeInt(x.y.isNormal), KvMakeInt(x.z.isNormal), KvMakeInt(x.w.isNormal)) }

/// - Returns: Elementwise `isnormal` of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func isnormal(_ x: simd_float8) -> simd_int8 { .init(KvMakeInt(x[0].isNormal), KvMakeInt(x[1].isNormal), KvMakeInt(x[2].isNormal), KvMakeInt(x[3].isNormal), KvMakeInt(x[4].isNormal), KvMakeInt(x[5].isNormal), KvMakeInt(x[6].isNormal), KvMakeInt(x[7].isNormal)) }

/// - Returns: Elementwise `isnormal` of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func isnormal(_ x: simd_float16) -> simd_int16 { .init(KvMakeInt(x[0].isNormal), KvMakeInt(x[1].isNormal), KvMakeInt(x[2].isNormal), KvMakeInt(x[3].isNormal), KvMakeInt(x[4].isNormal), KvMakeInt(x[5].isNormal), KvMakeInt(x[6].isNormal), KvMakeInt(x[7].isNormal), KvMakeInt(x[8].isNormal), KvMakeInt(x[9].isNormal), KvMakeInt(x[10].isNormal), KvMakeInt(x[11].isNormal), KvMakeInt(x[12].isNormal), KvMakeInt(x[13].isNormal), KvMakeInt(x[14].isNormal), KvMakeInt(x[15].isNormal)) }

/// - Returns: Elementwise `isnormal` of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func isnormal(_ x: simd_double2) -> simd_long2 { .init(KvMakeLong(x.x.isNormal), KvMakeLong(x.y.isNormal)) }

/// - Returns: Elementwise `isnormal` of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func isnormal(_ x: simd_double3) -> simd_long3 { .init(KvMakeLong(x.x.isNormal), KvMakeLong(x.y.isNormal), KvMakeLong(x.z.isNormal)) }

/// - Returns: Elementwise `isnormal` of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func isnormal(_ x: simd_double4) -> simd_long4 { .init(KvMakeLong(x.x.isNormal), KvMakeLong(x.y.isNormal), KvMakeLong(x.z.isNormal), KvMakeLong(x.w.isNormal)) }

/// - Returns: Elementwise `isnormal` of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func isnormal(_ x: simd_double8) -> simd_long8 { .init(KvMakeLong(x[0].isNormal), KvMakeLong(x[1].isNormal), KvMakeLong(x[2].isNormal), KvMakeLong(x[3].isNormal), KvMakeLong(x[4].isNormal), KvMakeLong(x[5].isNormal), KvMakeLong(x[6].isNormal), KvMakeLong(x[7].isNormal)) }


// MARK: - length

/// - Returns: Length of *x* (sqrt(dot(x, x))).
@inlinable
public func length(_ x: SIMD2<Float>) -> Float { simd_length(x) }

/// - Returns: Length of *x* (sqrt(dot(x, x))).
@inlinable
public func length(_ x: SIMD3<Float>) -> Float { simd_length(x) }

/// - Returns: Length of *x* (sqrt(dot(x, x))).
@inlinable
public func length(_ x: SIMD4<Float>) -> Float { simd_length(x) }

/// - Returns: Length of *x* (sqrt(dot(x, x))).
@inlinable
public func length(_ x: SIMD2<Double>) -> Double { simd_length(x) }

/// - Returns: Length of *x* (sqrt(dot(x, x))).
@inlinable
public func length(_ x: SIMD3<Double>) -> Double { simd_length(x) }

/// - Returns: Length of *x* (sqrt(dot(x, x))).
@inlinable
public func length(_ x: SIMD4<Double>) -> Double { simd_length(x) }


// MARK: - length_squared

/// - Returns: Squared length of *x* (dot(x, x)).
@inlinable
public func length_squared(_ x: SIMD2<Float>) -> Float { simd_length_squared(x) }

/// - Returns: Squared length of *x* (dot(x, x)).
@inlinable
public func length_squared(_ x: SIMD3<Float>) -> Float { simd_length_squared(x) }

/// - Returns: Squared length of *x* (dot(x, x)).
@inlinable
public func length_squared(_ x: SIMD4<Float>) -> Float { simd_length_squared(x) }

/// - Returns: Squared length of *x* (dot(x, x)).
@inlinable
public func length_squared(_ x: SIMD2<Double>) -> Double { simd_length_squared(x) }

/// - Returns: Squared length of *x* (dot(x, x)).
@inlinable
public func length_squared(_ x: SIMD3<Double>) -> Double { simd_length_squared(x) }

/// - Returns: Squared length of *x* (dot(x, x)).
@inlinable
public func length_squared(_ x: SIMD4<Double>) -> Double { simd_length_squared(x) }


// MARK: - lgamma

/// - Returns: Elementwise `lgamma` of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func lgamma(_ x: simd_float2) -> simd_float2 { .init(lgammaf(x.x), lgammaf(x.y)) }

/// - Returns: Elementwise `lgamma` of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func lgamma(_ x: simd_float3) -> simd_float3 { .init(lgammaf(x.x), lgammaf(x.y), lgammaf(x.z)) }

/// - Returns: Elementwise `lgamma` of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func lgamma(_ x: simd_float4) -> simd_float4 { .init(lgammaf(x.x), lgammaf(x.y), lgammaf(x.z), lgammaf(x.w)) }

/// - Returns: Elementwise `lgamma` of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func lgamma(_ x: simd_float8) -> simd_float8 { .init(lgammaf(x[0]), lgammaf(x[1]), lgammaf(x[2]), lgammaf(x[3]), lgammaf(x[4]), lgammaf(x[5]), lgammaf(x[6]), lgammaf(x[7])) }

/// - Returns: Elementwise `lgamma` of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func lgamma(_ x: simd_float16) -> simd_float16 { .init(lgammaf(x[0]), lgammaf(x[1]), lgammaf(x[2]), lgammaf(x[3]), lgammaf(x[4]), lgammaf(x[5]), lgammaf(x[6]), lgammaf(x[7]), lgammaf(x[8]), lgammaf(x[9]), lgammaf(x[10]), lgammaf(x[11]), lgammaf(x[12]), lgammaf(x[13]), lgammaf(x[14]), lgammaf(x[15])) }

/// - Returns: Elementwise `lgamma` of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func lgamma(_ x: simd_double2) -> simd_double2 { .init(lgamma(x.x), lgamma(x.y)) }

/// - Returns: Elementwise `lgamma` of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func lgamma(_ x: simd_double3) -> simd_double3 { .init(lgamma(x.x), lgamma(x.y), lgamma(x.z)) }

/// - Returns: Elementwise `lgamma` of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func lgamma(_ x: simd_double4) -> simd_double4 { .init(lgamma(x.x), lgamma(x.y), lgamma(x.z), lgamma(x.w)) }

/// - Returns: Elementwise `lgamma` of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func lgamma(_ x: simd_double8) -> simd_double8 { .init(lgamma(x[0]), lgamma(x[1]), lgamma(x[2]), lgamma(x[3]), lgamma(x[4]), lgamma(x[5]), lgamma(x[6]), lgamma(x[7])) }


// MARK: - log

/// - Returns: Elementwise natural logarithm of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func log(_ x: simd_float2) -> simd_float2 { .init(log(x.x), log(x.y)) }

/// - Returns: Elementwise natural logarithm of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func log(_ x: simd_float3) -> simd_float3 { .init(log(x.x), log(x.y), log(x.z)) }

/// - Returns: Elementwise natural logarithm of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func log(_ x: simd_float4) -> simd_float4 { .init(log(x.x), log(x.y), log(x.z), log(x.w)) }

/// - Returns: Elementwise natural logarithm of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func log(_ x: simd_float8) -> simd_float8 { .init(log(x[0]), log(x[1]), log(x[2]), log(x[3]), log(x[4]), log(x[5]), log(x[6]), log(x[7])) }

/// - Returns: Elementwise natural logarithm of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func log(_ x: simd_float16) -> simd_float16 { .init(log(x[0]), log(x[1]), log(x[2]), log(x[3]), log(x[4]), log(x[5]), log(x[6]), log(x[7]), log(x[8]), log(x[9]), log(x[10]), log(x[11]), log(x[12]), log(x[13]), log(x[14]), log(x[15])) }

/// - Returns: Elementwise natural logarithm of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func log(_ x: simd_double2) -> simd_double2 { .init(log(x.x), log(x.y)) }

/// - Returns: Elementwise natural logarithm of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func log(_ x: simd_double3) -> simd_double3 { .init(log(x.x), log(x.y), log(x.z)) }

/// - Returns: Elementwise natural logarithm of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func log(_ x: simd_double4) -> simd_double4 { .init(log(x.x), log(x.y), log(x.z), log(x.w)) }

/// - Returns: Elementwise natural logarithm of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func log(_ x: simd_double8) -> simd_double8 { .init(log(x[0]), log(x[1]), log(x[2]), log(x[3]), log(x[4]), log(x[5]), log(x[6]), log(x[7])) }

/// - Returns: The complex natural logarithm of *q*. Just like a complex number, *q* = *l*∙(cos(ɑ) + *v*∙sin(ɑ)) so the result is log(*l*) + *t*∙*ɑ*.
@inlinable
public func log(_ q: simd_quatf) -> simd_quatf {
    let v = q.imag
    let lv² = simd_length_squared(v)
    let l = q.length
    return .init(real: log(l), imag: lv² > 1e-12 ? (acos(q.real / l) * simd_rsqrt(lv²)) * v : simd_float3.zero)
}

/// - Returns: The complex natural logarithm of *q*. Just like a complex number, *q* = *l*∙(cos(ɑ) + *v*∙sin(ɑ)) so the result is log(*l*) + *t*∙*ɑ*.
@inlinable
public func log(_ q: simd_quatd) -> simd_quatd {
    let v = q.imag
    let lv² = simd_length_squared(v)
    let l = q.length
    return .init(real: log(l), imag: lv² > 1e-24 ? (acos(q.real / l) * simd_rsqrt(lv²)) * v : simd_double3.zero)
}


// MARK: - log10

/// - Returns: Elementwise decimal logarithm (base 10) of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func log10(_ x: simd_float2) -> simd_float2 { .init(log10(x.x), log10(x.y)) }

/// - Returns: Elementwise decimal logarithm (base 10) of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func log10(_ x: simd_float3) -> simd_float3 { .init(log10(x.x), log10(x.y), log10(x.z)) }

/// - Returns: Elementwise decimal logarithm (base 10) of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func log10(_ x: simd_float4) -> simd_float4 { .init(log10(x.x), log10(x.y), log10(x.z), log10(x.w)) }

/// - Returns: Elementwise decimal logarithm (base 10) of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func log10(_ x: simd_float8) -> simd_float8 { .init(log10(x[0]), log10(x[1]), log10(x[2]), log10(x[3]), log10(x[4]), log10(x[5]), log10(x[6]), log10(x[7])) }

/// - Returns: Elementwise decimal logarithm (base 10) of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func log10(_ x: simd_float16) -> simd_float16 { .init(log10(x[0]), log10(x[1]), log10(x[2]), log10(x[3]), log10(x[4]), log10(x[5]), log10(x[6]), log10(x[7]), log10(x[8]), log10(x[9]), log10(x[10]), log10(x[11]), log10(x[12]), log10(x[13]), log10(x[14]), log10(x[15])) }

/// - Returns: Elementwise decimal logarithm (base 10) of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func log10(_ x: simd_double2) -> simd_double2 { .init(log10(x.x), log10(x.y)) }

/// - Returns: Elementwise decimal logarithm (base 10) of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func log10(_ x: simd_double3) -> simd_double3 { .init(log10(x.x), log10(x.y), log10(x.z)) }

/// - Returns: Elementwise decimal logarithm (base 10) of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func log10(_ x: simd_double4) -> simd_double4 { .init(log10(x.x), log10(x.y), log10(x.z), log10(x.w)) }

/// - Returns: Elementwise decimal logarithm (base 10) of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func log10(_ x: simd_double8) -> simd_double8 { .init(log10(x[0]), log10(x[1]), log10(x[2]), log10(x[3]), log10(x[4]), log10(x[5]), log10(x[6]), log10(x[7])) }


// MARK: - log1p

/// - Returns: Elementwise natural logarithm of (1 + *x*).
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func log1p(_ x: simd_float2) -> simd_float2 { .init(log1p(x.x), log1p(x.y)) }

/// - Returns: Elementwise natural logarithm of (1 + *x*).
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func log1p(_ x: simd_float3) -> simd_float3 { .init(log1p(x.x), log1p(x.y), log1p(x.z)) }

/// - Returns: Elementwise natural logarithm of (1 + *x*).
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func log1p(_ x: simd_float4) -> simd_float4 { .init(log1p(x.x), log1p(x.y), log1p(x.z), log1p(x.w)) }

/// - Returns: Elementwise natural logarithm of (1 + *x*).
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func log1p(_ x: simd_float8) -> simd_float8 { .init(log1p(x[0]), log1p(x[1]), log1p(x[2]), log1p(x[3]), log1p(x[4]), log1p(x[5]), log1p(x[6]), log1p(x[7])) }

/// - Returns: Elementwise natural logarithm of (1 + *x*).
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func log1p(_ x: simd_float16) -> simd_float16 { .init(log1p(x[0]), log1p(x[1]), log1p(x[2]), log1p(x[3]), log1p(x[4]), log1p(x[5]), log1p(x[6]), log1p(x[7]), log1p(x[8]), log1p(x[9]), log1p(x[10]), log1p(x[11]), log1p(x[12]), log1p(x[13]), log1p(x[14]), log1p(x[15])) }

/// - Returns: Elementwise natural logarithm of (1 + *x*).
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func log1p(_ x: simd_double2) -> simd_double2 { .init(log1p(x.x), log1p(x.y)) }

/// - Returns: Elementwise natural logarithm of (1 + *x*).
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func log1p(_ x: simd_double3) -> simd_double3 { .init(log1p(x.x), log1p(x.y), log1p(x.z)) }

/// - Returns: Elementwise natural logarithm of (1 + *x*).
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func log1p(_ x: simd_double4) -> simd_double4 { .init(log1p(x.x), log1p(x.y), log1p(x.z), log1p(x.w)) }

/// - Returns: Elementwise natural logarithm of (1 + *x*).
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func log1p(_ x: simd_double8) -> simd_double8 { .init(log1p(x[0]), log1p(x[1]), log1p(x[2]), log1p(x[3]), log1p(x[4]), log1p(x[5]), log1p(x[6]), log1p(x[7])) }


// MARK: - log2

/// - Returns: Elementwise binary logarithm (base 2) of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func log2(_ x: simd_float2) -> simd_float2 { .init(log2(x.x), log2(x.y)) }

/// - Returns: Elementwise binary logarithm (base 2) of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func log2(_ x: simd_float3) -> simd_float3 { .init(log2(x.x), log2(x.y), log2(x.z)) }

/// - Returns: Elementwise binary logarithm (base 2) of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func log2(_ x: simd_float4) -> simd_float4 { .init(log2(x.x), log2(x.y), log2(x.z), log2(x.w)) }

/// - Returns: Elementwise binary logarithm (base 2) of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func log2(_ x: simd_float8) -> simd_float8 { .init(log2(x[0]), log2(x[1]), log2(x[2]), log2(x[3]), log2(x[4]), log2(x[5]), log2(x[6]), log2(x[7])) }

/// - Returns: Elementwise binary logarithm (base 2) of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func log2(_ x: simd_float16) -> simd_float16 { .init(log2(x[0]), log2(x[1]), log2(x[2]), log2(x[3]), log2(x[4]), log2(x[5]), log2(x[6]), log2(x[7]), log2(x[8]), log2(x[9]), log2(x[10]), log2(x[11]), log2(x[12]), log2(x[13]), log2(x[14]), log2(x[15])) }

/// - Returns: Elementwise binary logarithm (base 2) of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func log2(_ x: simd_double2) -> simd_double2 { .init(log2(x.x), log2(x.y)) }

/// - Returns: Elementwise binary logarithm (base 2) of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func log2(_ x: simd_double3) -> simd_double3 { .init(log2(x.x), log2(x.y), log2(x.z)) }

/// - Returns: Elementwise binary logarithm (base 2) of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func log2(_ x: simd_double4) -> simd_double4 { .init(log2(x.x), log2(x.y), log2(x.z), log2(x.w)) }

/// - Returns: Elementwise binary logarithm (base 2) of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func log2(_ x: simd_double8) -> simd_double8 { .init(log2(x[0]), log2(x[1]), log2(x[2]), log2(x[3]), log2(x[4]), log2(x[5]), log2(x[6]), log2(x[7])) }


// MARK: - matrix_multiply

/// - Returns: Product of *x* and *y* matrices.
@inlinable
public func matrix_multiply(_ x: simd_float2x2, _ y: simd_float2) -> simd_float2 { simd_mul(x, y) }

/// - Returns: Product of *x* and *y* matrices.
@inlinable
public func matrix_multiply(_ x: simd_float2x3, _ y: simd_float2) -> simd_float3 { simd_mul(x, y) }

/// - Returns: Product of *x* and *y* matrices.
@inlinable
public func matrix_multiply(_ x: simd_float2x4, _ y: simd_float2) -> simd_float4 { simd_mul(x, y) }

/// - Returns: Product of *x* and *y* matrices.
@inlinable
public func matrix_multiply(_ x: simd_float3x2, _ y: simd_float3) -> simd_float2 { simd_mul(x, y) }

/// - Returns: Product of *x* and *y* matrices.
@inlinable
public func matrix_multiply(_ x: simd_float3x3, _ y: simd_float3) -> simd_float3 { simd_mul(x, y) }

/// - Returns: Product of *x* and *y* matrices.
@inlinable
public func matrix_multiply(_ x: simd_float3x4, _ y: simd_float3) -> simd_float4 { simd_mul(x, y) }

/// - Returns: Product of *x* and *y* matrices.
@inlinable
public func matrix_multiply(_ x: simd_float4x2, _ y: simd_float4) -> simd_float2 { simd_mul(x, y) }

/// - Returns: Product of *x* and *y* matrices.
@inlinable
public func matrix_multiply(_ x: simd_float4x3, _ y: simd_float4) -> simd_float3 { simd_mul(x, y) }

/// - Returns: Product of *x* and *y* matrices.
@inlinable
public func matrix_multiply(_ x: simd_float4x4, _ y: simd_float4) -> simd_float4 { simd_mul(x, y) }

/// - Returns: Product of *x* and *y* matrices.
@inlinable
public func matrix_multiply(_ x: simd_double2x2, _ y: simd_double2) -> simd_double2 { simd_mul(x, y) }

/// - Returns: Product of *x* and *y* matrices.
@inlinable
public func matrix_multiply(_ x: simd_double2x3, _ y: simd_double2) -> simd_double3 { simd_mul(x, y) }

/// - Returns: Product of *x* and *y* matrices.
@inlinable
public func matrix_multiply(_ x: simd_double2x4, _ y: simd_double2) -> simd_double4 { simd_mul(x, y) }

/// - Returns: Product of *x* and *y* matrices.
@inlinable
public func matrix_multiply(_ x: simd_double3x2, _ y: simd_double3) -> simd_double2 { simd_mul(x, y) }

/// - Returns: Product of *x* and *y* matrices.
@inlinable
public func matrix_multiply(_ x: simd_double3x3, _ y: simd_double3) -> simd_double3 { simd_mul(x, y) }

/// - Returns: Product of *x* and *y* matrices.
@inlinable
public func matrix_multiply(_ x: simd_double3x4, _ y: simd_double3) -> simd_double4 { simd_mul(x, y) }

/// - Returns: Product of *x* and *y* matrices.
@inlinable
public func matrix_multiply(_ x: simd_double4x2, _ y: simd_double4) -> simd_double2 { simd_mul(x, y) }

/// - Returns: Product of *x* and *y* matrices.
@inlinable
public func matrix_multiply(_ x: simd_double4x3, _ y: simd_double4) -> simd_double3 { simd_mul(x, y) }

/// - Returns: Product of *x* and *y* matrices.
@inlinable
public func matrix_multiply(_ x: simd_double4x4, _ y: simd_double4) -> simd_double4 { simd_mul(x, y) }


/// - Returns: Product of *x* and *y* matrices.
@inlinable
public func matrix_multiply(_ x: simd_float2, _ y: simd_float2x2) -> simd_float2 { simd_mul(x, y) }

/// - Returns: Product of *x* and *y* matrices.
@inlinable
public func matrix_multiply(_ x: simd_float2, _ y: simd_float3x2) -> simd_float3 { simd_mul(x, y) }

/// - Returns: Product of *x* and *y* matrices.
@inlinable
public func matrix_multiply(_ x: simd_float2, _ y: simd_float4x2) -> simd_float4 { simd_mul(x, y) }

/// - Returns: Product of *x* and *y* matrices.
@inlinable
public func matrix_multiply(_ x: simd_float3, _ y: simd_float2x3) -> simd_float2 { simd_mul(x, y) }

/// - Returns: Product of *x* and *y* matrices.
@inlinable
public func matrix_multiply(_ x: simd_float3, _ y: simd_float3x3) -> simd_float3 { simd_mul(x, y) }

/// - Returns: Product of *x* and *y* matrices.
@inlinable
public func matrix_multiply(_ x: simd_float3, _ y: simd_float4x3) -> simd_float4 { simd_mul(x, y) }

/// - Returns: Product of *x* and *y* matrices.
@inlinable
public func matrix_multiply(_ x: simd_float4, _ y: simd_float2x4) -> simd_float2 { simd_mul(x, y) }

/// - Returns: Product of *x* and *y* matrices.
@inlinable
public func matrix_multiply(_ x: simd_float4, _ y: simd_float3x4) -> simd_float3 { simd_mul(x, y) }

/// - Returns: Product of *x* and *y* matrices.
@inlinable
public func matrix_multiply(_ x: simd_float4, _ y: simd_float4x4) -> simd_float4 { simd_mul(x, y) }

/// - Returns: Product of *x* and *y* matrices.
@inlinable
public func matrix_multiply(_ x: simd_double2, _ y: simd_double2x2) -> simd_double2 { simd_mul(x, y) }

/// - Returns: Product of *x* and *y* matrices.
@inlinable
public func matrix_multiply(_ x: simd_double2, _ y: simd_double3x2) -> simd_double3 { simd_mul(x, y) }

/// - Returns: Product of *x* and *y* matrices.
@inlinable
public func matrix_multiply(_ x: simd_double2, _ y: simd_double4x2) -> simd_double4 { simd_mul(x, y) }

/// - Returns: Product of *x* and *y* matrices.
@inlinable
public func matrix_multiply(_ x: simd_double3, _ y: simd_double2x3) -> simd_double2 { simd_mul(x, y) }

/// - Returns: Product of *x* and *y* matrices.
@inlinable
public func matrix_multiply(_ x: simd_double3, _ y: simd_double3x3) -> simd_double3 { simd_mul(x, y) }

/// - Returns: Product of *x* and *y* matrices.
@inlinable
public func matrix_multiply(_ x: simd_double3, _ y: simd_double4x3) -> simd_double4 { simd_mul(x, y) }

/// - Returns: Product of *x* and *y* matrices.
@inlinable
public func matrix_multiply(_ x: simd_double4, _ y: simd_double2x4) -> simd_double2 { simd_mul(x, y) }

/// - Returns: Product of *x* and *y* matrices.
@inlinable
public func matrix_multiply(_ x: simd_double4, _ y: simd_double3x4) -> simd_double3 { simd_mul(x, y) }

/// - Returns: Product of *x* and *y* matrices.
@inlinable
public func matrix_multiply(_ x: simd_double4, _ y: simd_double4x4) -> simd_double4 { simd_mul(x, y) }


/// - Returns: Product of *x* and *y* matrices.
@inlinable
public func matrix_multiply(_ x: simd_float2x2, _ y: simd_float2x2) -> simd_float2x2 { simd_mul(x, y) }

/// - Returns: Product of *x* and *y* matrices.
@inlinable
public func matrix_multiply(_ x: simd_float2x3, _ y: simd_float2x2) -> simd_float2x3 { simd_mul(x, y) }

/// - Returns: Product of *x* and *y* matrices.
@inlinable
public func matrix_multiply(_ x: simd_float2x4, _ y: simd_float2x2) -> simd_float2x4 { simd_mul(x, y) }

/// - Returns: Product of *x* and *y* matrices.
@inlinable
public func matrix_multiply(_ x: simd_float3x2, _ y: simd_float2x3) -> simd_float2x2 { simd_mul(x, y) }

/// - Returns: Product of *x* and *y* matrices.
@inlinable
public func matrix_multiply(_ x: simd_float3x3, _ y: simd_float2x3) -> simd_float2x3 { simd_mul(x, y) }

/// - Returns: Product of *x* and *y* matrices.
@inlinable
public func matrix_multiply(_ x: simd_float3x4, _ y: simd_float2x3) -> simd_float2x4 { simd_mul(x, y) }

/// - Returns: Product of *x* and *y* matrices.
@inlinable
public func matrix_multiply(_ x: simd_float4x2, _ y: simd_float2x4) -> simd_float2x2 { simd_mul(x, y) }

/// - Returns: Product of *x* and *y* matrices.
@inlinable
public func matrix_multiply(_ x: simd_float4x3, _ y: simd_float2x4) -> simd_float2x3 { simd_mul(x, y) }

/// - Returns: Product of *x* and *y* matrices.
@inlinable
public func matrix_multiply(_ x: simd_float4x4, _ y: simd_float2x4) -> simd_float2x4 { simd_mul(x, y) }

/// - Returns: Product of *x* and *y* matrices.
@inlinable
public func matrix_multiply(_ x: simd_double2x2, _ y: simd_double2x2) -> simd_double2x2 { simd_mul(x, y) }

/// - Returns: Product of *x* and *y* matrices.
@inlinable
public func matrix_multiply(_ x: simd_double2x3, _ y: simd_double2x2) -> simd_double2x3 { simd_mul(x, y) }

/// - Returns: Product of *x* and *y* matrices.
@inlinable
public func matrix_multiply(_ x: simd_double2x4, _ y: simd_double2x2) -> simd_double2x4 { simd_mul(x, y) }

/// - Returns: Product of *x* and *y* matrices.
@inlinable
public func matrix_multiply(_ x: simd_double3x2, _ y: simd_double2x3) -> simd_double2x2 { simd_mul(x, y) }

/// - Returns: Product of *x* and *y* matrices.
@inlinable
public func matrix_multiply(_ x: simd_double3x3, _ y: simd_double2x3) -> simd_double2x3 { simd_mul(x, y) }

/// - Returns: Product of *x* and *y* matrices.
@inlinable
public func matrix_multiply(_ x: simd_double3x4, _ y: simd_double2x3) -> simd_double2x4 { simd_mul(x, y) }

/// - Returns: Product of *x* and *y* matrices.
@inlinable
public func matrix_multiply(_ x: simd_double4x2, _ y: simd_double2x4) -> simd_double2x2 { simd_mul(x, y) }

/// - Returns: Product of *x* and *y* matrices.
@inlinable
public func matrix_multiply(_ x: simd_double4x3, _ y: simd_double2x4) -> simd_double2x3 { simd_mul(x, y) }

/// - Returns: Product of *x* and *y* matrices.
@inlinable
public func matrix_multiply(_ x: simd_double4x4, _ y: simd_double2x4) -> simd_double2x4 { simd_mul(x, y) }


/// - Returns: Product of *x* and *y* matrices.
@inlinable
public func matrix_multiply(_ x: simd_float2x2, _ y: simd_float3x2) -> simd_float3x2 { simd_mul(x, y) }

/// - Returns: Product of *x* and *y* matrices.
@inlinable
public func matrix_multiply(_ x: simd_float2x3, _ y: simd_float3x2) -> simd_float3x3 { simd_mul(x, y) }

/// - Returns: Product of *x* and *y* matrices.
@inlinable
public func matrix_multiply(_ x: simd_float2x4, _ y: simd_float3x2) -> simd_float3x4 { simd_mul(x, y) }

/// - Returns: Product of *x* and *y* matrices.
@inlinable
public func matrix_multiply(_ x: simd_float3x2, _ y: simd_float3x3) -> simd_float3x2 { simd_mul(x, y) }

/// - Returns: Product of *x* and *y* matrices.
@inlinable
public func matrix_multiply(_ x: simd_float3x3, _ y: simd_float3x3) -> simd_float3x3 { simd_mul(x, y) }

/// - Returns: Product of *x* and *y* matrices.
@inlinable
public func matrix_multiply(_ x: simd_float3x4, _ y: simd_float3x3) -> simd_float3x4 { simd_mul(x, y) }

/// - Returns: Product of *x* and *y* matrices.
@inlinable
public func matrix_multiply(_ x: simd_float4x2, _ y: simd_float3x4) -> simd_float3x2 { simd_mul(x, y) }

/// - Returns: Product of *x* and *y* matrices.
@inlinable
public func matrix_multiply(_ x: simd_float4x3, _ y: simd_float3x4) -> simd_float3x3 { simd_mul(x, y) }

/// - Returns: Product of *x* and *y* matrices.
@inlinable
public func matrix_multiply(_ x: simd_float4x4, _ y: simd_float3x4) -> simd_float3x4 { simd_mul(x, y) }

/// - Returns: Product of *x* and *y* matrices.
@inlinable
public func matrix_multiply(_ x: simd_double2x2, _ y: simd_double3x2) -> simd_double3x2 { simd_mul(x, y) }

/// - Returns: Product of *x* and *y* matrices.
@inlinable
public func matrix_multiply(_ x: simd_double2x3, _ y: simd_double3x2) -> simd_double3x3 { simd_mul(x, y) }

/// - Returns: Product of *x* and *y* matrices.
@inlinable
public func matrix_multiply(_ x: simd_double2x4, _ y: simd_double3x2) -> simd_double3x4 { simd_mul(x, y) }

/// - Returns: Product of *x* and *y* matrices.
@inlinable
public func matrix_multiply(_ x: simd_double3x2, _ y: simd_double3x3) -> simd_double3x2 { simd_mul(x, y) }

/// - Returns: Product of *x* and *y* matrices.
@inlinable
public func matrix_multiply(_ x: simd_double3x3, _ y: simd_double3x3) -> simd_double3x3 { simd_mul(x, y) }

/// - Returns: Product of *x* and *y* matrices.
@inlinable
public func matrix_multiply(_ x: simd_double3x4, _ y: simd_double3x3) -> simd_double3x4 { simd_mul(x, y) }

/// - Returns: Product of *x* and *y* matrices.
@inlinable
public func matrix_multiply(_ x: simd_double4x2, _ y: simd_double3x4) -> simd_double3x2 { simd_mul(x, y) }

/// - Returns: Product of *x* and *y* matrices.
@inlinable
public func matrix_multiply(_ x: simd_double4x3, _ y: simd_double3x4) -> simd_double3x3 { simd_mul(x, y) }

/// - Returns: Product of *x* and *y* matrices.
@inlinable
public func matrix_multiply(_ x: simd_double4x4, _ y: simd_double3x4) -> simd_double3x4 { simd_mul(x, y) }


/// - Returns: Product of *x* and *y* matrices.
@inlinable
public func matrix_multiply(_ x: simd_float2x2, _ y: simd_float4x2) -> simd_float4x2 { simd_mul(x, y) }

/// - Returns: Product of *x* and *y* matrices.
@inlinable
public func matrix_multiply(_ x: simd_float2x3, _ y: simd_float4x2) -> simd_float4x3 { simd_mul(x, y) }

/// - Returns: Product of *x* and *y* matrices.
@inlinable
public func matrix_multiply(_ x: simd_float2x4, _ y: simd_float4x2) -> simd_float4x4 { simd_mul(x, y) }

/// - Returns: Product of *x* and *y* matrices.
@inlinable
public func matrix_multiply(_ x: simd_float3x2, _ y: simd_float4x3) -> simd_float4x2 { simd_mul(x, y) }

/// - Returns: Product of *x* and *y* matrices.
@inlinable
public func matrix_multiply(_ x: simd_float3x3, _ y: simd_float4x3) -> simd_float4x3 { simd_mul(x, y) }

/// - Returns: Product of *x* and *y* matrices.
@inlinable
public func matrix_multiply(_ x: simd_float3x4, _ y: simd_float4x3) -> simd_float4x4 { simd_mul(x, y) }

/// - Returns: Product of *x* and *y* matrices.
@inlinable
public func matrix_multiply(_ x: simd_float4x2, _ y: simd_float4x4) -> simd_float4x2 { simd_mul(x, y) }

/// - Returns: Product of *x* and *y* matrices.
@inlinable
public func matrix_multiply(_ x: simd_float4x3, _ y: simd_float4x4) -> simd_float4x3 { simd_mul(x, y) }

/// - Returns: Product of *x* and *y* matrices.
@inlinable
public func matrix_multiply(_ x: simd_float4x4, _ y: simd_float4x4) -> simd_float4x4 { simd_mul(x, y) }

/// - Returns: Product of *x* and *y* matrices.
@inlinable
public func matrix_multiply(_ x: simd_double2x2, _ y: simd_double4x2) -> simd_double4x2 { simd_mul(x, y) }

/// - Returns: Product of *x* and *y* matrices.
@inlinable
public func matrix_multiply(_ x: simd_double2x3, _ y: simd_double4x2) -> simd_double4x3 { simd_mul(x, y) }

/// - Returns: Product of *x* and *y* matrices.
@inlinable
public func matrix_multiply(_ x: simd_double2x4, _ y: simd_double4x2) -> simd_double4x4 { simd_mul(x, y) }

/// - Returns: Product of *x* and *y* matrices.
@inlinable
public func matrix_multiply(_ x: simd_double3x2, _ y: simd_double4x3) -> simd_double4x2 { simd_mul(x, y) }

/// - Returns: Product of *x* and *y* matrices.
@inlinable
public func matrix_multiply(_ x: simd_double3x3, _ y: simd_double4x3) -> simd_double4x3 { simd_mul(x, y) }

/// - Returns: Product of *x* and *y* matrices.
@inlinable
public func matrix_multiply(_ x: simd_double3x4, _ y: simd_double4x3) -> simd_double4x4 { simd_mul(x, y) }

/// - Returns: Product of *x* and *y* matrices.
@inlinable
public func matrix_multiply(_ x: simd_double4x2, _ y: simd_double4x4) -> simd_double4x2 { simd_mul(x, y) }

/// - Returns: Product of *x* and *y* matrices.
@inlinable
public func matrix_multiply(_ x: simd_double4x3, _ y: simd_double4x4) -> simd_double4x3 { simd_mul(x, y) }

/// - Returns: Product of *x* and *y* matrices.
@inlinable
public func matrix_multiply(_ x: simd_double4x4, _ y: simd_double4x4) -> simd_double4x4 { simd_mul(x, y) }


// MARK: - matrix_scale

/// - Returns: Scaled *x* by *a*.
@inlinable
public func matrix_scale(_ a: Float, _ x: simd_float2x2) -> simd_float2x2 { simd_mul(a, x) }

/// - Returns: Scaled *x* by *a*.
@inlinable
public func matrix_scale(_ a: Float, _ x: simd_float3x2) -> simd_float3x2 { simd_mul(a, x) }

/// - Returns: Scaled *x* by *a*.
@inlinable
public func matrix_scale(_ a: Float, _ x: simd_float4x2) -> simd_float4x2 { simd_mul(a, x) }

/// - Returns: Scaled *x* by *a*.
@inlinable
public func matrix_scale(_ a: Float, _ x: simd_float2x3) -> simd_float2x3 { simd_mul(a, x) }

/// - Returns: Scaled *x* by *a*.
@inlinable
public func matrix_scale(_ a: Float, _ x: simd_float3x3) -> simd_float3x3 { simd_mul(a, x) }

/// - Returns: Scaled *x* by *a*.
@inlinable
public func matrix_scale(_ a: Float, _ x: simd_float4x3) -> simd_float4x3 { simd_mul(a, x) }

/// - Returns: Scaled *x* by *a*.
@inlinable
public func matrix_scale(_ a: Float, _ x: simd_float2x4) -> simd_float2x4 { simd_mul(a, x) }

/// - Returns: Scaled *x* by *a*.
@inlinable
public func matrix_scale(_ a: Float, _ x: simd_float3x4) -> simd_float3x4 { simd_mul(a, x) }

/// - Returns: Scaled *x* by *a*.
@inlinable
public func matrix_scale(_ a: Float, _ x: simd_float4x4) -> simd_float4x4 { simd_mul(a, x) }

/// - Returns: Scaled *x* by *a*.
@inlinable
public func matrix_scale(_ a: Double, _ x: simd_double2x2) -> simd_double2x2 { simd_mul(a, x) }

/// - Returns: Scaled *x* by *a*.
@inlinable
public func matrix_scale(_ a: Double, _ x: simd_double3x2) -> simd_double3x2 { simd_mul(a, x) }

/// - Returns: Scaled *x* by *a*.
@inlinable
public func matrix_scale(_ a: Double, _ x: simd_double4x2) -> simd_double4x2 { simd_mul(a, x) }

/// - Returns: Scaled *x* by *a*.
@inlinable
public func matrix_scale(_ a: Double, _ x: simd_double2x3) -> simd_double2x3 { simd_mul(a, x) }

/// - Returns: Scaled *x* by *a*.
@inlinable
public func matrix_scale(_ a: Double, _ x: simd_double3x3) -> simd_double3x3 { simd_mul(a, x) }

/// - Returns: Scaled *x* by *a*.
@inlinable
public func matrix_scale(_ a: Double, _ x: simd_double4x3) -> simd_double4x3 { simd_mul(a, x) }

/// - Returns: Scaled *x* by *a*.
@inlinable
public func matrix_scale(_ a: Double, _ x: simd_double2x4) -> simd_double2x4 { simd_mul(a, x) }

/// - Returns: Scaled *x* by *a*.
@inlinable
public func matrix_scale(_ a: Double, _ x: simd_double3x4) -> simd_double3x4 { simd_mul(a, x) }

/// - Returns: Scaled *x* by *a*.
@inlinable
public func matrix_scale(_ a: Double, _ x: simd_double4x4) -> simd_double4x4 { simd_mul(a, x) }


// MARK: - max

/// - Returns: Elementwise maximum of *x* and *y*.
@inlinable
public func max(_ x: SIMD2<Int32>, _ y: SIMD2<Int32>) -> SIMD2<Int32> { simd_max(x, y) }

/// - Returns: Elementwise maximum of *x* and *y*.
@inlinable
public func max(_ vector: SIMD2<Int32>, _ scalar: Int32) -> SIMD2<Int32> {
    .init(vector.x < scalar ? scalar : vector.x,
          vector.y < scalar ? scalar : vector.y)
}

/// - Returns: Elementwise maximum of *x* and *y*.
@inlinable
public func max(_ x: SIMD3<Int32>, _ y: SIMD3<Int32>) -> SIMD3<Int32> { simd_max(x, y) }

/// - Returns: Elementwise maximum of *x* and *y*.
@inlinable
public func max(_ vector: SIMD3<Int32>, _ scalar: Int32) -> SIMD3<Int32> {
    .init(vector.x < scalar ? scalar : vector.x,
          vector.y < scalar ? scalar : vector.y,
          vector.z < scalar ? scalar : vector.z)
}

/// - Returns: Elementwise maximum of *x* and *y*.
@inlinable
public func max(_ x: SIMD4<Int32>, _ y: SIMD4<Int32>) -> SIMD4<Int32> { simd_max(x, y) }

/// - Returns: Elementwise maximum of *x* and *y*.
@inlinable
public func max(_ vector: SIMD4<Int32>, _ scalar: Int32) -> SIMD4<Int32> {
    .init(vector.x < scalar ? scalar : vector.x,
          vector.y < scalar ? scalar : vector.y,
          vector.z < scalar ? scalar : vector.z,
          vector.w < scalar ? scalar : vector.w)
}

/// - Returns: Elementwise maximum of *x* and *y*.
@inlinable
public func max(_ x: SIMD2<UInt32>, _ y: SIMD2<UInt32>) -> SIMD2<UInt32> { simd_max(x, y) }

/// - Returns: Elementwise maximum of *x* and *y*.
@inlinable
public func max(_ vector: SIMD2<UInt32>, _ scalar: UInt32) -> SIMD2<UInt32> {
    .init(vector.x < scalar ? scalar : vector.x,
          vector.y < scalar ? scalar : vector.y)
}

/// - Returns: Elementwise maximum of *x* and *y*.
@inlinable
public func max(_ x: SIMD3<UInt32>, _ y: SIMD3<UInt32>) -> SIMD3<UInt32> { simd_max(x, y) }

/// - Returns: Elementwise maximum of *x* and *y*.
@inlinable
public func max(_ vector: SIMD3<UInt32>, _ scalar: UInt32) -> SIMD3<UInt32> {
    .init(vector.x < scalar ? scalar : vector.x,
          vector.y < scalar ? scalar : vector.y,
          vector.z < scalar ? scalar : vector.z)
}

/// - Returns: Elementwise maximum of *x* and *y*.
@inlinable
public func max(_ x: SIMD4<UInt32>, _ y: SIMD4<UInt32>) -> SIMD4<UInt32> { simd_max(x, y) }

/// - Returns: Elementwise maximum of *x* and *y*.
@inlinable
public func max(_ vector: SIMD4<UInt32>, _ scalar: UInt32) -> SIMD4<UInt32> {
    .init(vector.x < scalar ? scalar : vector.x,
          vector.y < scalar ? scalar : vector.y,
          vector.z < scalar ? scalar : vector.z,
          vector.w < scalar ? scalar : vector.w)
}

/// - Returns: Elementwise maximum of *x* and *y*.
@inlinable
public func max(_ x: SIMD2<Float>, _ y: SIMD2<Float>) -> SIMD2<Float> { simd_max(x, y) }

/// - Returns: Elementwise maximum of *x* and *y*.
@inlinable
public func max(_ vector: SIMD2<Float>, _ scalar: Float) -> SIMD2<Float> {
    .init(vector.x < scalar ? scalar : vector.x,
          vector.y < scalar ? scalar : vector.y)
}

/// - Returns: Elementwise maximum of *x* and *y*.
@inlinable
public func max(_ x: SIMD3<Float>, _ y: SIMD3<Float>) -> SIMD3<Float> { simd_max(x, y) }

/// - Returns: Elementwise maximum of *x* and *y*.
@inlinable
public func max(_ vector: SIMD3<Float>, _ scalar: Float) -> SIMD3<Float> {
    .init(vector.x < scalar ? scalar : vector.x,
          vector.y < scalar ? scalar : vector.y,
          vector.z < scalar ? scalar : vector.z)
}

/// - Returns: Elementwise maximum of *x* and *y*.
@inlinable
public func max(_ x: SIMD4<Float>, _ y: SIMD4<Float>) -> SIMD4<Float> { simd_max(x, y) }

/// - Returns: Elementwise maximum of *x* and *y*.
@inlinable
public func max(_ vector: SIMD4<Float>, _ scalar: Float) -> SIMD4<Float> {
    .init(vector.x < scalar ? scalar : vector.x,
          vector.y < scalar ? scalar : vector.y,
          vector.z < scalar ? scalar : vector.z,
          vector.w < scalar ? scalar : vector.w)
}

/// - Returns: Elementwise maximum of *x* and *y*.
@inlinable
public func max(_ x: SIMD2<Double>, _ y: SIMD2<Double>) -> SIMD2<Double> { simd_max(x, y) }

/// - Returns: Elementwise maximum of *x* and *y*.
@inlinable
public func max(_ vector: SIMD2<Double>, _ scalar: Double) -> SIMD2<Double> {
    .init(vector.x < scalar ? scalar : vector.x,
          vector.y < scalar ? scalar : vector.y)
}

/// - Returns: Elementwise maximum of *x* and *y*.
@inlinable
public func max(_ x: SIMD3<Double>, _ y: SIMD3<Double>) -> SIMD3<Double> { simd_max(x, y) }

/// - Returns: Elementwise maximum of *x* and *y*.
@inlinable
public func max(_ vector: SIMD3<Double>, _ scalar: Double) -> SIMD3<Double> {
    .init(vector.x < scalar ? scalar : vector.x,
          vector.y < scalar ? scalar : vector.y,
          vector.z < scalar ? scalar : vector.z)
}

/// - Returns: Elementwise maximum of *x* and *y*.
@inlinable
public func max(_ x: SIMD4<Double>, _ y: SIMD4<Double>) -> SIMD4<Double> { simd_max(x, y) }

/// - Returns: Elementwise maximum of *x* and *y*.
@inlinable
public func max(_ vector: SIMD4<Double>, _ scalar: Double) -> SIMD4<Double> {
    .init(vector.x < scalar ? scalar : vector.x,
          vector.y < scalar ? scalar : vector.y,
          vector.z < scalar ? scalar : vector.z,
          vector.w < scalar ? scalar : vector.w)
}


// MARK: - min

/// - Returns: Elementwise minimum of *x* and *y*.
@inlinable
public func min(_ x: SIMD2<Int32>, _ y: SIMD2<Int32>) -> SIMD2<Int32> { simd_min(x, y) }

/// - Returns: Elementwise minimum of *x* and *y*.
@inlinable
public func min(_ vector: SIMD2<Int32>, _ scalar: Int32) -> SIMD2<Int32> {
    .init(vector.x < scalar ? vector.x : scalar,
          vector.y < scalar ? vector.y : scalar)
}

/// - Returns: Elementwise minimum of *x* and *y*.
@inlinable
public func min(_ x: SIMD3<Int32>, _ y: SIMD3<Int32>) -> SIMD3<Int32> { simd_min(x, y) }

/// - Returns: Elementwise minimum of *x* and *y*.
@inlinable
public func min(_ vector: SIMD3<Int32>, _ scalar: Int32) -> SIMD3<Int32> {
    .init(vector.x < scalar ? vector.x : scalar,
          vector.y < scalar ? vector.y : scalar,
          vector.z < scalar ? vector.z : scalar)
}

/// - Returns: Elementwise minimum of *x* and *y*.
@inlinable
public func min(_ x: SIMD4<Int32>, _ y: SIMD4<Int32>) -> SIMD4<Int32> { simd_min(x, y) }

/// - Returns: Elementwise minimum of *x* and *y*.
@inlinable
public func min(_ vector: SIMD4<Int32>, _ scalar: Int32) -> SIMD4<Int32> {
    .init(vector.x < scalar ? vector.x : scalar,
          vector.y < scalar ? vector.y : scalar,
          vector.z < scalar ? vector.z : scalar,
          vector.w < scalar ? vector.w : scalar)
}

/// - Returns: Elementwise minimum of *x* and *y*.
@inlinable
public func min(_ x: SIMD2<UInt32>, _ y: SIMD2<UInt32>) -> SIMD2<UInt32> { simd_min(x, y) }

/// - Returns: Elementwise minimum of *x* and *y*.
@inlinable
public func min(_ vector: SIMD2<UInt32>, _ scalar: UInt32) -> SIMD2<UInt32> {
    .init(vector.x < scalar ? vector.x : scalar,
          vector.y < scalar ? vector.y : scalar)
}

/// - Returns: Elementwise minimum of *x* and *y*.
@inlinable
public func min(_ x: SIMD3<UInt32>, _ y: SIMD3<UInt32>) -> SIMD3<UInt32> { simd_min(x, y) }

/// - Returns: Elementwise minimum of *x* and *y*.
@inlinable
public func min(_ vector: SIMD3<UInt32>, _ scalar: UInt32) -> SIMD3<UInt32> {
    .init(vector.x < scalar ? vector.x : scalar,
          vector.y < scalar ? vector.y : scalar,
          vector.z < scalar ? vector.z : scalar)
}

/// - Returns: Elementwise minimum of *x* and *y*.
@inlinable
public func min(_ x: SIMD4<UInt32>, _ y: SIMD4<UInt32>) -> SIMD4<UInt32> { simd_min(x, y) }

/// - Returns: Elementwise minimum of *x* and *y*.
@inlinable
public func min(_ vector: SIMD4<UInt32>, _ scalar: UInt32) -> SIMD4<UInt32> {
    .init(vector.x < scalar ? vector.x : scalar,
          vector.y < scalar ? vector.y : scalar,
          vector.z < scalar ? vector.z : scalar,
          vector.w < scalar ? vector.w : scalar)
}

/// - Returns: Elementwise minimum of *x* and *y*.
@inlinable
public func min(_ x: SIMD2<Float>, _ y: SIMD2<Float>) -> SIMD2<Float> { simd_min(x, y) }

/// - Returns: Elementwise minimum of *x* and *y*.
@inlinable
public func min(_ vector: SIMD2<Float>, _ scalar: Float) -> SIMD2<Float> {
    .init(vector.x < scalar ? vector.x : scalar,
          vector.y < scalar ? vector.y : scalar)
}

/// - Returns: Elementwise minimum of *x* and *y*.
@inlinable
public func min(_ x: SIMD3<Float>, _ y: SIMD3<Float>) -> SIMD3<Float> { simd_min(x, y) }

/// - Returns: Elementwise minimum of *x* and *y*.
@inlinable
public func min(_ vector: SIMD3<Float>, _ scalar: Float) -> SIMD3<Float> {
    .init(vector.x < scalar ? vector.x : scalar,
          vector.y < scalar ? vector.y : scalar,
          vector.z < scalar ? vector.z : scalar)
}

/// - Returns: Elementwise minimum of *x* and *y*.
@inlinable
public func min(_ x: SIMD4<Float>, _ y: SIMD4<Float>) -> SIMD4<Float> { simd_min(x, y) }

/// - Returns: Elementwise minimum of *x* and *y*.
@inlinable
public func min(_ vector: SIMD4<Float>, _ scalar: Float) -> SIMD4<Float> {
    .init(vector.x < scalar ? vector.x : scalar,
          vector.y < scalar ? vector.y : scalar,
          vector.z < scalar ? vector.z : scalar,
          vector.w < scalar ? vector.w : scalar)
}

/// - Returns: Elementwise minimum of *x* and *y*.
@inlinable
public func min(_ x: SIMD2<Double>, _ y: SIMD2<Double>) -> SIMD2<Double> { simd_min(x, y) }

/// - Returns: Elementwise minimum of *x* and *y*.
@inlinable
public func min(_ vector: SIMD2<Double>, _ scalar: Double) -> SIMD2<Double> {
    .init(vector.x < scalar ? vector.x : scalar,
          vector.y < scalar ? vector.y : scalar)
}

/// - Returns: Elementwise minimum of *x* and *y*.
@inlinable
public func min(_ x: SIMD3<Double>, _ y: SIMD3<Double>) -> SIMD3<Double> { simd_min(x, y) }

/// - Returns: Elementwise minimum of *x* and *y*.
@inlinable
public func min(_ vector: SIMD3<Double>, _ scalar: Double) -> SIMD3<Double> {
    .init(vector.x < scalar ? vector.x : scalar,
          vector.y < scalar ? vector.y : scalar,
          vector.z < scalar ? vector.z : scalar)
}

/// - Returns: Elementwise minimum of *x* and *y*.
@inlinable
public func min(_ x: SIMD4<Double>, _ y: SIMD4<Double>) -> SIMD4<Double> { simd_min(x, y) }

/// - Returns: Elementwise minimum of *x* and *y*.
@inlinable
public func min(_ vector: SIMD4<Double>, _ scalar: Double) -> SIMD4<Double> {
    .init(vector.x < scalar ? vector.x : scalar,
          vector.y < scalar ? vector.y : scalar,
          vector.z < scalar ? vector.z : scalar,
          vector.w < scalar ? vector.w : scalar)
}


// MARK: - mix

/// - Returns: Elementwise linear interpolation between *x* at *t*=0 and *y* at *t*=1.
@inlinable
public func mix(_ x: SIMD2<Float>, _ y: SIMD2<Float>, t: SIMD2<Float>) -> SIMD2<Float> { simd_mix(x, y, t) }

/// - Returns: Elementwise linear interpolation between *x* at *t*=0 and *y* at *t*=1.
@inlinable
public func mix(_ x: SIMD2<Float>, _ y: SIMD2<Float>, t: Float) -> SIMD2<Float> { x * (1.0 - t) + y * t }

/// - Returns: Elementwise linear interpolation between *x* at *t*=0 and *y* at *t*=1.
@inlinable
public func mix(_ x: SIMD3<Float>, _ y: SIMD3<Float>, t: SIMD3<Float>) -> SIMD3<Float> { simd_mix(x, y, t) }

/// - Returns: Elementwise linear interpolation between *x* at *t*=0 and *y* at *t*=1.
@inlinable
public func mix(_ x: SIMD3<Float>, _ y: SIMD3<Float>, t: Float) -> SIMD3<Float> { x * (1.0 - t) + y * t }

/// - Returns: Elementwise linear interpolation between *x* at *t*=0 and *y* at *t*=1.
@inlinable
public func mix(_ x: SIMD4<Float>, _ y: SIMD4<Float>, t: SIMD4<Float>) -> SIMD4<Float> { simd_mix(x, y, t) }

/// - Returns: Elementwise linear interpolation between *x* at *t*=0 and *y* at *t*=1.
@inlinable
public func mix(_ x: SIMD4<Float>, _ y: SIMD4<Float>, t: Float) -> SIMD4<Float> { x * (1.0 - t) + y * t }

/// - Returns: Elementwise linear interpolation between *x* at *t*=0 and *y* at *t*=1.
@inlinable
public func mix(_ x: SIMD2<Double>, _ y: SIMD2<Double>, t: SIMD2<Double>) -> SIMD2<Double> { simd_mix(x, y, t) }

/// - Returns: Elementwise linear interpolation between *x* at *t*=0 and *y* at *t*=1.
@inlinable
public func mix(_ x: SIMD2<Double>, _ y: SIMD2<Double>, t: Double) -> SIMD2<Double> { x * (1.0 - t) + y * t }

/// - Returns: Elementwise linear interpolation between *x* at *t*=0 and *y* at *t*=1.
@inlinable
public func mix(_ x: SIMD3<Double>, _ y: SIMD3<Double>, t: SIMD3<Double>) -> SIMD3<Double> { simd_mix(x, y, t) }

/// - Returns: Elementwise linear interpolation between *x* at *t*=0 and *y* at *t*=1.
@inlinable
public func mix(_ x: SIMD3<Double>, _ y: SIMD3<Double>, t: Double) -> SIMD3<Double> { x * (1.0 - t) + y * t }

/// - Returns: Elementwise linear interpolation between *x* at *t*=0 and *y* at *t*=1.
@inlinable
public func mix(_ x: SIMD4<Double>, _ y: SIMD4<Double>, t: SIMD4<Double>) -> SIMD4<Double> { simd_mix(x, y, t) }

/// - Returns: Elementwise linear interpolation between *x* at *t*=0 and *y* at *t*=1.
@inlinable
public func mix(_ x: SIMD4<Double>, _ y: SIMD4<Double>, t: Double) -> SIMD4<Double> { x * (1.0 - t) + y * t }


// MARK: - nextafter

/// - Returns: Elementwise `nextafter` of *x* and *y*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func nextafter(_ x: simd_float2, _ y: simd_float2) -> simd_float2 { .init(nextafter(x.x, y.x), nextafter(x.y, y.y)) }

/// - Returns: Elementwise `nextafter` of *x* and *y*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func nextafter(_ x: simd_float3, _ y: simd_float3) -> simd_float3 { .init(nextafter(x.x, y.x), nextafter(x.y, y.y), nextafter(x.z, y.z)) }

/// - Returns: Elementwise `nextafter` of *x* and *y*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func nextafter(_ x: simd_float4, _ y: simd_float4) -> simd_float4 { .init(nextafter(x.x, y.x), nextafter(x.y, y.y), nextafter(x.z, y.z), nextafter(x.w, y.w)) }

/// - Returns: Elementwise `nextafter` of *x* and *y*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func nextafter(_ x: simd_float8, _ y: simd_float8) -> simd_float8 { .init(nextafter(x[0], y[0]), nextafter(x[1], y[1]), nextafter(x[2], y[2]), nextafter(x[3], y[3]), nextafter(x[4], y[4]), nextafter(x[5], y[5]), nextafter(x[6], y[6]), nextafter(x[7], y[7])) }

/// - Returns: Elementwise `nextafter` of *x* and *y*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func nextafter(_ x: simd_float16, _ y: simd_float16) -> simd_float16 { .init(nextafter(x[0], y[0]), nextafter(x[1], y[1]), nextafter(x[2], y[2]), nextafter(x[3], y[3]), nextafter(x[4], y[4]), nextafter(x[5], y[5]), nextafter(x[6], y[6]), nextafter(x[7], y[7]), nextafter(x[8], y[8]), nextafter(x[9], y[9]), nextafter(x[10], y[10]), nextafter(x[11], y[11]), nextafter(x[12], y[12]), nextafter(x[13], y[13]), nextafter(x[14], y[14]), nextafter(x[15], y[15])) }

/// - Returns: Elementwise `nextafter` of *x* and *y*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func nextafter(_ x: simd_double2, _ y: simd_double2) -> simd_double2 { .init(nextafter(x.x, y.x), nextafter(x.y, y.y)) }

/// - Returns: Elementwise `nextafter` of *x* and *y*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func nextafter(_ x: simd_double3, _ y: simd_double3) -> simd_double3 { .init(nextafter(x.x, y.x), nextafter(x.y, y.y), nextafter(x.z, y.z)) }

/// - Returns: Elementwise `nextafter` of *x* and *y*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func nextafter(_ x: simd_double4, _ y: simd_double4) -> simd_double4 { .init(nextafter(x.x, y.x), nextafter(x.y, y.y), nextafter(x.z, y.z), nextafter(x.w, y.w)) }

/// - Returns: Elementwise `nextafter` of *x* and *y*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func nextafter(_ x: simd_double8, _ y: simd_double8) -> simd_double8 { .init(nextafter(x[0], y[0]), nextafter(x[1], y[1]), nextafter(x[2], y[2]), nextafter(x[3], y[3]), nextafter(x[4], y[4]), nextafter(x[5], y[5]), nextafter(x[6], y[6]), nextafter(x[7], y[7])) }


// MARK: - norm_inf

/// - Returns: The infinity norm of *x*.
@inlinable
public func norm_inf(_ x: SIMD2<Float>) -> Float { simd_norm_inf(x) }

/// - Returns: The infinity norm of *x*.
@inlinable
public func norm_inf(_ x: SIMD3<Float>) -> Float { simd_norm_inf(x) }

/// - Returns: The infinity norm of *x*.
@inlinable
public func norm_inf(_ x: SIMD4<Float>) -> Float { simd_norm_inf(x) }

/// - Returns: The infinity norm of *x*.
@inlinable
public func norm_inf(_ x: SIMD2<Double>) -> Double { simd_norm_inf(x) }

/// - Returns: The infinity norm of *x*.
@inlinable
public func norm_inf(_ x: SIMD3<Double>) -> Double { simd_norm_inf(x) }

/// - Returns: The infinity norm of *x*.
@inlinable
public func norm_inf(_ x: SIMD4<Double>) -> Double { simd_norm_inf(x) }


// MARK: - norm_one

/// - Returns: 1-norm of *x*.
@inlinable
public func norm_one(_ x: SIMD2<Float>) -> Float { simd_norm_one(x) }

/// - Returns: 1-norm of *x*.
@inlinable
public func norm_one(_ x: SIMD3<Float>) -> Float { simd_norm_one(x) }

/// - Returns: 1-norm of *x*.
@inlinable
public func norm_one(_ x: SIMD4<Float>) -> Float { simd_norm_one(x) }

/// - Returns: 1-norm of *x*.
@inlinable
public func norm_one(_ x: SIMD2<Double>) -> Double { simd_norm_one(x) }

/// - Returns: 1-norm of *x*.
@inlinable
public func norm_one(_ x: SIMD3<Double>) -> Double { simd_norm_one(x) }

/// - Returns: 1-norm of *x*.
@inlinable
public func norm_one(_ x: SIMD4<Double>) -> Double { simd_norm_one(x) }


// MARK: - normalize

/// - Returns: Unit vector having the same direction as *x*.
@inlinable
public func normalize(_ x: SIMD2<Float>) -> SIMD2<Float> { simd_normalize(x) }

/// - Returns: Unit vector having the same direction as *x*.
@inlinable
public func normalize(_ x: SIMD3<Float>) -> SIMD3<Float> { simd_normalize(x) }

/// - Returns: Unit vector having the same direction as *x*.
@inlinable
public func normalize(_ x: SIMD4<Float>) -> SIMD4<Float> { simd_normalize(x) }

/// - Returns: Unit vector having the same direction as *x*.
@inlinable
public func normalize(_ x: SIMD2<Double>) -> SIMD2<Double> { simd_normalize(x) }

/// - Returns: Unit vector having the same direction as *x*.
@inlinable
public func normalize(_ x: SIMD3<Double>) -> SIMD3<Double> { simd_normalize(x) }

/// - Returns: Unit vector having the same direction as *x*.
@inlinable
public func normalize(_ x: SIMD4<Double>) -> SIMD4<Double> { simd_normalize(x) }


// MARK: - pow

/// - Returns: Elementwise *x* raised to the power of *y*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func pow(_ x: simd_float2, _ y: simd_float2) -> simd_float2 { .init(pow(x.x, y.x), pow(x.y, y.y)) }

/// - Returns: Elementwise *x* raised to the power of *y*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func pow(_ x: simd_float3, _ y: simd_float3) -> simd_float3 { .init(pow(x.x, y.x), pow(x.y, y.y), pow(x.z, y.z)) }

/// - Returns: Elementwise *x* raised to the power of *y*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func pow(_ x: simd_float4, _ y: simd_float4) -> simd_float4 { .init(pow(x.x, y.x), pow(x.y, y.y), pow(x.z, y.z), pow(x.w, y.w)) }

/// - Returns: Elementwise *x* raised to the power of *y*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func pow(_ x: simd_float8, _ y: simd_float8) -> simd_float8 { .init(pow(x[0], y[0]), pow(x[1], y[1]), pow(x[2], y[2]), pow(x[3], y[3]), pow(x[4], y[4]), pow(x[5], y[5]), pow(x[6], y[6]), pow(x[7], y[7])) }

/// - Returns: Elementwise *x* raised to the power of *y*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func pow(_ x: simd_float16, _ y: simd_float16) -> simd_float16 { .init(pow(x[0], y[0]), pow(x[1], y[1]), pow(x[2], y[2]), pow(x[3], y[3]), pow(x[4], y[4]), pow(x[5], y[5]), pow(x[6], y[6]), pow(x[7], y[7]), pow(x[8], y[8]), pow(x[9], y[9]), pow(x[10], y[10]), pow(x[11], y[11]), pow(x[12], y[12]), pow(x[13], y[13]), pow(x[14], y[14]), pow(x[15], y[15])) }

/// - Returns: Elementwise *x* raised to the power of *y*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func pow(_ x: simd_double2, _ y: simd_double2) -> simd_double2 { .init(pow(x.x, y.x), pow(x.y, y.y)) }

/// - Returns: Elementwise *x* raised to the power of *y*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func pow(_ x: simd_double3, _ y: simd_double3) -> simd_double3 { .init(pow(x.x, y.x), pow(x.y, y.y), pow(x.z, y.z)) }

/// - Returns: Elementwise *x* raised to the power of *y*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func pow(_ x: simd_double4, _ y: simd_double4) -> simd_double4 { .init(pow(x.x, y.x), pow(x.y, y.y), pow(x.z, y.z), pow(x.w, y.w)) }

/// - Returns: Elementwise *x* raised to the power of *y*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func pow(_ x: simd_double8, _ y: simd_double8) -> simd_double8 { .init(pow(x[0], y[0]), pow(x[1], y[1]), pow(x[2], y[2]), pow(x[3], y[3]), pow(x[4], y[4]), pow(x[5], y[5]), pow(x[6], y[6]), pow(x[7], y[7])) }


// MARK: - project

/// - Returns: Projection of *x* onto *y*.
@inlinable
public func project(_ x: SIMD2<Float>, _ y: SIMD2<Float>) -> SIMD2<Float> { (dot(x, y) / dot(y, y)) * y }

/// - Returns: Projection of *x* onto *y*.
@inlinable
public func project(_ x: SIMD3<Float>, _ y: SIMD3<Float>) -> SIMD3<Float> { (dot(x, y) / dot(y, y)) * y }

/// - Returns: Projection of *x* onto *y*.
@inlinable
public func project(_ x: SIMD4<Float>, _ y: SIMD4<Float>) -> SIMD4<Float> { (dot(x, y) / dot(y, y)) * y }

/// - Returns: Projection of *x* onto *y*.
@inlinable
public func project(_ x: SIMD2<Double>, _ y: SIMD2<Double>) -> SIMD2<Double> { (dot(x, y) / dot(y, y)) * y }

/// - Returns: Projection of *x* onto *y*.
@inlinable
public func project(_ x: SIMD3<Double>, _ y: SIMD3<Double>) -> SIMD3<Double> { (dot(x, y) / dot(y, y)) * y }

/// - Returns: Projection of *x* onto *y*.
@inlinable
public func project(_ x: SIMD4<Double>, _ y: SIMD4<Double>) -> SIMD4<Double> { (dot(x, y) / dot(y, y)) * y }


// MARK: - recip

/// - Returns: Reciprocial of *x*.
@inlinable
public func recip(_ x: Float) -> Float { 1.0 / x }

/// - Returns: Elementwise reciprocial of *x*.
@inlinable
public func recip(_ x: SIMD2<Float>) -> SIMD2<Float> { .one / x }

/// - Returns: Elementwise reciprocial of *x*.
@inlinable
public func recip(_ x: SIMD3<Float>) -> SIMD3<Float> { .one / x }

/// - Returns: Elementwise reciprocial of *x*.
@inlinable
public func recip(_ x: SIMD4<Float>) -> SIMD4<Float> { .one / x }

/// - Returns: Reciprocial of *x*.
@inlinable
public func recip(_ x: Double) -> Double { 1.0 / x }

/// - Returns: Elementwise reciprocial of *x*.
@inlinable
public func recip(_ x: SIMD2<Double>) -> SIMD2<Double> { .one / x }

/// - Returns: Elementwise reciprocial of *x*.
@inlinable
public func recip(_ x: SIMD3<Double>) -> SIMD3<Double> { .one / x }

/// - Returns: Elementwise reciprocial of *x*.
@inlinable
public func recip(_ x: SIMD4<Double>) -> SIMD4<Double> { .one / x }


// MARK: - reduce_add

/// - Returns: Sum of elements of *x*.
@inlinable
public func reduce_add(_ x: SIMD2<Int32>) -> Int32 { x.wrappedSum() }

/// - Returns: Sum of elements of *x*.
@inlinable
public func reduce_add(_ x: SIMD3<Int32>) -> Int32 { x.wrappedSum() }

/// - Returns: Sum of elements of *x*.
@inlinable
public func reduce_add(_ x: SIMD4<Int32>) -> Int32 { x.wrappedSum() }

/// - Returns: Sum of elements of *x*.
@inlinable
public func reduce_add(_ x: SIMD2<UInt32>) -> UInt32 { x.wrappedSum() }

/// - Returns: Sum of elements of *x*.
@inlinable
public func reduce_add(_ x: SIMD3<UInt32>) -> UInt32 { x.wrappedSum() }

/// - Returns: Sum of elements of *x*.
@inlinable
public func reduce_add(_ x: SIMD4<UInt32>) -> UInt32 { x.wrappedSum() }

/// - Returns: Sum of elements of *x*.
@inlinable
public func reduce_add(_ x: SIMD2<Float>) -> Float { x.sum() }

/// - Returns: Sum of elements of *x*.
@inlinable
public func reduce_add(_ x: SIMD3<Float>) -> Float { x.sum() }

/// - Returns: Sum of elements of *x*.
@inlinable
public func reduce_add(_ x: SIMD4<Float>) -> Float { x.sum() }

/// - Returns: Sum of elements of *x*.
@inlinable
public func reduce_add(_ x: SIMD2<Double>) -> Double { x.sum() }

/// - Returns: Sum of elements of *x*.
@inlinable
public func reduce_add(_ x: SIMD3<Double>) -> Double { x.sum() }

/// - Returns: Sum of elements of *x*.
@inlinable
public func reduce_add(_ x: SIMD4<Double>) -> Double { x.sum() }


// MARK: - reduce_max

/// - Returns: Maximum element of *x*.
@inlinable
public func reduce_max(_ x: SIMD2<Int32>) -> Int32 { x.max() }

/// - Returns: Maximum element of *x*.
@inlinable
public func reduce_max(_ x: SIMD3<Int32>) -> Int32 { x.max() }

/// - Returns: Maximum element of *x*.
@inlinable
public func reduce_max(_ x: SIMD4<Int32>) -> Int32 { x.max() }

/// - Returns: Maximum element of *x*.
@inlinable
public func reduce_max(_ x: SIMD2<UInt32>) -> UInt32 { x.max() }

/// - Returns: Maximum element of *x*.
@inlinable
public func reduce_max(_ x: SIMD3<UInt32>) -> UInt32 { x.max() }

/// - Returns: Maximum element of *x*.
@inlinable
public func reduce_max(_ x: SIMD4<UInt32>) -> UInt32 { x.max() }

/// - Returns: Maximum element of *x*.
@inlinable
public func reduce_max(_ x: SIMD2<Float>) -> Float { x.max() }

/// - Returns: Maximum element of *x*.
@inlinable
public func reduce_max(_ x: SIMD3<Float>) -> Float { x.max() }

/// - Returns: Maximum element of *x*.
@inlinable
public func reduce_max(_ x: SIMD4<Float>) -> Float { x.max() }

/// - Returns: Maximum element of *x*.
@inlinable
public func reduce_max(_ x: SIMD2<Double>) -> Double { x.max() }

/// - Returns: Maximum element of *x*.
@inlinable
public func reduce_max(_ x: SIMD3<Double>) -> Double { x.max() }

/// - Returns: Maximum element of *x*.
@inlinable
public func reduce_max(_ x: SIMD4<Double>) -> Double { x.max() }


// MARK: - reduce_min

/// - Returns: Minimum element of *x*.
@inlinable
public func reduce_min(_ x: SIMD2<Int32>) -> Int32 { x.min() }

/// - Returns: Minimum element of *x*.
@inlinable
public func reduce_min(_ x: SIMD3<Int32>) -> Int32 { x.min() }

/// - Returns: Minimum element of *x*.
@inlinable
public func reduce_min(_ x: SIMD4<Int32>) -> Int32 { x.min() }

/// - Returns: Minimum element of *x*.
@inlinable
public func reduce_min(_ x: SIMD2<UInt32>) -> UInt32 { x.min() }

/// - Returns: Minimum element of *x*.
@inlinable
public func reduce_min(_ x: SIMD3<UInt32>) -> UInt32 { x.min() }

/// - Returns: Minimum element of *x*.
@inlinable
public func reduce_min(_ x: SIMD4<UInt32>) -> UInt32 { x.min() }

/// - Returns: Minimum element of *x*.
@inlinable
public func reduce_min(_ x: SIMD2<Float>) -> Float { x.min() }

/// - Returns: Minimum element of *x*.
@inlinable
public func reduce_min(_ x: SIMD3<Float>) -> Float { x.min() }

/// - Returns: Minimum element of *x*.
@inlinable
public func reduce_min(_ x: SIMD4<Float>) -> Float { x.min() }

/// - Returns: Minimum element of *x*.
@inlinable
public func reduce_min(_ x: SIMD2<Double>) -> Double { x.min() }

/// - Returns: Minimum element of *x*.
@inlinable
public func reduce_min(_ x: SIMD3<Double>) -> Double { x.min() }

/// - Returns: Minimum element of *x*.
@inlinable
public func reduce_min(_ x: SIMD4<Double>) -> Double { x.min() }


// MARK: - reflect

/// - Returns: Reflection of *x* from a plane having unit normal *n*.
@inlinable
public func reflect(_ x: SIMD2<Float>, n: SIMD2<Float>) -> SIMD2<Float> { simd_reflect(x, n) }

/// - Returns: Reflection of *x* from a plane having unit normal *n*.
@inlinable
public func reflect(_ x: SIMD3<Float>, n: SIMD3<Float>) -> SIMD3<Float> { simd_reflect(x, n) }

/// - Returns: Reflection of *x* from a plane having unit normal *n*.
@inlinable
public func reflect(_ x: SIMD4<Float>, n: SIMD4<Float>) -> SIMD4<Float> { simd_reflect(x, n) }

/// - Returns: Reflection of *x* from a plane having unit normal *n*.
@inlinable
public func reflect(_ x: SIMD2<Double>, n: SIMD2<Double>) -> SIMD2<Double> { simd_reflect(x, n) }

/// - Returns: Reflection of *x* from a plane having unit normal *n*.
@inlinable
public func reflect(_ x: SIMD3<Double>, n: SIMD3<Double>) -> SIMD3<Double> { simd_reflect(x, n) }

/// - Returns: Reflection of *x* from a plane having unit normal *n*.
@inlinable
public func reflect(_ x: SIMD4<Double>, n: SIMD4<Double>) -> SIMD4<Double> { simd_reflect(x, n) }


// MARK: - refract

/// - Returns: The reflection vector for incident vector *x*, unit surface normal *n* and index of refraction *eta*.
@inlinable
public func refract(_ x: SIMD2<Float>, n: SIMD2<Float>, eta: Float) -> SIMD2<Float> { simd_refract(x, n, eta) }

/// - Returns: The reflection vector for incident vector *x*, unit surface normal *n* and index of refraction *eta*.
@inlinable
public func refract(_ x: SIMD3<Float>, n: SIMD3<Float>, eta: Float) -> SIMD3<Float> { simd_refract(x, n, eta) }

/// - Returns: The reflection vector for incident vector *x*, unit surface normal *n* and index of refraction *eta*.
@inlinable
public func refract(_ x: SIMD4<Float>, n: SIMD4<Float>, eta: Float) -> SIMD4<Float> { simd_refract(x, n, eta) }

/// - Returns: The reflection vector for incident vector *x*, unit surface normal *n* and index of refraction *eta*.
@inlinable
public func refract(_ x: SIMD2<Double>, n: SIMD2<Double>, eta: Double) -> SIMD2<Double> { simd_refract(x, n, eta) }

/// - Returns: The reflection vector for incident vector *x*, unit surface normal *n* and index of refraction *eta*.
@inlinable
public func refract(_ x: SIMD3<Double>, n: SIMD3<Double>, eta: Double) -> SIMD3<Double> { simd_refract(x, n, eta) }

/// - Returns: The reflection vector for incident vector *x*, unit surface normal *n* and index of refraction *eta*.
@inlinable
public func refract(_ x: SIMD4<Double>, n: SIMD4<Double>, eta: Double) -> SIMD4<Double> { simd_refract(x, n, eta) }


// MARK: - remainder

/// - Returns: Elementwise remainder of *x* divided by *y*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func remainder(_ x: simd_float2, _ y: simd_float2) -> simd_float2 { x - ((x / y).rounded(.toNearestOrAwayFromZero)) * y }

/// - Returns: Elementwise remainder of *x* divided by *y*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func remainder(_ x: simd_float3, _ y: simd_float3) -> simd_float3 { x - ((x / y).rounded(.toNearestOrAwayFromZero)) * y }

/// - Returns: Elementwise remainder of *x* divided by *y*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func remainder(_ x: simd_float4, _ y: simd_float4) -> simd_float4 { x - ((x / y).rounded(.toNearestOrAwayFromZero)) * y }

/// - Returns: Elementwise remainder of *x* divided by *y*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func remainder(_ x: simd_float8, _ y: simd_float8) -> simd_float8 { x - ((x / y).rounded(.toNearestOrAwayFromZero)) * y }

/// - Returns: Elementwise remainder of *x* divided by *y*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func remainder(_ x: simd_float16, _ y: simd_float16) -> simd_float16 { x - ((x / y).rounded(.toNearestOrAwayFromZero)) * y }

/// - Returns: Elementwise remainder of *x* divided by *y*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func remainder(_ x: simd_double2, _ y: simd_double2) -> simd_double2 { x - ((x / y).rounded(.toNearestOrAwayFromZero)) * y }

/// - Returns: Elementwise remainder of *x* divided by *y*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func remainder(_ x: simd_double3, _ y: simd_double3) -> simd_double3 { x - ((x / y).rounded(.toNearestOrAwayFromZero)) * y }

/// - Returns: Elementwise remainder of *x* divided by *y*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func remainder(_ x: simd_double4, _ y: simd_double4) -> simd_double4 { x - ((x / y).rounded(.toNearestOrAwayFromZero)) * y }

/// - Returns: Elementwise remainder of *x* divided by *y*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func remainder(_ x: simd_double8, _ y: simd_double8) -> simd_double8 { x - ((x / y).rounded(.toNearestOrAwayFromZero)) * y }


// MARK: - round

/// - Returns: Elementwise `round` of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func round(_ x: simd_float2) -> simd_float2 { x.rounded(.toNearestOrAwayFromZero) }

/// - Returns: Elementwise `round` of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func round(_ x: simd_float3) -> simd_float3 { x.rounded(.toNearestOrAwayFromZero) }

/// - Returns: Elementwise `round` of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func round(_ x: simd_float4) -> simd_float4 { x.rounded(.toNearestOrAwayFromZero) }

/// - Returns: Elementwise `round` of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func round(_ x: simd_float8) -> simd_float8 { x.rounded(.toNearestOrAwayFromZero) }

/// - Returns: Elementwise `round` of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func round(_ x: simd_float16) -> simd_float16 { x.rounded(.toNearestOrAwayFromZero) }

/// - Returns: Elementwise `round` of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func round(_ x: simd_double2) -> simd_double2 { x.rounded(.toNearestOrAwayFromZero) }

/// - Returns: Elementwise `round` of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func round(_ x: simd_double3) -> simd_double3 { x.rounded(.toNearestOrAwayFromZero) }

/// - Returns: Elementwise `round` of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func round(_ x: simd_double4) -> simd_double4 { x.rounded(.toNearestOrAwayFromZero) }

/// - Returns: Elementwise `round` of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func round(_ x: simd_double8) -> simd_double8 { x.rounded(.toNearestOrAwayFromZero) }


// MARK: - rsqrt

/// - Returns: Reciprocal square root of *x*.
@inlinable
public func rsqrt(_ x: Float) -> Float { 1.0 / sqrt(x) }

/// - Returns: Elementwise reciprocal square root of *x*.
@inlinable
public func rsqrt(_ x: SIMD2<Float>) -> SIMD2<Float> { SIMD2<Float>.one / sqrt(x) }

/// - Returns: Elementwise reciprocal square root of *x*.
@inlinable
public func rsqrt(_ x: SIMD3<Float>) -> SIMD3<Float> { SIMD3<Float>.one / sqrt(x) }

/// - Returns: Elementwise reciprocal square root of *x*.
@inlinable
public func rsqrt(_ x: SIMD4<Float>) -> SIMD4<Float> { SIMD4<Float>.one / sqrt(x) }

/// - Returns: Reciprocal square root of *x*.
@inlinable
public func rsqrt(_ x: Double) -> Double { 1.0 / sqrt(x) }

/// - Returns: Elementwise reciprocal square root of *x*.
@inlinable
public func rsqrt(_ x: SIMD2<Double>) -> SIMD2<Double> { SIMD2<Double>.one / sqrt(x) }

/// - Returns: Elementwise reciprocal square root of *x*.
@inlinable
public func rsqrt(_ x: SIMD3<Double>) -> SIMD3<Double> { SIMD3<Double>.one / sqrt(x) }

/// - Returns: Elementwise reciprocal square root of *x*.
@inlinable
public func rsqrt(_ x: SIMD4<Double>) -> SIMD4<Double> { SIMD4<Double>.one / sqrt(x) }


// MARK: - sign

/// - Returns: +1, –1 or 0.
@inlinable
public func sign(_ x: Float) -> Float { simd_sign(x) }

/// - Returns: Elementwise +1, –1 or 0.
@inlinable
public func sign(_ x: SIMD2<Float>) -> SIMD2<Float> { simd_sign(x) }

/// - Returns: Elementwise +1, –1 or 0.
@inlinable
public func sign(_ x: SIMD3<Float>) -> SIMD3<Float> { simd_sign(x) }

/// - Returns: Elementwise +1, –1 or 0.
@inlinable
public func sign(_ x: SIMD4<Float>) -> SIMD4<Float> { simd_sign(x) }

/// - Returns: +1, –1 or 0.
@inlinable
public func sign(_ x: Double) -> Double { simd_sign(x) }

/// - Returns: Elementwise +1, –1 or 0.
@inlinable
public func sign(_ x: SIMD2<Double>) -> SIMD2<Double> { simd_sign(x) }

/// - Returns: Elementwise +1, –1 or 0.
@inlinable
public func sign(_ x: SIMD3<Double>) -> SIMD3<Double> { simd_sign(x) }

/// - Returns: Elementwise +1, –1 or 0.
@inlinable
public func sign(_ x: SIMD4<Double>) -> SIMD4<Double> { simd_sign(x) }


// MARK: - simd_abs

@inline(__always)
@usableFromInline
internal func __abs_c(_ x: simd_char1, _ mx: simd_char1) -> simd_char1 { x >= 0 ? x : mx }

/// - Returns: Elementwise absolute value of *x*.
@inlinable
public func simd_abs(_ x: simd_char2) -> simd_char2 {
    let mx = simd_char2.zero &- x
    return .init(__abs_c(x.x, mx.x), __abs_c(x.y, mx.y))
}

/// - Returns: Elementwise absolute value of *x*.
@inlinable
public func simd_abs(_ x: simd_char3) -> simd_char3 {
    let mx = simd_char3.zero &- x
    return .init(__abs_c(x.x, mx.x), __abs_c(x.y, mx.y), __abs_c(x.z, mx.z))
}

/// - Returns: Elementwise absolute value of *x*.
@inlinable
public func simd_abs(_ x: simd_char4) -> simd_char4 {
    let mx = simd_char4.zero &- x
    return .init(__abs_c(x.x, mx.x), __abs_c(x.y, mx.y), __abs_c(x.z, mx.z), __abs_c(x.w, mx.w))
}

/// - Returns: Elementwise absolute value of *x*.
@inlinable
public func simd_abs(_ x: simd_char8) -> simd_char8 {
    let mx = simd_char8.zero &- x
    return .init(__abs_c(x[0], mx[0]), __abs_c(x[1], mx[1]), __abs_c(x[2], mx[2]), __abs_c(x[3], mx[3]),
                 __abs_c(x[4], mx[4]), __abs_c(x[5], mx[5]), __abs_c(x[6], mx[6]), __abs_c(x[7], mx[7]))
}

/// - Returns: Elementwise absolute value of *x*.
@inlinable
public func simd_abs(_ x: simd_char16) -> simd_char16 {
    let mx = simd_char16.zero &- x
    return .init(__abs_c(x[ 0], mx[ 0]), __abs_c(x[ 1], mx[ 1]), __abs_c(x[ 2], mx[ 2]), __abs_c(x[ 3], mx[ 3]),
                 __abs_c(x[ 4], mx[ 4]), __abs_c(x[ 5], mx[ 5]), __abs_c(x[ 6], mx[ 6]), __abs_c(x[ 7], mx[ 7]),
                 __abs_c(x[ 8], mx[ 8]), __abs_c(x[ 9], mx[ 9]), __abs_c(x[10], mx[10]), __abs_c(x[11], mx[11]),
                 __abs_c(x[12], mx[12]), __abs_c(x[13], mx[13]), __abs_c(x[14], mx[14]), __abs_c(x[15], mx[15]))
}

/// - Returns: Elementwise absolute value of *x*.
@inlinable
public func simd_abs(_ x: simd_char32) -> simd_char32 {
    let mx = simd_char32.zero &- x
    return .init(__abs_c(x[ 0], mx[ 0]), __abs_c(x[ 1], mx[ 1]), __abs_c(x[ 2], mx[ 2]), __abs_c(x[ 3], mx[ 3]),
                 __abs_c(x[ 4], mx[ 4]), __abs_c(x[ 5], mx[ 5]), __abs_c(x[ 6], mx[ 6]), __abs_c(x[ 7], mx[ 7]),
                 __abs_c(x[ 8], mx[ 8]), __abs_c(x[ 9], mx[ 9]), __abs_c(x[10], mx[10]), __abs_c(x[11], mx[11]),
                 __abs_c(x[12], mx[12]), __abs_c(x[13], mx[13]), __abs_c(x[14], mx[14]), __abs_c(x[15], mx[15]),
                 __abs_c(x[16], mx[16]), __abs_c(x[17], mx[17]), __abs_c(x[18], mx[18]), __abs_c(x[19], mx[19]),
                 __abs_c(x[20], mx[20]), __abs_c(x[21], mx[21]), __abs_c(x[22], mx[22]), __abs_c(x[23], mx[23]),
                 __abs_c(x[24], mx[24]), __abs_c(x[25], mx[25]), __abs_c(x[26], mx[26]), __abs_c(x[27], mx[27]),
                 __abs_c(x[28], mx[28]), __abs_c(x[29], mx[29]), __abs_c(x[30], mx[30]), __abs_c(x[31], mx[31]))
}

/// - Returns: Elementwise absolute value of *x*.
@inlinable
public func simd_abs(_ x: simd_char64) -> simd_char64 {
    let mx = simd_char64.zero &- x
    return .init(__abs_c(x[ 0], mx[ 0]), __abs_c(x[ 1], mx[ 1]), __abs_c(x[ 2], mx[ 2]), __abs_c(x[ 3], mx[ 3]),
                 __abs_c(x[ 4], mx[ 4]), __abs_c(x[ 5], mx[ 5]), __abs_c(x[ 6], mx[ 6]), __abs_c(x[ 7], mx[ 7]),
                 __abs_c(x[ 8], mx[ 8]), __abs_c(x[ 9], mx[ 9]), __abs_c(x[10], mx[10]), __abs_c(x[11], mx[11]),
                 __abs_c(x[12], mx[12]), __abs_c(x[13], mx[13]), __abs_c(x[14], mx[14]), __abs_c(x[15], mx[15]),
                 __abs_c(x[16], mx[16]), __abs_c(x[17], mx[17]), __abs_c(x[18], mx[18]), __abs_c(x[19], mx[19]),
                 __abs_c(x[20], mx[20]), __abs_c(x[21], mx[21]), __abs_c(x[22], mx[22]), __abs_c(x[23], mx[23]),
                 __abs_c(x[24], mx[24]), __abs_c(x[25], mx[25]), __abs_c(x[26], mx[26]), __abs_c(x[27], mx[27]),
                 __abs_c(x[28], mx[28]), __abs_c(x[29], mx[29]), __abs_c(x[30], mx[30]), __abs_c(x[31], mx[31]),
                 __abs_c(x[32], mx[32]), __abs_c(x[33], mx[33]), __abs_c(x[34], mx[34]), __abs_c(x[35], mx[35]),
                 __abs_c(x[36], mx[36]), __abs_c(x[37], mx[37]), __abs_c(x[38], mx[38]), __abs_c(x[39], mx[39]),
                 __abs_c(x[40], mx[40]), __abs_c(x[41], mx[41]), __abs_c(x[42], mx[42]), __abs_c(x[43], mx[43]),
                 __abs_c(x[44], mx[44]), __abs_c(x[45], mx[45]), __abs_c(x[46], mx[46]), __abs_c(x[47], mx[47]),
                 __abs_c(x[48], mx[48]), __abs_c(x[49], mx[49]), __abs_c(x[50], mx[50]), __abs_c(x[51], mx[51]),
                 __abs_c(x[52], mx[52]), __abs_c(x[53], mx[53]), __abs_c(x[54], mx[54]), __abs_c(x[55], mx[55]),
                 __abs_c(x[56], mx[56]), __abs_c(x[57], mx[57]), __abs_c(x[58], mx[58]), __abs_c(x[59], mx[59]),
                 __abs_c(x[60], mx[60]), __abs_c(x[61], mx[61]), __abs_c(x[62], mx[62]), __abs_c(x[63], mx[63]))
}

@inline(__always)
@usableFromInline
internal func __abs_s(_ x: simd_short1, _ mx: simd_short1) -> simd_short1 { x >= 0 ? x : mx }

/// - Returns: Elementwise absolute value of *x*.
@inlinable
public func simd_abs(_ x: simd_short2) -> simd_short2 {
    let mx = simd_short2.zero &- x
    return .init(__abs_s(x.x, mx.x), __abs_s(x.y, mx.y))
}

/// - Returns: Elementwise absolute value of *x*.
@inlinable
public func simd_abs(_ x: simd_short3) -> simd_short3 {
    let mx = simd_short3.zero &- x
    return .init(__abs_s(x.x, mx.x), __abs_s(x.y, mx.y), __abs_s(x.z, mx.z))
}

/// - Returns: Elementwise absolute value of *x*.
@inlinable
public func simd_abs(_ x: simd_short4) -> simd_short4 {
    let mx = simd_short4.zero &- x
    return .init(__abs_s(x.x, mx.x), __abs_s(x.y, mx.y), __abs_s(x.z, mx.z), __abs_s(x.w, mx.w))
}

/// - Returns: Elementwise absolute value of *x*.
@inlinable
public func simd_abs(_ x: simd_short8) -> simd_short8 {
    let mx = simd_short8.zero &- x
    return .init(__abs_s(x[0], mx[0]), __abs_s(x[1], mx[1]), __abs_s(x[2], mx[2]), __abs_s(x[3], mx[3]),
                 __abs_s(x[4], mx[4]), __abs_s(x[5], mx[5]), __abs_s(x[6], mx[6]), __abs_s(x[7], mx[7]))
}

/// - Returns: Elementwise absolute value of *x*.
@inlinable
public func simd_abs(_ x: simd_short16) -> simd_short16 {
    let mx = simd_short16.zero &- x
    return .init(__abs_s(x[ 0], mx[ 0]), __abs_s(x[ 1], mx[ 1]), __abs_s(x[ 2], mx[ 2]), __abs_s(x[ 3], mx[ 3]),
                 __abs_s(x[ 4], mx[ 4]), __abs_s(x[ 5], mx[ 5]), __abs_s(x[ 6], mx[ 6]), __abs_s(x[ 7], mx[ 7]),
                 __abs_s(x[ 8], mx[ 8]), __abs_s(x[ 9], mx[ 9]), __abs_s(x[10], mx[10]), __abs_s(x[11], mx[11]),
                 __abs_s(x[12], mx[12]), __abs_s(x[13], mx[13]), __abs_s(x[14], mx[14]), __abs_s(x[15], mx[15]))
}

/// - Returns: Elementwise absolute value of *x*.
@inlinable
public func simd_abs(_ x: simd_short32) -> simd_short32 {
    let mx = simd_short32.zero &- x
    return .init(__abs_s(x[ 0], mx[ 0]), __abs_s(x[ 1], mx[ 1]), __abs_s(x[ 2], mx[ 2]), __abs_s(x[ 3], mx[ 3]),
                 __abs_s(x[ 4], mx[ 4]), __abs_s(x[ 5], mx[ 5]), __abs_s(x[ 6], mx[ 6]), __abs_s(x[ 7], mx[ 7]),
                 __abs_s(x[ 8], mx[ 8]), __abs_s(x[ 9], mx[ 9]), __abs_s(x[10], mx[10]), __abs_s(x[11], mx[11]),
                 __abs_s(x[12], mx[12]), __abs_s(x[13], mx[13]), __abs_s(x[14], mx[14]), __abs_s(x[15], mx[15]),
                 __abs_s(x[16], mx[16]), __abs_s(x[17], mx[17]), __abs_s(x[18], mx[18]), __abs_s(x[19], mx[19]),
                 __abs_s(x[20], mx[20]), __abs_s(x[21], mx[21]), __abs_s(x[22], mx[22]), __abs_s(x[23], mx[23]),
                 __abs_s(x[24], mx[24]), __abs_s(x[25], mx[25]), __abs_s(x[26], mx[26]), __abs_s(x[27], mx[27]),
                 __abs_s(x[28], mx[28]), __abs_s(x[29], mx[29]), __abs_s(x[30], mx[30]), __abs_s(x[31], mx[31]))
}

@inline(__always)
@usableFromInline
internal func __abs_i(_ x: simd_int1, _ mx: simd_int1) -> simd_int1 { x >= 0 ? x : mx }

/// - Returns: Elementwise absolute value of *x*.
@inlinable
public func simd_abs(_ x: simd_int2) -> simd_int2 {
    let mx = SIMD2<Int32>.zero &- x
    return .init(__abs_i(x.x, mx.x), __abs_i(x.y, mx.y))
}

/// - Returns: Elementwise absolute value of *x*.
@inlinable
public func simd_abs(_ x: simd_int3) -> simd_int3 {
    let mx = SIMD3<Int32>.zero &- x
    return .init(__abs_i(x.x, mx.x), __abs_i(x.y, mx.y), __abs_i(x.z, mx.z))
}

/// - Returns: Elementwise absolute value of *x*.
@inlinable
public func simd_abs(_ x: simd_int4) -> simd_int4 {
    let mx = SIMD4<Int32>.zero &- x
    return .init(__abs_i(x.x, mx.x), __abs_i(x.y, mx.y), __abs_i(x.z, mx.z), __abs_i(x.w, mx.w))
}

/// - Returns: Elementwise absolute value of *x*.
@inlinable
public func simd_abs(_ x: simd_int8) -> simd_int8 {
    let mx = simd_int8.zero &- x
    return .init(__abs_i(x[0], mx[0]), __abs_i(x[1], mx[1]), __abs_i(x[2], mx[2]), __abs_i(x[3], mx[3]),
                 __abs_i(x[4], mx[4]), __abs_i(x[5], mx[5]), __abs_i(x[6], mx[6]), __abs_i(x[7], mx[7]))
}

/// - Returns: Elementwise absolute value of *x*.
@inlinable
public func simd_abs(_ x: simd_int16) -> simd_int16 {
    let mx = simd_int16.zero &- x
    return .init(__abs_i(x[ 0], mx[ 0]), __abs_i(x[ 1], mx[ 1]), __abs_i(x[ 2], mx[ 2]), __abs_i(x[ 3], mx[ 3]),
                 __abs_i(x[ 4], mx[ 4]), __abs_i(x[ 5], mx[ 5]), __abs_i(x[ 6], mx[ 6]), __abs_i(x[ 7], mx[ 7]),
                 __abs_i(x[ 8], mx[ 8]), __abs_i(x[ 9], mx[ 9]), __abs_i(x[10], mx[10]), __abs_i(x[11], mx[11]),
                 __abs_i(x[12], mx[12]), __abs_i(x[13], mx[13]), __abs_i(x[14], mx[14]), __abs_i(x[15], mx[15]))
}

@inline(__always)
@usableFromInline
internal func __abs_l(_ x: simd_long1, _ mx: simd_long1) -> simd_long1 { x >= 0 ? x : mx }

/// - Returns: Elementwise absolute value of *x*.
@inlinable
public func simd_abs(_ x: simd_long2) -> simd_long2 {
    let mx = simd_long2.zero &- x
    return .init(__abs_l(x.x, mx.x), __abs_l(x.y, mx.y))
}

/// - Returns: Elementwise absolute value of *x*.
@inlinable
public func simd_abs(_ x: simd_long3) -> simd_long3 {
    let mx = simd_long3.zero &- x
    return .init(__abs_l(x.x, mx.x), __abs_l(x.y, mx.y), __abs_l(x.z, mx.z))
}

/// - Returns: Elementwise absolute value of *x*.
@inlinable
public func simd_abs(_ x: simd_long4) -> simd_long4 {
    let mx = simd_long4.zero &- x
    return .init(__abs_l(x.x, mx.x), __abs_l(x.y, mx.y), __abs_l(x.z, mx.z), __abs_l(x.w, mx.w))
}

/// - Returns: Elementwise absolute value of *x*.
@inlinable
public func simd_abs(_ x: simd_long8) -> simd_long8 {
    let mx = simd_long8.zero &- x
    return .init(__abs_l(x[0], mx[0]), __abs_l(x[1], mx[1]), __abs_l(x[2], mx[2]), __abs_l(x[3], mx[3]),
                 __abs_l(x[4], mx[4]), __abs_l(x[5], mx[5]), __abs_l(x[6], mx[6]), __abs_l(x[7], mx[7]))
}

/// - Returns: Elementwise absolute value of *x*.
@inlinable
public func simd_abs(_ x: simd_float2) -> simd_float2 { .init(Swift.abs(x.x), Swift.abs(x.y)) }

/// - Returns: Elementwise absolute value of *x*.
@inlinable
public func simd_abs(_ x: simd_float3) -> simd_float3 { .init(Swift.abs(x.x), Swift.abs(x.y), Swift.abs(x.z)) }

/// - Returns: Elementwise absolute value of *x*.
@inlinable
public func simd_abs(_ x: simd_float4) -> simd_float4 { .init(Swift.abs(x.x), Swift.abs(x.y), Swift.abs(x.z), Swift.abs(x.w)) }

/// - Returns: Elementwise absolute value of *x*.
@inlinable
public func simd_abs(_ x: simd_float8) -> simd_float8 { .init(Swift.abs(x[0]), Swift.abs(x[1]), Swift.abs(x[2]), Swift.abs(x[3]), Swift.abs(x[4]), Swift.abs(x[5]), Swift.abs(x[6]), Swift.abs(x[7])) }

/// - Returns: Elementwise absolute value of *x*.
@inlinable
public func simd_abs(_ x: simd_float16) -> simd_float16 { .init(Swift.abs(x[0]), Swift.abs(x[1]), Swift.abs(x[2]), Swift.abs(x[3]), Swift.abs(x[4]), Swift.abs(x[5]), Swift.abs(x[6]), Swift.abs(x[7]), Swift.abs(x[8]), Swift.abs(x[9]), Swift.abs(x[10]), Swift.abs(x[11]), Swift.abs(x[12]), Swift.abs(x[13]), Swift.abs(x[14]), Swift.abs(x[15])) }

/// - Returns: Elementwise absolute value of *x*.
@inlinable
public func simd_abs(_ x: simd_double2) -> simd_double2 { .init(Swift.abs(x.x), Swift.abs(x.y)) }

/// - Returns: Elementwise absolute value of *x*.
@inlinable
public func simd_abs(_ x: simd_double3) -> simd_double3 { .init(Swift.abs(x.x), Swift.abs(x.y), Swift.abs(x.z)) }

/// - Returns: Elementwise absolute value of *x*.
@inlinable
public func simd_abs(_ x: simd_double4) -> simd_double4 { .init(Swift.abs(x.x), Swift.abs(x.y), Swift.abs(x.z), Swift.abs(x.w)) }

/// - Returns: Elementwise absolute value of *x*.
@inlinable
public func simd_abs(_ x: simd_double8) -> simd_double8 { .init(Swift.abs(x[0]), Swift.abs(x[1]), Swift.abs(x[2]), Swift.abs(x[3]), Swift.abs(x[4]), Swift.abs(x[5]), Swift.abs(x[6]), Swift.abs(x[7])) }


// MARK: - simd_act

/// - Returns: The result of rotation of vector *v* by quaternion *q*.
///
/// - Note: It's assumed that *q* is a unit quaternion.
@inlinable
public func simd_act(_ q: simd_quatf, _ v: simd_float3) -> simd_float3 { q.act(v) }

/// - Returns: The result of rotation of vector *v* by quaternion *q*.
///
/// - Note: It's assumed that *q* is a unit quaternion.
@inlinable
public func simd_act(_ q: simd_quatd, _ v: simd_double3) -> simd_double3 { q.act(v) }


// MARK: - simd_add

/// - Returns: Componentwise addition of given quaternions.
@inlinable
public func simd_add(_ p: simd_quatf, _ q: simd_quatf) -> simd_quatf { p + q }

/// - Returns: Componentwise addition of given quaternions.
@inlinable
public func simd_add(_ p: simd_quatd, _ q: simd_quatd) -> simd_quatd { p + q }

/// - Returns: `x + y`.
@inlinable
public func simd_add(_ x: simd_float2x2, _ y: simd_float2x2) -> simd_float2x2 { x + y }

/// - Returns: `x + y`.
@inlinable
public func simd_add(_ x: simd_float3x2, _ y: simd_float3x2) -> simd_float3x2 { x + y }

/// - Returns: `x + y`.
@inlinable
public func simd_add(_ x: simd_float4x2, _ y: simd_float4x2) -> simd_float4x2 { x + y }

/// - Returns: `x + y`.
@inlinable
public func simd_add(_ x: simd_float2x3, _ y: simd_float2x3) -> simd_float2x3 { x + y }

/// - Returns: `x + y`.
@inlinable
public func simd_add(_ x: simd_float3x3, _ y: simd_float3x3) -> simd_float3x3 { x + y }

/// - Returns: `x + y`.
@inlinable
public func simd_add(_ x: simd_float4x3, _ y: simd_float4x3) -> simd_float4x3 { x + y }

/// - Returns: `x + y`.
@inlinable
public func simd_add(_ x: simd_float2x4, _ y: simd_float2x4) -> simd_float2x4 { x + y }

/// - Returns: `x + y`.
@inlinable
public func simd_add(_ x: simd_float3x4, _ y: simd_float3x4) -> simd_float3x4 { x + y }

/// - Returns: `x + y`.
@inlinable
public func simd_add(_ x: simd_float4x4, _ y: simd_float4x4) -> simd_float4x4 { x + y }

/// - Returns: `x + y`.
@inlinable
public func simd_add(_ x: simd_double2x2, _ y: simd_double2x2) -> simd_double2x2 { x + y }

/// - Returns: `x + y`.
@inlinable
public func simd_add(_ x: simd_double3x2, _ y: simd_double3x2) -> simd_double3x2 { x + y }

/// - Returns: `x + y`.
@inlinable
public func simd_add(_ x: simd_double4x2, _ y: simd_double4x2) -> simd_double4x2 { x + y }

/// - Returns: `x + y`.
@inlinable
public func simd_add(_ x: simd_double2x3, _ y: simd_double2x3) -> simd_double2x3 { x + y }

/// - Returns: `x + y`.
@inlinable
public func simd_add(_ x: simd_double3x3, _ y: simd_double3x3) -> simd_double3x3 { x + y }

/// - Returns: `x + y`.
@inlinable
public func simd_add(_ x: simd_double4x3, _ y: simd_double4x3) -> simd_double4x3 { x + y }

/// - Returns: `x + y`.
@inlinable
public func simd_add(_ x: simd_double2x4, _ y: simd_double2x4) -> simd_double2x4 { x + y }

/// - Returns: `x + y`.
@inlinable
public func simd_add(_ x: simd_double3x4, _ y: simd_double3x4) -> simd_double3x4 { x + y }

/// - Returns: `x + y`.
@inlinable
public func simd_add(_ x: simd_double4x4, _ y: simd_double4x4) -> simd_double4x4 { x + y }


// MARK: - simd_all

/// - Returns: A boolean value indicating whether high-order bit is set for all elements of *x*.
@inlinable
public func simd_all(_ x: simd_char2) -> simd_bool { (unsafeBitCast(x, to: UInt16.self) & 0x80_80) == 0x80_80 }

/// - Returns: A boolean value indicating whether high-order bit is set for all elements of *x*.
@inlinable
public func simd_all(_ x: simd_char3) -> simd_bool { (unsafeBitCast(x, to: UInt32.self) & 0x00_80_80_80) == 0x00_80_80_80 }

/// - Returns: A boolean value indicating whether high-order bit is set for all elements of *x*.
@inlinable
public func simd_all(_ x: simd_char4) -> simd_bool { (unsafeBitCast(x, to: UInt32.self) & 0x80_80_80_80) == 0x80_80_80_80 }

/// - Returns: A boolean value indicating whether high-order bit is set for all elements of *x*.
@inlinable
public func simd_all(_ x: simd_char8) -> simd_bool { (unsafeBitCast(x, to: UInt64.self) & 0x80_80_80_80_80_80_80_80) == 0x80_80_80_80_80_80_80_80 }

/// - Returns: A boolean value indicating whether high-order bit is set for all elements of *x*.
@inlinable
public func simd_all(_ x: simd_char16) -> simd_bool { simd_all(x.lowHalf & x.highHalf) }

/// - Returns: A boolean value indicating whether high-order bit is set for all elements of *x*.
@inlinable
public func simd_all(_ x: simd_char32) -> simd_bool { simd_all(x.lowHalf & x.highHalf) }

/// - Returns: A boolean value indicating whether high-order bit is set for all elements of *x*.
@inlinable
public func simd_all(_ x: simd_char64) -> simd_bool { simd_all(x.lowHalf & x.highHalf) }

/// - Returns: A boolean value indicating whether high-order bit is set for all elements of *x*.
@inlinable
public func simd_all(_ x: simd_uchar2) -> simd_bool { (unsafeBitCast(x, to: UInt16.self) & 0x80_80) == 0x80_80 }

/// - Returns: A boolean value indicating whether high-order bit is set for all elements of *x*.
@inlinable
public func simd_all(_ x: simd_uchar3) -> simd_bool { (unsafeBitCast(x, to: UInt32.self) & 0x00_80_80_80) == 0x00_80_80_80 }

/// - Returns: A boolean value indicating whether high-order bit is set for all elements of *x*.
@inlinable
public func simd_all(_ x: simd_uchar4) -> simd_bool { (unsafeBitCast(x, to: UInt32.self) & 0x80_80_80_80) == 0x80_80_80_80 }

/// - Returns: A boolean value indicating whether high-order bit is set for all elements of *x*.
@inlinable
public func simd_all(_ x: simd_uchar8) -> simd_bool { (unsafeBitCast(x, to: UInt64.self) & 0x80_80_80_80_80_80_80_80) == 0x80_80_80_80_80_80_80_80 }

/// - Returns: A boolean value indicating whether high-order bit is set for all elements of *x*.
@inlinable
public func simd_all(_ x: simd_uchar16) -> simd_bool { simd_all(x.lowHalf & x.highHalf) }

/// - Returns: A boolean value indicating whether high-order bit is set for all elements of *x*.
@inlinable
public func simd_all(_ x: simd_uchar32) -> simd_bool { simd_all(x.lowHalf & x.highHalf) }

/// - Returns: A boolean value indicating whether high-order bit is set for all elements of *x*.
@inlinable
public func simd_all(_ x: simd_uchar64) -> simd_bool { simd_all(x.lowHalf & x.highHalf) }

/// - Returns: A boolean value indicating whether high-order bit is set for all elements of *x*.
@inlinable
public func simd_all(_ x: simd_short2) -> simd_bool { (unsafeBitCast(x, to: UInt32.self) & 0x8000_8000) == 0x8000_8000 }

/// - Returns: A boolean value indicating whether high-order bit is set for all elements of *x*.
@inlinable
public func simd_all(_ x: simd_short3) -> simd_bool { (unsafeBitCast(x, to: UInt64.self) & 0x0000_8000_8000_8000) == 0x0000_8000_8000_8000 }

/// - Returns: A boolean value indicating whether high-order bit is set for all elements of *x*.
@inlinable
public func simd_all(_ x: simd_short4) -> simd_bool { (unsafeBitCast(x, to: UInt64.self) & 0x8000_8000_8000_8000) == 0x8000_8000_8000_8000 }

/// - Returns: A boolean value indicating whether high-order bit is set for all elements of *x*.
@inlinable
public func simd_all(_ x: simd_short8) -> simd_bool { simd_all(x.lowHalf & x.highHalf) }

/// - Returns: A boolean value indicating whether high-order bit is set for all elements of *x*.
@inlinable
public func simd_all(_ x: simd_short16) -> simd_bool { simd_all(x.lowHalf & x.highHalf) }

/// - Returns: A boolean value indicating whether high-order bit is set for all elements of *x*.
@inlinable
public func simd_all(_ x: simd_short32) -> simd_bool { simd_all(x.lowHalf & x.highHalf) }

/// - Returns: A boolean value indicating whether high-order bit is set for all elements of *x*.
@inlinable
public func simd_all(_ x: simd_ushort2) -> simd_bool { (unsafeBitCast(x, to: UInt32.self) & 0x8000_8000) == 0x8000_8000 }

/// - Returns: A boolean value indicating whether high-order bit is set for all elements of *x*.
@inlinable
public func simd_all(_ x: simd_ushort3) -> simd_bool { (unsafeBitCast(x, to: UInt64.self) & 0x0000_8000_8000_8000) == 0x0000_8000_8000_8000 }

/// - Returns: A boolean value indicating whether high-order bit is set for all elements of *x*.
@inlinable
public func simd_all(_ x: simd_ushort4) -> simd_bool { (unsafeBitCast(x, to: UInt64.self) & 0x8000_8000_8000_8000) == 0x8000_8000_8000_8000 }

/// - Returns: A boolean value indicating whether high-order bit is set for all elements of *x*.
@inlinable
public func simd_all(_ x: simd_ushort8) -> simd_bool { simd_all(x.lowHalf & x.highHalf) }

/// - Returns: A boolean value indicating whether high-order bit is set for all elements of *x*.
@inlinable
public func simd_all(_ x: simd_ushort16) -> simd_bool { simd_all(x.lowHalf & x.highHalf) }

/// - Returns: A boolean value indicating whether high-order bit is set for all elements of *x*.
@inlinable
public func simd_all(_ x: simd_ushort32) -> simd_bool { simd_all(x.lowHalf & x.highHalf) }

/// - Returns: A boolean value indicating whether high-order bit is set for all elements of *x*.
@inlinable
public func simd_all(_ x: simd_int2) -> simd_bool { (unsafeBitCast(x, to: UInt64.self) & 0x80000000_80000000) == 0x80000000_80000000 }

/// - Returns: A boolean value indicating whether high-order bit is set for all elements of *x*.
@inlinable
public func simd_all(_ x: simd_int3) -> simd_bool { simd_all(simd_make_int4(x, -1)) }

/// - Returns: A boolean value indicating whether high-order bit is set for all elements of *x*.
@inlinable
public func simd_all(_ x: simd_int4) -> simd_bool { simd_all(x.lowHalf & x.highHalf) }

/// - Returns: A boolean value indicating whether high-order bit is set for all elements of *x*.
@inlinable
public func simd_all(_ x: simd_int8) -> simd_bool { simd_all(x.lowHalf & x.highHalf) }

/// - Returns: A boolean value indicating whether high-order bit is set for all elements of *x*.
@inlinable
public func simd_all(_ x: simd_int16) -> simd_bool { simd_all(x.lowHalf & x.highHalf) }

/// - Returns: A boolean value indicating whether high-order bit is set for all elements of *x*.
@inlinable
public func simd_all(_ x: simd_uint2) -> simd_bool { (unsafeBitCast(x, to: UInt64.self) & 0x80000000_80000000) == 0x80000000_80000000 }

/// - Returns: A boolean value indicating whether high-order bit is set for all elements of *x*.
@inlinable
public func simd_all(_ x: simd_uint3) -> simd_bool { simd_all(simd_make_uint4(x, ~0)) }

/// - Returns: A boolean value indicating whether high-order bit is set for all elements of *x*.
@inlinable
public func simd_all(_ x: simd_uint4) -> simd_bool { simd_all(x.lowHalf & x.highHalf) }

/// - Returns: A boolean value indicating whether high-order bit is set for all elements of *x*.
@inlinable
public func simd_all(_ x: simd_uint8) -> simd_bool { simd_all(x.lowHalf & x.highHalf) }

/// - Returns: A boolean value indicating whether high-order bit is set for all elements of *x*.
@inlinable
public func simd_all(_ x: simd_uint16) -> simd_bool { simd_all(x.lowHalf & x.highHalf) }

/// - Returns: A boolean value indicating whether high-order bit is set for all elements of *x*.
@inlinable
public func simd_all(_ x: simd_long2) -> simd_bool { ((x.x & x.y) & (~0x7FFF_FFFF_FFFF_FFFF as simd_long1)) == (~0x7FFF_FFFF_FFFF_FFFF as simd_long1) }

/// - Returns: A boolean value indicating whether high-order bit is set for all elements of *x*.
@inlinable
public func simd_all(_ x: simd_long3) -> simd_bool { ((x.x & x.y & x.z) & (~0x7FFF_FFFF_FFFF_FFFF as simd_long1)) == (~0x7FFF_FFFF_FFFF_FFFF as simd_long1) }

/// - Returns: A boolean value indicating whether high-order bit is set for all elements of *x*.
@inlinable
public func simd_all(_ x: simd_long4) -> simd_bool { ((x.x & x.y & x.z & x.w) & (~0x7FFF_FFFF_FFFF_FFFF as simd_long1)) == (~0x7FFF_FFFF_FFFF_FFFF as simd_long1) }

/// - Returns: A boolean value indicating whether high-order bit is set for all elements of *x*.
@inlinable
public func simd_all(_ x: simd_long8) -> simd_bool { ((x[0] & x[1] & x[2] & x[3] & x[4] & x[5] & x[6] & x[7]) & (~0x7FFF_FFFF_FFFF_FFFF as simd_long1)) == (~0x7FFF_FFFF_FFFF_FFFF as simd_long1) }

/// - Returns: A boolean value indicating whether high-order bit is set for all elements of *x*.
@inlinable
public func simd_all(_ x: simd_ulong2) -> simd_bool { ((x.x & x.y) & (0x8000_0000_0000_0000) as simd_ulong1) == (0x8000_0000_0000_0000 as simd_ulong1) }

/// - Returns: A boolean value indicating whether high-order bit is set for all elements of *x*.
@inlinable
public func simd_all(_ x: simd_ulong3) -> simd_bool { ((x.x & x.y & x.z) & (0x8000_0000_0000_0000) as simd_ulong1) == (0x8000_0000_0000_0000 as simd_ulong1) }

/// - Returns: A boolean value indicating whether high-order bit is set for all elements of *x*.
@inlinable
public func simd_all(_ x: simd_ulong4) -> simd_bool { ((x.x & x.y & x.z & x.w) & (0x8000_0000_0000_0000) as simd_ulong1) == (0x8000_0000_0000_0000 as simd_ulong1) }

/// - Returns: A boolean value indicating whether high-order bit is set for all elements of *x*.
@inlinable
public func simd_all(_ x: simd_ulong8) -> simd_bool { ((x[0] & x[1] & x[2] & x[3] & x[4] & x[5] & x[6] & x[7]) & (0x8000_0000_0000_0000) as simd_ulong1) == (0x8000_0000_0000_0000 as simd_ulong1) }


// MARK: - simd_almost_equal_elements

/// - Returns: A boolean value indicating whether |`x[i, j]` – `y[i, j]`|  &lt;= *tol* for each (i, j).
@inlinable
public func simd_almost_equal_elements(_ x: simd_float2x2, _ y: simd_float2x2, _ tol: Float) -> simd_bool {
    simd_all(unsafeBitCast(simd_abs((x.columns.0 - y.columns.0) as simd_float2) .<= tol, to: simd_int2.self) &
             unsafeBitCast(simd_abs((x.columns.1 - y.columns.1) as simd_float2) .<= tol, to: simd_int2.self))
}

/// - Returns: A boolean value indicating whether |`x[i, j]` – `y[i, j]`|  &lt;= *tol* for each (i, j).
@inlinable
public func simd_almost_equal_elements(_ x: simd_float2x3, _ y: simd_float2x3, _ tol: Float) -> simd_bool {
    simd_all(unsafeBitCast(simd_abs((x.columns.0 - y.columns.0) as simd_float3) .<= tol, to: simd_int3.self) &
             unsafeBitCast(simd_abs((x.columns.1 - y.columns.1) as simd_float3) .<= tol, to: simd_int3.self))
}

/// - Returns: A boolean value indicating whether |`x[i, j]` – `y[i, j]`|  &lt;= *tol* for each (i, j).
@inlinable
public func simd_almost_equal_elements(_ x: simd_float2x4, _ y: simd_float2x4, _ tol: Float) -> simd_bool {
    simd_all(unsafeBitCast(simd_abs((x.columns.0 - y.columns.0) as simd_float4) .<= tol, to: simd_int4.self) &
             unsafeBitCast(simd_abs((x.columns.1 - y.columns.1) as simd_float4) .<= tol, to: simd_int4.self))
}

/// - Returns: A boolean value indicating whether |`x[i, j]` – `y[i, j]`|  &lt;= *tol* for each (i, j).
@inlinable
public func simd_almost_equal_elements(_ x: simd_float3x2, _ y: simd_float3x2, _ tol: Float) -> simd_bool {
    simd_all(unsafeBitCast(simd_abs((x.columns.0 - y.columns.0) as simd_float2) .<= tol, to: simd_int2.self) &
             unsafeBitCast(simd_abs((x.columns.1 - y.columns.1) as simd_float2) .<= tol, to: simd_int2.self) &
             unsafeBitCast(simd_abs((x.columns.2 - y.columns.2) as simd_float2) .<= tol, to: simd_int2.self))
}

/// - Returns: A boolean value indicating whether |`x[i, j]` – `y[i, j]`|  &lt;= *tol* for each (i, j).
@inlinable
public func simd_almost_equal_elements(_ x: simd_float3x3, _ y: simd_float3x3, _ tol: Float) -> simd_bool {
    simd_all(unsafeBitCast(simd_abs((x.columns.0 - y.columns.0) as simd_float3) .<= tol, to: simd_int3.self) &
             unsafeBitCast(simd_abs((x.columns.1 - y.columns.1) as simd_float3) .<= tol, to: simd_int3.self) &
             unsafeBitCast(simd_abs((x.columns.2 - y.columns.2) as simd_float3) .<= tol, to: simd_int3.self))
}

/// - Returns: A boolean value indicating whether |`x[i, j]` – `y[i, j]`|  &lt;= *tol* for each (i, j).
@inlinable
public func simd_almost_equal_elements(_ x: simd_float3x4, _ y: simd_float3x4, _ tol: Float) -> simd_bool {
    simd_all(unsafeBitCast(simd_abs((x.columns.0 - y.columns.0) as simd_float4) .<= tol, to: simd_int4.self) &
             unsafeBitCast(simd_abs((x.columns.1 - y.columns.1) as simd_float4) .<= tol, to: simd_int4.self) &
             unsafeBitCast(simd_abs((x.columns.2 - y.columns.2) as simd_float4) .<= tol, to: simd_int4.self))
}

/// - Returns: A boolean value indicating whether |`x[i, j]` – `y[i, j]`|  &lt;= *tol* for each (i, j).
@inlinable
public func simd_almost_equal_elements(_ x: simd_float4x2, _ y: simd_float4x2, _ tol: Float) -> simd_bool {
    simd_all(unsafeBitCast(simd_abs((x.columns.0 - y.columns.0) as simd_float2) .<= tol, to: simd_int2.self) &
             unsafeBitCast(simd_abs((x.columns.1 - y.columns.1) as simd_float2) .<= tol, to: simd_int2.self) &
             unsafeBitCast(simd_abs((x.columns.2 - y.columns.2) as simd_float2) .<= tol, to: simd_int2.self) &
             unsafeBitCast(simd_abs((x.columns.3 - y.columns.3) as simd_float2) .<= tol, to: simd_int2.self))
}

/// - Returns: A boolean value indicating whether |`x[i, j]` – `y[i, j]`|  &lt;= *tol* for each (i, j).
@inlinable
public func simd_almost_equal_elements(_ x: simd_float4x3, _ y: simd_float4x3, _ tol: Float) -> simd_bool {
    simd_all(unsafeBitCast(simd_abs((x.columns.0 - y.columns.0) as simd_float3) .<= tol, to: simd_int3.self) &
             unsafeBitCast(simd_abs((x.columns.1 - y.columns.1) as simd_float3) .<= tol, to: simd_int3.self) &
             unsafeBitCast(simd_abs((x.columns.2 - y.columns.2) as simd_float3) .<= tol, to: simd_int3.self) &
             unsafeBitCast(simd_abs((x.columns.3 - y.columns.3) as simd_float3) .<= tol, to: simd_int3.self))
}

/// - Returns: A boolean value indicating whether |`x[i, j]` – `y[i, j]`|  &lt;= *tol* for each (i, j).
@inlinable
public func simd_almost_equal_elements(_ x: simd_float4x4, _ y: simd_float4x4, _ tol: Float) -> simd_bool {
    simd_all(unsafeBitCast(simd_abs((x.columns.0 - y.columns.0) as simd_float4) .<= tol, to: simd_int4.self) &
             unsafeBitCast(simd_abs((x.columns.1 - y.columns.1) as simd_float4) .<= tol, to: simd_int4.self) &
             unsafeBitCast(simd_abs((x.columns.2 - y.columns.2) as simd_float4) .<= tol, to: simd_int4.self) &
             unsafeBitCast(simd_abs((x.columns.3 - y.columns.3) as simd_float4) .<= tol, to: simd_int4.self))
}

/// - Returns: A boolean value indicating whether |`x[i, j]` – `y[i, j]`|  &lt;= *tol* for each (i, j).
@inlinable
public func simd_almost_equal_elements(_ x: simd_double2x2, _ y: simd_double2x2, _ tol: Double) -> simd_bool {
    simd_all(unsafeBitCast(simd_abs((x.columns.0 - y.columns.0) as simd_double2) .<= tol, to: simd_long2.self) &
             unsafeBitCast(simd_abs((x.columns.1 - y.columns.1) as simd_double2) .<= tol, to: simd_long2.self))
}

/// - Returns: A boolean value indicating whether |`x[i, j]` – `y[i, j]`|  &lt;= *tol* for each (i, j).
@inlinable
public func simd_almost_equal_elements(_ x: simd_double2x3, _ y: simd_double2x3, _ tol: Double) -> simd_bool {
    simd_all(unsafeBitCast(simd_abs((x.columns.0 - y.columns.0) as simd_double3) .<= tol, to: simd_long3.self) &
             unsafeBitCast(simd_abs((x.columns.1 - y.columns.1) as simd_double3) .<= tol, to: simd_long3.self))
}

/// - Returns: A boolean value indicating whether |`x[i, j]` – `y[i, j]`|  &lt;= *tol* for each (i, j).
@inlinable
public func simd_almost_equal_elements(_ x: simd_double2x4, _ y: simd_double2x4, _ tol: Double) -> simd_bool {
    simd_all(unsafeBitCast(simd_abs((x.columns.0 - y.columns.0) as simd_double4) .<= tol, to: simd_long4.self) &
             unsafeBitCast(simd_abs((x.columns.1 - y.columns.1) as simd_double4) .<= tol, to: simd_long4.self))
}

/// - Returns: A boolean value indicating whether |`x[i, j]` – `y[i, j]`|  &lt;= *tol* for each (i, j).
@inlinable
public func simd_almost_equal_elements(_ x: simd_double3x2, _ y: simd_double3x2, _ tol: Double) -> simd_bool {
    simd_all(unsafeBitCast(simd_abs((x.columns.0 - y.columns.0) as simd_double2) .<= tol, to: simd_long2.self) &
             unsafeBitCast(simd_abs((x.columns.1 - y.columns.1) as simd_double2) .<= tol, to: simd_long2.self) &
             unsafeBitCast(simd_abs((x.columns.2 - y.columns.2) as simd_double2) .<= tol, to: simd_long2.self))
}

/// - Returns: A boolean value indicating whether |`x[i, j]` – `y[i, j]`|  &lt;= *tol* for each (i, j).
@inlinable
public func simd_almost_equal_elements(_ x: simd_double3x3, _ y: simd_double3x3, _ tol: Double) -> simd_bool {
    simd_all(unsafeBitCast(simd_abs((x.columns.0 - y.columns.0) as simd_double3) .<= tol, to: simd_long3.self) &
             unsafeBitCast(simd_abs((x.columns.1 - y.columns.1) as simd_double3) .<= tol, to: simd_long3.self) &
             unsafeBitCast(simd_abs((x.columns.2 - y.columns.2) as simd_double3) .<= tol, to: simd_long3.self))
}

/// - Returns: A boolean value indicating whether |`x[i, j]` – `y[i, j]`|  &lt;= *tol* for each (i, j).
@inlinable
public func simd_almost_equal_elements(_ x: simd_double3x4, _ y: simd_double3x4, _ tol: Double) -> simd_bool {
    simd_all(unsafeBitCast(simd_abs((x.columns.0 - y.columns.0) as simd_double4) .<= tol, to: simd_long4.self) &
             unsafeBitCast(simd_abs((x.columns.1 - y.columns.1) as simd_double4) .<= tol, to: simd_long4.self) &
             unsafeBitCast(simd_abs((x.columns.2 - y.columns.2) as simd_double4) .<= tol, to: simd_long4.self))
}

/// - Returns: A boolean value indicating whether |`x[i, j]` – `y[i, j]`|  &lt;= *tol* for each (i, j).
@inlinable
public func simd_almost_equal_elements(_ x: simd_double4x2, _ y: simd_double4x2, _ tol: Double) -> simd_bool {
    simd_all(unsafeBitCast(simd_abs((x.columns.0 - y.columns.0) as simd_double2) .<= tol, to: simd_long2.self) &
             unsafeBitCast(simd_abs((x.columns.1 - y.columns.1) as simd_double2) .<= tol, to: simd_long2.self) &
             unsafeBitCast(simd_abs((x.columns.2 - y.columns.2) as simd_double2) .<= tol, to: simd_long2.self) &
             unsafeBitCast(simd_abs((x.columns.3 - y.columns.3) as simd_double2) .<= tol, to: simd_long2.self))
}

/// - Returns: A boolean value indicating whether |`x[i, j]` – `y[i, j]`|  &lt;= *tol* for each (i, j).
@inlinable
public func simd_almost_equal_elements(_ x: simd_double4x3, _ y: simd_double4x3, _ tol: Double) -> simd_bool {
    simd_all(unsafeBitCast(simd_abs((x.columns.0 - y.columns.0) as simd_double3) .<= tol, to: simd_long3.self) &
             unsafeBitCast(simd_abs((x.columns.1 - y.columns.1) as simd_double3) .<= tol, to: simd_long3.self) &
             unsafeBitCast(simd_abs((x.columns.2 - y.columns.2) as simd_double3) .<= tol, to: simd_long3.self) &
             unsafeBitCast(simd_abs((x.columns.3 - y.columns.3) as simd_double3) .<= tol, to: simd_long3.self))
}

/// - Returns: A boolean value indicating whether |`x[i, j]` – `y[i, j]`|  &lt;= *tol* for each (i, j).
@inlinable
public func simd_almost_equal_elements(_ x: simd_double4x4, _ y: simd_double4x4, _ tol: Double) -> simd_bool {
    simd_all(unsafeBitCast(simd_abs((x.columns.0 - y.columns.0) as simd_double4) .<= tol, to: simd_long4.self) &
             unsafeBitCast(simd_abs((x.columns.1 - y.columns.1) as simd_double4) .<= tol, to: simd_long4.self) &
             unsafeBitCast(simd_abs((x.columns.2 - y.columns.2) as simd_double4) .<= tol, to: simd_long4.self) &
             unsafeBitCast(simd_abs((x.columns.3 - y.columns.3) as simd_double4) .<= tol, to: simd_long4.self))
}


// MARK: - simd_almost_equal_elements_relative

/// - Returns: A boolean value indicating whether |`x[i, j]` – `y[i, j]`|  &lt;= *tol* × |`x[i, j]`| for each (i, j).
@inlinable
public func simd_almost_equal_elements_relative(_ x: simd_float2x2, _ y: simd_float2x2, _ tol: Float) -> simd_bool {
    simd_all(unsafeBitCast(simd_abs((x.columns.0 - y.columns.0) as simd_float2) .<= ((tol * simd_abs(x.columns.0)) as simd_float2), to: simd_int2.self) &
             unsafeBitCast(simd_abs((x.columns.1 - y.columns.1) as simd_float2) .<= ((tol * simd_abs(x.columns.1)) as simd_float2), to: simd_int2.self))
}

/// - Returns: A boolean value indicating whether |`x[i, j]` – `y[i, j]`|  &lt;= *tol* × |`x[i, j]`| for each (i, j).
@inlinable
public func simd_almost_equal_elements_relative(_ x: simd_float2x3, _ y: simd_float2x3, _ tol: Float) -> simd_bool {
    simd_all(unsafeBitCast(simd_abs((x.columns.0 - y.columns.0) as simd_float3) .<= ((tol * simd_abs(x.columns.0)) as simd_float3), to: simd_int3.self) &
             unsafeBitCast(simd_abs((x.columns.1 - y.columns.1) as simd_float3) .<= ((tol * simd_abs(x.columns.1)) as simd_float3), to: simd_int3.self))
}

/// - Returns: A boolean value indicating whether |`x[i, j]` – `y[i, j]`|  &lt;= *tol* × |`x[i, j]`| for each (i, j).
@inlinable
public func simd_almost_equal_elements_relative(_ x: simd_float2x4, _ y: simd_float2x4, _ tol: Float) -> simd_bool {
    simd_all(unsafeBitCast(simd_abs((x.columns.0 - y.columns.0) as simd_float4) .<= ((tol * simd_abs(x.columns.0)) as simd_float4), to: simd_int4.self) &
             unsafeBitCast(simd_abs((x.columns.1 - y.columns.1) as simd_float4) .<= ((tol * simd_abs(x.columns.1)) as simd_float4), to: simd_int4.self))
}

/// - Returns: A boolean value indicating whether |`x[i, j]` – `y[i, j]`|  &lt;= *tol* × |`x[i, j]`| for each (i, j).
@inlinable
public func simd_almost_equal_elements_relative(_ x: simd_float3x2, _ y: simd_float3x2, _ tol: Float) -> simd_bool {
    simd_all(unsafeBitCast(simd_abs((x.columns.0 - y.columns.0) as simd_float2) .<= ((tol * simd_abs(x.columns.0)) as simd_float2), to: simd_int2.self) &
             unsafeBitCast(simd_abs((x.columns.1 - y.columns.1) as simd_float2) .<= ((tol * simd_abs(x.columns.1)) as simd_float2), to: simd_int2.self) &
             unsafeBitCast(simd_abs((x.columns.2 - y.columns.2) as simd_float2) .<= ((tol * simd_abs(x.columns.2)) as simd_float2), to: simd_int2.self))
}

/// - Returns: A boolean value indicating whether |`x[i, j]` – `y[i, j]`|  &lt;= *tol* × |`x[i, j]`| for each (i, j).
@inlinable
public func simd_almost_equal_elements_relative(_ x: simd_float3x3, _ y: simd_float3x3, _ tol: Float) -> simd_bool {
    simd_all(unsafeBitCast(simd_abs((x.columns.0 - y.columns.0) as simd_float3) .<= ((tol * simd_abs(x.columns.0)) as simd_float3), to: simd_int3.self) &
             unsafeBitCast(simd_abs((x.columns.1 - y.columns.1) as simd_float3) .<= ((tol * simd_abs(x.columns.1)) as simd_float3), to: simd_int3.self) &
             unsafeBitCast(simd_abs((x.columns.2 - y.columns.2) as simd_float3) .<= ((tol * simd_abs(x.columns.2)) as simd_float3), to: simd_int3.self))
}

/// - Returns: A boolean value indicating whether |`x[i, j]` – `y[i, j]`|  &lt;= *tol* × |`x[i, j]`| for each (i, j).
@inlinable
public func simd_almost_equal_elements_relative(_ x: simd_float3x4, _ y: simd_float3x4, _ tol: Float) -> simd_bool {
    simd_all(unsafeBitCast(simd_abs((x.columns.0 - y.columns.0) as simd_float4) .<= ((tol * simd_abs(x.columns.0)) as simd_float4), to: simd_int4.self) &
             unsafeBitCast(simd_abs((x.columns.1 - y.columns.1) as simd_float4) .<= ((tol * simd_abs(x.columns.1)) as simd_float4), to: simd_int4.self) &
             unsafeBitCast(simd_abs((x.columns.2 - y.columns.2) as simd_float4) .<= ((tol * simd_abs(x.columns.2)) as simd_float4), to: simd_int4.self))
}

/// - Returns: A boolean value indicating whether |`x[i, j]` – `y[i, j]`|  &lt;= *tol* × |`x[i, j]`| for each (i, j).
@inlinable
public func simd_almost_equal_elements_relative(_ x: simd_float4x2, _ y: simd_float4x2, _ tol: Float) -> simd_bool {
    simd_all(unsafeBitCast(simd_abs((x.columns.0 - y.columns.0) as simd_float2) .<= ((tol * simd_abs(x.columns.0)) as simd_float2), to: simd_int2.self) &
             unsafeBitCast(simd_abs((x.columns.1 - y.columns.1) as simd_float2) .<= ((tol * simd_abs(x.columns.1)) as simd_float2), to: simd_int2.self) &
             unsafeBitCast(simd_abs((x.columns.2 - y.columns.2) as simd_float2) .<= ((tol * simd_abs(x.columns.2)) as simd_float2), to: simd_int2.self) &
             unsafeBitCast(simd_abs((x.columns.3 - y.columns.3) as simd_float2) .<= ((tol * simd_abs(x.columns.3)) as simd_float2), to: simd_int2.self))
}

/// - Returns: A boolean value indicating whether |`x[i, j]` – `y[i, j]`|  &lt;= *tol* × |`x[i, j]`| for each (i, j).
@inlinable
public func simd_almost_equal_elements_relative(_ x: simd_float4x3, _ y: simd_float4x3, _ tol: Float) -> simd_bool {
    simd_all(unsafeBitCast(simd_abs((x.columns.0 - y.columns.0) as simd_float3) .<= ((tol * simd_abs(x.columns.0)) as simd_float3), to: simd_int3.self) &
             unsafeBitCast(simd_abs((x.columns.1 - y.columns.1) as simd_float3) .<= ((tol * simd_abs(x.columns.1)) as simd_float3), to: simd_int3.self) &
             unsafeBitCast(simd_abs((x.columns.2 - y.columns.2) as simd_float3) .<= ((tol * simd_abs(x.columns.2)) as simd_float3), to: simd_int3.self) &
             unsafeBitCast(simd_abs((x.columns.3 - y.columns.3) as simd_float3) .<= ((tol * simd_abs(x.columns.3)) as simd_float3), to: simd_int3.self))
}

/// - Returns: A boolean value indicating whether |`x[i, j]` – `y[i, j]`|  &lt;= *tol* × |`x[i, j]`| for each (i, j).
@inlinable
public func simd_almost_equal_elements_relative(_ x: simd_float4x4, _ y: simd_float4x4, _ tol: Float) -> simd_bool {
    simd_all(unsafeBitCast(simd_abs((x.columns.0 - y.columns.0) as simd_float4) .<= ((tol * simd_abs(x.columns.0)) as simd_float4), to: simd_int4.self) &
             unsafeBitCast(simd_abs((x.columns.1 - y.columns.1) as simd_float4) .<= ((tol * simd_abs(x.columns.1)) as simd_float4), to: simd_int4.self) &
             unsafeBitCast(simd_abs((x.columns.2 - y.columns.2) as simd_float4) .<= ((tol * simd_abs(x.columns.2)) as simd_float4), to: simd_int4.self) &
             unsafeBitCast(simd_abs((x.columns.3 - y.columns.3) as simd_float4) .<= ((tol * simd_abs(x.columns.3)) as simd_float4), to: simd_int4.self))
}

/// - Returns: A boolean value indicating whether |`x[i, j]` – `y[i, j]`|  &lt;= *tol* × |`x[i, j]`| for each (i, j).
@inlinable
public func simd_almost_equal_elements_relative(_ x: simd_double2x2, _ y: simd_double2x2, _ tol: Double) -> simd_bool {
    simd_all(unsafeBitCast(simd_abs((x.columns.0 - y.columns.0) as simd_double2) .<= ((tol * simd_abs(x.columns.0)) as simd_double2), to: simd_long2.self) &
             unsafeBitCast(simd_abs((x.columns.1 - y.columns.1) as simd_double2) .<= ((tol * simd_abs(x.columns.1)) as simd_double2), to: simd_long2.self))
}

/// - Returns: A boolean value indicating whether |`x[i, j]` – `y[i, j]`|  &lt;= *tol* × |`x[i, j]`| for each (i, j).
@inlinable
public func simd_almost_equal_elements_relative(_ x: simd_double2x3, _ y: simd_double2x3, _ tol: Double) -> simd_bool {
    simd_all(unsafeBitCast(simd_abs((x.columns.0 - y.columns.0) as simd_double3) .<= ((tol * simd_abs(x.columns.0)) as simd_double3), to: simd_long3.self) &
             unsafeBitCast(simd_abs((x.columns.1 - y.columns.1) as simd_double3) .<= ((tol * simd_abs(x.columns.1)) as simd_double3), to: simd_long3.self))
}

/// - Returns: A boolean value indicating whether |`x[i, j]` – `y[i, j]`|  &lt;= *tol* × |`x[i, j]`| for each (i, j).
@inlinable
public func simd_almost_equal_elements_relative(_ x: simd_double2x4, _ y: simd_double2x4, _ tol: Double) -> simd_bool {
    simd_all(unsafeBitCast(simd_abs((x.columns.0 - y.columns.0) as simd_double4) .<= ((tol * simd_abs(x.columns.0)) as simd_double4), to: simd_long4.self) &
             unsafeBitCast(simd_abs((x.columns.1 - y.columns.1) as simd_double4) .<= ((tol * simd_abs(x.columns.1)) as simd_double4), to: simd_long4.self))
}

/// - Returns: A boolean value indicating whether |`x[i, j]` – `y[i, j]`|  &lt;= *tol* × |`x[i, j]`| for each (i, j).
@inlinable
public func simd_almost_equal_elements_relative(_ x: simd_double3x2, _ y: simd_double3x2, _ tol: Double) -> simd_bool {
    simd_all(unsafeBitCast(simd_abs((x.columns.0 - y.columns.0) as simd_double2) .<= ((tol * simd_abs(x.columns.0)) as simd_double2), to: simd_long2.self) &
             unsafeBitCast(simd_abs((x.columns.1 - y.columns.1) as simd_double2) .<= ((tol * simd_abs(x.columns.1)) as simd_double2), to: simd_long2.self) &
             unsafeBitCast(simd_abs((x.columns.2 - y.columns.2) as simd_double2) .<= ((tol * simd_abs(x.columns.2)) as simd_double2), to: simd_long2.self))
}

/// - Returns: A boolean value indicating whether |`x[i, j]` – `y[i, j]`|  &lt;= *tol* × |`x[i, j]`| for each (i, j).
@inlinable
public func simd_almost_equal_elements_relative(_ x: simd_double3x3, _ y: simd_double3x3, _ tol: Double) -> simd_bool {
    simd_all(unsafeBitCast(simd_abs((x.columns.0 - y.columns.0) as simd_double3) .<= ((tol * simd_abs(x.columns.0)) as simd_double3), to: simd_long3.self) &
             unsafeBitCast(simd_abs((x.columns.1 - y.columns.1) as simd_double3) .<= ((tol * simd_abs(x.columns.1)) as simd_double3), to: simd_long3.self) &
             unsafeBitCast(simd_abs((x.columns.2 - y.columns.2) as simd_double3) .<= ((tol * simd_abs(x.columns.2)) as simd_double3), to: simd_long3.self))
}

/// - Returns: A boolean value indicating whether |`x[i, j]` – `y[i, j]`|  &lt;= *tol* × |`x[i, j]`| for each (i, j).
@inlinable
public func simd_almost_equal_elements_relative(_ x: simd_double3x4, _ y: simd_double3x4, _ tol: Double) -> simd_bool {
    simd_all(unsafeBitCast(simd_abs((x.columns.0 - y.columns.0) as simd_double4) .<= ((tol * simd_abs(x.columns.0)) as simd_double4), to: simd_long4.self) &
             unsafeBitCast(simd_abs((x.columns.1 - y.columns.1) as simd_double4) .<= ((tol * simd_abs(x.columns.1)) as simd_double4), to: simd_long4.self) &
             unsafeBitCast(simd_abs((x.columns.2 - y.columns.2) as simd_double4) .<= ((tol * simd_abs(x.columns.2)) as simd_double4), to: simd_long4.self))
}

/// - Returns: A boolean value indicating whether |`x[i, j]` – `y[i, j]`|  &lt;= *tol* × |`x[i, j]`| for each (i, j).
@inlinable
public func simd_almost_equal_elements_relative(_ x: simd_double4x2, _ y: simd_double4x2, _ tol: Double) -> simd_bool {
    simd_all(unsafeBitCast(simd_abs((x.columns.0 - y.columns.0) as simd_double2) .<= ((tol * simd_abs(x.columns.0)) as simd_double2), to: simd_long2.self) &
             unsafeBitCast(simd_abs((x.columns.1 - y.columns.1) as simd_double2) .<= ((tol * simd_abs(x.columns.1)) as simd_double2), to: simd_long2.self) &
             unsafeBitCast(simd_abs((x.columns.2 - y.columns.2) as simd_double2) .<= ((tol * simd_abs(x.columns.2)) as simd_double2), to: simd_long2.self) &
             unsafeBitCast(simd_abs((x.columns.3 - y.columns.3) as simd_double2) .<= ((tol * simd_abs(x.columns.3)) as simd_double2), to: simd_long2.self))
}

/// - Returns: A boolean value indicating whether |`x[i, j]` – `y[i, j]`|  &lt;= *tol* × |`x[i, j]`| for each (i, j).
@inlinable
public func simd_almost_equal_elements_relative(_ x: simd_double4x3, _ y: simd_double4x3, _ tol: Double) -> simd_bool {
    simd_all(unsafeBitCast(simd_abs((x.columns.0 - y.columns.0) as simd_double3) .<= ((tol * simd_abs(x.columns.0)) as simd_double3), to: simd_long3.self) &
             unsafeBitCast(simd_abs((x.columns.1 - y.columns.1) as simd_double3) .<= ((tol * simd_abs(x.columns.1)) as simd_double3), to: simd_long3.self) &
             unsafeBitCast(simd_abs((x.columns.2 - y.columns.2) as simd_double3) .<= ((tol * simd_abs(x.columns.2)) as simd_double3), to: simd_long3.self) &
             unsafeBitCast(simd_abs((x.columns.3 - y.columns.3) as simd_double3) .<= ((tol * simd_abs(x.columns.3)) as simd_double3), to: simd_long3.self))
}

/// - Returns: A boolean value indicating whether |`x[i, j]` – `y[i, j]`|  &lt;= *tol* × |`x[i, j]`| for each (i, j).
@inlinable
public func simd_almost_equal_elements_relative(_ x: simd_double4x4, _ y: simd_double4x4, _ tol: Double) -> simd_bool {
    simd_all(unsafeBitCast(simd_abs((x.columns.0 - y.columns.0) as simd_double4) .<= ((tol * simd_abs(x.columns.0)) as simd_double4), to: simd_long4.self) &
             unsafeBitCast(simd_abs((x.columns.1 - y.columns.1) as simd_double4) .<= ((tol * simd_abs(x.columns.1)) as simd_double4), to: simd_long4.self) &
             unsafeBitCast(simd_abs((x.columns.2 - y.columns.2) as simd_double4) .<= ((tol * simd_abs(x.columns.2)) as simd_double4), to: simd_long4.self) &
             unsafeBitCast(simd_abs((x.columns.3 - y.columns.3) as simd_double4) .<= ((tol * simd_abs(x.columns.3)) as simd_double4), to: simd_long4.self))
}


// MARK: - simd_angle

/// - Returns: The angle of the rotation when *q* is a unit quaternion.
@inlinable
public func simd_angle(_ q: simd_quatf) -> Float { q.angle }

/// - Returns: The angle of the rotation when *q* is a unit quaternion.
@inlinable
public func simd_angle(_ q: simd_quatd) -> Double { q.angle }


// MARK: - simd_any

/// - Returns: A boolean value indicating whether *x* contains an element having high-order bit set.
@inlinable
public func simd_any(_ x: simd_char2) -> simd_bool { (unsafeBitCast(x, to: UInt16.self) & 0x80_80) != 0 }

/// - Returns: A boolean value indicating whether *x* contains an element having high-order bit set.
@inlinable
public func simd_any(_ x: simd_char3) -> simd_bool { (unsafeBitCast(x, to: UInt32.self) & 0x00_80_80_80) != 0 }

/// - Returns: A boolean value indicating whether *x* contains an element having high-order bit set.
@inlinable
public func simd_any(_ x: simd_char4) -> simd_bool { (unsafeBitCast(x, to: UInt32.self) & 0x80_80_80_80) != 0 }

/// - Returns: A boolean value indicating whether *x* contains an element having high-order bit set.
@inlinable
public func simd_any(_ x: simd_char8) -> simd_bool { (unsafeBitCast(x, to: UInt64.self) & 0x80_80_80_80_80_80_80_80) != 0 }

/// - Returns: A boolean value indicating whether *x* contains an element having high-order bit set.
@inlinable
public func simd_any(_ x: simd_char16) -> simd_bool { simd_any(x.lowHalf | x.highHalf) }

/// - Returns: A boolean value indicating whether *x* contains an element having high-order bit set.
@inlinable
public func simd_any(_ x: simd_char32) -> simd_bool { simd_any(x.lowHalf | x.highHalf) }

/// - Returns: A boolean value indicating whether *x* contains an element having high-order bit set.
@inlinable
public func simd_any(_ x: simd_char64) -> simd_bool { simd_any(x.lowHalf | x.highHalf) }

/// - Returns: A boolean value indicating whether *x* contains an element having high-order bit set.
@inlinable
public func simd_any(_ x: simd_uchar2) -> simd_bool { (unsafeBitCast(x, to: UInt16.self) & 0x80_80) != 0 }

/// - Returns: A boolean value indicating whether *x* contains an element having high-order bit set.
@inlinable
public func simd_any(_ x: simd_uchar3) -> simd_bool { (unsafeBitCast(x, to: UInt32.self) & 0x00_80_80_80) != 0 }

/// - Returns: A boolean value indicating whether *x* contains an element having high-order bit set.
@inlinable
public func simd_any(_ x: simd_uchar4) -> simd_bool { (unsafeBitCast(x, to: UInt32.self) & 0x80_80_80_80) != 0 }

/// - Returns: A boolean value indicating whether *x* contains an element having high-order bit set.
@inlinable
public func simd_any(_ x: simd_uchar8) -> simd_bool { (unsafeBitCast(x, to: UInt64.self) & 0x80_80_80_80_80_80_80_80) != 0 }

/// - Returns: A boolean value indicating whether *x* contains an element having high-order bit set.
@inlinable
public func simd_any(_ x: simd_uchar16) -> simd_bool { simd_any(x.lowHalf | x.highHalf) }

/// - Returns: A boolean value indicating whether *x* contains an element having high-order bit set.
@inlinable
public func simd_any(_ x: simd_uchar32) -> simd_bool { simd_any(x.lowHalf | x.highHalf) }

/// - Returns: A boolean value indicating whether *x* contains an element having high-order bit set.
@inlinable
public func simd_any(_ x: simd_uchar64) -> simd_bool { simd_any(x.lowHalf | x.highHalf) }

/// - Returns: A boolean value indicating whether *x* contains an element having high-order bit set.
@inlinable
public func simd_any(_ x: simd_short2) -> simd_bool { (unsafeBitCast(x, to: UInt32.self) & 0x8000_8000) != 0 }

/// - Returns: A boolean value indicating whether *x* contains an element having high-order bit set.
@inlinable
public func simd_any(_ x: simd_short3) -> simd_bool { (unsafeBitCast(x, to: UInt64.self) & 0x0000_8000_8000_8000) != 0 }

/// - Returns: A boolean value indicating whether *x* contains an element having high-order bit set.
@inlinable
public func simd_any(_ x: simd_short4) -> simd_bool { (unsafeBitCast(x, to: UInt64.self) & 0x8000_8000_8000_8000) != 0 }

/// - Returns: A boolean value indicating whether *x* contains an element having high-order bit set.
@inlinable
public func simd_any(_ x: simd_short8) -> simd_bool { simd_any(x.lowHalf | x.highHalf) }

/// - Returns: A boolean value indicating whether *x* contains an element having high-order bit set.
@inlinable
public func simd_any(_ x: simd_short16) -> simd_bool { simd_any(x.lowHalf | x.highHalf) }

/// - Returns: A boolean value indicating whether *x* contains an element having high-order bit set.
@inlinable
public func simd_any(_ x: simd_short32) -> simd_bool { simd_any(x.lowHalf | x.highHalf) }

/// - Returns: A boolean value indicating whether *x* contains an element having high-order bit set.
@inlinable
public func simd_any(_ x: simd_ushort2) -> simd_bool { (unsafeBitCast(x, to: UInt32.self) & 0x8000_8000) != 0 }

/// - Returns: A boolean value indicating whether *x* contains an element having high-order bit set.
@inlinable
public func simd_any(_ x: simd_ushort3) -> simd_bool { (unsafeBitCast(x, to: UInt64.self) & 0x0000_8000_8000_8000) != 0 }

/// - Returns: A boolean value indicating whether *x* contains an element having high-order bit set.
@inlinable
public func simd_any(_ x: simd_ushort4) -> simd_bool { (unsafeBitCast(x, to: UInt64.self) & 0x8000_8000_8000_8000) != 0 }

/// - Returns: A boolean value indicating whether *x* contains an element having high-order bit set.
@inlinable
public func simd_any(_ x: simd_ushort8) -> simd_bool { simd_any(x.lowHalf | x.highHalf) }

/// - Returns: A boolean value indicating whether *x* contains an element having high-order bit set.
@inlinable
public func simd_any(_ x: simd_ushort16) -> simd_bool { simd_any(x.lowHalf | x.highHalf) }

/// - Returns: A boolean value indicating whether *x* contains an element having high-order bit set.
@inlinable
public func simd_any(_ x: simd_ushort32) -> simd_bool { simd_any(x.lowHalf | x.highHalf) }

/// - Returns: A boolean value indicating whether *x* contains an element having high-order bit set.
@inlinable
public func simd_any(_ x: simd_int2) -> simd_bool { (unsafeBitCast(x, to: UInt64.self) & 0x80000000_80000000) != 0 }

/// - Returns: A boolean value indicating whether *x* contains an element having high-order bit set.
@inlinable
public func simd_any(_ x: simd_int3) -> simd_bool { simd_any(simd_make_int4_undef(x)) }

/// - Returns: A boolean value indicating whether *x* contains an element having high-order bit set.
@inlinable
public func simd_any(_ x: simd_int4) -> simd_bool { simd_any(x.lowHalf | x.highHalf) }

/// - Returns: A boolean value indicating whether *x* contains an element having high-order bit set.
@inlinable
public func simd_any(_ x: simd_int8) -> simd_bool { simd_any(x.lowHalf | x.highHalf) }

/// - Returns: A boolean value indicating whether *x* contains an element having high-order bit set.
@inlinable
public func simd_any(_ x: simd_int16) -> simd_bool { simd_any(x.lowHalf | x.highHalf) }

/// - Returns: A boolean value indicating whether *x* contains an element having high-order bit set.
@inlinable
public func simd_any(_ x: simd_uint2) -> simd_bool { (unsafeBitCast(x, to: UInt64.self) & 0x80000000_80000000) != 0 }

/// - Returns: A boolean value indicating whether *x* contains an element having high-order bit set.
@inlinable
public func simd_any(_ x: simd_uint3) -> simd_bool { simd_any(simd_make_uint4_undef(x)) }

/// - Returns: A boolean value indicating whether *x* contains an element having high-order bit set.
@inlinable
public func simd_any(_ x: simd_uint4) -> simd_bool { simd_any(x.lowHalf | x.highHalf) }

/// - Returns: A boolean value indicating whether *x* contains an element having high-order bit set.
@inlinable
public func simd_any(_ x: simd_uint8) -> simd_bool { simd_any(x.lowHalf | x.highHalf) }

/// - Returns: A boolean value indicating whether *x* contains an element having high-order bit set.
@inlinable
public func simd_any(_ x: simd_uint16) -> simd_bool { simd_any(x.lowHalf | x.highHalf) }

/// - Returns: A boolean value indicating whether *x* contains an element having high-order bit set.
@inlinable
public func simd_any(_ x: simd_long2) -> simd_bool { ((x.x | x.y) & (~0x7FFF_FFFF_FFFF_FFFF) as simd_long1) != 0 }

/// - Returns: A boolean value indicating whether *x* contains an element having high-order bit set.
@inlinable
public func simd_any(_ x: simd_long3) -> simd_bool { ((x.x | x.y | x.z) & (~0x7FFF_FFFF_FFFF_FFFF) as simd_long1) != 0 }

/// - Returns: A boolean value indicating whether *x* contains an element having high-order bit set.
@inlinable
public func simd_any(_ x: simd_long4) -> simd_bool { ((x.x | x.y | x.z | x.w) & (~0x7FFF_FFFF_FFFF_FFFF) as simd_long1) != 0 }

/// - Returns: A boolean value indicating whether *x* contains an element having high-order bit set.
@inlinable
public func simd_any(_ x: simd_long8) -> simd_bool { ((x[0] | x[1] | x[2] | x[3] | x[4] | x[5] | x[6] | x[7]) & (~0x7FFF_FFFF_FFFF_FFFF) as simd_long1) != 0 }

/// - Returns: A boolean value indicating whether *x* contains an element having high-order bit set.
@inlinable
public func simd_any(_ x: simd_ulong2) -> simd_bool { ((x.x | x.y) & (0x8000_0000_0000_0000) as simd_ulong1) != 0 }

/// - Returns: A boolean value indicating whether *x* contains an element having high-order bit set.
@inlinable
public func simd_any(_ x: simd_ulong3) -> simd_bool { ((x.x | x.y | x.z) & (0x8000_0000_0000_0000) as simd_ulong1) != 0 }

/// - Returns: A boolean value indicating whether *x* contains an element having high-order bit set.
@inlinable
public func simd_any(_ x: simd_ulong4) -> simd_bool { ((x.x | x.y | x.z | x.w) & (0x8000_0000_0000_0000) as simd_ulong1) != 0 }

/// - Returns: A boolean value indicating whether *x* contains an element having high-order bit set.
@inlinable
public func simd_any(_ x: simd_ulong8) -> simd_bool { ((x[0] | x[1] | x[2] | x[3] | x[4] | x[5] | x[6] | x[7]) & (0x8000_0000_0000_0000) as simd_ulong1) != 0 }


// MARK: - simd_axis

/// - Returns: The axis of the rotation when *q* is a unit quaternion. It is the normalized vector (imaginary) part.
@inlinable
public func simd_axis(_ q: simd_quatf) -> simd_float3 { q.axis }

/// - Returns: The axis of the rotation when *q* is a unit quaternion. It is the normalized vector (imaginary) part.
@inlinable
public func simd_axis(_ q: simd_quatd) -> simd_double3 { q.axis }


// MARK: - simd_bezier

/// - Returns: Spherical cubic Bezier interpolation from *q0* at *t* = 0 to *q3* at *t* = 1 with *q1* and *q2* as the control points.
@inlinable
public func simd_bezier(_ q0: simd_quatf, _ q1: simd_quatf, _ q2: simd_quatf, _ q3: simd_quatf, _ t: Float) -> simd_quatf {
    let q01 = __simd_slerp(q0, q1, t)
    let q12 = __simd_slerp(q1, q2, t)
    let q23 = __simd_slerp(q2, q3, t)
    let q012 = __simd_slerp(q01, q12, t)
    let q123 = __simd_slerp(q12, q23, t)
    return __simd_slerp(q012, q123, t)
}

/// - Returns: Spherical cubic Bezier interpolation from *q0* at *t* = 0 to *q3* at *t* = 1 with *q1* and *q2* as the control points.
@inlinable
public func simd_bezier(_ q0: simd_quatd, _ q1: simd_quatd, _ q2: simd_quatd, _ q3: simd_quatd, _ t: Double) -> simd_quatd {
    let q01 = __simd_slerp(q0, q1, t)
    let q12 = __simd_slerp(q1, q2, t)
    let q23 = __simd_slerp(q2, q3, t)
    let q012 = __simd_slerp(q01, q12, t)
    let q123 = __simd_slerp(q12, q23, t)
    return __simd_slerp(q012, q123, t)
}


// MARK: - simd_bitselect

/// - Returns: A value where each bit is taken from correcponding bit of *y* or *x* whether the bit of *mask* is set.
@inlinable
public func simd_bitselect(_ x: simd_char2, _ y: simd_char2, _ mask: simd_char2) -> simd_char2 { (x & ~mask) | (y & mask) }

/// - Returns: A value where each bit is taken from correcponding bit of *y* or *x* whether the bit of *mask* is set.
@inlinable
public func simd_bitselect(_ x: simd_char3, _ y: simd_char3, _ mask: simd_char3) -> simd_char3 { (x & ~mask) | (y & mask) }

/// - Returns: A value where each bit is taken from correcponding bit of *y* or *x* whether the bit of *mask* is set.
@inlinable
public func simd_bitselect(_ x: simd_char4, _ y: simd_char4, _ mask: simd_char4) -> simd_char4 { (x & ~mask) | (y & mask) }

/// - Returns: A value where each bit is taken from correcponding bit of *y* or *x* whether the bit of *mask* is set.
@inlinable
public func simd_bitselect(_ x: simd_char8, _ y: simd_char8, _ mask: simd_char8) -> simd_char8 { (x & ~mask) | (y & mask) }

/// - Returns: A value where each bit is taken from correcponding bit of *y* or *x* whether the bit of *mask* is set.
@inlinable
public func simd_bitselect(_ x: simd_char16, _ y: simd_char16, _ mask: simd_char16) -> simd_char16 { (x & ~mask) | (y & mask) }

/// - Returns: A value where each bit is taken from correcponding bit of *y* or *x* whether the bit of *mask* is set.
@inlinable
public func simd_bitselect(_ x: simd_char32, _ y: simd_char32, _ mask: simd_char32) -> simd_char32 { (x & ~mask) | (y & mask) }

/// - Returns: A value where each bit is taken from correcponding bit of *y* or *x* whether the bit of *mask* is set.
@inlinable
public func simd_bitselect(_ x: simd_char64, _ y: simd_char64, _ mask: simd_char64) -> simd_char64 { (x & ~mask) | (y & mask) }

/// - Returns: A value where each bit is taken from correcponding bit of *y* or *x* whether the bit of *mask* is set.
@inlinable
public func simd_bitselect(_ x: simd_uchar2, _ y: simd_uchar2, _ mask: simd_char2) -> simd_uchar2 { unsafeBitCast(simd_bitselect(unsafeBitCast(x, to: simd_char2.self), unsafeBitCast(y, to: simd_char2.self), mask), to: simd_uchar2.self) }

/// - Returns: A value where each bit is taken from correcponding bit of *y* or *x* whether the bit of *mask* is set.
@inlinable
public func simd_bitselect(_ x: simd_uchar3, _ y: simd_uchar3, _ mask: simd_char3) -> simd_uchar3 { unsafeBitCast(simd_bitselect(unsafeBitCast(x, to: simd_char3.self), unsafeBitCast(y, to: simd_char3.self), mask), to: simd_uchar3.self) }

/// - Returns: A value where each bit is taken from correcponding bit of *y* or *x* whether the bit of *mask* is set.
@inlinable
public func simd_bitselect(_ x: simd_uchar4, _ y: simd_uchar4, _ mask: simd_char4) -> simd_uchar4 { unsafeBitCast(simd_bitselect(unsafeBitCast(x, to: simd_char4.self), unsafeBitCast(y, to: simd_char4.self), mask), to: simd_uchar4.self) }

/// - Returns: A value where each bit is taken from correcponding bit of *y* or *x* whether the bit of *mask* is set.
@inlinable
public func simd_bitselect(_ x: simd_uchar8, _ y: simd_uchar8, _ mask: simd_char8) -> simd_uchar8 { unsafeBitCast(simd_bitselect(unsafeBitCast(x, to: simd_char8.self), unsafeBitCast(y, to: simd_char8.self), mask), to: simd_uchar8.self) }

/// - Returns: A value where each bit is taken from correcponding bit of *y* or *x* whether the bit of *mask* is set.
@inlinable
public func simd_bitselect(_ x: simd_uchar16, _ y: simd_uchar16, _ mask: simd_char16) -> simd_uchar16 { unsafeBitCast(simd_bitselect(unsafeBitCast(x, to: simd_char16.self), unsafeBitCast(y, to: simd_char16.self), mask), to: simd_uchar16.self) }

/// - Returns: A value where each bit is taken from correcponding bit of *y* or *x* whether the bit of *mask* is set.
@inlinable
public func simd_bitselect(_ x: simd_uchar32, _ y: simd_uchar32, _ mask: simd_char32) -> simd_uchar32 { unsafeBitCast(simd_bitselect(unsafeBitCast(x, to: simd_char32.self), unsafeBitCast(y, to: simd_char32.self), mask), to: simd_uchar32.self) }

/// - Returns: A value where each bit is taken from correcponding bit of *y* or *x* whether the bit of *mask* is set.
@inlinable
public func simd_bitselect(_ x: simd_uchar64, _ y: simd_uchar64, _ mask: simd_char64) -> simd_uchar64 { unsafeBitCast(simd_bitselect(unsafeBitCast(x, to: simd_char64.self), unsafeBitCast(y, to: simd_char64.self), mask), to: simd_uchar64.self) }

/// - Returns: A value where each bit is taken from correcponding bit of *y* or *x* whether the bit of *mask* is set.
@inlinable
public func simd_bitselect(_ x: simd_short2, _ y: simd_short2, _ mask: simd_short2) -> simd_short2 { (x & ~mask) | (y & mask) }

/// - Returns: A value where each bit is taken from correcponding bit of *y* or *x* whether the bit of *mask* is set.
@inlinable
public func simd_bitselect(_ x: simd_short3, _ y: simd_short3, _ mask: simd_short3) -> simd_short3 { (x & ~mask) | (y & mask) }

/// - Returns: A value where each bit is taken from correcponding bit of *y* or *x* whether the bit of *mask* is set.
@inlinable
public func simd_bitselect(_ x: simd_short4, _ y: simd_short4, _ mask: simd_short4) -> simd_short4 { (x & ~mask) | (y & mask) }

/// - Returns: A value where each bit is taken from correcponding bit of *y* or *x* whether the bit of *mask* is set.
@inlinable
public func simd_bitselect(_ x: simd_short8, _ y: simd_short8, _ mask: simd_short8) -> simd_short8 { (x & ~mask) | (y & mask) }

/// - Returns: A value where each bit is taken from correcponding bit of *y* or *x* whether the bit of *mask* is set.
@inlinable
public func simd_bitselect(_ x: simd_short16, _ y: simd_short16, _ mask: simd_short16) -> simd_short16 { (x & ~mask) | (y & mask) }

/// - Returns: A value where each bit is taken from correcponding bit of *y* or *x* whether the bit of *mask* is set.
@inlinable
public func simd_bitselect(_ x: simd_short32, _ y: simd_short32, _ mask: simd_short32) -> simd_short32 { (x & ~mask) | (y & mask) }

/// - Returns: A value where each bit is taken from correcponding bit of *y* or *x* whether the bit of *mask* is set.
@inlinable
public func simd_bitselect(_ x: simd_ushort2, _ y: simd_ushort2, _ mask: simd_short2) -> simd_ushort2 { unsafeBitCast(simd_bitselect(unsafeBitCast(x, to: simd_short2.self), unsafeBitCast(y, to: simd_short2.self), mask), to: simd_ushort2.self) }

/// - Returns: A value where each bit is taken from correcponding bit of *y* or *x* whether the bit of *mask* is set.
@inlinable
public func simd_bitselect(_ x: simd_ushort3, _ y: simd_ushort3, _ mask: simd_short3) -> simd_ushort3 { unsafeBitCast(simd_bitselect(unsafeBitCast(x, to: simd_short3.self), unsafeBitCast(y, to: simd_short3.self), mask), to: simd_ushort3.self) }

/// - Returns: A value where each bit is taken from correcponding bit of *y* or *x* whether the bit of *mask* is set.
@inlinable
public func simd_bitselect(_ x: simd_ushort4, _ y: simd_ushort4, _ mask: simd_short4) -> simd_ushort4 { unsafeBitCast(simd_bitselect(unsafeBitCast(x, to: simd_short4.self), unsafeBitCast(y, to: simd_short4.self), mask), to: simd_ushort4.self) }

/// - Returns: A value where each bit is taken from correcponding bit of *y* or *x* whether the bit of *mask* is set.
@inlinable
public func simd_bitselect(_ x: simd_ushort8, _ y: simd_ushort8, _ mask: simd_short8) -> simd_ushort8 { unsafeBitCast(simd_bitselect(unsafeBitCast(x, to: simd_short8.self), unsafeBitCast(y, to: simd_short8.self), mask), to: simd_ushort8.self) }

/// - Returns: A value where each bit is taken from correcponding bit of *y* or *x* whether the bit of *mask* is set.
@inlinable
public func simd_bitselect(_ x: simd_ushort16, _ y: simd_ushort16, _ mask: simd_short16) -> simd_ushort16 { unsafeBitCast(simd_bitselect(unsafeBitCast(x, to: simd_short16.self), unsafeBitCast(y, to: simd_short16.self), mask), to: simd_ushort16.self) }

/// - Returns: A value where each bit is taken from correcponding bit of *y* or *x* whether the bit of *mask* is set.
@inlinable
public func simd_bitselect(_ x: simd_ushort32, _ y: simd_ushort32, _ mask: simd_short32) -> simd_ushort32 { unsafeBitCast(simd_bitselect(unsafeBitCast(x, to: simd_short32.self), unsafeBitCast(y, to: simd_short32.self), mask), to: simd_ushort32.self) }

/// - Returns: A value where each bit is taken from correcponding bit of *y* or *x* whether the bit of *mask* is set.
@inlinable
public func simd_bitselect(_ x: simd_int2, _ y: simd_int2, _ mask: simd_int2) -> simd_int2 { (x & ~mask) | (y & mask) }

/// - Returns: A value where each bit is taken from correcponding bit of *y* or *x* whether the bit of *mask* is set.
@inlinable
public func simd_bitselect(_ x: simd_int3, _ y: simd_int3, _ mask: simd_int3) -> simd_int3 { (x & ~mask) | (y & mask) }

/// - Returns: A value where each bit is taken from correcponding bit of *y* or *x* whether the bit of *mask* is set.
@inlinable
public func simd_bitselect(_ x: simd_int4, _ y: simd_int4, _ mask: simd_int4) -> simd_int4 { (x & ~mask) | (y & mask) }

/// - Returns: A value where each bit is taken from correcponding bit of *y* or *x* whether the bit of *mask* is set.
@inlinable
public func simd_bitselect(_ x: simd_int8, _ y: simd_int8, _ mask: simd_int8) -> simd_int8 { (x & ~mask) | (y & mask) }

/// - Returns: A value where each bit is taken from correcponding bit of *y* or *x* whether the bit of *mask* is set.
@inlinable
public func simd_bitselect(_ x: simd_int16, _ y: simd_int16, _ mask: simd_int16) -> simd_int16 { (x & ~mask) | (y & mask) }

/// - Returns: A value where each bit is taken from correcponding bit of *y* or *x* whether the bit of *mask* is set.
@inlinable
public func simd_bitselect(_ x: simd_uint2, _ y: simd_uint2, _ mask: simd_int2) -> simd_uint2 { unsafeBitCast(simd_bitselect(unsafeBitCast(x, to: simd_int2.self), unsafeBitCast(y, to: simd_int2.self), mask), to: simd_uint2.self) }

/// - Returns: A value where each bit is taken from correcponding bit of *y* or *x* whether the bit of *mask* is set.
@inlinable
public func simd_bitselect(_ x: simd_uint3, _ y: simd_uint3, _ mask: simd_int3) -> simd_uint3 { unsafeBitCast(simd_bitselect(unsafeBitCast(x, to: simd_int3.self), unsafeBitCast(y, to: simd_int3.self), mask), to: simd_uint3.self) }

/// - Returns: A value where each bit is taken from correcponding bit of *y* or *x* whether the bit of *mask* is set.
@inlinable
public func simd_bitselect(_ x: simd_uint4, _ y: simd_uint4, _ mask: simd_int4) -> simd_uint4 { unsafeBitCast(simd_bitselect(unsafeBitCast(x, to: simd_int4.self), unsafeBitCast(y, to: simd_int4.self), mask), to: simd_uint4.self) }

/// - Returns: A value where each bit is taken from correcponding bit of *y* or *x* whether the bit of *mask* is set.
@inlinable
public func simd_bitselect(_ x: simd_uint8, _ y: simd_uint8, _ mask: simd_int8) -> simd_uint8 { unsafeBitCast(simd_bitselect(unsafeBitCast(x, to: simd_int8.self), unsafeBitCast(y, to: simd_int8.self), mask), to: simd_uint8.self) }

/// - Returns: A value where each bit is taken from correcponding bit of *y* or *x* whether the bit of *mask* is set.
@inlinable
public func simd_bitselect(_ x: simd_uint16, _ y: simd_uint16, _ mask: simd_int16) -> simd_uint16 { unsafeBitCast(simd_bitselect(unsafeBitCast(x, to: simd_int16.self), unsafeBitCast(y, to: simd_int16.self), mask), to: simd_uint16.self) }

/// - Returns: A value where each bit is taken from correcponding bit of *y* or *x* whether the bit of *mask* is set.
@inlinable
public func simd_bitselect(_ x: simd_long2, _ y: simd_long2, _ mask: simd_long2) -> simd_long2 { (x & ~mask) | (y & mask) }

/// - Returns: A value where each bit is taken from correcponding bit of *y* or *x* whether the bit of *mask* is set.
@inlinable
public func simd_bitselect(_ x: simd_long3, _ y: simd_long3, _ mask: simd_long3) -> simd_long3 { (x & ~mask) | (y & mask) }

/// - Returns: A value where each bit is taken from correcponding bit of *y* or *x* whether the bit of *mask* is set.
@inlinable
public func simd_bitselect(_ x: simd_long4, _ y: simd_long4, _ mask: simd_long4) -> simd_long4 { (x & ~mask) | (y & mask) }

/// - Returns: A value where each bit is taken from correcponding bit of *y* or *x* whether the bit of *mask* is set.
@inlinable
public func simd_bitselect(_ x: simd_long8, _ y: simd_long8, _ mask: simd_long8) -> simd_long8 { (x & ~mask) | (y & mask) }

/// - Returns: A value where each bit is taken from correcponding bit of *y* or *x* whether the bit of *mask* is set.
@inlinable
public func simd_bitselect(_ x: simd_ulong2, _ y: simd_ulong2, _ mask: simd_long2) -> simd_ulong2 { unsafeBitCast(simd_bitselect(unsafeBitCast(x, to: simd_long2.self), unsafeBitCast(y, to: simd_long2.self), mask), to: simd_ulong2.self) }

/// - Returns: A value where each bit is taken from correcponding bit of *y* or *x* whether the bit of *mask* is set.
@inlinable
public func simd_bitselect(_ x: simd_ulong3, _ y: simd_ulong3, _ mask: simd_long3) -> simd_ulong3 { unsafeBitCast(simd_bitselect(unsafeBitCast(x, to: simd_long3.self), unsafeBitCast(y, to: simd_long3.self), mask), to: simd_ulong3.self) }

/// - Returns: A value where each bit is taken from correcponding bit of *y* or *x* whether the bit of *mask* is set.
@inlinable
public func simd_bitselect(_ x: simd_ulong4, _ y: simd_ulong4, _ mask: simd_long4) -> simd_ulong4 { unsafeBitCast(simd_bitselect(unsafeBitCast(x, to: simd_long4.self), unsafeBitCast(y, to: simd_long4.self), mask), to: simd_ulong4.self) }

/// - Returns: A value where each bit is taken from correcponding bit of *y* or *x* whether the bit of *mask* is set.
@inlinable
public func simd_bitselect(_ x: simd_ulong8, _ y: simd_ulong8, _ mask: simd_long8) -> simd_ulong8 { unsafeBitCast(simd_bitselect(unsafeBitCast(x, to: simd_long8.self), unsafeBitCast(y, to: simd_long8.self), mask), to: simd_ulong8.self) }

/// - Returns: A value where each bit is taken from correcponding bit of *y* or *x* whether the bit of *mask* is set.
@inlinable
public func simd_bitselect(_ x: simd_float2, _ y: simd_float2, _ mask: simd_int2) -> simd_float2 { unsafeBitCast(simd_bitselect(unsafeBitCast(x, to: simd_int2.self), unsafeBitCast(y, to: simd_int2.self), mask), to: simd_float2.self) }

/// - Returns: A value where each bit is taken from correcponding bit of *y* or *x* whether the bit of *mask* is set.
@inlinable
public func simd_bitselect(_ x: simd_float3, _ y: simd_float3, _ mask: simd_int3) -> simd_float3 { unsafeBitCast(simd_bitselect(unsafeBitCast(x, to: simd_int3.self), unsafeBitCast(y, to: simd_int3.self), mask), to: simd_float3.self) }

/// - Returns: A value where each bit is taken from correcponding bit of *y* or *x* whether the bit of *mask* is set.
@inlinable
public func simd_bitselect(_ x: simd_float4, _ y: simd_float4, _ mask: simd_int4) -> simd_float4 { unsafeBitCast(simd_bitselect(unsafeBitCast(x, to: simd_int4.self), unsafeBitCast(y, to: simd_int4.self), mask), to: simd_float4.self) }

/// - Returns: A value where each bit is taken from correcponding bit of *y* or *x* whether the bit of *mask* is set.
@inlinable
public func simd_bitselect(_ x: simd_float8, _ y: simd_float8, _ mask: simd_int8) -> simd_float8 { unsafeBitCast(simd_bitselect(unsafeBitCast(x, to: simd_int8.self), unsafeBitCast(y, to: simd_int8.self), mask), to: simd_float8.self) }

/// - Returns: A value where each bit is taken from correcponding bit of *y* or *x* whether the bit of *mask* is set.
@inlinable
public func simd_bitselect(_ x: simd_float16, _ y: simd_float16, _ mask: simd_int16) -> simd_float16 { unsafeBitCast(simd_bitselect(unsafeBitCast(x, to: simd_int16.self), unsafeBitCast(y, to: simd_int16.self), mask), to: simd_float16.self) }

/// - Returns: A value where each bit is taken from correcponding bit of *y* or *x* whether the bit of *mask* is set.
@inlinable
public func simd_bitselect(_ x: simd_double2, _ y: simd_double2, _ mask: simd_long2) -> simd_double2 { unsafeBitCast(simd_bitselect(unsafeBitCast(x, to: simd_long2.self), unsafeBitCast(y, to: simd_long2.self), mask), to: simd_double2.self) }

/// - Returns: A value where each bit is taken from correcponding bit of *y* or *x* whether the bit of *mask* is set.
@inlinable
public func simd_bitselect(_ x: simd_double3, _ y: simd_double3, _ mask: simd_long3) -> simd_double3 { unsafeBitCast(simd_bitselect(unsafeBitCast(x, to: simd_long3.self), unsafeBitCast(y, to: simd_long3.self), mask), to: simd_double3.self) }

/// - Returns: A value where each bit is taken from correcponding bit of *y* or *x* whether the bit of *mask* is set.
@inlinable
public func simd_bitselect(_ x: simd_double4, _ y: simd_double4, _ mask: simd_long4) -> simd_double4 { unsafeBitCast(simd_bitselect(unsafeBitCast(x, to: simd_long4.self), unsafeBitCast(y, to: simd_long4.self), mask), to: simd_double4.self) }

/// - Returns: A value where each bit is taken from correcponding bit of *y* or *x* whether the bit of *mask* is set.
@inlinable
public func simd_bitselect(_ x: simd_double8, _ y: simd_double8, _ mask: simd_long8) -> simd_double8 { unsafeBitCast(simd_bitselect(unsafeBitCast(x, to: simd_long8.self), unsafeBitCast(y, to: simd_long8.self), mask), to: simd_double8.self) }


// MARK: - simd_clamp

@inline(__always)
@usableFromInline
internal func __clamp_c(_ x: simd_char1, _ min: simd_char1, _ max: simd_char1) -> simd_char1 { x <= min ? min : (x <= max ? x : max) }

/// - Returns: Elementwise clamping to *min*...*max* range of *x*.
@inlinable
public func simd_clamp(_ x: simd_char2, _ min: simd_char2, _ max: simd_char2) -> simd_char2 {
    .init(__clamp_c(x.x, min.x, max.x), __clamp_c(x.y, min.y, max.y))
}

/// - Returns: Elementwise clamping to *min*...*max* range of *x*.
@inlinable
public func simd_clamp(_ x: simd_char3, _ min: simd_char3, _ max: simd_char3) -> simd_char3 {
    .init(__clamp_c(x.x, min.x, max.x), __clamp_c(x.y, min.y, max.y), __clamp_c(x.z, min.z, max.z))
}

/// - Returns: Elementwise clamping to *min*...*max* range of *x*.
@inlinable
public func simd_clamp(_ x: simd_char4, _ min: simd_char4, _ max: simd_char4) -> simd_char4 {
    .init(__clamp_c(x.x, min.x, max.x), __clamp_c(x.y, min.y, max.y), __clamp_c(x.z, min.z, max.z), __clamp_c(x.w, min.w, max.w))
}

/// - Returns: Elementwise clamping to *min*...*max* range of *x*.
@inlinable
public func simd_clamp(_ x: simd_char8, _ min: simd_char8, _ max: simd_char8) -> simd_char8 {
    .init(__clamp_c(x[0], min[0], max[0]), __clamp_c(x[1], min[1], max[1]), __clamp_c(x[2], min[2], max[2]), __clamp_c(x[3], min[3], max[3]),
          __clamp_c(x[4], min[4], max[4]), __clamp_c(x[5], min[5], max[5]), __clamp_c(x[6], min[6], max[6]), __clamp_c(x[7], min[7], max[7]))
}

/// - Returns: Elementwise clamping to *min*...*max* range of *x*.
@inlinable
public func simd_clamp(_ x: simd_char16, _ min: simd_char16, _ max: simd_char16) -> simd_char16 {
    .init(__clamp_c(x[ 0], min[ 0], max[ 0]), __clamp_c(x[ 1], min[ 1], max[ 1]), __clamp_c(x[ 2], min[ 2], max[ 2]), __clamp_c(x[ 3], min[ 3], max[ 3]),
          __clamp_c(x[ 4], min[ 4], max[ 4]), __clamp_c(x[ 5], min[ 5], max[ 5]), __clamp_c(x[ 6], min[ 6], max[ 6]), __clamp_c(x[ 7], min[ 7], max[ 7]),
          __clamp_c(x[ 8], min[ 8], max[ 8]), __clamp_c(x[ 9], min[ 9], max[ 9]), __clamp_c(x[10], min[10], max[10]), __clamp_c(x[11], min[11], max[11]),
          __clamp_c(x[12], min[12], max[12]), __clamp_c(x[13], min[13], max[13]), __clamp_c(x[14], min[14], max[14]), __clamp_c(x[15], min[15], max[15]))
}

/// - Returns: Elementwise clamping to *min*...*max* range of *x*.
@inlinable
public func simd_clamp(_ x: simd_char32, _ min: simd_char32, _ max: simd_char32) -> simd_char32 {
    .init(__clamp_c(x[ 0], min[ 0], max[ 0]), __clamp_c(x[ 1], min[ 1], max[ 1]), __clamp_c(x[ 2], min[ 2], max[ 2]), __clamp_c(x[ 3], min[ 3], max[ 3]),
          __clamp_c(x[ 4], min[ 4], max[ 4]), __clamp_c(x[ 5], min[ 5], max[ 5]), __clamp_c(x[ 6], min[ 6], max[ 6]), __clamp_c(x[ 7], min[ 7], max[ 7]),
          __clamp_c(x[ 8], min[ 8], max[ 8]), __clamp_c(x[ 9], min[ 9], max[ 9]), __clamp_c(x[10], min[10], max[10]), __clamp_c(x[11], min[11], max[11]),
          __clamp_c(x[12], min[12], max[12]), __clamp_c(x[13], min[13], max[13]), __clamp_c(x[14], min[14], max[14]), __clamp_c(x[15], min[15], max[15]),
          __clamp_c(x[16], min[16], max[16]), __clamp_c(x[17], min[17], max[17]), __clamp_c(x[18], min[18], max[18]), __clamp_c(x[19], min[19], max[19]),
          __clamp_c(x[20], min[20], max[20]), __clamp_c(x[21], min[21], max[21]), __clamp_c(x[22], min[22], max[22]), __clamp_c(x[23], min[23], max[23]),
          __clamp_c(x[24], min[24], max[24]), __clamp_c(x[25], min[25], max[25]), __clamp_c(x[26], min[26], max[26]), __clamp_c(x[27], min[27], max[27]),
          __clamp_c(x[28], min[28], max[28]), __clamp_c(x[29], min[29], max[29]), __clamp_c(x[30], min[30], max[30]), __clamp_c(x[31], min[31], max[31]))
}

/// - Returns: Elementwise clamping to *min*...*max* range of *x*.
@inlinable
public func simd_clamp(_ x: simd_char64, _ min: simd_char64, _ max: simd_char64) -> simd_char64 {
    .init(__clamp_c(x[ 0], min[ 0], max[ 0]), __clamp_c(x[ 1], min[ 1], max[ 1]), __clamp_c(x[ 2], min[ 2], max[ 2]), __clamp_c(x[ 3], min[ 3], max[ 3]),
          __clamp_c(x[ 4], min[ 4], max[ 4]), __clamp_c(x[ 5], min[ 5], max[ 5]), __clamp_c(x[ 6], min[ 6], max[ 6]), __clamp_c(x[ 7], min[ 7], max[ 7]),
          __clamp_c(x[ 8], min[ 8], max[ 8]), __clamp_c(x[ 9], min[ 9], max[ 9]), __clamp_c(x[10], min[10], max[10]), __clamp_c(x[11], min[11], max[11]),
          __clamp_c(x[12], min[12], max[12]), __clamp_c(x[13], min[13], max[13]), __clamp_c(x[14], min[14], max[14]), __clamp_c(x[15], min[15], max[15]),
          __clamp_c(x[16], min[16], max[16]), __clamp_c(x[17], min[17], max[17]), __clamp_c(x[18], min[18], max[18]), __clamp_c(x[19], min[19], max[19]),
          __clamp_c(x[20], min[20], max[20]), __clamp_c(x[21], min[21], max[21]), __clamp_c(x[22], min[22], max[22]), __clamp_c(x[23], min[23], max[23]),
          __clamp_c(x[24], min[24], max[24]), __clamp_c(x[25], min[25], max[25]), __clamp_c(x[26], min[26], max[26]), __clamp_c(x[27], min[27], max[27]),
          __clamp_c(x[28], min[28], max[28]), __clamp_c(x[29], min[29], max[29]), __clamp_c(x[30], min[30], max[30]), __clamp_c(x[31], min[31], max[31]),
          __clamp_c(x[32], min[32], max[32]), __clamp_c(x[33], min[33], max[33]), __clamp_c(x[34], min[34], max[34]), __clamp_c(x[35], min[35], max[35]),
          __clamp_c(x[36], min[36], max[36]), __clamp_c(x[37], min[37], max[37]), __clamp_c(x[38], min[38], max[38]), __clamp_c(x[39], min[39], max[39]),
          __clamp_c(x[40], min[40], max[40]), __clamp_c(x[41], min[41], max[41]), __clamp_c(x[42], min[42], max[42]), __clamp_c(x[43], min[43], max[43]),
          __clamp_c(x[44], min[44], max[44]), __clamp_c(x[45], min[45], max[45]), __clamp_c(x[46], min[46], max[46]), __clamp_c(x[47], min[47], max[47]),
          __clamp_c(x[48], min[48], max[48]), __clamp_c(x[49], min[49], max[49]), __clamp_c(x[50], min[50], max[50]), __clamp_c(x[51], min[51], max[51]),
          __clamp_c(x[52], min[52], max[52]), __clamp_c(x[53], min[53], max[53]), __clamp_c(x[54], min[54], max[54]), __clamp_c(x[55], min[55], max[55]),
          __clamp_c(x[56], min[56], max[56]), __clamp_c(x[57], min[57], max[57]), __clamp_c(x[58], min[58], max[58]), __clamp_c(x[59], min[59], max[59]),
          __clamp_c(x[60], min[60], max[60]), __clamp_c(x[61], min[61], max[61]), __clamp_c(x[62], min[62], max[62]), __clamp_c(x[63], min[63], max[63]))
}

@inline(__always)
@usableFromInline
internal func __clamp_uc(_ x: simd_uchar1, _ min: simd_uchar1, _ max: simd_uchar1) -> simd_uchar1 { x <= min ? min : (x <= max ? x : max) }

/// - Returns: Elementwise clamping to *min*...*max* range of *x*.
@inlinable
public func simd_clamp(_ x: simd_uchar2, _ min: simd_uchar2, _ max: simd_uchar2) -> simd_uchar2 {
    .init(__clamp_uc(x.x, min.x, max.x), __clamp_uc(x.y, min.y, max.y))
}

/// - Returns: Elementwise clamping to *min*...*max* range of *x*.
@inlinable
public func simd_clamp(_ x: simd_uchar3, _ min: simd_uchar3, _ max: simd_uchar3) -> simd_uchar3 {
    .init(__clamp_uc(x.x, min.x, max.x), __clamp_uc(x.y, min.y, max.y), __clamp_uc(x.z, min.z, max.z))
}

/// - Returns: Elementwise clamping to *min*...*max* range of *x*.
@inlinable
public func simd_clamp(_ x: simd_uchar4, _ min: simd_uchar4, _ max: simd_uchar4) -> simd_uchar4 {
    .init(__clamp_uc(x.x, min.x, max.x), __clamp_uc(x.y, min.y, max.y), __clamp_uc(x.z, min.z, max.z), __clamp_uc(x.w, min.w, max.w))
}

/// - Returns: Elementwise clamping to *min*...*max* range of *x*.
@inlinable
public func simd_clamp(_ x: simd_uchar8, _ min: simd_uchar8, _ max: simd_uchar8) -> simd_uchar8 {
    .init(__clamp_uc(x[0], min[0], max[0]), __clamp_uc(x[1], min[1], max[1]), __clamp_uc(x[2], min[2], max[2]), __clamp_uc(x[3], min[3], max[3]),
          __clamp_uc(x[4], min[4], max[4]), __clamp_uc(x[5], min[5], max[5]), __clamp_uc(x[6], min[6], max[6]), __clamp_uc(x[7], min[7], max[7]))
}

/// - Returns: Elementwise clamping to *min*...*max* range of *x*.
@inlinable
public func simd_clamp(_ x: simd_uchar16, _ min: simd_uchar16, _ max: simd_uchar16) -> simd_uchar16 {
    .init(__clamp_uc(x[ 0], min[ 0], max[ 0]), __clamp_uc(x[ 1], min[ 1], max[ 1]), __clamp_uc(x[ 2], min[ 2], max[ 2]), __clamp_uc(x[ 3], min[ 3], max[ 3]),
          __clamp_uc(x[ 4], min[ 4], max[ 4]), __clamp_uc(x[ 5], min[ 5], max[ 5]), __clamp_uc(x[ 6], min[ 6], max[ 6]), __clamp_uc(x[ 7], min[ 7], max[ 7]),
          __clamp_uc(x[ 8], min[ 8], max[ 8]), __clamp_uc(x[ 9], min[ 9], max[ 9]), __clamp_uc(x[10], min[10], max[10]), __clamp_uc(x[11], min[11], max[11]),
          __clamp_uc(x[12], min[12], max[12]), __clamp_uc(x[13], min[13], max[13]), __clamp_uc(x[14], min[14], max[14]), __clamp_uc(x[15], min[15], max[15]))
}

/// - Returns: Elementwise clamping to *min*...*max* range of *x*.
@inlinable
public func simd_clamp(_ x: simd_uchar32, _ min: simd_uchar32, _ max: simd_uchar32) -> simd_uchar32 {
    .init(__clamp_uc(x[ 0], min[ 0], max[ 0]), __clamp_uc(x[ 1], min[ 1], max[ 1]), __clamp_uc(x[ 2], min[ 2], max[ 2]), __clamp_uc(x[ 3], min[ 3], max[ 3]),
          __clamp_uc(x[ 4], min[ 4], max[ 4]), __clamp_uc(x[ 5], min[ 5], max[ 5]), __clamp_uc(x[ 6], min[ 6], max[ 6]), __clamp_uc(x[ 7], min[ 7], max[ 7]),
          __clamp_uc(x[ 8], min[ 8], max[ 8]), __clamp_uc(x[ 9], min[ 9], max[ 9]), __clamp_uc(x[10], min[10], max[10]), __clamp_uc(x[11], min[11], max[11]),
          __clamp_uc(x[12], min[12], max[12]), __clamp_uc(x[13], min[13], max[13]), __clamp_uc(x[14], min[14], max[14]), __clamp_uc(x[15], min[15], max[15]),
          __clamp_uc(x[16], min[16], max[16]), __clamp_uc(x[17], min[17], max[17]), __clamp_uc(x[18], min[18], max[18]), __clamp_uc(x[19], min[19], max[19]),
          __clamp_uc(x[20], min[20], max[20]), __clamp_uc(x[21], min[21], max[21]), __clamp_uc(x[22], min[22], max[22]), __clamp_uc(x[23], min[23], max[23]),
          __clamp_uc(x[24], min[24], max[24]), __clamp_uc(x[25], min[25], max[25]), __clamp_uc(x[26], min[26], max[26]), __clamp_uc(x[27], min[27], max[27]),
          __clamp_uc(x[28], min[28], max[28]), __clamp_uc(x[29], min[29], max[29]), __clamp_uc(x[30], min[30], max[30]), __clamp_uc(x[31], min[31], max[31]))
}

/// - Returns: Elementwise clamping to *min*...*max* range of *x*.
@inlinable
public func simd_clamp(_ x: simd_uchar64, _ min: simd_uchar64, _ max: simd_uchar64) -> simd_uchar64 {
    .init(__clamp_uc(x[ 0], min[ 0], max[ 0]), __clamp_uc(x[ 1], min[ 1], max[ 1]), __clamp_uc(x[ 2], min[ 2], max[ 2]), __clamp_uc(x[ 3], min[ 3], max[ 3]),
          __clamp_uc(x[ 4], min[ 4], max[ 4]), __clamp_uc(x[ 5], min[ 5], max[ 5]), __clamp_uc(x[ 6], min[ 6], max[ 6]), __clamp_uc(x[ 7], min[ 7], max[ 7]),
          __clamp_uc(x[ 8], min[ 8], max[ 8]), __clamp_uc(x[ 9], min[ 9], max[ 9]), __clamp_uc(x[10], min[10], max[10]), __clamp_uc(x[11], min[11], max[11]),
          __clamp_uc(x[12], min[12], max[12]), __clamp_uc(x[13], min[13], max[13]), __clamp_uc(x[14], min[14], max[14]), __clamp_uc(x[15], min[15], max[15]),
          __clamp_uc(x[16], min[16], max[16]), __clamp_uc(x[17], min[17], max[17]), __clamp_uc(x[18], min[18], max[18]), __clamp_uc(x[19], min[19], max[19]),
          __clamp_uc(x[20], min[20], max[20]), __clamp_uc(x[21], min[21], max[21]), __clamp_uc(x[22], min[22], max[22]), __clamp_uc(x[23], min[23], max[23]),
          __clamp_uc(x[24], min[24], max[24]), __clamp_uc(x[25], min[25], max[25]), __clamp_uc(x[26], min[26], max[26]), __clamp_uc(x[27], min[27], max[27]),
          __clamp_uc(x[28], min[28], max[28]), __clamp_uc(x[29], min[29], max[29]), __clamp_uc(x[30], min[30], max[30]), __clamp_uc(x[31], min[31], max[31]),
          __clamp_uc(x[32], min[32], max[32]), __clamp_uc(x[33], min[33], max[33]), __clamp_uc(x[34], min[34], max[34]), __clamp_uc(x[35], min[35], max[35]),
          __clamp_uc(x[36], min[36], max[36]), __clamp_uc(x[37], min[37], max[37]), __clamp_uc(x[38], min[38], max[38]), __clamp_uc(x[39], min[39], max[39]),
          __clamp_uc(x[40], min[40], max[40]), __clamp_uc(x[41], min[41], max[41]), __clamp_uc(x[42], min[42], max[42]), __clamp_uc(x[43], min[43], max[43]),
          __clamp_uc(x[44], min[44], max[44]), __clamp_uc(x[45], min[45], max[45]), __clamp_uc(x[46], min[46], max[46]), __clamp_uc(x[47], min[47], max[47]),
          __clamp_uc(x[48], min[48], max[48]), __clamp_uc(x[49], min[49], max[49]), __clamp_uc(x[50], min[50], max[50]), __clamp_uc(x[51], min[51], max[51]),
          __clamp_uc(x[52], min[52], max[52]), __clamp_uc(x[53], min[53], max[53]), __clamp_uc(x[54], min[54], max[54]), __clamp_uc(x[55], min[55], max[55]),
          __clamp_uc(x[56], min[56], max[56]), __clamp_uc(x[57], min[57], max[57]), __clamp_uc(x[58], min[58], max[58]), __clamp_uc(x[59], min[59], max[59]),
          __clamp_uc(x[60], min[60], max[60]), __clamp_uc(x[61], min[61], max[61]), __clamp_uc(x[62], min[62], max[62]), __clamp_uc(x[63], min[63], max[63]))
}

@inline(__always)
@usableFromInline
internal func __clamp_s(_ x: simd_short1, _ min: simd_short1, _ max: simd_short1) -> simd_short1 { x <= min ? min : (x <= max ? x : max) }

/// - Returns: Elementwise clamping to *min*...*max* range of *x*.
@inlinable
public func simd_clamp(_ x: simd_short2, _ min: simd_short2, _ max: simd_short2) -> simd_short2 {
    .init(__clamp_s(x.x, min.x, max.x), __clamp_s(x.y, min.y, max.y))
}

/// - Returns: Elementwise clamping to *min*...*max* range of *x*.
@inlinable
public func simd_clamp(_ x: simd_short3, _ min: simd_short3, _ max: simd_short3) -> simd_short3 {
    .init(__clamp_s(x.x, min.x, max.x), __clamp_s(x.y, min.y, max.y), __clamp_s(x.z, min.z, max.z))
}

/// - Returns: Elementwise clamping to *min*...*max* range of *x*.
@inlinable
public func simd_clamp(_ x: simd_short4, _ min: simd_short4, _ max: simd_short4) -> simd_short4 {
    .init(__clamp_s(x.x, min.x, max.x), __clamp_s(x.y, min.y, max.y), __clamp_s(x.z, min.z, max.z), __clamp_s(x.w, min.w, max.w))
}

/// - Returns: Elementwise clamping to *min*...*max* range of *x*.
@inlinable
public func simd_clamp(_ x: simd_short8, _ min: simd_short8, _ max: simd_short8) -> simd_short8 {
    .init(__clamp_s(x[0], min[0], max[0]), __clamp_s(x[1], min[1], max[1]), __clamp_s(x[2], min[2], max[2]), __clamp_s(x[3], min[3], max[3]),
          __clamp_s(x[4], min[4], max[4]), __clamp_s(x[5], min[5], max[5]), __clamp_s(x[6], min[6], max[6]), __clamp_s(x[7], min[7], max[7]))
}

/// - Returns: Elementwise clamping to *min*...*max* range of *x*.
@inlinable
public func simd_clamp(_ x: simd_short16, _ min: simd_short16, _ max: simd_short16) -> simd_short16 {
    .init(__clamp_s(x[ 0], min[ 0], max[ 0]), __clamp_s(x[ 1], min[ 1], max[ 1]), __clamp_s(x[ 2], min[ 2], max[ 2]), __clamp_s(x[ 3], min[ 3], max[ 3]),
          __clamp_s(x[ 4], min[ 4], max[ 4]), __clamp_s(x[ 5], min[ 5], max[ 5]), __clamp_s(x[ 6], min[ 6], max[ 6]), __clamp_s(x[ 7], min[ 7], max[ 7]),
          __clamp_s(x[ 8], min[ 8], max[ 8]), __clamp_s(x[ 9], min[ 9], max[ 9]), __clamp_s(x[10], min[10], max[10]), __clamp_s(x[11], min[11], max[11]),
          __clamp_s(x[12], min[12], max[12]), __clamp_s(x[13], min[13], max[13]), __clamp_s(x[14], min[14], max[14]), __clamp_s(x[15], min[15], max[15]))
}

/// - Returns: Elementwise clamping to *min*...*max* range of *x*.
@inlinable
public func simd_clamp(_ x: simd_short32, _ min: simd_short32, _ max: simd_short32) -> simd_short32 {
    .init(__clamp_s(x[ 0], min[ 0], max[ 0]), __clamp_s(x[ 1], min[ 1], max[ 1]), __clamp_s(x[ 2], min[ 2], max[ 2]), __clamp_s(x[ 3], min[ 3], max[ 3]),
          __clamp_s(x[ 4], min[ 4], max[ 4]), __clamp_s(x[ 5], min[ 5], max[ 5]), __clamp_s(x[ 6], min[ 6], max[ 6]), __clamp_s(x[ 7], min[ 7], max[ 7]),
          __clamp_s(x[ 8], min[ 8], max[ 8]), __clamp_s(x[ 9], min[ 9], max[ 9]), __clamp_s(x[10], min[10], max[10]), __clamp_s(x[11], min[11], max[11]),
          __clamp_s(x[12], min[12], max[12]), __clamp_s(x[13], min[13], max[13]), __clamp_s(x[14], min[14], max[14]), __clamp_s(x[15], min[15], max[15]),
          __clamp_s(x[16], min[16], max[16]), __clamp_s(x[17], min[17], max[17]), __clamp_s(x[18], min[18], max[18]), __clamp_s(x[19], min[19], max[19]),
          __clamp_s(x[20], min[20], max[20]), __clamp_s(x[21], min[21], max[21]), __clamp_s(x[22], min[22], max[22]), __clamp_s(x[23], min[23], max[23]),
          __clamp_s(x[24], min[24], max[24]), __clamp_s(x[25], min[25], max[25]), __clamp_s(x[26], min[26], max[26]), __clamp_s(x[27], min[27], max[27]),
          __clamp_s(x[28], min[28], max[28]), __clamp_s(x[29], min[29], max[29]), __clamp_s(x[30], min[30], max[30]), __clamp_s(x[31], min[31], max[31]))
}

@inline(__always)
@usableFromInline
internal func __clamp_us(_ x: simd_ushort1, _ min: simd_ushort1, _ max: simd_ushort1) -> simd_ushort1 { x <= min ? min : (x <= max ? x : max) }

/// - Returns: Elementwise clamping to *min*...*max* range of *x*.
@inlinable
public func simd_clamp(_ x: simd_ushort2, _ min: simd_ushort2, _ max: simd_ushort2) -> simd_ushort2 {
    .init(__clamp_us(x.x, min.x, max.x), __clamp_us(x.y, min.y, max.y))
}

/// - Returns: Elementwise clamping to *min*...*max* range of *x*.
@inlinable
public func simd_clamp(_ x: simd_ushort3, _ min: simd_ushort3, _ max: simd_ushort3) -> simd_ushort3 {
    .init(__clamp_us(x.x, min.x, max.x), __clamp_us(x.y, min.y, max.y), __clamp_us(x.z, min.z, max.z))
}

/// - Returns: Elementwise clamping to *min*...*max* range of *x*.
@inlinable
public func simd_clamp(_ x: simd_ushort4, _ min: simd_ushort4, _ max: simd_ushort4) -> simd_ushort4 {
    .init(__clamp_us(x.x, min.x, max.x), __clamp_us(x.y, min.y, max.y), __clamp_us(x.z, min.z, max.z), __clamp_us(x.w, min.w, max.w))
}

/// - Returns: Elementwise clamping to *min*...*max* range of *x*.
@inlinable
public func simd_clamp(_ x: simd_ushort8, _ min: simd_ushort8, _ max: simd_ushort8) -> simd_ushort8 {
    .init(__clamp_us(x[0], min[0], max[0]), __clamp_us(x[1], min[1], max[1]), __clamp_us(x[2], min[2], max[2]), __clamp_us(x[3], min[3], max[3]),
          __clamp_us(x[4], min[4], max[4]), __clamp_us(x[5], min[5], max[5]), __clamp_us(x[6], min[6], max[6]), __clamp_us(x[7], min[7], max[7]))
}

/// - Returns: Elementwise clamping to *min*...*max* range of *x*.
@inlinable
public func simd_clamp(_ x: simd_ushort16, _ min: simd_ushort16, _ max: simd_ushort16) -> simd_ushort16 {
    .init(__clamp_us(x[ 0], min[ 0], max[ 0]), __clamp_us(x[ 1], min[ 1], max[ 1]), __clamp_us(x[ 2], min[ 2], max[ 2]), __clamp_us(x[ 3], min[ 3], max[ 3]),
          __clamp_us(x[ 4], min[ 4], max[ 4]), __clamp_us(x[ 5], min[ 5], max[ 5]), __clamp_us(x[ 6], min[ 6], max[ 6]), __clamp_us(x[ 7], min[ 7], max[ 7]),
          __clamp_us(x[ 8], min[ 8], max[ 8]), __clamp_us(x[ 9], min[ 9], max[ 9]), __clamp_us(x[10], min[10], max[10]), __clamp_us(x[11], min[11], max[11]),
          __clamp_us(x[12], min[12], max[12]), __clamp_us(x[13], min[13], max[13]), __clamp_us(x[14], min[14], max[14]), __clamp_us(x[15], min[15], max[15]))
}

/// - Returns: Elementwise clamping to *min*...*max* range of *x*.
@inlinable
public func simd_clamp(_ x: simd_ushort32, _ min: simd_ushort32, _ max: simd_ushort32) -> simd_ushort32 {
    .init(__clamp_us(x[ 0], min[ 0], max[ 0]), __clamp_us(x[ 1], min[ 1], max[ 1]), __clamp_us(x[ 2], min[ 2], max[ 2]), __clamp_us(x[ 3], min[ 3], max[ 3]),
          __clamp_us(x[ 4], min[ 4], max[ 4]), __clamp_us(x[ 5], min[ 5], max[ 5]), __clamp_us(x[ 6], min[ 6], max[ 6]), __clamp_us(x[ 7], min[ 7], max[ 7]),
          __clamp_us(x[ 8], min[ 8], max[ 8]), __clamp_us(x[ 9], min[ 9], max[ 9]), __clamp_us(x[10], min[10], max[10]), __clamp_us(x[11], min[11], max[11]),
          __clamp_us(x[12], min[12], max[12]), __clamp_us(x[13], min[13], max[13]), __clamp_us(x[14], min[14], max[14]), __clamp_us(x[15], min[15], max[15]),
          __clamp_us(x[16], min[16], max[16]), __clamp_us(x[17], min[17], max[17]), __clamp_us(x[18], min[18], max[18]), __clamp_us(x[19], min[19], max[19]),
          __clamp_us(x[20], min[20], max[20]), __clamp_us(x[21], min[21], max[21]), __clamp_us(x[22], min[22], max[22]), __clamp_us(x[23], min[23], max[23]),
          __clamp_us(x[24], min[24], max[24]), __clamp_us(x[25], min[25], max[25]), __clamp_us(x[26], min[26], max[26]), __clamp_us(x[27], min[27], max[27]),
          __clamp_us(x[28], min[28], max[28]), __clamp_us(x[29], min[29], max[29]), __clamp_us(x[30], min[30], max[30]), __clamp_us(x[31], min[31], max[31]))
}

@inline(__always)
@usableFromInline
internal func __clamp_i(_ x: simd_int1, _ min: simd_int1, _ max: simd_int1) -> simd_int1 { x <= min ? min : (x <= max ? x : max) }

/// - Returns: Elementwise clamping to *min*...*max* range of *x*.
@inlinable
public func simd_clamp(_ x: simd_int2, _ min: simd_int2, _ max: simd_int2) -> simd_int2 {
    .init(__clamp_i(x.x, min.x, max.x), __clamp_i(x.y, min.y, max.y))
}

/// - Returns: Elementwise clamping to *min*...*max* range of *x*.
@inlinable
public func simd_clamp(_ x: simd_int3, _ min: simd_int3, _ max: simd_int3) -> simd_int3 {
    .init(__clamp_i(x.x, min.x, max.x), __clamp_i(x.y, min.y, max.y), __clamp_i(x.z, min.z, max.z))
}

/// - Returns: Elementwise clamping to *min*...*max* range of *x*.
@inlinable
public func simd_clamp(_ x: simd_int4, _ min: simd_int4, _ max: simd_int4) -> simd_int4 {
    .init(__clamp_i(x.x, min.x, max.x), __clamp_i(x.y, min.y, max.y), __clamp_i(x.z, min.z, max.z), __clamp_i(x.w, min.w, max.w))
}

/// - Returns: Elementwise clamping to *min*...*max* range of *x*.
@inlinable
public func simd_clamp(_ x: simd_int8, _ min: simd_int8, _ max: simd_int8) -> simd_int8 {
    .init(__clamp_i(x[0], min[0], max[0]), __clamp_i(x[1], min[1], max[1]), __clamp_i(x[2], min[2], max[2]), __clamp_i(x[3], min[3], max[3]),
          __clamp_i(x[4], min[4], max[4]), __clamp_i(x[5], min[5], max[5]), __clamp_i(x[6], min[6], max[6]), __clamp_i(x[7], min[7], max[7]))
}

/// - Returns: Elementwise clamping to *min*...*max* range of *x*.
@inlinable
public func simd_clamp(_ x: simd_int16, _ min: simd_int16, _ max: simd_int16) -> simd_int16 {
    .init(__clamp_i(x[ 0], min[ 0], max[ 0]), __clamp_i(x[ 1], min[ 1], max[ 1]), __clamp_i(x[ 2], min[ 2], max[ 2]), __clamp_i(x[ 3], min[ 3], max[ 3]),
          __clamp_i(x[ 4], min[ 4], max[ 4]), __clamp_i(x[ 5], min[ 5], max[ 5]), __clamp_i(x[ 6], min[ 6], max[ 6]), __clamp_i(x[ 7], min[ 7], max[ 7]),
          __clamp_i(x[ 8], min[ 8], max[ 8]), __clamp_i(x[ 9], min[ 9], max[ 9]), __clamp_i(x[10], min[10], max[10]), __clamp_i(x[11], min[11], max[11]),
          __clamp_i(x[12], min[12], max[12]), __clamp_i(x[13], min[13], max[13]), __clamp_i(x[14], min[14], max[14]), __clamp_i(x[15], min[15], max[15]))
}

@inline(__always)
@usableFromInline
internal func __clamp_ui(_ x: simd_uint1, _ min: simd_uint1, _ max: simd_uint1) -> simd_uint1 { x <= min ? min : (x <= max ? x : max) }

/// - Returns: Elementwise clamping to *min*...*max* range of *x*.
@inlinable
public func simd_clamp(_ x: simd_uint2, _ min: simd_uint2, _ max: simd_uint2) -> simd_uint2 {
    .init(__clamp_ui(x.x, min.x, max.x), __clamp_ui(x.y, min.y, max.y))
}

/// - Returns: Elementwise clamping to *min*...*max* range of *x*.
@inlinable
public func simd_clamp(_ x: simd_uint3, _ min: simd_uint3, _ max: simd_uint3) -> simd_uint3 {
    .init(__clamp_ui(x.x, min.x, max.x), __clamp_ui(x.y, min.y, max.y), __clamp_ui(x.z, min.z, max.z))
}

/// - Returns: Elementwise clamping to *min*...*max* range of *x*.
@inlinable
public func simd_clamp(_ x: simd_uint4, _ min: simd_uint4, _ max: simd_uint4) -> simd_uint4 {
    .init(__clamp_ui(x.x, min.x, max.x), __clamp_ui(x.y, min.y, max.y), __clamp_ui(x.z, min.z, max.z), __clamp_ui(x.w, min.w, max.w))
}

/// - Returns: Elementwise clamping to *min*...*max* range of *x*.
@inlinable
public func simd_clamp(_ x: simd_uint8, _ min: simd_uint8, _ max: simd_uint8) -> simd_uint8 {
    .init(__clamp_ui(x[0], min[0], max[0]), __clamp_ui(x[1], min[1], max[1]), __clamp_ui(x[2], min[2], max[2]), __clamp_ui(x[3], min[3], max[3]),
          __clamp_ui(x[4], min[4], max[4]), __clamp_ui(x[5], min[5], max[5]), __clamp_ui(x[6], min[6], max[6]), __clamp_ui(x[7], min[7], max[7]))
}

/// - Returns: Elementwise clamping to *min*...*max* range of *x*.
@inlinable
public func simd_clamp(_ x: simd_uint16, _ min: simd_uint16, _ max: simd_uint16) -> simd_uint16 {
    .init(__clamp_ui(x[ 0], min[ 0], max[ 0]), __clamp_ui(x[ 1], min[ 1], max[ 1]), __clamp_ui(x[ 2], min[ 2], max[ 2]), __clamp_ui(x[ 3], min[ 3], max[ 3]),
          __clamp_ui(x[ 4], min[ 4], max[ 4]), __clamp_ui(x[ 5], min[ 5], max[ 5]), __clamp_ui(x[ 6], min[ 6], max[ 6]), __clamp_ui(x[ 7], min[ 7], max[ 7]),
          __clamp_ui(x[ 8], min[ 8], max[ 8]), __clamp_ui(x[ 9], min[ 9], max[ 9]), __clamp_ui(x[10], min[10], max[10]), __clamp_ui(x[11], min[11], max[11]),
          __clamp_ui(x[12], min[12], max[12]), __clamp_ui(x[13], min[13], max[13]), __clamp_ui(x[14], min[14], max[14]), __clamp_ui(x[15], min[15], max[15]))
}

@inline(__always)
@usableFromInline
internal func __clamp_l(_ x: simd_long1, _ min: simd_long1, _ max: simd_long1) -> simd_long1 { x <= min ? min : (x <= max ? x : max) }

/// - Returns: Elementwise clamping to *min*...*max* range of *x*.
@inlinable
public func simd_clamp(_ x: simd_long2, _ min: simd_long2, _ max: simd_long2) -> simd_long2 {
    .init(__clamp_l(x.x, min.x, max.x), __clamp_l(x.y, min.y, max.y))
}

/// - Returns: Elementwise clamping to *min*...*max* range of *x*.
@inlinable
public func simd_clamp(_ x: simd_long3, _ min: simd_long3, _ max: simd_long3) -> simd_long3 {
    .init(__clamp_l(x.x, min.x, max.x), __clamp_l(x.y, min.y, max.y), __clamp_l(x.z, min.z, max.z))
}

/// - Returns: Elementwise clamping to *min*...*max* range of *x*.
@inlinable
public func simd_clamp(_ x: simd_long4, _ min: simd_long4, _ max: simd_long4) -> simd_long4 {
    .init(__clamp_l(x.x, min.x, max.x), __clamp_l(x.y, min.y, max.y), __clamp_l(x.z, min.z, max.z), __clamp_l(x.w, min.w, max.w))
}

/// - Returns: Elementwise clamping to *min*...*max* range of *x*.
@inlinable
public func simd_clamp(_ x: simd_long8, _ min: simd_long8, _ max: simd_long8) -> simd_long8 {
    .init(__clamp_l(x[0], min[0], max[0]), __clamp_l(x[1], min[1], max[1]), __clamp_l(x[2], min[2], max[2]), __clamp_l(x[3], min[3], max[3]),
          __clamp_l(x[4], min[4], max[4]), __clamp_l(x[5], min[5], max[5]), __clamp_l(x[6], min[6], max[6]), __clamp_l(x[7], min[7], max[7]))
}

@inline(__always)
@usableFromInline
internal func __clamp_ul(_ x: simd_ulong1, _ min: simd_ulong1, _ max: simd_ulong1) -> simd_ulong1 { x <= min ? min : (x <= max ? x : max) }

/// - Returns: Elementwise clamping to *min*...*max* range of *x*.
@inlinable
public func simd_clamp(_ x: simd_ulong2, _ min: simd_ulong2, _ max: simd_ulong2) -> simd_ulong2 {
    .init(__clamp_ul(x.x, min.x, max.x), __clamp_ul(x.y, min.y, max.y))
}

/// - Returns: Elementwise clamping to *min*...*max* range of *x*.
@inlinable
public func simd_clamp(_ x: simd_ulong3, _ min: simd_ulong3, _ max: simd_ulong3) -> simd_ulong3 {
    .init(__clamp_ul(x.x, min.x, max.x), __clamp_ul(x.y, min.y, max.y), __clamp_ul(x.z, min.z, max.z))
}

/// - Returns: Elementwise clamping to *min*...*max* range of *x*.
@inlinable
public func simd_clamp(_ x: simd_ulong4, _ min: simd_ulong4, _ max: simd_ulong4) -> simd_ulong4 {
    .init(__clamp_ul(x.x, min.x, max.x), __clamp_ul(x.y, min.y, max.y), __clamp_ul(x.z, min.z, max.z), __clamp_ul(x.w, min.w, max.w))
}

/// - Returns: Elementwise clamping to *min*...*max* range of *x*.
@inlinable
public func simd_clamp(_ x: simd_ulong8, _ min: simd_ulong8, _ max: simd_ulong8) -> simd_ulong8 {
    .init(__clamp_ul(x[0], min[0], max[0]), __clamp_ul(x[1], min[1], max[1]), __clamp_ul(x[2], min[2], max[2]), __clamp_ul(x[3], min[3], max[3]),
          __clamp_ul(x[4], min[4], max[4]), __clamp_ul(x[5], min[5], max[5]), __clamp_ul(x[6], min[6], max[6]), __clamp_ul(x[7], min[7], max[7]))
}

@inline(__always)
@usableFromInline
internal func __clamp_f(_ x: Float, _ min: Float, _ max: Float) -> Float { x <= min ? min : (x <= max ? x : max) }

/// - Returns: Elementwise clamping to *min*...*max* range of *x*.
@inlinable
public func simd_clamp(_ x: Float, _ min: Float, _ max: Float) -> Float { __clamp_f(x, min, max) }

/// - Returns: Elementwise clamping to *min*...*max* range of *x*.
@inlinable
public func simd_clamp(_ x: simd_float2, _ min: simd_float2, _ max: simd_float2) -> simd_float2 {
    .init(__clamp_f(x.x, min.x, max.x), __clamp_f(x.y, min.y, max.y))
}

/// - Returns: Elementwise clamping to *min*...*max* range of *x*.
@inlinable
public func simd_clamp(_ x: simd_float3, _ min: simd_float3, _ max: simd_float3) -> simd_float3 {
    .init(__clamp_f(x.x, min.x, max.x), __clamp_f(x.y, min.y, max.y), __clamp_f(x.z, min.z, max.z))
}

/// - Returns: Elementwise clamping to *min*...*max* range of *x*.
@inlinable
public func simd_clamp(_ x: simd_float4, _ min: simd_float4, _ max: simd_float4) -> simd_float4 {
    .init(__clamp_f(x.x, min.x, max.x), __clamp_f(x.y, min.y, max.y), __clamp_f(x.z, min.z, max.z), __clamp_f(x.w, min.w, max.w))
}

/// - Returns: Elementwise clamping to *min*...*max* range of *x*.
@inlinable
public func simd_clamp(_ x: simd_float8, _ min: simd_float8, _ max: simd_float8) -> simd_float8 {
    .init(__clamp_f(x[0], min[0], max[0]), __clamp_f(x[1], min[1], max[1]), __clamp_f(x[2], min[2], max[2]), __clamp_f(x[3], min[3], max[3]),
          __clamp_f(x[4], min[4], max[4]), __clamp_f(x[5], min[5], max[5]), __clamp_f(x[6], min[6], max[6]), __clamp_f(x[7], min[7], max[7]))
}

/// - Returns: Elementwise clamping to *min*...*max* range of *x*.
@inlinable
public func simd_clamp(_ x: simd_float16, _ min: simd_float16, _ max: simd_float16) -> simd_float16 {
    .init(__clamp_f(x[ 0], min[ 0], max[ 0]), __clamp_f(x[ 1], min[ 1], max[ 1]), __clamp_f(x[ 2], min[ 2], max[ 2]), __clamp_f(x[ 3], min[ 3], max[ 3]),
          __clamp_f(x[ 4], min[ 4], max[ 4]), __clamp_f(x[ 5], min[ 5], max[ 5]), __clamp_f(x[ 6], min[ 6], max[ 6]), __clamp_f(x[ 7], min[ 7], max[ 7]),
          __clamp_f(x[ 8], min[ 8], max[ 8]), __clamp_f(x[ 9], min[ 9], max[ 9]), __clamp_f(x[10], min[10], max[10]), __clamp_f(x[11], min[11], max[11]),
          __clamp_f(x[12], min[12], max[12]), __clamp_f(x[13], min[13], max[13]), __clamp_f(x[14], min[14], max[14]), __clamp_f(x[15], min[15], max[15]))
}

@inline(__always)
@usableFromInline
internal func __clamp_d(_ x: Double, _ min: Double, _ max: Double) -> Double { x <= min ? min : (x <= max ? x : max) }

/// - Returns: Elementwise clamping to *min*...*max* range of *x*.
@inlinable
public func simd_clamp(_ x: Double, _ min: Double, _ max: Double) -> Double { __clamp_d(x, min, max) }

/// - Returns: Elementwise clamping to *min*...*max* range of *x*.
@inlinable
public func simd_clamp(_ x: simd_double2, _ min: simd_double2, _ max: simd_double2) -> simd_double2 {
    .init(__clamp_d(x.x, min.x, max.x), __clamp_d(x.y, min.y, max.y))
}

/// - Returns: Elementwise clamping to *min*...*max* range of *x*.
@inlinable
public func simd_clamp(_ x: simd_double3, _ min: simd_double3, _ max: simd_double3) -> simd_double3 {
    .init(__clamp_d(x.x, min.x, max.x), __clamp_d(x.y, min.y, max.y), __clamp_d(x.z, min.z, max.z))
}

/// - Returns: Elementwise clamping to *min*...*max* range of *x*.
@inlinable
public func simd_clamp(_ x: simd_double4, _ min: simd_double4, _ max: simd_double4) -> simd_double4 {
    .init(__clamp_d(x.x, min.x, max.x), __clamp_d(x.y, min.y, max.y), __clamp_d(x.z, min.z, max.z), __clamp_d(x.w, min.w, max.w))
}

/// - Returns: Elementwise clamping to *min*...*max* range of *x*.
@inlinable
public func simd_clamp(_ x: simd_double8, _ min: simd_double8, _ max: simd_double8) -> simd_double8 {
    .init(__clamp_d(x[0], min[0], max[0]), __clamp_d(x[1], min[1], max[1]), __clamp_d(x[2], min[2], max[ 2]), __clamp_d(x[3], min[3], max[3]),
          __clamp_d(x[4], min[4], max[4]), __clamp_d(x[5], min[5], max[5]), __clamp_d(x[6], min[6], max[ 6]), __clamp_d(x[7], min[7], max[7]))
}


// MARK: - simd_conjugate

/// - Returns: The conjugate of *q*.
@inlinable
public func simd_conjugate(_ q: simd_quatf) -> simd_quatf { q.conjugate }

/// - Returns: The conjugate of *q*.
@inlinable
public func simd_conjugate(_ q: simd_quatd) -> simd_quatd { q.conjugate }


// MARK: - simd_cross

/// - Returns: Cross product of (*x*, 0) and (*y*, 0).
@inlinable
public func simd_cross(_ x: simd_float2, _ y: simd_float2) -> simd_float3 {
    .init(0.0, 0.0, x.x * y.y - x.y * y.x)
}

/// - Returns: Cross product of *x* and *y*.
@inlinable
public func simd_cross(_ x: simd_float3, _ y: simd_float3) -> simd_float3 {
    .init(x.y * y.z - x.z * y.y, x.z * y.x - x.x * y.z, x.x * y.y - x.y * y.x)
}

/// - Returns: Cross product of (*x*, 0) and (*y*, 0).
@inlinable
public func simd_cross(_ x: simd_double2, _ y: simd_double2) -> simd_double3 {
    .init(0.0, 0.0, x.x * y.y - x.y * y.x)
}

/// - Returns: Cross product of *x* and *y*.
@inlinable
public func simd_cross(_ x: simd_double3, _ y: simd_double3) -> simd_double3 {
    .init(x.y * y.z - x.z * y.y, x.z * y.x - x.x * y.z, x.x * y.y - x.y * y.x)
}


// MARK: - simd_determinant

/// - Returns: Determinant of *x*.
@inlinable
public func simd_determinant(_ x: simd_float2x2) -> Float { x.determinant }

/// - Returns: Determinant of *x*.
@inlinable
public func simd_determinant(_ x: simd_float3x3) -> Float { x.determinant }

/// - Returns: Determinant of *x*.
@inlinable
public func simd_determinant(_ x: simd_float4x4) -> Float { x.determinant }

/// - Returns: Determinant of *x*.
@inlinable
public func simd_determinant(_ x: simd_double2x2) -> Double { x.determinant }

/// - Returns: Determinant of *x*.
@inlinable
public func simd_determinant(_ x: simd_double3x3) -> Double { x.determinant }

/// - Returns: Determinant of *x*.
@inlinable
public func simd_determinant(_ x: simd_double4x4) -> Double { x.determinant }


// MARK: - simd_distance

/// - Returns: Distance between *x* and *y*.
///
/// - Note: This function calls ``kvSIMD/simd_fast_distance(_:_:)-88of5`` if `-ffast-math` compiler flag is specified.
///         Otherwise ``kvSIMD/simd_precise_distance(_:_:)-4awj7`` is called.
@inlinable
public func simd_distance(_ x: simd_float2, _ y: simd_float2) -> Float {
#if __FAST_MATH__
    return simd_fast_distance(x, y)
#else // !__FAST_MATH__
    return simd_precise_distance(x, y)
#endif
}

/// - Returns: Distance between *x* and *y*.
///
/// - Note: This function calls ``kvSIMD/simd_fast_distance(_:_:)-28hd`` if `-ffast-math` compiler flag is specified.
///         Otherwise ``kvSIMD/simd_precise_distance(_:_:)-10ldd`` is called.
@inlinable
public func simd_distance(_ x: simd_float3, _ y: simd_float3) -> Float {
#if __FAST_MATH__
    return simd_fast_distance(x, y)
#else // !__FAST_MATH__
    return simd_precise_distance(x, y)
#endif
}

/// - Returns: Distance between *x* and *y*.
///
/// - Note: This function calls ``kvSIMD/simd_fast_distance(_:_:)-19nl7`` if `-ffast-math` compiler flag is specified.
///         Otherwise ``kvSIMD/simd_precise_distance(_:_:)-2pjqw`` is called.
@inlinable
public func simd_distance(_ x: simd_float4, _ y: simd_float4) -> Float {
#if __FAST_MATH__
    return simd_fast_distance(x, y)
#else // !__FAST_MATH__
    return simd_precise_distance(x, y)
#endif
}

/// - Returns: Distance between *x* and *y*.
///
/// - Note: This function calls ``kvSIMD/simd_fast_distance(_:_:)-1625c`` if `-ffast-math` compiler flag is specified.
///         Otherwise ``kvSIMD/simd_precise_distance(_:_:)-9guww`` is called.
@inlinable
public func simd_distance(_ x: simd_float8, _ y: simd_float8) -> Float {
#if __FAST_MATH__
    return simd_fast_distance(x, y)
#else // !__FAST_MATH__
    return simd_precise_distance(x, y)
#endif
}

/// - Returns: Distance between *x* and *y*.
///
/// - Note: This function calls ``kvSIMD/simd_fast_distance(_:_:)-3acfn`` if `-ffast-math` compiler flag is specified.
///         Otherwise ``kvSIMD/simd_precise_distance(_:_:)-9p2rc`` is called.
@inlinable
public func simd_distance(_ x: simd_float16, _ y: simd_float16) -> Float {
#if __FAST_MATH__
    return simd_fast_distance(x, y)
#else // !__FAST_MATH__
    return simd_precise_distance(x, y)
#endif
}

/// - Returns: Distance between *x* and *y*.
///
/// - Note: This function calls ``kvSIMD/simd_fast_distance(_:_:)-7uk27`` if `-ffast-math` compiler flag is specified.
///         Otherwise ``kvSIMD/simd_precise_distance(_:_:)-4aji4`` is called.
@inlinable
public func simd_distance(_ x: simd_double2, _ y: simd_double2) -> Double {
#if __FAST_MATH__
    return simd_fast_distance(x, y)
#else // !__FAST_MATH__
    return simd_precise_distance(x, y)
#endif
}

/// - Returns: Distance between *x* and *y*.
///
/// - Note: This function calls ``kvSIMD/simd_fast_distance(_:_:)-5hk81`` if `-ffast-math` compiler flag is specified.
///         Otherwise ``kvSIMD/simd_precise_distance(_:_:)-74jn8`` is called.
@inlinable
public func simd_distance(_ x: simd_double3, _ y: simd_double3) -> Double {
#if __FAST_MATH__
    return simd_fast_distance(x, y)
#else // !__FAST_MATH__
    return simd_precise_distance(x, y)
#endif
}

/// - Returns: Distance between *x* and *y*.
///
/// - Note: This function calls ``kvSIMD/simd_fast_distance(_:_:)-20hcy`` if `-ffast-math` compiler flag is specified.
///         Otherwise ``kvSIMD/simd_precise_distance(_:_:)-m14o`` is called.
@inlinable
public func simd_distance(_ x: simd_double4, _ y: simd_double4) -> Double {
#if __FAST_MATH__
    return simd_fast_distance(x, y)
#else // !__FAST_MATH__
    return simd_precise_distance(x, y)
#endif
}

/// - Returns: Distance between *x* and *y*.
///
/// - Note: This function calls ``kvSIMD/simd_fast_distance(_:_:)-9dszu`` if `-ffast-math` compiler flag is specified.
///         Otherwise ``kvSIMD/simd_precise_distance(_:_:)-1zned`` is called.
@inlinable
public func simd_distance(_ x: simd_double8, _ y: simd_double8) -> Double {
#if __FAST_MATH__
    return simd_fast_distance(x, y)
#else // !__FAST_MATH__
    return simd_precise_distance(x, y)
#endif
}


// MARK: - simd_distance_squared

/// - Returns: Squared distance between *x* and *y*.
@inlinable
public func simd_distance_squared(_ x: simd_float2, _ y: simd_float2) -> Float {
    let d = x - y
    return simd_dot(d, d)
}

/// - Returns: Squared distance between *x* and *y*.
@inlinable
public func simd_distance_squared(_ x: simd_float3, _ y: simd_float3) -> Float {
    let d = x - y
    return simd_dot(d, d)
}

/// - Returns: Squared distance between *x* and *y*.
@inlinable
public func simd_distance_squared(_ x: simd_float4, _ y: simd_float4) -> Float {
    let d = x - y
    return simd_dot(d, d)
}

/// - Returns: Squared distance between *x* and *y*.
@inlinable
public func simd_distance_squared(_ x: simd_float8, _ y: simd_float8) -> Float {
    let d = x - y
    return simd_dot(d, d)
}

/// - Returns: Squared distance between *x* and *y*.
@inlinable
public func simd_distance_squared(_ x: simd_float16, _ y: simd_float16) -> Float {
    let d = x - y
    return simd_dot(d, d)
}

/// - Returns: Squared distance between *x* and *y*.
@inlinable
public func simd_distance_squared(_ x: simd_double2, _ y: simd_double2) -> Double {
    let d = x - y
    return simd_dot(d, d)
}

/// - Returns: Squared distance between *x* and *y*.
@inlinable
public func simd_distance_squared(_ x: simd_double3, _ y: simd_double3) -> Double {
    let d = x - y
    return simd_dot(d, d)
}

/// - Returns: Squared distance between *x* and *y*.
@inlinable
public func simd_distance_squared(_ x: simd_double4, _ y: simd_double4) -> Double {
    let d = x - y
    return simd_dot(d, d)
}

/// - Returns: Squared distance between *x* and *y*.
@inlinable
public func simd_distance_squared(_ x: simd_double8, _ y: simd_double8) -> Double {
    let d = x - y
    return simd_dot(d, d)
}


// MARK: - simd_dot

/// - Returns: Dot product of *x* and *y*.
@inlinable
public func simd_dot(_ x: simd_float2, _ y: simd_float2) -> Float { x.x * y.x + x.y * y.y }

/// - Returns: Dot product of *x* and *y*.
@inlinable
public func simd_dot(_ x: simd_float3, _ y: simd_float3) -> Float { (x * y).sum() }

/// - Returns: Dot product of *x* and *y*.
@inlinable
public func simd_dot(_ x: simd_float4, _ y: simd_float4) -> Float { (x * y).sum() }

/// - Returns: Dot product of *x* and *y*.
@inlinable
public func simd_dot(_ x: simd_float8, _ y: simd_float8) -> Float { (x * y).sum() }

/// - Returns: Dot product of *x* and *y*.
@inlinable
public func simd_dot(_ x: simd_float16, _ y: simd_float16) -> Float { (x * y).sum() }

/// - Returns: Dot product of *x* and *y*.
@inlinable
public func simd_dot(_ x: simd_double2, _ y: simd_double2) -> Double { x.x * y.x + x.y * y.y }

/// - Returns: Dot product of *x* and *y*.
@inlinable
public func simd_dot(_ x: simd_double3, _ y: simd_double3) -> Double { (x * y).sum() }

/// - Returns: Dot product of *x* and *y*.
@inlinable
public func simd_dot(_ x: simd_double4, _ y: simd_double4) -> Double { (x * y).sum() }

/// - Returns: Dot product of *x* and *y*.
@inlinable
public func simd_dot(_ x: simd_double8, _ y: simd_double8) -> Double { (x * y).sum() }

/// - Returns: Dot product of *p* and *q* as 4 component vectors.
@inlinable
public func simd_dot(_ p: simd_quatf, _ q: simd_quatf) -> Float { simd_dot(p.vector, q.vector) }

/// - Returns: Dot product of *p* and *q* as 4 component vectors.
@inlinable
public func simd_dot(_ p: simd_quatd, _ q: simd_quatd) -> Double { simd_dot(p.vector, q.vector) }


// MARK: - simd_equal

/// - Returns: A boolean value indicating whether two vectors are equal.
@inlinable
public func simd_equal(_ x: simd_char2, _ y: simd_char2) -> simd_bool { x == y }

/// - Returns: A boolean value indicating whether two vectors are equal.
@inlinable
public func simd_equal(_ x: simd_char3, _ y: simd_char3) -> simd_bool { x == y }

/// - Returns: A boolean value indicating whether two vectors are equal.
@inlinable
public func simd_equal(_ x: simd_char4, _ y: simd_char4) -> simd_bool { x == y }

/// - Returns: A boolean value indicating whether two vectors are equal.
@inlinable
public func simd_equal(_ x: simd_char8, _ y: simd_char8) -> simd_bool { x == y }

/// - Returns: A boolean value indicating whether two vectors are equal.
@inlinable
public func simd_equal(_ x: simd_char16, _ y: simd_char16) -> simd_bool { x == y }

/// - Returns: A boolean value indicating whether two vectors are equal.
@inlinable
public func simd_equal(_ x: simd_char32, _ y: simd_char32) -> simd_bool { x == y }

/// - Returns: A boolean value indicating whether two vectors are equal.
@inlinable
public func simd_equal(_ x: simd_char64, _ y: simd_char64) -> simd_bool { x == y }

/// - Returns: A boolean value indicating whether two vectors are equal.
@inlinable
public func simd_equal(_ x: simd_uchar2, _ y: simd_uchar2) -> simd_bool { x == y }

/// - Returns: A boolean value indicating whether two vectors are equal.
@inlinable
public func simd_equal(_ x: simd_uchar3, _ y: simd_uchar3) -> simd_bool { x == y }

/// - Returns: A boolean value indicating whether two vectors are equal.
@inlinable
public func simd_equal(_ x: simd_uchar4, _ y: simd_uchar4) -> simd_bool { x == y }

/// - Returns: A boolean value indicating whether two vectors are equal.
@inlinable
public func simd_equal(_ x: simd_uchar8, _ y: simd_uchar8) -> simd_bool { x == y }

/// - Returns: A boolean value indicating whether two vectors are equal.
@inlinable
public func simd_equal(_ x: simd_uchar16, _ y: simd_uchar16) -> simd_bool { x == y }

/// - Returns: A boolean value indicating whether two vectors are equal.
@inlinable
public func simd_equal(_ x: simd_uchar32, _ y: simd_uchar32) -> simd_bool { x == y }

/// - Returns: A boolean value indicating whether two vectors are equal.
@inlinable
public func simd_equal(_ x: simd_uchar64, _ y: simd_uchar64) -> simd_bool { x == y }

/// - Returns: A boolean value indicating whether two vectors are equal.
@inlinable
public func simd_equal(_ x: simd_short2, _ y: simd_short2) -> simd_bool { x == y }

/// - Returns: A boolean value indicating whether two vectors are equal.
@inlinable
public func simd_equal(_ x: simd_short3, _ y: simd_short3) -> simd_bool { x == y }

/// - Returns: A boolean value indicating whether two vectors are equal.
@inlinable
public func simd_equal(_ x: simd_short4, _ y: simd_short4) -> simd_bool { x == y }

/// - Returns: A boolean value indicating whether two vectors are equal.
@inlinable
public func simd_equal(_ x: simd_short8, _ y: simd_short8) -> simd_bool { x == y }

/// - Returns: A boolean value indicating whether two vectors are equal.
@inlinable
public func simd_equal(_ x: simd_short16, _ y: simd_short16) -> simd_bool { x == y }

/// - Returns: A boolean value indicating whether two vectors are equal.
@inlinable
public func simd_equal(_ x: simd_short32, _ y: simd_short32) -> simd_bool { x == y }

/// - Returns: A boolean value indicating whether two vectors are equal.
@inlinable
public func simd_equal(_ x: simd_ushort2, _ y: simd_ushort2) -> simd_bool { x == y }

/// - Returns: A boolean value indicating whether two vectors are equal.
@inlinable
public func simd_equal(_ x: simd_ushort3, _ y: simd_ushort3) -> simd_bool { x == y }

/// - Returns: A boolean value indicating whether two vectors are equal.
@inlinable
public func simd_equal(_ x: simd_ushort4, _ y: simd_ushort4) -> simd_bool { x == y }

/// - Returns: A boolean value indicating whether two vectors are equal.
@inlinable
public func simd_equal(_ x: simd_ushort8, _ y: simd_ushort8) -> simd_bool { x == y }

/// - Returns: A boolean value indicating whether two vectors are equal.
@inlinable
public func simd_equal(_ x: simd_ushort16, _ y: simd_ushort16) -> simd_bool { x == y }

/// - Returns: A boolean value indicating whether two vectors are equal.
@inlinable
public func simd_equal(_ x: simd_ushort32, _ y: simd_ushort32) -> simd_bool { x == y }

/// - Returns: A boolean value indicating whether two vectors are equal.
@inlinable
public func simd_equal(_ x: simd_int2, _ y: simd_int2) -> simd_bool { x == y }

/// - Returns: A boolean value indicating whether two vectors are equal.
@inlinable
public func simd_equal(_ x: simd_int3, _ y: simd_int3) -> simd_bool { x == y }

/// - Returns: A boolean value indicating whether two vectors are equal.
@inlinable
public func simd_equal(_ x: simd_int4, _ y: simd_int4) -> simd_bool { x == y }

/// - Returns: A boolean value indicating whether two vectors are equal.
@inlinable
public func simd_equal(_ x: simd_int8, _ y: simd_int8) -> simd_bool { x == y }

/// - Returns: A boolean value indicating whether two vectors are equal.
@inlinable
public func simd_equal(_ x: simd_int16, _ y: simd_int16) -> simd_bool { x == y }

/// - Returns: A boolean value indicating whether two vectors are equal.
@inlinable
public func simd_equal(_ x: simd_uint2, _ y: simd_uint2) -> simd_bool { x == y }

/// - Returns: A boolean value indicating whether two vectors are equal.
@inlinable
public func simd_equal(_ x: simd_uint3, _ y: simd_uint3) -> simd_bool { x == y }

/// - Returns: A boolean value indicating whether two vectors are equal.
@inlinable
public func simd_equal(_ x: simd_uint4, _ y: simd_uint4) -> simd_bool { x == y }

/// - Returns: A boolean value indicating whether two vectors are equal.
@inlinable
public func simd_equal(_ x: simd_uint8, _ y: simd_uint8) -> simd_bool { x == y }

/// - Returns: A boolean value indicating whether two vectors are equal.
@inlinable
public func simd_equal(_ x: simd_uint16, _ y: simd_uint16) -> simd_bool { x == y }

/// - Returns: A boolean value indicating whether two vectors are equal.
@inlinable
public func simd_equal(_ x: simd_long2, _ y: simd_long2) -> simd_bool { x == y }

/// - Returns: A boolean value indicating whether two vectors are equal.
@inlinable
public func simd_equal(_ x: simd_long3, _ y: simd_long3) -> simd_bool { x == y }

/// - Returns: A boolean value indicating whether two vectors are equal.
@inlinable
public func simd_equal(_ x: simd_long4, _ y: simd_long4) -> simd_bool { x == y }

/// - Returns: A boolean value indicating whether two vectors are equal.
@inlinable
public func simd_equal(_ x: simd_long8, _ y: simd_long8) -> simd_bool { x == y }

/// - Returns: A boolean value indicating whether two vectors are equal.
@inlinable
public func simd_equal(_ x: simd_ulong2, _ y: simd_ulong2) -> simd_bool { x == y }

/// - Returns: A boolean value indicating whether two vectors are equal.
@inlinable
public func simd_equal(_ x: simd_ulong3, _ y: simd_ulong3) -> simd_bool { x == y }

/// - Returns: A boolean value indicating whether two vectors are equal.
@inlinable
public func simd_equal(_ x: simd_ulong4, _ y: simd_ulong4) -> simd_bool { x == y }

/// - Returns: A boolean value indicating whether two vectors are equal.
@inlinable
public func simd_equal(_ x: simd_ulong8, _ y: simd_ulong8) -> simd_bool { x == y }

/// - Returns: A boolean value indicating whether two vectors are equal.
@inlinable
public func simd_equal(_ x: simd_float2, _ y: simd_float2) -> simd_bool { x == y }

/// - Returns: A boolean value indicating whether two vectors are equal.
@inlinable
public func simd_equal(_ x: simd_float3, _ y: simd_float3) -> simd_bool { x == y }

/// - Returns: A boolean value indicating whether two vectors are equal.
@inlinable
public func simd_equal(_ x: simd_float4, _ y: simd_float4) -> simd_bool { x == y }

/// - Returns: A boolean value indicating whether two vectors are equal.
@inlinable
public func simd_equal(_ x: simd_float8, _ y: simd_float8) -> simd_bool { x == y }

/// - Returns: A boolean value indicating whether two vectors are equal.
@inlinable
public func simd_equal(_ x: simd_float16, _ y: simd_float16) -> simd_bool { x == y }

/// - Returns: A boolean value indicating whether two vectors are equal.
@inlinable
public func simd_equal(_ x: simd_double2, _ y: simd_double2) -> simd_bool { x == y }

/// - Returns: A boolean value indicating whether two vectors are equal.
@inlinable
public func simd_equal(_ x: simd_double3, _ y: simd_double3) -> simd_bool { x == y }

/// - Returns: A boolean value indicating whether two vectors are equal.
@inlinable
public func simd_equal(_ x: simd_double4, _ y: simd_double4) -> simd_bool { x == y }

/// - Returns: A boolean value indicating whether two vectors are equal.
@inlinable
public func simd_equal(_ x: simd_double8, _ y: simd_double8) -> simd_bool { x == y }

/// - Returns: A boolean value indicating whether two matrices are equal.
@inlinable
public func simd_equal(_ x: simd_float2x2, _ y: simd_float2x2) -> simd_bool { x == y }

/// - Returns: A boolean value indicating whether two matrices are equal.
@inlinable
public func simd_equal(_ x: simd_float2x3, _ y: simd_float2x3) -> simd_bool { x == y }

/// - Returns: A boolean value indicating whether two matrices are equal.
@inlinable
public func simd_equal(_ x: simd_float2x4, _ y: simd_float2x4) -> simd_bool { x == y }

/// - Returns: A boolean value indicating whether two matrices are equal.
@inlinable
public func simd_equal(_ x: simd_float3x2, _ y: simd_float3x2) -> simd_bool { x == y }

/// - Returns: A boolean value indicating whether two matrices are equal.
@inlinable
public func simd_equal(_ x: simd_float3x3, _ y: simd_float3x3) -> simd_bool { x == y }

/// - Returns: A boolean value indicating whether two matrices are equal.
@inlinable
public func simd_equal(_ x: simd_float3x4, _ y: simd_float3x4) -> simd_bool { x == y }

/// - Returns: A boolean value indicating whether two matrices are equal.
@inlinable
public func simd_equal(_ x: simd_float4x2, _ y: simd_float4x2) -> simd_bool { x == y }

/// - Returns: A boolean value indicating whether two matrices are equal.
@inlinable
public func simd_equal(_ x: simd_float4x3, _ y: simd_float4x3) -> simd_bool { x == y }

/// - Returns: A boolean value indicating whether two matrices are equal.
@inlinable
public func simd_equal(_ x: simd_float4x4, _ y: simd_float4x4) -> simd_bool { x == y }

/// - Returns: A boolean value indicating whether two matrices are equal.
@inlinable
public func simd_equal(_ x: simd_double2x2, _ y: simd_double2x2) -> simd_bool { x == y }

/// - Returns: A boolean value indicating whether two matrices are equal.
@inlinable
public func simd_equal(_ x: simd_double2x3, _ y: simd_double2x3) -> simd_bool { x == y }

/// - Returns: A boolean value indicating whether two matrices are equal.
@inlinable
public func simd_equal(_ x: simd_double2x4, _ y: simd_double2x4) -> simd_bool { x == y }

/// - Returns: A boolean value indicating whether two matrices are equal.
@inlinable
public func simd_equal(_ x: simd_double3x2, _ y: simd_double3x2) -> simd_bool { x == y }

/// - Returns: A boolean value indicating whether two matrices are equal.
@inlinable
public func simd_equal(_ x: simd_double3x3, _ y: simd_double3x3) -> simd_bool { x == y }

/// - Returns: A boolean value indicating whether two matrices are equal.
@inlinable
public func simd_equal(_ x: simd_double3x4, _ y: simd_double3x4) -> simd_bool { x == y }

/// - Returns: A boolean value indicating whether two matrices are equal.
@inlinable
public func simd_equal(_ x: simd_double4x2, _ y: simd_double4x2) -> simd_bool { x == y }

/// - Returns: A boolean value indicating whether two matrices are equal.
@inlinable
public func simd_equal(_ x: simd_double4x3, _ y: simd_double4x3) -> simd_bool { x == y }

/// - Returns: A boolean value indicating whether two matrices are equal.
@inlinable
public func simd_equal(_ x: simd_double4x4, _ y: simd_double4x4) -> simd_bool { x == y }


// MARK: - simd_fast_distance

/// - Returns: Distance between *x* and *y*.
@inlinable
public func simd_fast_distance(_ x: simd_float2, _ y: simd_float2) -> Float { sqrt(simd_distance_squared(x, y)) }

/// - Returns: Distance between *x* and *y*.
@inlinable
public func simd_fast_distance(_ x: simd_float3, _ y: simd_float3) -> Float { sqrt(simd_distance_squared(x, y)) }

/// - Returns: Distance between *x* and *y*.
@inlinable
public func simd_fast_distance(_ x: simd_float4, _ y: simd_float4) -> Float { sqrt(simd_distance_squared(x, y)) }

/// - Returns: Distance between *x* and *y*.
@inlinable
public func simd_fast_distance(_ x: simd_float8, _ y: simd_float8) -> Float { sqrt(simd_distance_squared(x, y)) }

/// - Returns: Distance between *x* and *y*.
@inlinable
public func simd_fast_distance(_ x: simd_float16, _ y: simd_float16) -> Float { sqrt(simd_distance_squared(x, y)) }

/// - Returns: Distance between *x* and *y*.
@inlinable
public func simd_fast_distance(_ x: simd_double2, _ y: simd_double2) -> Double { sqrt(simd_distance_squared(x, y)) }

/// - Returns: Distance between *x* and *y*.
@inlinable
public func simd_fast_distance(_ x: simd_double3, _ y: simd_double3) -> Double { sqrt(simd_distance_squared(x, y)) }

/// - Returns: Distance between *x* and *y*.
@inlinable
public func simd_fast_distance(_ x: simd_double4, _ y: simd_double4) -> Double { sqrt(simd_distance_squared(x, y)) }

/// - Returns: Distance between *x* and *y*.
@inlinable
public func simd_fast_distance(_ x: simd_double8, _ y: simd_double8) -> Double { sqrt(simd_distance_squared(x, y)) }


// MARK: - simd_fast_length

/// - Returns: Length of *x* (sqrt(dot(x, x))).
@inlinable
public func simd_fast_length(_ x: simd_float2) -> Float { sqrt(simd_dot(x, x)) }

/// - Returns: Length of *x* (sqrt(dot(x, x))).
@inlinable
public func simd_fast_length(_ x: simd_float3) -> Float { sqrt(simd_dot(x, x)) }

/// - Returns: Length of *x* (sqrt(dot(x, x))).
@inlinable
public func simd_fast_length(_ x: simd_float4) -> Float { sqrt(simd_dot(x, x)) }

/// - Returns: Length of *x* (sqrt(dot(x, x))).
@inlinable
public func simd_fast_length(_ x: simd_float8) -> Float { sqrt(simd_dot(x, x)) }

/// - Returns: Length of *x* (sqrt(dot(x, x))).
@inlinable
public func simd_fast_length(_ x: simd_float16) -> Float { sqrt(simd_dot(x, x)) }

/// - Returns: Length of *x* (sqrt(dot(x, x))).
@inlinable
public func simd_fast_length(_ x: simd_double2) -> Double { sqrt(simd_dot(x, x)) }

/// - Returns: Length of *x* (sqrt(dot(x, x))).
@inlinable
public func simd_fast_length(_ x: simd_double3) -> Double { sqrt(simd_dot(x, x)) }

/// - Returns: Length of *x* (sqrt(dot(x, x))).
@inlinable
public func simd_fast_length(_ x: simd_double4) -> Double { sqrt(simd_dot(x, x)) }

/// - Returns: Length of *x* (sqrt(dot(x, x))).
@inlinable
public func simd_fast_length(_ x: simd_double8) -> Double { sqrt(simd_dot(x, x)) }


// MARK: - simd_fast_normalize

/// - Returns: Unit vector having the same direction as *x*.
@inlinable
public func simd_fast_normalize(_ x: simd_float2) -> simd_float2 { x * rsqrt(simd_dot(x, x)) }

/// - Returns: Unit vector having the same direction as *x*.
@inlinable
public func simd_fast_normalize(_ x: simd_float3) -> simd_float3 { x * rsqrt(simd_dot(x, x)) }

/// - Returns: Unit vector having the same direction as *x*.
@inlinable
public func simd_fast_normalize(_ x: simd_float4) -> simd_float4 { x * rsqrt(simd_dot(x, x)) }

/// - Returns: Unit vector having the same direction as *x*.
@inlinable
public func simd_fast_normalize(_ x: simd_float8) -> simd_float8 { x * rsqrt(simd_dot(x, x)) }

/// - Returns: Unit vector having the same direction as *x*.
@inlinable
public func simd_fast_normalize(_ x: simd_float16) -> simd_float16 { x * rsqrt(simd_dot(x, x)) }

/// - Returns: Unit vector having the same direction as *x*.
@inlinable
public func simd_fast_normalize(_ x: simd_double2) -> simd_double2 { x * rsqrt(simd_dot(x, x)) }

/// - Returns: Unit vector having the same direction as *x*.
@inlinable
public func simd_fast_normalize(_ x: simd_double3) -> simd_double3 { x * rsqrt(simd_dot(x, x)) }

/// - Returns: Unit vector having the same direction as *x*.
@inlinable
public func simd_fast_normalize(_ x: simd_double4) -> simd_double4 { x * rsqrt(simd_dot(x, x)) }

/// - Returns: Unit vector having the same direction as *x*.
@inlinable
public func simd_fast_normalize(_ x: simd_double8) -> simd_double8 { x * rsqrt(simd_dot(x, x)) }


// MARK: - simd_fast_project

/// - Returns: Projection of *x* onto *y*.
@inlinable
public func simd_fast_project(_ x: simd_float2, _ y: simd_float2) -> simd_float2 { (simd_dot(x, y) / simd_dot(y, y)) * y }

/// - Returns: Projection of *x* onto *y*.
@inlinable
public func simd_fast_project(_ x: simd_float3, _ y: simd_float3) -> simd_float3 { (simd_dot(x, y) / simd_dot(y, y)) * y }

/// - Returns: Projection of *x* onto *y*.
@inlinable
public func simd_fast_project(_ x: simd_float4, _ y: simd_float4) -> simd_float4 { (simd_dot(x, y) / simd_dot(y, y)) * y }

/// - Returns: Projection of *x* onto *y*.
@inlinable
public func simd_fast_project(_ x: simd_float8, _ y: simd_float8) -> simd_float8 { (simd_dot(x, y) / simd_dot(y, y)) * y }

/// - Returns: Projection of *x* onto *y*.
@inlinable
public func simd_fast_project(_ x: simd_float16, _ y: simd_float16) -> simd_float16 { (simd_dot(x, y) / simd_dot(y, y)) * y }

/// - Returns: Projection of *x* onto *y*.
@inlinable
public func simd_fast_project(_ x: simd_double2, _ y: simd_double2) -> simd_double2 { (simd_dot(x, y) / simd_dot(y, y)) * y }

/// - Returns: Projection of *x* onto *y*.
@inlinable
public func simd_fast_project(_ x: simd_double3, _ y: simd_double3) -> simd_double3 { (simd_dot(x, y) / simd_dot(y, y)) * y }

/// - Returns: Projection of *x* onto *y*.
@inlinable
public func simd_fast_project(_ x: simd_double4, _ y: simd_double4) -> simd_double4 { (simd_dot(x, y) / simd_dot(y, y)) * y }

/// - Returns: Projection of *x* onto *y*.
@inlinable
public func simd_fast_project(_ x: simd_double8, _ y: simd_double8) -> simd_double8 { (simd_dot(x, y) / simd_dot(y, y)) * y }


// MARK: - simd_fast_recip

/// - Returns: Elementwise reciprocial of *x*.
@inlinable
public func simd_fast_recip(_ x: Float) -> Float { 1.0 / x }

/// - Returns: Elementwise reciprocial of *x*.
@inlinable
public func simd_fast_recip(_ x: simd_float2) -> simd_float2 { .one / x }

/// - Returns: Elementwise reciprocial of *x*.
@inlinable
public func simd_fast_recip(_ x: simd_float3) -> simd_float3 { .one / x }

/// - Returns: Elementwise reciprocial of *x*.
@inlinable
public func simd_fast_recip(_ x: simd_float4) -> simd_float4 { .one / x }

/// - Returns: Elementwise reciprocial of *x*.
@inlinable
public func simd_fast_recip(_ x: simd_float8) -> simd_float8 { .one / x }

/// - Returns: Elementwise reciprocial of *x*.
@inlinable
public func simd_fast_recip(_ x: simd_float16) -> simd_float16 { .one / x }

/// - Returns: Elementwise reciprocial of *x*.
@inlinable
public func simd_fast_recip(_ x: Double) -> Double { 1.0 / x }

/// - Returns: Elementwise reciprocial of *x*.
@inlinable
public func simd_fast_recip(_ x: simd_double2) -> simd_double2 { .one / x }

/// - Returns: Elementwise reciprocial of *x*.
@inlinable
public func simd_fast_recip(_ x: simd_double3) -> simd_double3 { .one / x }

/// - Returns: Elementwise reciprocial of *x*.
@inlinable
public func simd_fast_recip(_ x: simd_double4) -> simd_double4 { .one / x }

/// - Returns: Elementwise reciprocial of *x*.
@inlinable
public func simd_fast_recip(_ x: simd_double8) -> simd_double8 { .one / x }


// MARK: - simd_fast_rsqrt

/// - Returns: Reciprocal square root of *x*.
@inlinable
public func simd_fast_rsqrt(_ x: Float) -> Float { 1.0 / sqrt(x) }

/// - Returns: Elementwise reciprocal square root of *x*.
@inlinable
public func simd_fast_rsqrt(_ x: simd_float2) -> simd_float2 { simd_float2.one / sqrt(x) }

/// - Returns: Elementwise reciprocal square root of *x*.
@inlinable
public func simd_fast_rsqrt(_ x: simd_float3) -> simd_float3 { simd_float3.one / sqrt(x) }

/// - Returns: Elementwise reciprocal square root of *x*.
@inlinable
public func simd_fast_rsqrt(_ x: simd_float4) -> simd_float4 { simd_float4.one / sqrt(x) }

/// - Returns: Elementwise reciprocal square root of *x*.
@inlinable
public func simd_fast_rsqrt(_ x: simd_float8) -> simd_float8 { simd_float8.one / sqrt(x) }

/// - Returns: Elementwise reciprocal square root of *x*.
@inlinable
public func simd_fast_rsqrt(_ x: simd_float16) -> simd_float16 { simd_float16.one / sqrt(x) }

/// - Returns: Reciprocal square root of *x*.
@inlinable
public func simd_fast_rsqrt(_ x: Double) -> Double { 1.0 / sqrt(x) }

/// - Returns: Elementwise reciprocal square root of *x*.
@inlinable
public func simd_fast_rsqrt(_ x: simd_double2) -> simd_double2 { simd_double2.one / sqrt(x) }

/// - Returns: Elementwise reciprocal square root of *x*.
@inlinable
public func simd_fast_rsqrt(_ x: simd_double3) -> simd_double3 { simd_double3.one / sqrt(x) }

/// - Returns: Elementwise reciprocal square root of *x*.
@inlinable
public func simd_fast_rsqrt(_ x: simd_double4) -> simd_double4 { simd_double4.one / sqrt(x) }

/// - Returns: Elementwise reciprocal square root of *x*.
@inlinable
public func simd_fast_rsqrt(_ x: simd_double8) -> simd_double8 { simd_double8.one / sqrt(x) }


// MARK: - simd_fract

/// - Returns: `x - floor(x)` where each element is clamped to 0..&lt;1 range.
@inlinable
public func simd_fract(_ x: Float) -> Float {
    let f = x - floor(x)
    return f < 1.0 ? f : 0.0
}

/// - Returns: `x - floor(x)` where each element is clamped to 0..&lt;1 range.
@inlinable
public func simd_fract(_ x: simd_float2) -> simd_float2 {
    let f = x - x.rounded(.down)
    return .init(f.x < 1.0 ? f.x : 0.0,
                 f.y < 1.0 ? f.y : 0.0)
}

/// - Returns: `x - floor(x)` where each element is clamped to 0..&lt;1 range.
@inlinable
public func simd_fract(_ x: simd_float3) -> simd_float3 {
    let f = x - x.rounded(.down)
    return .init(f.x < 1.0 ? f.x : 0.0,
                 f.y < 1.0 ? f.y : 0.0,
                 f.z < 1.0 ? f.z : 0.0)
}

/// - Returns: `x - floor(x)` where each element is clamped to 0..&lt;1 range.
@inlinable
public func simd_fract(_ x: simd_float4) -> simd_float4 {
    let f = x - x.rounded(.down)
    return .init(f.x < 1.0 ? f.x : 0.0,
                 f.y < 1.0 ? f.y : 0.0,
                 f.z < 1.0 ? f.z : 0.0,
                 f.w < 1.0 ? f.w : 0.0)
}

/// - Returns: `x - floor(x)` where each element is clamped to 0..&lt;1 range.
@inlinable
public func simd_fract(_ x: simd_float8) -> simd_float8 {
    let f = x - x.rounded(.down)
    return .init(f[0] < 1.0 ? f[0] : 0.0, f[1] < 1.0 ? f[1] : 0.0, f[2] < 1.0 ? f[2] : 0.0, f[3] < 1.0 ? f[3] : 0.0,
                 f[4] < 1.0 ? f[4] : 0.0, f[5] < 1.0 ? f[5] : 0.0, f[6] < 1.0 ? f[6] : 0.0, f[7] < 1.0 ? f[7] : 0.0)
}

/// - Returns: `x - floor(x)` where each element is clamped to 0..&lt;1 range.
@inlinable
public func simd_fract(_ x: simd_float16) -> simd_float16 {
    let f = x - x.rounded(.down)
    return .init(f[0 ] < 1.0 ? f[0 ] : 0.0, f[1 ] < 1.0 ? f[1 ] : 0.0, f[2 ] < 1.0 ? f[2 ] : 0.0, f[3 ] < 1.0 ? f[3 ] : 0.0,
                 f[4 ] < 1.0 ? f[4 ] : 0.0, f[5 ] < 1.0 ? f[5 ] : 0.0, f[6 ] < 1.0 ? f[6 ] : 0.0, f[7 ] < 1.0 ? f[7 ] : 0.0,
                 f[8 ] < 1.0 ? f[8 ] : 0.0, f[9 ] < 1.0 ? f[9 ] : 0.0, f[10] < 1.0 ? f[10] : 0.0, f[11] < 1.0 ? f[11] : 0.0,
                 f[12] < 1.0 ? f[12] : 0.0, f[13] < 1.0 ? f[13] : 0.0, f[14] < 1.0 ? f[14] : 0.0, f[15] < 1.0 ? f[15] : 0.0)
}

/// - Returns: `x - floor(x)` where each element is clamped to 0..&lt;1 range.
@inlinable
public func simd_fract(_ x: Double) -> Double { x - floor(x) }

/// - Returns: `x - floor(x)` where each element is clamped to 0..&lt;1 range.
@inlinable
public func simd_fract(_ x: simd_double2) -> simd_double2 {
    let f = x - x.rounded(.down)
    return .init(f.x < 1.0 ? f.x : 0.0,
                 f.y < 1.0 ? f.y : 0.0)
}

/// - Returns: `x - floor(x)` where each element is clamped to 0..&lt;1 range.
@inlinable
public func simd_fract(_ x: simd_double3) -> simd_double3 {
    let f = x - x.rounded(.down)
    return .init(f.x < 1.0 ? f.x : 0.0,
                 f.y < 1.0 ? f.y : 0.0,
                 f.z < 1.0 ? f.z : 0.0)
}

/// - Returns: `x - floor(x)` where each element is clamped to 0..&lt;1 range.
@inlinable
public func simd_fract(_ x: simd_double4) -> simd_double4 {
    let f = x - x.rounded(.down)
    return .init(f.x < 1.0 ? f.x : 0.0,
                 f.y < 1.0 ? f.y : 0.0,
                 f.z < 1.0 ? f.z : 0.0,
                 f.w < 1.0 ? f.w : 0.0)
}

/// - Returns: `x - floor(x)` where each element is clamped to 0..&lt;1 range.
@inlinable
public func simd_fract(_ x: simd_double8) -> simd_double8 {
    let f = x - x.rounded(.down)
    return .init(f[0] < 1.0 ? f[0] : 0.0, f[1] < 1.0 ? f[1] : 0.0, f[2] < 1.0 ? f[2] : 0.0, f[3] < 1.0 ? f[3] : 0.0,
                 f[4] < 1.0 ? f[4] : 0.0, f[5] < 1.0 ? f[5] : 0.0, f[6] < 1.0 ? f[6] : 0.0, f[7] < 1.0 ? f[7] : 0.0)
}


// MARK: - simd_imag

/// - Returns: The vector (imaginary) part of *q*.
@inlinable
public func simd_imag(_ q: simd_quatf) -> simd_float3 { q.imag }

/// - Returns: The vector (imaginary) part of *q*.
@inlinable
public func simd_imag(_ q: simd_quatd) -> simd_double3 { q.imag }


// MARK: - simd_incircle

/// - Returns: A positive value when *x* is inside circle on *a*, *b*, *c* positively-oriented coordinates, zero when *x* in on the circle's edge, a negative value otherwise.
///            If *a*, *b*, *c* coordinates are negatively-oriented then the result is negated.
@inlinable
public func simd_incircle(_ x: simd_float2, _ a: simd_float2, _ b: simd_float2, _ c: simd_float2) -> Float {
    // Determinant-4x4-based equation of a circle is used.
    // - NOTE: The canonical matrix is translated for convenience, 3-rd and 4-th rows are swapped to change sign on determinant.
    return float4x4(columns: (simd_make_float4(x, 1.0 as Float, simd_length_squared(x)),
                              simd_make_float4(a, 1.0 as Float, simd_length_squared(a)),
                              simd_make_float4(b, 1.0 as Float, simd_length_squared(b)),
                              simd_make_float4(c, 1.0 as Float, simd_length_squared(c)))).determinant
}

/// - Returns: A positive value when *x* is inside circle on *a*, *b*, *c* positively-oriented coordinates, zero when *x* in on the circle's edge, a negative value otherwise.
///            If *a*, *b*, *c* coordinates are negatively-oriented then the result is negated.
@inlinable
public func simd_incircle(_ x: simd_double2, _ a: simd_double2, _ b: simd_double2, _ c: simd_double2) -> Double {
    // Determinant-4x4-based equation of a circle is used.
    // - NOTE: The canonical matrix is translated for convenience, 3-rd and 4-th rows are swapped to change sign on determinant.
    return double4x4(columns: (simd_make_double4(x, 1.0 as Double, simd_length_squared(x)),
                               simd_make_double4(a, 1.0 as Double, simd_length_squared(a)),
                               simd_make_double4(b, 1.0 as Double, simd_length_squared(b)),
                               simd_make_double4(c, 1.0 as Double, simd_length_squared(c)))).determinant
}


// MARK: - simd_insphere

/// - Returns: A positive value when *x* is inside sphere on *a*, *b*, *c*, *d* positively-oriented coordinates, zero when *x* in on the spheres's edge, a negative value otherwise.
///            If *a*, *b*, *c*, *d* coordinates are negatively-oriented then the result is negated.
@inlinable
public func simd_insphere(_ x: simd_float3, _ a: simd_float3, _ b: simd_float3, _ c: simd_float3, _ d: simd_float3) -> Float {
    // Determinant-5x5-based equation of a circle is used.
    var minor = float4x4(columns: (simd_make_float4(a, simd_length_squared(a)),
                                   simd_make_float4(b, simd_length_squared(b)),
                                   simd_make_float4(c, simd_length_squared(c)),
                                   simd_make_float4(d, simd_length_squared(d))))
    var t = minor.columns.0
    var result = minor.determinant

    minor.columns.0 = simd_make_float4(x, simd_length_squared(x))
    result -= minor.determinant

    swap(&minor.columns.1, &t)
    result += minor.determinant

    swap(&minor.columns.2, &t)
    result -= minor.determinant

    minor.columns.3 = t
    return result + minor.determinant
}

/// - Returns: A positive value when *x* is inside sphere on *a*, *b*, *c*, *d* positively-oriented coordinates, zero when *x* in on the spheres's edge, a negative value otherwise.
///            If *a*, *b*, *c*, *d* coordinates are negatively-oriented then the result is negated.
@inlinable
public func simd_insphere(_ x: simd_double3, _ a: simd_double3, _ b: simd_double3, _ c: simd_double3, _ d: simd_double3) -> Double {
    // Determinant-5x5-based equation of a circle is used.
    var minor = double4x4(columns: (simd_make_double4(a, simd_length_squared(a)),
                                    simd_make_double4(b, simd_length_squared(b)),
                                    simd_make_double4(c, simd_length_squared(c)),
                                    simd_make_double4(d, simd_length_squared(d))))
    var t = minor.columns.0
    var result = minor.determinant

    minor.columns.0 = simd_make_double4(x, simd_length_squared(x))
    result -= minor.determinant

    swap(&minor.columns.1, &t)
    result += minor.determinant

    swap(&minor.columns.2, &t)
    result -= minor.determinant

    minor.columns.3 = t
    return result + minor.determinant
}


// MARK: - simd_inverse

/// - Returns: The inverse of *q*.
@inlinable
public func simd_inverse(_ q: simd_quatf) -> simd_quatf { q.inverse }

/// - Returns: The inverse of *q*.
@inlinable
public func simd_inverse(_ q: simd_quatd) -> simd_quatd { q.inverse }

/// - Returns: Inverse of *x*.
@available(macOS 10.10, iOS 8.0, tvOS 10.0, watchOS 3.0, *)
@inlinable
public func simd_inverse(_ x: simd_float2x2) -> simd_float2x2 { x.inverse }

/// - Returns: Inverse of *x*.
@available(macOS 10.10, iOS 8.0, tvOS 10.0, watchOS 3.0, *)
@inlinable
public func simd_inverse(_ x: simd_float3x3) -> simd_float3x3 { x.inverse }

/// - Returns: Inverse of *x*.
@available(macOS 10.10, iOS 8.0, tvOS 10.0, watchOS 3.0, *)
@inlinable
public func simd_inverse(_ x: simd_float4x4) -> simd_float4x4 { x.inverse }

/// - Returns: Inverse of *x*.
@available(macOS 10.10, iOS 8.0, tvOS 10.0, watchOS 3.0, *)
@inlinable
public func simd_inverse(_ x: simd_double2x2) -> simd_double2x2 { x.inverse }

/// - Returns: Inverse of *x*.
@available(macOS 10.10, iOS 8.0, tvOS 10.0, watchOS 3.0, *)
@inlinable
public func simd_inverse(_ x: simd_double3x3) -> simd_double3x3 { x.inverse }

/// - Returns: Inverse of *x*.
@available(macOS 10.10, iOS 8.0, tvOS 10.0, watchOS 3.0, *)
@inlinable
public func simd_inverse(_ x: simd_double4x4) -> simd_double4x4 { x.inverse }


// MARK: - simd_length

/// - Returns: Length of *x* (sqrt(dot(x, x))).
///
/// - Note: This function calls ``kvSIMD/simd_fast_length(_:)-7tils`` if `-ffast-math` compiler flag is specified.
///         Otherwise ``kvSIMD/simd_precise_length(_:)-4tljp`` is called.
@inlinable
public func simd_length(_ x: simd_float2) -> Float {
#if __FAST_MATH__
    return simd_fast_length(x)
#else // !__FAST_MATH__
    return simd_precise_length(x)
#endif
}

/// - Returns: Length of *x* (sqrt(dot(x, x))).
///
/// - Note: This function calls ``kvSIMD/simd_fast_length(_:)-1gc7t`` if `-ffast-math` compiler flag is specified.
///         Otherwise ``kvSIMD/simd_precise_length(_:)-1el62`` is called.
@inlinable
public func simd_length(_ x: simd_float3) -> Float {
#if __FAST_MATH__
    return simd_fast_length(x)
#else // !__FAST_MATH__
    return simd_precise_length(x)
#endif
}

/// - Returns: Length of *x* (sqrt(dot(x, x))).
///
/// - Note: This function calls ``kvSIMD/simd_fast_length(_:)-65ik8`` if `-ffast-math` compiler flag is specified.
///         Otherwise ``kvSIMD/simd_precise_length(_:)-1g1lq`` is called.
@inlinable
public func simd_length(_ x: simd_float4) -> Float {
#if __FAST_MATH__
    return simd_fast_length(x)
#else // !__FAST_MATH__
    return simd_precise_length(x)
#endif
}

/// - Returns: Length of *x* (sqrt(dot(x, x))).
///
/// - Note: This function calls ``kvSIMD/simd_fast_length(_:)-4c4uu`` if `-ffast-math` compiler flag is specified.
///         Otherwise ``kvSIMD/simd_precise_length(_:)-7mhml`` is called.
@inlinable
public func simd_length(_ x: simd_float8) -> Float {
#if __FAST_MATH__
    return simd_fast_length(x)
#else // !__FAST_MATH__
    return simd_precise_length(x)
#endif
}

/// - Returns: Length of *x* (sqrt(dot(x, x))).
///
/// - Note: This function calls ``kvSIMD/simd_fast_length(_:)-6874v`` if `-ffast-math` compiler flag is specified.
///         Otherwise ``kvSIMD/simd_precise_length(_:)-64n98`` is called.
@inlinable
public func simd_length(_ x: simd_float16) -> Float {
#if __FAST_MATH__
    return simd_fast_length(x)
#else // !__FAST_MATH__
    return simd_precise_length(x)
#endif
}

/// - Returns: Length of *x* (sqrt(dot(x, x))).
///
/// - Note: This function calls ``kvSIMD/simd_fast_length(_:)-8u0dv`` if `-ffast-math` compiler flag is specified.
///         Otherwise ``kvSIMD/simd_precise_length(_:)-nmzt`` is called.
@inlinable
public func simd_length(_ x: simd_double2) -> Double {
#if __FAST_MATH__
    return simd_fast_length(x)
#else // !__FAST_MATH__
    return simd_precise_length(x)
#endif
}

/// - Returns: Length of *x* (sqrt(dot(x, x))).
///
/// - Note: This function calls ``kvSIMD/simd_fast_length(_:)-1u9s`` if `-ffast-math` compiler flag is specified.
///         Otherwise ``kvSIMD/simd_precise_length(_:)-67rav`` is called.
@inlinable
public func simd_length(_ x: simd_double3) -> Double {
#if __FAST_MATH__
    return simd_fast_length(x)
#else // !__FAST_MATH__
    return simd_precise_length(x)
#endif
}

/// - Returns: Length of *x* (sqrt(dot(x, x))).
///
/// - Note: This function calls ``kvSIMD/simd_fast_length(_:)-5ak0d`` if `-ffast-math` compiler flag is specified.
///         Otherwise ``kvSIMD/simd_precise_length(_:)-370pc`` is called.
@inlinable
public func simd_length(_ x: simd_double4) -> Double {
#if __FAST_MATH__
    return simd_fast_length(x)
#else // !__FAST_MATH__
    return simd_precise_length(x)
#endif
}

/// - Returns: Length of *x* (sqrt(dot(x, x))).
///
/// - Note: This function calls ``kvSIMD/simd_fast_length(_:)-2rupi`` if `-ffast-math` compiler flag is specified.
///         Otherwise ``kvSIMD/simd_precise_length(_:)-7u64v`` is called.
@inlinable
public func simd_length(_ x: simd_double8) -> Double {
#if __FAST_MATH__
    return simd_fast_length(x)
#else // !__FAST_MATH__
    return simd_precise_length(x)
#endif
}

/// - Returns: The length of *q*.
@inlinable
public func simd_length(_ q: simd_quatf) -> Float { q.length }

/// - Returns: The length of *q*.
@inlinable
public func simd_length(_ q: simd_quatd) -> Double { q.length }


// MARK: - simd_length_squared

/// - Returns: Squared length of *x* (dot(x, x)).
@inlinable
public func simd_length_squared(_ x: simd_float2) -> Float { simd_dot(x, x) }

/// - Returns: Squared length of *x* (dot(x, x)).
@inlinable
public func simd_length_squared(_ x: simd_float3) -> Float { simd_dot(x, x) }

/// - Returns: Squared length of *x* (dot(x, x)).
@inlinable
public func simd_length_squared(_ x: simd_float4) -> Float { simd_dot(x, x) }

/// - Returns: Squared length of *x* (dot(x, x)).
@inlinable
public func simd_length_squared(_ x: simd_float8) -> Float { simd_dot(x, x) }

/// - Returns: Squared length of *x* (dot(x, x)).
@inlinable
public func simd_length_squared(_ x: simd_float16) -> Float { simd_dot(x, x) }

/// - Returns: Squared length of *x* (dot(x, x)).
@inlinable
public func simd_length_squared(_ x: simd_double2) -> Double { simd_dot(x, x) }

/// - Returns: Squared length of *x* (dot(x, x)).
@inlinable
public func simd_length_squared(_ x: simd_double3) -> Double { simd_dot(x, x) }

/// - Returns: Squared length of *x* (dot(x, x)).
@inlinable
public func simd_length_squared(_ x: simd_double4) -> Double { simd_dot(x, x) }

/// - Returns: Squared length of *x* (dot(x, x)).
@inlinable
public func simd_length_squared(_ x: simd_double8) -> Double { simd_dot(x, x) }


// MARK: - simd_linear_combination

/// - Returns: `a * x + b * y`.
@inlinable
public func simd_linear_combination(_ a: Float, _ x: simd_float2x2, _ b: Float, _ y: simd_float2x2) -> simd_float2x2 { (a * x) as simd_float2x2 + (b * y) as simd_float2x2 }

/// - Returns: `a * x + b * y`.
@inlinable
public func simd_linear_combination(_ a: Float, _ x: simd_float3x2, _ b: Float, _ y: simd_float3x2) -> simd_float3x2 { (a * x) as simd_float3x2 + (b * y) as simd_float3x2 }

/// - Returns: `a * x + b * y`.
@inlinable
public func simd_linear_combination(_ a: Float, _ x: simd_float4x2, _ b: Float, _ y: simd_float4x2) -> simd_float4x2 { (a * x) as simd_float4x2 + (b * y) as simd_float4x2 }

/// - Returns: `a * x + b * y`.
@inlinable
public func simd_linear_combination(_ a: Float, _ x: simd_float2x3, _ b: Float, _ y: simd_float2x3) -> simd_float2x3 { (a * x) as simd_float2x3 + (b * y) as simd_float2x3 }

/// - Returns: `a * x + b * y`.
@inlinable
public func simd_linear_combination(_ a: Float, _ x: simd_float3x3, _ b: Float, _ y: simd_float3x3) -> simd_float3x3 { (a * x) as simd_float3x3 + (b * y) as simd_float3x3 }

/// - Returns: `a * x + b * y`.
@inlinable
public func simd_linear_combination(_ a: Float, _ x: simd_float4x3, _ b: Float, _ y: simd_float4x3) -> simd_float4x3 { (a * x) as simd_float4x3 + (b * y) as simd_float4x3 }

/// - Returns: `a * x + b * y`.
@inlinable
public func simd_linear_combination(_ a: Float, _ x: simd_float2x4, _ b: Float, _ y: simd_float2x4) -> simd_float2x4 { (a * x) as simd_float2x4 + (b * y) as simd_float2x4 }

/// - Returns: `a * x + b * y`.
@inlinable
public func simd_linear_combination(_ a: Float, _ x: simd_float3x4, _ b: Float, _ y: simd_float3x4) -> simd_float3x4 { (a * x) as simd_float3x4 + (b * y) as simd_float3x4 }

/// - Returns: `a * x + b * y`.
@inlinable
public func simd_linear_combination(_ a: Float, _ x: simd_float4x4, _ b: Float, _ y: simd_float4x4) -> simd_float4x4 { (a * x) as simd_float4x4 + (b * y) as simd_float4x4 }

/// - Returns: `a * x + b * y`.
@inlinable
public func simd_linear_combination(_ a: Double, _ x: simd_double2x2, _ b: Double, _ y: simd_double2x2) -> simd_double2x2 { (a * x) as simd_double2x2 + (b * y) as simd_double2x2 }

/// - Returns: `a * x + b * y`.
@inlinable
public func simd_linear_combination(_ a: Double, _ x: simd_double3x2, _ b: Double, _ y: simd_double3x2) -> simd_double3x2 { (a * x) as simd_double3x2 + (b * y) as simd_double3x2 }

/// - Returns: `a * x + b * y`.
@inlinable
public func simd_linear_combination(_ a: Double, _ x: simd_double4x2, _ b: Double, _ y: simd_double4x2) -> simd_double4x2 { (a * x) as simd_double4x2 + (b * y) as simd_double4x2 }

/// - Returns: `a * x + b * y`.
@inlinable
public func simd_linear_combination(_ a: Double, _ x: simd_double2x3, _ b: Double, _ y: simd_double2x3) -> simd_double2x3 { (a * x) as simd_double2x3 + (b * y) as simd_double2x3 }

/// - Returns: `a * x + b * y`.
@inlinable
public func simd_linear_combination(_ a: Double, _ x: simd_double3x3, _ b: Double, _ y: simd_double3x3) -> simd_double3x3 { (a * x) as simd_double3x3 + (b * y) as simd_double3x3 }

/// - Returns: `a * x + b * y`.
@inlinable
public func simd_linear_combination(_ a: Double, _ x: simd_double4x3, _ b: Double, _ y: simd_double4x3) -> simd_double4x3 { (a * x) as simd_double4x3 + (b * y) as simd_double4x3 }

/// - Returns: `a * x + b * y`.
@inlinable
public func simd_linear_combination(_ a: Double, _ x: simd_double2x4, _ b: Double, _ y: simd_double2x4) -> simd_double2x4 { (a * x) as simd_double2x4 + (b * y) as simd_double2x4 }

/// - Returns: `a * x + b * y`.
@inlinable
public func simd_linear_combination(_ a: Double, _ x: simd_double3x4, _ b: Double, _ y: simd_double3x4) -> simd_double3x4 { (a * x) as simd_double3x4 + (b * y) as simd_double3x4 }

/// - Returns: `a * x + b * y`.
@inlinable
public func simd_linear_combination(_ a: Double, _ x: simd_double4x4, _ b: Double, _ y: simd_double4x4) -> simd_double4x4 { (a * x) as simd_double4x4 + (b * y) as simd_double4x4 }


// MARK: - simd_max

@inline(__always)
@usableFromInline
internal func __max_c(_ x: simd_char1, _ y: simd_char1) -> simd_char1 { x <= y ? y : x }

/// - Returns: Elementwise maximum of *x* and *y*.
@inlinable
public func simd_max(_ x: simd_char2, _ y: simd_char2) -> simd_char2 {
    .init(__max_c(x.x, y.x), __max_c(x.y, y.y))
}

/// - Returns: Elementwise maximum of *x* and *y*.
@inlinable
public func simd_max(_ x: simd_char3, _ y: simd_char3) -> simd_char3 {
    .init(__max_c(x.x, y.x), __max_c(x.y, y.y), __max_c(x.z, y.z))
}

/// - Returns: Elementwise maximum of *x* and *y*.
@inlinable
public func simd_max(_ x: simd_char4, _ y: simd_char4) -> simd_char4 {
    .init(__max_c(x.x, y.x), __max_c(x.y, y.y), __max_c(x.z, y.z), __max_c(x.w, y.w))
}

/// - Returns: Elementwise maximum of *x* and *y*.
@inlinable
public func simd_max(_ x: simd_char8, _ y: simd_char8) -> simd_char8 {
    .init(__max_c(x[0], y[0]), __max_c(x[1], y[1]), __max_c(x[2], y[2]), __max_c(x[3], y[3]),
          __max_c(x[4], y[4]), __max_c(x[5], y[5]), __max_c(x[6], y[6]), __max_c(x[7], y[7]))
}

/// - Returns: Elementwise maximum of *x* and *y*.
@inlinable
public func simd_max(_ x: simd_char16, _ y: simd_char16) -> simd_char16 {
    .init(__max_c(x[ 0], y[ 0]), __max_c(x[ 1], y[ 1]), __max_c(x[ 2], y[ 2]), __max_c(x[ 3], y[ 3]),
          __max_c(x[ 4], y[ 4]), __max_c(x[ 5], y[ 5]), __max_c(x[ 6], y[ 6]), __max_c(x[ 7], y[ 7]),
          __max_c(x[ 8], y[ 8]), __max_c(x[ 9], y[ 9]), __max_c(x[10], y[10]), __max_c(x[11], y[11]),
          __max_c(x[12], y[12]), __max_c(x[13], y[13]), __max_c(x[14], y[14]), __max_c(x[15], y[15]))
}

/// - Returns: Elementwise maximum of *x* and *y*.
@inlinable
public func simd_max(_ x: simd_char32, _ y: simd_char32) -> simd_char32 {
    .init(__max_c(x[ 0], y[ 0]), __max_c(x[ 1], y[ 1]), __max_c(x[ 2], y[ 2]), __max_c(x[ 3], y[ 3]),
          __max_c(x[ 4], y[ 4]), __max_c(x[ 5], y[ 5]), __max_c(x[ 6], y[ 6]), __max_c(x[ 7], y[ 7]),
          __max_c(x[ 8], y[ 8]), __max_c(x[ 9], y[ 9]), __max_c(x[10], y[10]), __max_c(x[11], y[11]),
          __max_c(x[12], y[12]), __max_c(x[13], y[13]), __max_c(x[14], y[14]), __max_c(x[15], y[15]),
          __max_c(x[16], y[16]), __max_c(x[17], y[17]), __max_c(x[18], y[18]), __max_c(x[19], y[19]),
          __max_c(x[20], y[20]), __max_c(x[21], y[21]), __max_c(x[22], y[22]), __max_c(x[23], y[23]),
          __max_c(x[24], y[24]), __max_c(x[25], y[25]), __max_c(x[26], y[26]), __max_c(x[27], y[27]),
          __max_c(x[28], y[28]), __max_c(x[29], y[29]), __max_c(x[30], y[30]), __max_c(x[31], y[31]))
}

/// - Returns: Elementwise maximum of *x* and *y*.
@inlinable
public func simd_max(_ x: simd_char64, _ y: simd_char64) -> simd_char64 {
    .init(__max_c(x[ 0], y[ 0]), __max_c(x[ 1], y[ 1]), __max_c(x[ 2], y[ 2]), __max_c(x[ 3], y[ 3]),
          __max_c(x[ 4], y[ 4]), __max_c(x[ 5], y[ 5]), __max_c(x[ 6], y[ 6]), __max_c(x[ 7], y[ 7]),
          __max_c(x[ 8], y[ 8]), __max_c(x[ 9], y[ 9]), __max_c(x[10], y[10]), __max_c(x[11], y[11]),
          __max_c(x[12], y[12]), __max_c(x[13], y[13]), __max_c(x[14], y[14]), __max_c(x[15], y[15]),
          __max_c(x[16], y[16]), __max_c(x[17], y[17]), __max_c(x[18], y[18]), __max_c(x[19], y[19]),
          __max_c(x[20], y[20]), __max_c(x[21], y[21]), __max_c(x[22], y[22]), __max_c(x[23], y[23]),
          __max_c(x[24], y[24]), __max_c(x[25], y[25]), __max_c(x[26], y[26]), __max_c(x[27], y[27]),
          __max_c(x[28], y[28]), __max_c(x[29], y[29]), __max_c(x[30], y[30]), __max_c(x[31], y[31]),
          __max_c(x[32], y[32]), __max_c(x[33], y[33]), __max_c(x[34], y[34]), __max_c(x[35], y[35]),
          __max_c(x[36], y[36]), __max_c(x[37], y[37]), __max_c(x[38], y[38]), __max_c(x[39], y[39]),
          __max_c(x[40], y[40]), __max_c(x[41], y[41]), __max_c(x[42], y[42]), __max_c(x[43], y[43]),
          __max_c(x[44], y[44]), __max_c(x[45], y[45]), __max_c(x[46], y[46]), __max_c(x[47], y[47]),
          __max_c(x[48], y[48]), __max_c(x[49], y[49]), __max_c(x[50], y[50]), __max_c(x[51], y[51]),
          __max_c(x[52], y[52]), __max_c(x[53], y[53]), __max_c(x[54], y[54]), __max_c(x[55], y[55]),
          __max_c(x[56], y[56]), __max_c(x[57], y[57]), __max_c(x[58], y[58]), __max_c(x[59], y[59]),
          __max_c(x[60], y[60]), __max_c(x[61], y[61]), __max_c(x[62], y[62]), __max_c(x[63], y[63]))
}

@inline(__always)
@usableFromInline
internal func __max_uc(_ x: simd_uchar1, _ y: simd_uchar1) -> simd_uchar1 { x <= y ? y : x }

/// - Returns: Elementwise maximum of *x* and *y*.
@inlinable
public func simd_max(_ x: simd_uchar2, _ y: simd_uchar2) -> simd_uchar2 {
    .init(__max_uc(x.x, y.x), __max_uc(x.y, y.y))
}

/// - Returns: Elementwise maximum of *x* and *y*.
@inlinable
public func simd_max(_ x: simd_uchar3, _ y: simd_uchar3) -> simd_uchar3 {
    .init(__max_uc(x.x, y.x), __max_uc(x.y, y.y), __max_uc(x.z, y.z))
}

/// - Returns: Elementwise maximum of *x* and *y*.
@inlinable
public func simd_max(_ x: simd_uchar4, _ y: simd_uchar4) -> simd_uchar4 {
    .init(__max_uc(x.x, y.x), __max_uc(x.y, y.y), __max_uc(x.z, y.z), __max_uc(x.w, y.w))
}

/// - Returns: Elementwise maximum of *x* and *y*.
@inlinable
public func simd_max(_ x: simd_uchar8, _ y: simd_uchar8) -> simd_uchar8 {
    .init(__max_uc(x[0], y[0]), __max_uc(x[1], y[1]), __max_uc(x[2], y[2]), __max_uc(x[3], y[3]),
          __max_uc(x[4], y[4]), __max_uc(x[5], y[5]), __max_uc(x[6], y[6]), __max_uc(x[7], y[7]))
}

/// - Returns: Elementwise maximum of *x* and *y*.
@inlinable
public func simd_max(_ x: simd_uchar16, _ y: simd_uchar16) -> simd_uchar16 {
    .init(__max_uc(x[ 0], y[ 0]), __max_uc(x[ 1], y[ 1]), __max_uc(x[ 2], y[ 2]), __max_uc(x[ 3], y[ 3]),
          __max_uc(x[ 4], y[ 4]), __max_uc(x[ 5], y[ 5]), __max_uc(x[ 6], y[ 6]), __max_uc(x[ 7], y[ 7]),
          __max_uc(x[ 8], y[ 8]), __max_uc(x[ 9], y[ 9]), __max_uc(x[10], y[10]), __max_uc(x[11], y[11]),
          __max_uc(x[12], y[12]), __max_uc(x[13], y[13]), __max_uc(x[14], y[14]), __max_uc(x[15], y[15]))
}

/// - Returns: Elementwise maximum of *x* and *y*.
@inlinable
public func simd_max(_ x: simd_uchar32, _ y: simd_uchar32) -> simd_uchar32 {
    .init(__max_uc(x[ 0], y[ 0]), __max_uc(x[ 1], y[ 1]), __max_uc(x[ 2], y[ 2]), __max_uc(x[ 3], y[ 3]),
          __max_uc(x[ 4], y[ 4]), __max_uc(x[ 5], y[ 5]), __max_uc(x[ 6], y[ 6]), __max_uc(x[ 7], y[ 7]),
          __max_uc(x[ 8], y[ 8]), __max_uc(x[ 9], y[ 9]), __max_uc(x[10], y[10]), __max_uc(x[11], y[11]),
          __max_uc(x[12], y[12]), __max_uc(x[13], y[13]), __max_uc(x[14], y[14]), __max_uc(x[15], y[15]),
          __max_uc(x[16], y[16]), __max_uc(x[17], y[17]), __max_uc(x[18], y[18]), __max_uc(x[19], y[19]),
          __max_uc(x[20], y[20]), __max_uc(x[21], y[21]), __max_uc(x[22], y[22]), __max_uc(x[23], y[23]),
          __max_uc(x[24], y[24]), __max_uc(x[25], y[25]), __max_uc(x[26], y[26]), __max_uc(x[27], y[27]),
          __max_uc(x[28], y[28]), __max_uc(x[29], y[29]), __max_uc(x[30], y[30]), __max_uc(x[31], y[31]))
}

/// - Returns: Elementwise maximum of *x* and *y*.
@inlinable
public func simd_max(_ x: simd_uchar64, _ y: simd_uchar64) -> simd_uchar64 {
    .init(__max_uc(x[ 0], y[ 0]), __max_uc(x[ 1], y[ 1]), __max_uc(x[ 2], y[ 2]), __max_uc(x[ 3], y[ 3]),
          __max_uc(x[ 4], y[ 4]), __max_uc(x[ 5], y[ 5]), __max_uc(x[ 6], y[ 6]), __max_uc(x[ 7], y[ 7]),
          __max_uc(x[ 8], y[ 8]), __max_uc(x[ 9], y[ 9]), __max_uc(x[10], y[10]), __max_uc(x[11], y[11]),
          __max_uc(x[12], y[12]), __max_uc(x[13], y[13]), __max_uc(x[14], y[14]), __max_uc(x[15], y[15]),
          __max_uc(x[16], y[16]), __max_uc(x[17], y[17]), __max_uc(x[18], y[18]), __max_uc(x[19], y[19]),
          __max_uc(x[20], y[20]), __max_uc(x[21], y[21]), __max_uc(x[22], y[22]), __max_uc(x[23], y[23]),
          __max_uc(x[24], y[24]), __max_uc(x[25], y[25]), __max_uc(x[26], y[26]), __max_uc(x[27], y[27]),
          __max_uc(x[28], y[28]), __max_uc(x[29], y[29]), __max_uc(x[30], y[30]), __max_uc(x[31], y[31]),
          __max_uc(x[32], y[32]), __max_uc(x[33], y[33]), __max_uc(x[34], y[34]), __max_uc(x[35], y[35]),
          __max_uc(x[36], y[36]), __max_uc(x[37], y[37]), __max_uc(x[38], y[38]), __max_uc(x[39], y[39]),
          __max_uc(x[40], y[40]), __max_uc(x[41], y[41]), __max_uc(x[42], y[42]), __max_uc(x[43], y[43]),
          __max_uc(x[44], y[44]), __max_uc(x[45], y[45]), __max_uc(x[46], y[46]), __max_uc(x[47], y[47]),
          __max_uc(x[48], y[48]), __max_uc(x[49], y[49]), __max_uc(x[50], y[50]), __max_uc(x[51], y[51]),
          __max_uc(x[52], y[52]), __max_uc(x[53], y[53]), __max_uc(x[54], y[54]), __max_uc(x[55], y[55]),
          __max_uc(x[56], y[56]), __max_uc(x[57], y[57]), __max_uc(x[58], y[58]), __max_uc(x[59], y[59]),
          __max_uc(x[60], y[60]), __max_uc(x[61], y[61]), __max_uc(x[62], y[62]), __max_uc(x[63], y[63]))
}

@inline(__always)
@usableFromInline
internal func __max_s(_ x: simd_short1, _ y: simd_short1) -> simd_short1 { x <= y ? y : x }

/// - Returns: Elementwise maximum of *x* and *y*.
@inlinable
public func simd_max(_ x: simd_short2, _ y: simd_short2) -> simd_short2 {
    .init(__max_s(x.x, y.x), __max_s(x.y, y.y))
}

/// - Returns: Elementwise maximum of *x* and *y*.
@inlinable
public func simd_max(_ x: simd_short3, _ y: simd_short3) -> simd_short3 {
    .init(__max_s(x.x, y.x), __max_s(x.y, y.y), __max_s(x.z, y.z))
}

/// - Returns: Elementwise maximum of *x* and *y*.
@inlinable
public func simd_max(_ x: simd_short4, _ y: simd_short4) -> simd_short4 {
    .init(__max_s(x.x, y.x), __max_s(x.y, y.y), __max_s(x.z, y.z), __max_s(x.w, y.w))
}

/// - Returns: Elementwise maximum of *x* and *y*.
@inlinable
public func simd_max(_ x: simd_short8, _ y: simd_short8) -> simd_short8 {
    .init(__max_s(x[0], y[0]), __max_s(x[1], y[1]), __max_s(x[2], y[2]), __max_s(x[3], y[3]),
          __max_s(x[4], y[4]), __max_s(x[5], y[5]), __max_s(x[6], y[6]), __max_s(x[7], y[7]))
}

/// - Returns: Elementwise maximum of *x* and *y*.
@inlinable
public func simd_max(_ x: simd_short16, _ y: simd_short16) -> simd_short16 {
    .init(__max_s(x[ 0], y[ 0]), __max_s(x[ 1], y[ 1]), __max_s(x[ 2], y[ 2]), __max_s(x[ 3], y[ 3]),
          __max_s(x[ 4], y[ 4]), __max_s(x[ 5], y[ 5]), __max_s(x[ 6], y[ 6]), __max_s(x[ 7], y[ 7]),
          __max_s(x[ 8], y[ 8]), __max_s(x[ 9], y[ 9]), __max_s(x[10], y[10]), __max_s(x[11], y[11]),
          __max_s(x[12], y[12]), __max_s(x[13], y[13]), __max_s(x[14], y[14]), __max_s(x[15], y[15]))
}

/// - Returns: Elementwise maximum of *x* and *y*.
@inlinable
public func simd_max(_ x: simd_short32, _ y: simd_short32) -> simd_short32 {
    .init(__max_s(x[ 0], y[ 0]), __max_s(x[ 1], y[ 1]), __max_s(x[ 2], y[ 2]), __max_s(x[ 3], y[ 3]),
          __max_s(x[ 4], y[ 4]), __max_s(x[ 5], y[ 5]), __max_s(x[ 6], y[ 6]), __max_s(x[ 7], y[ 7]),
          __max_s(x[ 8], y[ 8]), __max_s(x[ 9], y[ 9]), __max_s(x[10], y[10]), __max_s(x[11], y[11]),
          __max_s(x[12], y[12]), __max_s(x[13], y[13]), __max_s(x[14], y[14]), __max_s(x[15], y[15]),
          __max_s(x[16], y[16]), __max_s(x[17], y[17]), __max_s(x[18], y[18]), __max_s(x[19], y[19]),
          __max_s(x[20], y[20]), __max_s(x[21], y[21]), __max_s(x[22], y[22]), __max_s(x[23], y[23]),
          __max_s(x[24], y[24]), __max_s(x[25], y[25]), __max_s(x[26], y[26]), __max_s(x[27], y[27]),
          __max_s(x[28], y[28]), __max_s(x[29], y[29]), __max_s(x[30], y[30]), __max_s(x[31], y[31]))
}

@inline(__always)
@usableFromInline
internal func __max_us(_ x: simd_ushort1, _ y: simd_ushort1) -> simd_ushort1 { x <= y ? y : x }

/// - Returns: Elementwise maximum of *x* and *y*.
@inlinable
public func simd_max(_ x: simd_ushort2, _ y: simd_ushort2) -> simd_ushort2 {
    .init(__max_us(x.x, y.x), __max_us(x.y, y.y))
}

/// - Returns: Elementwise maximum of *x* and *y*.
@inlinable
public func simd_max(_ x: simd_ushort3, _ y: simd_ushort3) -> simd_ushort3 {
    .init(__max_us(x.x, y.x), __max_us(x.y, y.y), __max_us(x.z, y.z))
}

/// - Returns: Elementwise maximum of *x* and *y*.
@inlinable
public func simd_max(_ x: simd_ushort4, _ y: simd_ushort4) -> simd_ushort4 {
    .init(__max_us(x.x, y.x), __max_us(x.y, y.y), __max_us(x.z, y.z), __max_us(x.w, y.w))
}

/// - Returns: Elementwise maximum of *x* and *y*.
@inlinable
public func simd_max(_ x: simd_ushort8, _ y: simd_ushort8) -> simd_ushort8 {
    .init(__max_us(x[0], y[0]), __max_us(x[1], y[1]), __max_us(x[2], y[2]), __max_us(x[3], y[3]),
          __max_us(x[4], y[4]), __max_us(x[5], y[5]), __max_us(x[6], y[6]), __max_us(x[7], y[7]))
}

/// - Returns: Elementwise maximum of *x* and *y*.
@inlinable
public func simd_max(_ x: simd_ushort16, _ y: simd_ushort16) -> simd_ushort16 {
    .init(__max_us(x[ 0], y[ 0]), __max_us(x[ 1], y[ 1]), __max_us(x[ 2], y[ 2]), __max_us(x[ 3], y[ 3]),
          __max_us(x[ 4], y[ 4]), __max_us(x[ 5], y[ 5]), __max_us(x[ 6], y[ 6]), __max_us(x[ 7], y[ 7]),
          __max_us(x[ 8], y[ 8]), __max_us(x[ 9], y[ 9]), __max_us(x[10], y[10]), __max_us(x[11], y[11]),
          __max_us(x[12], y[12]), __max_us(x[13], y[13]), __max_us(x[14], y[14]), __max_us(x[15], y[15]))
}

/// - Returns: Elementwise maximum of *x* and *y*.
@inlinable
public func simd_max(_ x: simd_ushort32, _ y: simd_ushort32) -> simd_ushort32 {
    .init(__max_us(x[ 0], y[ 0]), __max_us(x[ 1], y[ 1]), __max_us(x[ 2], y[ 2]), __max_us(x[ 3], y[ 3]),
          __max_us(x[ 4], y[ 4]), __max_us(x[ 5], y[ 5]), __max_us(x[ 6], y[ 6]), __max_us(x[ 7], y[ 7]),
          __max_us(x[ 8], y[ 8]), __max_us(x[ 9], y[ 9]), __max_us(x[10], y[10]), __max_us(x[11], y[11]),
          __max_us(x[12], y[12]), __max_us(x[13], y[13]), __max_us(x[14], y[14]), __max_us(x[15], y[15]),
          __max_us(x[16], y[16]), __max_us(x[17], y[17]), __max_us(x[18], y[18]), __max_us(x[19], y[19]),
          __max_us(x[20], y[20]), __max_us(x[21], y[21]), __max_us(x[22], y[22]), __max_us(x[23], y[23]),
          __max_us(x[24], y[24]), __max_us(x[25], y[25]), __max_us(x[26], y[26]), __max_us(x[27], y[27]),
          __max_us(x[28], y[28]), __max_us(x[29], y[29]), __max_us(x[30], y[30]), __max_us(x[31], y[31]))
}

@inline(__always)
@usableFromInline
internal func __max_i(_ x: simd_int1, _ y: simd_int1) -> simd_int1 { x <= y ? y : x }

/// - Returns: Elementwise maximum of *x* and *y*.
@inlinable
public func simd_max(_ x: simd_int2, _ y: simd_int2) -> simd_int2 {
    .init(__max_i(x.x, y.x), __max_i(x.y, y.y))
}

/// - Returns: Elementwise maximum of *x* and *y*.
@inlinable
public func simd_max(_ x: simd_int3, _ y: simd_int3) -> simd_int3 {
    .init(__max_i(x.x, y.x), __max_i(x.y, y.y), __max_i(x.z, y.z))
}

/// - Returns: Elementwise maximum of *x* and *y*.
@inlinable
public func simd_max(_ x: simd_int4, _ y: simd_int4) -> simd_int4 {
    .init(__max_i(x.x, y.x), __max_i(x.y, y.y), __max_i(x.z, y.z), __max_i(x.w, y.w))
}

/// - Returns: Elementwise maximum of *x* and *y*.
@inlinable
public func simd_max(_ x: simd_int8, _ y: simd_int8) -> simd_int8 {
    .init(__max_i(x[0], y[0]), __max_i(x[1], y[1]), __max_i(x[2], y[2]), __max_i(x[3], y[3]),
          __max_i(x[4], y[4]), __max_i(x[5], y[5]), __max_i(x[6], y[6]), __max_i(x[7], y[7]))
}

/// - Returns: Elementwise maximum of *x* and *y*.
@inlinable
public func simd_max(_ x: simd_int16, _ y: simd_int16) -> simd_int16 {
    .init(__max_i(x[ 0], y[ 0]), __max_i(x[ 1], y[ 1]), __max_i(x[ 2], y[ 2]), __max_i(x[ 3], y[ 3]),
          __max_i(x[ 4], y[ 4]), __max_i(x[ 5], y[ 5]), __max_i(x[ 6], y[ 6]), __max_i(x[ 7], y[ 7]),
          __max_i(x[ 8], y[ 8]), __max_i(x[ 9], y[ 9]), __max_i(x[10], y[10]), __max_i(x[11], y[11]),
          __max_i(x[12], y[12]), __max_i(x[13], y[13]), __max_i(x[14], y[14]), __max_i(x[15], y[15]))
}

@inline(__always)
@usableFromInline
internal func __max_ui(_ x: simd_uint1, _ y: simd_uint1) -> simd_uint1 { x <= y ? y : x }

/// - Returns: Elementwise maximum of *x* and *y*.
@inlinable
public func simd_max(_ x: simd_uint2, _ y: simd_uint2) -> simd_uint2 {
    .init(__max_ui(x.x, y.x), __max_ui(x.y, y.y))
}

/// - Returns: Elementwise maximum of *x* and *y*.
@inlinable
public func simd_max(_ x: simd_uint3, _ y: simd_uint3) -> simd_uint3 {
    .init(__max_ui(x.x, y.x), __max_ui(x.y, y.y), __max_ui(x.z, y.z))
}

/// - Returns: Elementwise maximum of *x* and *y*.
@inlinable
public func simd_max(_ x: simd_uint4, _ y: simd_uint4) -> simd_uint4 {
    .init(__max_ui(x.x, y.x), __max_ui(x.y, y.y), __max_ui(x.z, y.z), __max_ui(x.w, y.w))
}

/// - Returns: Elementwise maximum of *x* and *y*.
@inlinable
public func simd_max(_ x: simd_uint8, _ y: simd_uint8) -> simd_uint8 {
    .init(__max_ui(x[0], y[0]), __max_ui(x[1], y[1]), __max_ui(x[2], y[2]), __max_ui(x[3], y[3]),
          __max_ui(x[4], y[4]), __max_ui(x[5], y[5]), __max_ui(x[6], y[6]), __max_ui(x[7], y[7]))
}

/// - Returns: Elementwise maximum of *x* and *y*.
@inlinable
public func simd_max(_ x: simd_uint16, _ y: simd_uint16) -> simd_uint16 {
    .init(__max_ui(x[ 0], y[ 0]), __max_ui(x[ 1], y[ 1]), __max_ui(x[ 2], y[ 2]), __max_ui(x[ 3], y[ 3]),
          __max_ui(x[ 4], y[ 4]), __max_ui(x[ 5], y[ 5]), __max_ui(x[ 6], y[ 6]), __max_ui(x[ 7], y[ 7]),
          __max_ui(x[ 8], y[ 8]), __max_ui(x[ 9], y[ 9]), __max_ui(x[10], y[10]), __max_ui(x[11], y[11]),
          __max_ui(x[12], y[12]), __max_ui(x[13], y[13]), __max_ui(x[14], y[14]), __max_ui(x[15], y[15]))
}

@inline(__always)
@usableFromInline
internal func __max_l(_ x: simd_long1, _ y: simd_long1) -> simd_long1 { x <= y ? y : x }

/// - Returns: Elementwise maximum of *x* and *y*.
@inlinable
public func simd_max(_ x: simd_long2, _ y: simd_long2) -> simd_long2 {
    .init(__max_l(x.x, y.x), __max_l(x.y, y.y))
}

/// - Returns: Elementwise maximum of *x* and *y*.
@inlinable
public func simd_max(_ x: simd_long3, _ y: simd_long3) -> simd_long3 {
    .init(__max_l(x.x, y.x), __max_l(x.y, y.y), __max_l(x.z, y.z))
}

/// - Returns: Elementwise maximum of *x* and *y*.
@inlinable
public func simd_max(_ x: simd_long4, _ y: simd_long4) -> simd_long4 {
    .init(__max_l(x.x, y.x), __max_l(x.y, y.y), __max_l(x.z, y.z), __max_l(x.w, y.w))
}

/// - Returns: Elementwise maximum of *x* and *y*.
@inlinable
public func simd_max(_ x: simd_long8, _ y: simd_long8) -> simd_long8 {
    .init(__max_l(x[0], y[0]), __max_l(x[1], y[1]), __max_l(x[2], y[2]), __max_l(x[3], y[3]),
          __max_l(x[4], y[4]), __max_l(x[5], y[5]), __max_l(x[6], y[6]), __max_l(x[7], y[7]))
}

@inline(__always)
@usableFromInline
internal func __max_ul(_ x: simd_ulong1, _ y: simd_ulong1) -> simd_ulong1 { x <= y ? y : x }

/// - Returns: Elementwise maximum of *x* and *y*.
@inlinable
public func simd_max(_ x: simd_ulong2, _ y: simd_ulong2) -> simd_ulong2 {
    .init(__max_ul(x.x, y.x), __max_ul(x.y, y.y))
}

/// - Returns: Elementwise maximum of *x* and *y*.
@inlinable
public func simd_max(_ x: simd_ulong3, _ y: simd_ulong3) -> simd_ulong3 {
    .init(__max_ul(x.x, y.x), __max_ul(x.y, y.y), __max_ul(x.z, y.z))
}

/// - Returns: Elementwise maximum of *x* and *y*.
@inlinable
public func simd_max(_ x: simd_ulong4, _ y: simd_ulong4) -> simd_ulong4 {
    .init(__max_ul(x.x, y.x), __max_ul(x.y, y.y), __max_ul(x.z, y.z), __max_ul(x.w, y.w))
}

/// - Returns: Elementwise maximum of *x* and *y*.
@inlinable
public func simd_max(_ x: simd_ulong8, _ y: simd_ulong8) -> simd_ulong8 {
    .init(__max_ul(x[0], y[0]), __max_ul(x[1], y[1]), __max_ul(x[2], y[2]), __max_ul(x[3], y[3]),
          __max_ul(x[4], y[4]), __max_ul(x[5], y[5]), __max_ul(x[6], y[6]), __max_ul(x[7], y[7]))
}

@inline(__always)
@usableFromInline
internal func __max_f(_ x: Float, _ y: Float) -> Float { x <= y ? y : x }

/// - Returns: Elementwise maximum of *x* and *y*.
@inlinable
public func simd_max(_ x: Float, _ y: Float) -> Float { __max_f(x, y) }

/// - Returns: Elementwise maximum of *x* and *y*.
@inlinable
public func simd_max(_ x: simd_float2, _ y: simd_float2) -> simd_float2 {
    .init(__max_f(x.x, y.x), __max_f(x.y, y.y))
}

/// - Returns: Elementwise maximum of *x* and *y*.
@inlinable
public func simd_max(_ x: simd_float3, _ y: simd_float3) -> simd_float3 {
    .init(__max_f(x.x, y.x), __max_f(x.y, y.y), __max_f(x.z, y.z))
}

/// - Returns: Elementwise maximum of *x* and *y*.
@inlinable
public func simd_max(_ x: simd_float4, _ y: simd_float4) -> simd_float4 {
    .init(__max_f(x.x, y.x), __max_f(x.y, y.y), __max_f(x.z, y.z), __max_f(x.w, y.w))
}

/// - Returns: Elementwise maximum of *x* and *y*.
@inlinable
public func simd_max(_ x: simd_float8, _ y: simd_float8) -> simd_float8 {
    .init(__max_f(x[0], y[0]), __max_f(x[1], y[1]), __max_f(x[2], y[2]), __max_f(x[3], y[3]),
          __max_f(x[4], y[4]), __max_f(x[5], y[5]), __max_f(x[6], y[6]), __max_f(x[7], y[7]))
}

/// - Returns: Elementwise maximum of *x* and *y*.
@inlinable
public func simd_max(_ x: simd_float16, _ y: simd_float16) -> simd_float16 {
    .init(__max_f(x[ 0], y[ 0]), __max_f(x[ 1], y[ 1]), __max_f(x[ 2], y[ 2]), __max_f(x[ 3], y[ 3]),
          __max_f(x[ 4], y[ 4]), __max_f(x[ 5], y[ 5]), __max_f(x[ 6], y[ 6]), __max_f(x[ 7], y[ 7]),
          __max_f(x[ 8], y[ 8]), __max_f(x[ 9], y[ 9]), __max_f(x[10], y[10]), __max_f(x[11], y[11]),
          __max_f(x[12], y[12]), __max_f(x[13], y[13]), __max_f(x[14], y[14]), __max_f(x[15], y[15]))
}

@inline(__always)
@usableFromInline
internal func __max_d(_ x: Double, _ y: Double) -> Double { x <= y ? y : x }

/// - Returns: Elementwise maximum of *x* and *y*.
@inlinable
public func simd_max(_ x: Double, _ y: Double) -> Double { __max_d(x, y) }

/// - Returns: Elementwise maximum of *x* and *y*.
@inlinable
public func simd_max(_ x: simd_double2, _ y: simd_double2) -> simd_double2 {
    .init(__max_d(x.x, y.x), __max_d(x.y, y.y))
}

/// - Returns: Elementwise maximum of *x* and *y*.
@inlinable
public func simd_max(_ x: simd_double3, _ y: simd_double3) -> simd_double3 {
    .init(__max_d(x.x, y.x), __max_d(x.y, y.y), __max_d(x.z, y.z))
}

/// - Returns: Elementwise maximum of *x* and *y*.
@inlinable
public func simd_max(_ x: simd_double4, _ y: simd_double4) -> simd_double4 {
    .init(__max_d(x.x, y.x), __max_d(x.y, y.y), __max_d(x.z, y.z), __max_d(x.w, y.w))
}

/// - Returns: Elementwise maximum of *x* and *y*.
@inlinable
public func simd_max(_ x: simd_double8, _ y: simd_double8) -> simd_double8 {
    .init(__max_d(x[0], y[0]), __max_d(x[1], y[1]), __max_d(x[2], y[2]), __max_d(x[3], y[3]),
          __max_d(x[4], y[4]), __max_d(x[5], y[5]), __max_d(x[6], y[6]), __max_d(x[7], y[7]))
}


// MARK: - simd_min

@inline(__always)
@usableFromInline
internal func __min_c(_ x: simd_char1, _ y: simd_char1) -> simd_char1 { x <= y ? x : y }

/// - Returns: Elementwise minimum of *x* and *y*.
@inlinable
public func simd_min(_ x: simd_char2, _ y: simd_char2) -> simd_char2 {
    .init(__min_c(x.x, y.x), __min_c(x.y, y.y))
}

/// - Returns: Elementwise minimum of *x* and *y*.
@inlinable
public func simd_min(_ x: simd_char3, _ y: simd_char3) -> simd_char3 {
    .init(__min_c(x.x, y.x), __min_c(x.y, y.y), __min_c(x.z, y.z))
}

/// - Returns: Elementwise minimum of *x* and *y*.
@inlinable
public func simd_min(_ x: simd_char4, _ y: simd_char4) -> simd_char4 {
    .init(__min_c(x.x, y.x), __min_c(x.y, y.y), __min_c(x.z, y.z), __min_c(x.w, y.w))
}

/// - Returns: Elementwise minimum of *x* and *y*.
@inlinable
public func simd_min(_ x: simd_char8, _ y: simd_char8) -> simd_char8 {
    .init(__min_c(x[0], y[0]), __min_c(x[1], y[1]), __min_c(x[2], y[2]), __min_c(x[3], y[3]),
          __min_c(x[4], y[4]), __min_c(x[5], y[5]), __min_c(x[6], y[6]), __min_c(x[7], y[7]))
}

/// - Returns: Elementwise minimum of *x* and *y*.
@inlinable
public func simd_min(_ x: simd_char16, _ y: simd_char16) -> simd_char16 {
    .init(__min_c(x[ 0], y[ 0]), __min_c(x[ 1], y[ 1]), __min_c(x[ 2], y[ 2]), __min_c(x[ 3], y[ 3]),
          __min_c(x[ 4], y[ 4]), __min_c(x[ 5], y[ 5]), __min_c(x[ 6], y[ 6]), __min_c(x[ 7], y[ 7]),
          __min_c(x[ 8], y[ 8]), __min_c(x[ 9], y[ 9]), __min_c(x[10], y[10]), __min_c(x[11], y[11]),
          __min_c(x[12], y[12]), __min_c(x[13], y[13]), __min_c(x[14], y[14]), __min_c(x[15], y[15]))
}

/// - Returns: Elementwise minimum of *x* and *y*.
@inlinable
public func simd_min(_ x: simd_char32, _ y: simd_char32) -> simd_char32 {
    .init(__min_c(x[ 0], y[ 0]), __min_c(x[ 1], y[ 1]), __min_c(x[ 2], y[ 2]), __min_c(x[ 3], y[ 3]),
          __min_c(x[ 4], y[ 4]), __min_c(x[ 5], y[ 5]), __min_c(x[ 6], y[ 6]), __min_c(x[ 7], y[ 7]),
          __min_c(x[ 8], y[ 8]), __min_c(x[ 9], y[ 9]), __min_c(x[10], y[10]), __min_c(x[11], y[11]),
          __min_c(x[12], y[12]), __min_c(x[13], y[13]), __min_c(x[14], y[14]), __min_c(x[15], y[15]),
          __min_c(x[16], y[16]), __min_c(x[17], y[17]), __min_c(x[18], y[18]), __min_c(x[19], y[19]),
          __min_c(x[20], y[20]), __min_c(x[21], y[21]), __min_c(x[22], y[22]), __min_c(x[23], y[23]),
          __min_c(x[24], y[24]), __min_c(x[25], y[25]), __min_c(x[26], y[26]), __min_c(x[27], y[27]),
          __min_c(x[28], y[28]), __min_c(x[29], y[29]), __min_c(x[30], y[30]), __min_c(x[31], y[31]))
}

/// - Returns: Elementwise minimum of *x* and *y*.
@inlinable
public func simd_min(_ x: simd_char64, _ y: simd_char64) -> simd_char64 {
    .init(__min_c(x[ 0], y[ 0]), __min_c(x[ 1], y[ 1]), __min_c(x[ 2], y[ 2]), __min_c(x[ 3], y[ 3]),
          __min_c(x[ 4], y[ 4]), __min_c(x[ 5], y[ 5]), __min_c(x[ 6], y[ 6]), __min_c(x[ 7], y[ 7]),
          __min_c(x[ 8], y[ 8]), __min_c(x[ 9], y[ 9]), __min_c(x[10], y[10]), __min_c(x[11], y[11]),
          __min_c(x[12], y[12]), __min_c(x[13], y[13]), __min_c(x[14], y[14]), __min_c(x[15], y[15]),
          __min_c(x[16], y[16]), __min_c(x[17], y[17]), __min_c(x[18], y[18]), __min_c(x[19], y[19]),
          __min_c(x[20], y[20]), __min_c(x[21], y[21]), __min_c(x[22], y[22]), __min_c(x[23], y[23]),
          __min_c(x[24], y[24]), __min_c(x[25], y[25]), __min_c(x[26], y[26]), __min_c(x[27], y[27]),
          __min_c(x[28], y[28]), __min_c(x[29], y[29]), __min_c(x[30], y[30]), __min_c(x[31], y[31]),
          __min_c(x[32], y[32]), __min_c(x[33], y[33]), __min_c(x[34], y[34]), __min_c(x[35], y[35]),
          __min_c(x[36], y[36]), __min_c(x[37], y[37]), __min_c(x[38], y[38]), __min_c(x[39], y[39]),
          __min_c(x[40], y[40]), __min_c(x[41], y[41]), __min_c(x[42], y[42]), __min_c(x[43], y[43]),
          __min_c(x[44], y[44]), __min_c(x[45], y[45]), __min_c(x[46], y[46]), __min_c(x[47], y[47]),
          __min_c(x[48], y[48]), __min_c(x[49], y[49]), __min_c(x[50], y[50]), __min_c(x[51], y[51]),
          __min_c(x[52], y[52]), __min_c(x[53], y[53]), __min_c(x[54], y[54]), __min_c(x[55], y[55]),
          __min_c(x[56], y[56]), __min_c(x[57], y[57]), __min_c(x[58], y[58]), __min_c(x[59], y[59]),
          __min_c(x[60], y[60]), __min_c(x[61], y[61]), __min_c(x[62], y[62]), __min_c(x[63], y[63]))
}

@inline(__always)
@usableFromInline
internal func __min_uc(_ x: simd_uchar1, _ y: simd_uchar1) -> simd_uchar1 { x <= y ? x : y }

/// - Returns: Elementwise minimum of *x* and *y*.
@inlinable
public func simd_min(_ x: simd_uchar2, _ y: simd_uchar2) -> simd_uchar2 {
    .init(__min_uc(x.x, y.x), __min_uc(x.y, y.y))
}

/// - Returns: Elementwise minimum of *x* and *y*.
@inlinable
public func simd_min(_ x: simd_uchar3, _ y: simd_uchar3) -> simd_uchar3 {
    .init(__min_uc(x.x, y.x), __min_uc(x.y, y.y), __min_uc(x.z, y.z))
}

/// - Returns: Elementwise minimum of *x* and *y*.
@inlinable
public func simd_min(_ x: simd_uchar4, _ y: simd_uchar4) -> simd_uchar4 {
    .init(__min_uc(x.x, y.x), __min_uc(x.y, y.y), __min_uc(x.z, y.z), __min_uc(x.w, y.w))
}

/// - Returns: Elementwise minimum of *x* and *y*.
@inlinable
public func simd_min(_ x: simd_uchar8, _ y: simd_uchar8) -> simd_uchar8 {
    .init(__min_uc(x[0], y[0]), __min_uc(x[1], y[1]), __min_uc(x[2], y[2]), __min_uc(x[3], y[3]),
          __min_uc(x[4], y[4]), __min_uc(x[5], y[5]), __min_uc(x[6], y[6]), __min_uc(x[7], y[7]))
}

/// - Returns: Elementwise minimum of *x* and *y*.
@inlinable
public func simd_min(_ x: simd_uchar16, _ y: simd_uchar16) -> simd_uchar16 {
    .init(__min_uc(x[ 0], y[ 0]), __min_uc(x[ 1], y[ 1]), __min_uc(x[ 2], y[ 2]), __min_uc(x[ 3], y[ 3]),
          __min_uc(x[ 4], y[ 4]), __min_uc(x[ 5], y[ 5]), __min_uc(x[ 6], y[ 6]), __min_uc(x[ 7], y[ 7]),
          __min_uc(x[ 8], y[ 8]), __min_uc(x[ 9], y[ 9]), __min_uc(x[10], y[10]), __min_uc(x[11], y[11]),
          __min_uc(x[12], y[12]), __min_uc(x[13], y[13]), __min_uc(x[14], y[14]), __min_uc(x[15], y[15]))
}

/// - Returns: Elementwise minimum of *x* and *y*.
@inlinable
public func simd_min(_ x: simd_uchar32, _ y: simd_uchar32) -> simd_uchar32 {
    .init(__min_uc(x[ 0], y[ 0]), __min_uc(x[ 1], y[ 1]), __min_uc(x[ 2], y[ 2]), __min_uc(x[ 3], y[ 3]),
          __min_uc(x[ 4], y[ 4]), __min_uc(x[ 5], y[ 5]), __min_uc(x[ 6], y[ 6]), __min_uc(x[ 7], y[ 7]),
          __min_uc(x[ 8], y[ 8]), __min_uc(x[ 9], y[ 9]), __min_uc(x[10], y[10]), __min_uc(x[11], y[11]),
          __min_uc(x[12], y[12]), __min_uc(x[13], y[13]), __min_uc(x[14], y[14]), __min_uc(x[15], y[15]),
          __min_uc(x[16], y[16]), __min_uc(x[17], y[17]), __min_uc(x[18], y[18]), __min_uc(x[19], y[19]),
          __min_uc(x[20], y[20]), __min_uc(x[21], y[21]), __min_uc(x[22], y[22]), __min_uc(x[23], y[23]),
          __min_uc(x[24], y[24]), __min_uc(x[25], y[25]), __min_uc(x[26], y[26]), __min_uc(x[27], y[27]),
          __min_uc(x[28], y[28]), __min_uc(x[29], y[29]), __min_uc(x[30], y[30]), __min_uc(x[31], y[31]))
}

/// - Returns: Elementwise minimum of *x* and *y*.
@inlinable
public func simd_min(_ x: simd_uchar64, _ y: simd_uchar64) -> simd_uchar64 {
    .init(__min_uc(x[ 0], y[ 0]), __min_uc(x[ 1], y[ 1]), __min_uc(x[ 2], y[ 2]), __min_uc(x[ 3], y[ 3]),
          __min_uc(x[ 4], y[ 4]), __min_uc(x[ 5], y[ 5]), __min_uc(x[ 6], y[ 6]), __min_uc(x[ 7], y[ 7]),
          __min_uc(x[ 8], y[ 8]), __min_uc(x[ 9], y[ 9]), __min_uc(x[10], y[10]), __min_uc(x[11], y[11]),
          __min_uc(x[12], y[12]), __min_uc(x[13], y[13]), __min_uc(x[14], y[14]), __min_uc(x[15], y[15]),
          __min_uc(x[16], y[16]), __min_uc(x[17], y[17]), __min_uc(x[18], y[18]), __min_uc(x[19], y[19]),
          __min_uc(x[20], y[20]), __min_uc(x[21], y[21]), __min_uc(x[22], y[22]), __min_uc(x[23], y[23]),
          __min_uc(x[24], y[24]), __min_uc(x[25], y[25]), __min_uc(x[26], y[26]), __min_uc(x[27], y[27]),
          __min_uc(x[28], y[28]), __min_uc(x[29], y[29]), __min_uc(x[30], y[30]), __min_uc(x[31], y[31]),
          __min_uc(x[32], y[32]), __min_uc(x[33], y[33]), __min_uc(x[34], y[34]), __min_uc(x[35], y[35]),
          __min_uc(x[36], y[36]), __min_uc(x[37], y[37]), __min_uc(x[38], y[38]), __min_uc(x[39], y[39]),
          __min_uc(x[40], y[40]), __min_uc(x[41], y[41]), __min_uc(x[42], y[42]), __min_uc(x[43], y[43]),
          __min_uc(x[44], y[44]), __min_uc(x[45], y[45]), __min_uc(x[46], y[46]), __min_uc(x[47], y[47]),
          __min_uc(x[48], y[48]), __min_uc(x[49], y[49]), __min_uc(x[50], y[50]), __min_uc(x[51], y[51]),
          __min_uc(x[52], y[52]), __min_uc(x[53], y[53]), __min_uc(x[54], y[54]), __min_uc(x[55], y[55]),
          __min_uc(x[56], y[56]), __min_uc(x[57], y[57]), __min_uc(x[58], y[58]), __min_uc(x[59], y[59]),
          __min_uc(x[60], y[60]), __min_uc(x[61], y[61]), __min_uc(x[62], y[62]), __min_uc(x[63], y[63]))
}

@inline(__always)
@usableFromInline
internal func __min_s(_ x: simd_short1, _ y: simd_short1) -> simd_short1 { x <= y ? x : y }

/// - Returns: Elementwise minimum of *x* and *y*.
@inlinable
public func simd_min(_ x: simd_short2, _ y: simd_short2) -> simd_short2 {
    .init(__min_s(x.x, y.x), __min_s(x.y, y.y))
}

/// - Returns: Elementwise minimum of *x* and *y*.
@inlinable
public func simd_min(_ x: simd_short3, _ y: simd_short3) -> simd_short3 {
    .init(__min_s(x.x, y.x), __min_s(x.y, y.y), __min_s(x.z, y.z))
}

/// - Returns: Elementwise minimum of *x* and *y*.
@inlinable
public func simd_min(_ x: simd_short4, _ y: simd_short4) -> simd_short4 {
    .init(__min_s(x.x, y.x), __min_s(x.y, y.y), __min_s(x.z, y.z), __min_s(x.w, y.w))
}

/// - Returns: Elementwise minimum of *x* and *y*.
@inlinable
public func simd_min(_ x: simd_short8, _ y: simd_short8) -> simd_short8 {
    .init(__min_s(x[0], y[0]), __min_s(x[1], y[1]), __min_s(x[2], y[2]), __min_s(x[3], y[3]),
          __min_s(x[4], y[4]), __min_s(x[5], y[5]), __min_s(x[6], y[6]), __min_s(x[7], y[7]))
}

/// - Returns: Elementwise minimum of *x* and *y*.
@inlinable
public func simd_min(_ x: simd_short16, _ y: simd_short16) -> simd_short16 {
    .init(__min_s(x[ 0], y[ 0]), __min_s(x[ 1], y[ 1]), __min_s(x[ 2], y[ 2]), __min_s(x[ 3], y[ 3]),
          __min_s(x[ 4], y[ 4]), __min_s(x[ 5], y[ 5]), __min_s(x[ 6], y[ 6]), __min_s(x[ 7], y[ 7]),
          __min_s(x[ 8], y[ 8]), __min_s(x[ 9], y[ 9]), __min_s(x[10], y[10]), __min_s(x[11], y[11]),
          __min_s(x[12], y[12]), __min_s(x[13], y[13]), __min_s(x[14], y[14]), __min_s(x[15], y[15]))
}

/// - Returns: Elementwise minimum of *x* and *y*.
@inlinable
public func simd_min(_ x: simd_short32, _ y: simd_short32) -> simd_short32 {
    .init(__min_s(x[ 0], y[ 0]), __min_s(x[ 1], y[ 1]), __min_s(x[ 2], y[ 2]), __min_s(x[ 3], y[ 3]),
          __min_s(x[ 4], y[ 4]), __min_s(x[ 5], y[ 5]), __min_s(x[ 6], y[ 6]), __min_s(x[ 7], y[ 7]),
          __min_s(x[ 8], y[ 8]), __min_s(x[ 9], y[ 9]), __min_s(x[10], y[10]), __min_s(x[11], y[11]),
          __min_s(x[12], y[12]), __min_s(x[13], y[13]), __min_s(x[14], y[14]), __min_s(x[15], y[15]),
          __min_s(x[16], y[16]), __min_s(x[17], y[17]), __min_s(x[18], y[18]), __min_s(x[19], y[19]),
          __min_s(x[20], y[20]), __min_s(x[21], y[21]), __min_s(x[22], y[22]), __min_s(x[23], y[23]),
          __min_s(x[24], y[24]), __min_s(x[25], y[25]), __min_s(x[26], y[26]), __min_s(x[27], y[27]),
          __min_s(x[28], y[28]), __min_s(x[29], y[29]), __min_s(x[30], y[30]), __min_s(x[31], y[31]))
}

@inline(__always)
@usableFromInline
internal func __min_us(_ x: simd_ushort1, _ y: simd_ushort1) -> simd_ushort1 { x <= y ? x : y }

/// - Returns: Elementwise minimum of *x* and *y*.
@inlinable
public func simd_min(_ x: simd_ushort2, _ y: simd_ushort2) -> simd_ushort2 {
    .init(__min_us(x.x, y.x), __min_us(x.y, y.y))
}

/// - Returns: Elementwise minimum of *x* and *y*.
@inlinable
public func simd_min(_ x: simd_ushort3, _ y: simd_ushort3) -> simd_ushort3 {
    .init(__min_us(x.x, y.x), __min_us(x.y, y.y), __min_us(x.z, y.z))
}

/// - Returns: Elementwise minimum of *x* and *y*.
@inlinable
public func simd_min(_ x: simd_ushort4, _ y: simd_ushort4) -> simd_ushort4 {
    .init(__min_us(x.x, y.x), __min_us(x.y, y.y), __min_us(x.z, y.z), __min_us(x.w, y.w))
}

/// - Returns: Elementwise minimum of *x* and *y*.
@inlinable
public func simd_min(_ x: simd_ushort8, _ y: simd_ushort8) -> simd_ushort8 {
    .init(__min_us(x[0], y[0]), __min_us(x[1], y[1]), __min_us(x[2], y[2]), __min_us(x[3], y[3]),
          __min_us(x[4], y[4]), __min_us(x[5], y[5]), __min_us(x[6], y[6]), __min_us(x[7], y[7]))
}

/// - Returns: Elementwise minimum of *x* and *y*.
@inlinable
public func simd_min(_ x: simd_ushort16, _ y: simd_ushort16) -> simd_ushort16 {
    .init(__min_us(x[ 0], y[ 0]), __min_us(x[ 1], y[ 1]), __min_us(x[ 2], y[ 2]), __min_us(x[ 3], y[ 3]),
          __min_us(x[ 4], y[ 4]), __min_us(x[ 5], y[ 5]), __min_us(x[ 6], y[ 6]), __min_us(x[ 7], y[ 7]),
          __min_us(x[ 8], y[ 8]), __min_us(x[ 9], y[ 9]), __min_us(x[10], y[10]), __min_us(x[11], y[11]),
          __min_us(x[12], y[12]), __min_us(x[13], y[13]), __min_us(x[14], y[14]), __min_us(x[15], y[15]))
}

/// - Returns: Elementwise minimum of *x* and *y*.
@inlinable
public func simd_min(_ x: simd_ushort32, _ y: simd_ushort32) -> simd_ushort32 {
    .init(__min_us(x[ 0], y[ 0]), __min_us(x[ 1], y[ 1]), __min_us(x[ 2], y[ 2]), __min_us(x[ 3], y[ 3]),
          __min_us(x[ 4], y[ 4]), __min_us(x[ 5], y[ 5]), __min_us(x[ 6], y[ 6]), __min_us(x[ 7], y[ 7]),
          __min_us(x[ 8], y[ 8]), __min_us(x[ 9], y[ 9]), __min_us(x[10], y[10]), __min_us(x[11], y[11]),
          __min_us(x[12], y[12]), __min_us(x[13], y[13]), __min_us(x[14], y[14]), __min_us(x[15], y[15]),
          __min_us(x[16], y[16]), __min_us(x[17], y[17]), __min_us(x[18], y[18]), __min_us(x[19], y[19]),
          __min_us(x[20], y[20]), __min_us(x[21], y[21]), __min_us(x[22], y[22]), __min_us(x[23], y[23]),
          __min_us(x[24], y[24]), __min_us(x[25], y[25]), __min_us(x[26], y[26]), __min_us(x[27], y[27]),
          __min_us(x[28], y[28]), __min_us(x[29], y[29]), __min_us(x[30], y[30]), __min_us(x[31], y[31]))
}

@inline(__always)
@usableFromInline
internal func __min_i(_ x: simd_int1, _ y: simd_int1) -> simd_int1 { x <= y ? x : y }

/// - Returns: Elementwise minimum of *x* and *y*.
@inlinable
public func simd_min(_ x: simd_int2, _ y: simd_int2) -> simd_int2 {
    .init(__min_i(x.x, y.x), __min_i(x.y, y.y))
}

/// - Returns: Elementwise minimum of *x* and *y*.
@inlinable
public func simd_min(_ x: simd_int3, _ y: simd_int3) -> simd_int3 {
    .init(__min_i(x.x, y.x), __min_i(x.y, y.y), __min_i(x.z, y.z))
}

/// - Returns: Elementwise minimum of *x* and *y*.
@inlinable
public func simd_min(_ x: simd_int4, _ y: simd_int4) -> simd_int4 {
    .init(__min_i(x.x, y.x), __min_i(x.y, y.y), __min_i(x.z, y.z), __min_i(x.w, y.w))
}

/// - Returns: Elementwise minimum of *x* and *y*.
@inlinable
public func simd_min(_ x: simd_int8, _ y: simd_int8) -> simd_int8 {
    .init(__min_i(x[0], y[0]), __min_i(x[1], y[1]), __min_i(x[2], y[2]), __min_i(x[3], y[3]),
          __min_i(x[4], y[4]), __min_i(x[5], y[5]), __min_i(x[6], y[6]), __min_i(x[7], y[7]))
}

/// - Returns: Elementwise minimum of *x* and *y*.
@inlinable
public func simd_min(_ x: simd_int16, _ y: simd_int16) -> simd_int16 {
    .init(__min_i(x[ 0], y[ 0]), __min_i(x[ 1], y[ 1]), __min_i(x[ 2], y[ 2]), __min_i(x[ 3], y[ 3]),
          __min_i(x[ 4], y[ 4]), __min_i(x[ 5], y[ 5]), __min_i(x[ 6], y[ 6]), __min_i(x[ 7], y[ 7]),
          __min_i(x[ 8], y[ 8]), __min_i(x[ 9], y[ 9]), __min_i(x[10], y[10]), __min_i(x[11], y[11]),
          __min_i(x[12], y[12]), __min_i(x[13], y[13]), __min_i(x[14], y[14]), __min_i(x[15], y[15]))
}

@inline(__always)
@usableFromInline
internal func __min_ui(_ x: simd_uint1, _ y: simd_uint1) -> simd_uint1 { x <= y ? x : y }

/// - Returns: Elementwise minimum of *x* and *y*.
@inlinable
public func simd_min(_ x: simd_uint2, _ y: simd_uint2) -> simd_uint2 {
    .init(__min_ui(x.x, y.x), __min_ui(x.y, y.y))
}

/// - Returns: Elementwise minimum of *x* and *y*.
@inlinable
public func simd_min(_ x: simd_uint3, _ y: simd_uint3) -> simd_uint3 {
    .init(__min_ui(x.x, y.x), __min_ui(x.y, y.y), __min_ui(x.z, y.z))
}

/// - Returns: Elementwise minimum of *x* and *y*.
@inlinable
public func simd_min(_ x: simd_uint4, _ y: simd_uint4) -> simd_uint4 {
    .init(__min_ui(x.x, y.x), __min_ui(x.y, y.y), __min_ui(x.z, y.z), __min_ui(x.w, y.w))
}

/// - Returns: Elementwise minimum of *x* and *y*.
@inlinable
public func simd_min(_ x: simd_uint8, _ y: simd_uint8) -> simd_uint8 {
    .init(__min_ui(x[0], y[0]), __min_ui(x[1], y[1]), __min_ui(x[2], y[2]), __min_ui(x[3], y[3]),
          __min_ui(x[4], y[4]), __min_ui(x[5], y[5]), __min_ui(x[6], y[6]), __min_ui(x[7], y[7]))
}

/// - Returns: Elementwise minimum of *x* and *y*.
@inlinable
public func simd_min(_ x: simd_uint16, _ y: simd_uint16) -> simd_uint16 {
    .init(__min_ui(x[ 0], y[ 0]), __min_ui(x[ 1], y[ 1]), __min_ui(x[ 2], y[ 2]), __min_ui(x[ 3], y[ 3]),
          __min_ui(x[ 4], y[ 4]), __min_ui(x[ 5], y[ 5]), __min_ui(x[ 6], y[ 6]), __min_ui(x[ 7], y[ 7]),
          __min_ui(x[ 8], y[ 8]), __min_ui(x[ 9], y[ 9]), __min_ui(x[10], y[10]), __min_ui(x[11], y[11]),
          __min_ui(x[12], y[12]), __min_ui(x[13], y[13]), __min_ui(x[14], y[14]), __min_ui(x[15], y[15]))
}

@inline(__always)
@usableFromInline
internal func __min_l(_ x: simd_long1, _ y: simd_long1) -> simd_long1 { x <= y ? x : y }

/// - Returns: Elementwise minimum of *x* and *y*.
@inlinable
public func simd_min(_ x: simd_long2, _ y: simd_long2) -> simd_long2 {
    .init(__min_l(x.x, y.x), __min_l(x.y, y.y))
}

/// - Returns: Elementwise minimum of *x* and *y*.
@inlinable
public func simd_min(_ x: simd_long3, _ y: simd_long3) -> simd_long3 {
    .init(__min_l(x.x, y.x), __min_l(x.y, y.y), __min_l(x.z, y.z))
}

/// - Returns: Elementwise minimum of *x* and *y*.
@inlinable
public func simd_min(_ x: simd_long4, _ y: simd_long4) -> simd_long4 {
    .init(__min_l(x.x, y.x), __min_l(x.y, y.y), __min_l(x.z, y.z), __min_l(x.w, y.w))
}

/// - Returns: Elementwise minimum of *x* and *y*.
@inlinable
public func simd_min(_ x: simd_long8, _ y: simd_long8) -> simd_long8 {
    .init(__min_l(x[0], y[0]), __min_l(x[1], y[1]), __min_l(x[2], y[2]), __min_l(x[3], y[3]),
          __min_l(x[4], y[4]), __min_l(x[5], y[5]), __min_l(x[6], y[6]), __min_l(x[7], y[7]))
}

@inline(__always)
@usableFromInline
internal func __min_ul(_ x: simd_ulong1, _ y: simd_ulong1) -> simd_ulong1 { x <= y ? x : y }

/// - Returns: Elementwise minimum of *x* and *y*.
@inlinable
public func simd_min(_ x: simd_ulong2, _ y: simd_ulong2) -> simd_ulong2 {
    .init(__min_ul(x.x, y.x), __min_ul(x.y, y.y))
}

/// - Returns: Elementwise minimum of *x* and *y*.
@inlinable
public func simd_min(_ x: simd_ulong3, _ y: simd_ulong3) -> simd_ulong3 {
    .init(__min_ul(x.x, y.x), __min_ul(x.y, y.y), __min_ul(x.z, y.z))
}

/// - Returns: Elementwise minimum of *x* and *y*.
@inlinable
public func simd_min(_ x: simd_ulong4, _ y: simd_ulong4) -> simd_ulong4 {
    .init(__min_ul(x.x, y.x), __min_ul(x.y, y.y), __min_ul(x.z, y.z), __min_ul(x.w, y.w))
}

/// - Returns: Elementwise minimum of *x* and *y*.
@inlinable
public func simd_min(_ x: simd_ulong8, _ y: simd_ulong8) -> simd_ulong8 {
    .init(__min_ul(x[0], y[0]), __min_ul(x[1], y[1]), __min_ul(x[2], y[2]), __min_ul(x[3], y[3]),
          __min_ul(x[4], y[4]), __min_ul(x[5], y[5]), __min_ul(x[6], y[6]), __min_ul(x[7], y[7]))
}

@inline(__always)
@usableFromInline
internal func __min_f(_ x: Float, _ y: Float) -> Float { x <= y ? x : y }

/// - Returns: Elementwise minimum of *x* and *y*.
@inlinable
public func simd_min(_ x: Float, _ y: Float) -> Float { __min_f(x, y) }

/// - Returns: Elementwise minimum of *x* and *y*.
@inlinable
public func simd_min(_ x: simd_float2, _ y: simd_float2) -> simd_float2 {
    .init(__min_f(x.x, y.x), __min_f(x.y, y.y))
}

/// - Returns: Elementwise minimum of *x* and *y*.
@inlinable
public func simd_min(_ x: simd_float3, _ y: simd_float3) -> simd_float3 {
    .init(__min_f(x.x, y.x), __min_f(x.y, y.y), __min_f(x.z, y.z))
}

/// - Returns: Elementwise minimum of *x* and *y*.
@inlinable
public func simd_min(_ x: simd_float4, _ y: simd_float4) -> simd_float4 {
    .init(__min_f(x.x, y.x), __min_f(x.y, y.y), __min_f(x.z, y.z), __min_f(x.w, y.w))
}

/// - Returns: Elementwise minimum of *x* and *y*.
@inlinable
public func simd_min(_ x: simd_float8, _ y: simd_float8) -> simd_float8 {
    .init(__min_f(x[0], y[0]), __min_f(x[1], y[1]), __min_f(x[2], y[2]), __min_f(x[3], y[3]),
          __min_f(x[4], y[4]), __min_f(x[5], y[5]), __min_f(x[6], y[6]), __min_f(x[7], y[7]))
}

/// - Returns: Elementwise minimum of *x* and *y*.
@inlinable
public func simd_min(_ x: simd_float16, _ y: simd_float16) -> simd_float16 {
    .init(__min_f(x[ 0], y[ 0]), __min_f(x[ 1], y[ 1]), __min_f(x[ 2], y[ 2]), __min_f(x[ 3], y[ 3]),
          __min_f(x[ 4], y[ 4]), __min_f(x[ 5], y[ 5]), __min_f(x[ 6], y[ 6]), __min_f(x[ 7], y[ 7]),
          __min_f(x[ 8], y[ 8]), __min_f(x[ 9], y[ 9]), __min_f(x[10], y[10]), __min_f(x[11], y[11]),
          __min_f(x[12], y[12]), __min_f(x[13], y[13]), __min_f(x[14], y[14]), __min_f(x[15], y[15]))
}

@inline(__always)
@usableFromInline
internal func __min_d(_ x: Double, _ y: Double) -> Double { x <= y ? x : y }

/// - Returns: Elementwise minimum of *x* and *y*.
@inlinable
public func simd_min(_ x: Double, _ y: Double) -> Double {  __min_d(x, y) }

/// - Returns: Elementwise minimum of *x* and *y*.
@inlinable
public func simd_min(_ x: simd_double2, _ y: simd_double2) -> simd_double2 {
    .init(__min_d(x.x, y.x), __min_d(x.y, y.y))
}

/// - Returns: Elementwise minimum of *x* and *y*.
@inlinable
public func simd_min(_ x: simd_double3, _ y: simd_double3) -> simd_double3 {
    .init(__min_d(x.x, y.x), __min_d(x.y, y.y), __min_d(x.z, y.z))
}

/// - Returns: Elementwise minimum of *x* and *y*.
@inlinable
public func simd_min(_ x: simd_double4, _ y: simd_double4) -> simd_double4 {
    .init(__min_d(x.x, y.x), __min_d(x.y, y.y), __min_d(x.z, y.z), __min_d(x.w, y.w))
}

/// - Returns: Elementwise minimum of *x* and *y*.
@inlinable
public func simd_min(_ x: simd_double8, _ y: simd_double8) -> simd_double8 {
    .init(__min_d(x[0], y[0]), __min_d(x[1], y[1]), __min_d(x[2], y[2]), __min_d(x[3], y[3]),
          __min_d(x[4], y[4]), __min_d(x[5], y[5]), __min_d(x[6], y[6]), __min_d(x[7], y[7]))
}


// MARK: - simd_mix

/// - Returns: Linear interpolation between *x* at *t*=0 and *y* at *t*=1.
@inlinable
public func simd_mix(_ x: Float, _ y: Float, _ t: Float) -> Float { x * (1.0 - t) + y * t }

/// - Returns: Elementwise linear interpolation between *x* at *t*=0 and *y* at *t*=1.
@inlinable
public func simd_mix(_ x: simd_float2, _ y: simd_float2, _ t: simd_float2) -> simd_float2 { (x * (simd_float2.one - t)) as simd_float2 + (y * t) as simd_float2 }

/// - Returns: Elementwise linear interpolation between *x* at *t*=0 and *y* at *t*=1.
@inlinable
public func simd_mix(_ x: simd_float3, _ y: simd_float3, _ t: simd_float3) -> simd_float3 { (x * (simd_float3.one - t)) as simd_float3 + (y * t) as simd_float3 }

/// - Returns: Elementwise linear interpolation between *x* at *t*=0 and *y* at *t*=1.
@inlinable
public func simd_mix(_ x: simd_float4, _ y: simd_float4, _ t: simd_float4) -> simd_float4 { (x * (simd_float4.one - t)) as simd_float4 + (y * t) as simd_float4 }

/// - Returns: Elementwise linear interpolation between *x* at *t*=0 and *y* at *t*=1.
@inlinable
public func simd_mix(_ x: simd_float8, _ y: simd_float8, _ t: simd_float8) -> simd_float8 { (x * (simd_float8.one - t)) as simd_float8 + (y * t) as simd_float8 }

/// - Returns: Elementwise linear interpolation between *x* at *t*=0 and *y* at *t*=1.
@inlinable
public func simd_mix(_ x: simd_float16, _ y: simd_float16, _ t: simd_float16) -> simd_float16 { (x * (simd_float16.one - t)) as simd_float16 + (y * t) as simd_float16 }

/// - Returns: Linear interpolation between *x* at *t*=0 and *y* at *t*=1.
@inlinable
public func simd_mix(_ x: Double, _ y: Double, _ t: Double) -> Double { x * (1.0 - t) + y * t }

/// - Returns: Elementwise linear interpolation between *x* at *t*=0 and *y* at *t*=1.
@inlinable
public func simd_mix(_ x: simd_double2, _ y: simd_double2, _ t: simd_double2) -> simd_double2 { (x * (simd_double2.one - t)) as simd_double2 + (y * t) as simd_double2 }

/// - Returns: Elementwise linear interpolation between *x* at *t*=0 and *y* at *t*=1.
@inlinable
public func simd_mix(_ x: simd_double3, _ y: simd_double3, _ t: simd_double3) -> simd_double3 { (x * (simd_double3.one - t)) as simd_double3 + (y * t) as simd_double3 }

/// - Returns: Elementwise linear interpolation between *x* at *t*=0 and *y* at *t*=1.
@inlinable
public func simd_mix(_ x: simd_double4, _ y: simd_double4, _ t: simd_double4) -> simd_double4 { (x * (simd_double4.one - t)) as simd_double4 + (y * t) as simd_double4 }

/// - Returns: Elementwise linear interpolation between *x* at *t*=0 and *y* at *t*=1.
@inlinable
public func simd_mix(_ x: simd_double8, _ y: simd_double8, _ t: simd_double8) -> simd_double8 { (x * (simd_double8.one - t)) as simd_double8 + (y * t) as simd_double8 }


// MARK: - simd_mul

/// - Returns: Componentwise scale of *q* by *a*.
@inlinable
public func simd_mul(_ a: Float, _ q: simd_quatf) -> simd_quatf { a * q }

/// - Returns: Componentwise scale of *q* by *a*.
@inlinable
public func simd_mul(_ a: Double, _ q: simd_quatd) -> simd_quatd { a * q }

/// - Returns: *X* scaled by *a*.
@inlinable
public func simd_mul(_ a: Float, _ x: simd_float2x2) -> simd_float2x2 { return a * x }

/// - Returns: *X* scaled by *a*.
@inlinable
public func simd_mul(_ a: Float, _ x: simd_float3x2) -> simd_float3x2 { return a * x }

/// - Returns: *X* scaled by *a*.
@inlinable
public func simd_mul(_ a: Float, _ x: simd_float4x2) -> simd_float4x2 { return a * x }

/// - Returns: *X* scaled by *a*.
@inlinable
public func simd_mul(_ a: Float, _ x: simd_float2x3) -> simd_float2x3 { return a * x }

/// - Returns: *X* scaled by *a*.
@inlinable
public func simd_mul(_ a: Float, _ x: simd_float3x3) -> simd_float3x3 { return a * x }

/// - Returns: *X* scaled by *a*.
@inlinable
public func simd_mul(_ a: Float, _ x: simd_float4x3) -> simd_float4x3 { return a * x }

/// - Returns: *X* scaled by *a*.
@inlinable
public func simd_mul(_ a: Float, _ x: simd_float2x4) -> simd_float2x4 { return a * x }

/// - Returns: *X* scaled by *a*.
@inlinable
public func simd_mul(_ a: Float, _ x: simd_float3x4) -> simd_float3x4 { return a * x }

/// - Returns: *X* scaled by *a*.
@inlinable
public func simd_mul(_ a: Float, _ x: simd_float4x4) -> simd_float4x4 { return a * x }

/// - Returns: *X* scaled by *a*.
@inlinable
public func simd_mul(_ a: Double, _ x: simd_double2x2) -> simd_double2x2 { return a * x }

/// - Returns: *X* scaled by *a*.
@inlinable
public func simd_mul(_ a: Double, _ x: simd_double3x2) -> simd_double3x2 { return a * x }

/// - Returns: *X* scaled by *a*.
@inlinable
public func simd_mul(_ a: Double, _ x: simd_double4x2) -> simd_double4x2 { return a * x }

/// - Returns: *X* scaled by *a*.
@inlinable
public func simd_mul(_ a: Double, _ x: simd_double2x3) -> simd_double2x3 { return a * x }

/// - Returns: *X* scaled by *a*.
@inlinable
public func simd_mul(_ a: Double, _ x: simd_double3x3) -> simd_double3x3 { return a * x }

/// - Returns: *X* scaled by *a*.
@inlinable
public func simd_mul(_ a: Double, _ x: simd_double4x3) -> simd_double4x3 { return a * x }

/// - Returns: *X* scaled by *a*.
@inlinable
public func simd_mul(_ a: Double, _ x: simd_double2x4) -> simd_double2x4 { return a * x }

/// - Returns: *X* scaled by *a*.
@inlinable
public func simd_mul(_ a: Double, _ x: simd_double3x4) -> simd_double3x4 { return a * x }

/// - Returns: *X* scaled by *a*.
@inlinable
public func simd_mul(_ a: Double, _ x: simd_double4x4) -> simd_double4x4 { return a * x }


/// - Returns: Componentwise scale of *q* by *a*.
@inlinable
public func simd_mul(_ q: simd_quatf, _ a: Float) -> simd_quatf { q * a }

/// - Returns: Componentwise scale of *q* by *a*.
@inlinable
public func simd_mul(_ q: simd_quatd, _ a: Double) -> simd_quatd { q * a }


/// - Returns: Product of *lhs* matrix and *rhs* vector as a single column matrix.
@inlinable
public func simd_mul(_ x: simd_float2x2, _ y: simd_float2) -> simd_float2 { x * y }

/// - Returns: Product of *lhs* matrix and *rhs* vector as a single column matrix.
@inlinable
public func simd_mul(_ x: simd_float2x3, _ y: simd_float2) -> simd_float3 { x * y }

/// - Returns: Product of *lhs* matrix and *rhs* vector as a single column matrix.
@inlinable
public func simd_mul(_ x: simd_float2x4, _ y: simd_float2) -> simd_float4 { x * y }

/// - Returns: Product of *lhs* matrix and *rhs* vector as a single column matrix.
@inlinable
public func simd_mul(_ x: simd_float3x2, _ y: simd_float3) -> simd_float2 { x * y }

/// - Returns: Product of *lhs* matrix and *rhs* vector as a single column matrix.
@inlinable
public func simd_mul(_ x: simd_float3x3, _ y: simd_float3) -> simd_float3 { x * y }

/// - Returns: Product of *lhs* matrix and *rhs* vector as a single column matrix.
@inlinable
public func simd_mul(_ x: simd_float3x4, _ y: simd_float3) -> simd_float4 { x * y }

/// - Returns: Product of *lhs* matrix and *rhs* vector as a single column matrix.
@inlinable
public func simd_mul(_ x: simd_float4x2, _ y: simd_float4) -> simd_float2 { x * y }

/// - Returns: Product of *lhs* matrix and *rhs* vector as a single column matrix.
@inlinable
public func simd_mul(_ x: simd_float4x3, _ y: simd_float4) -> simd_float3 { x * y }

/// - Returns: Product of *lhs* matrix and *rhs* vector as a single column matrix.
@inlinable
public func simd_mul(_ x: simd_float4x4, _ y: simd_float4) -> simd_float4 { x * y }

/// - Returns: Product of *lhs* matrix and *rhs* vector as a single column matrix.
@inlinable
public func simd_mul(_ x: simd_double2x2, _ y: simd_double2) -> simd_double2 { x * y }

/// - Returns: Product of *lhs* matrix and *rhs* vector as a single column matrix.
@inlinable
public func simd_mul(_ x: simd_double2x3, _ y: simd_double2) -> simd_double3 { x * y }

/// - Returns: Product of *lhs* matrix and *rhs* vector as a single column matrix.
@inlinable
public func simd_mul(_ x: simd_double2x4, _ y: simd_double2) -> simd_double4 { x * y }

/// - Returns: Product of *lhs* matrix and *rhs* vector as a single column matrix.
@inlinable
public func simd_mul(_ x: simd_double3x2, _ y: simd_double3) -> simd_double2 { x * y }

/// - Returns: Product of *lhs* matrix and *rhs* vector as a single column matrix.
@inlinable
public func simd_mul(_ x: simd_double3x3, _ y: simd_double3) -> simd_double3 { x * y }

/// - Returns: Product of *lhs* matrix and *rhs* vector as a single column matrix.
@inlinable
public func simd_mul(_ x: simd_double3x4, _ y: simd_double3) -> simd_double4 { x * y }

/// - Returns: Product of *lhs* matrix and *rhs* vector as a single column matrix.
@inlinable
public func simd_mul(_ x: simd_double4x2, _ y: simd_double4) -> simd_double2 { x * y }

/// - Returns: Product of *lhs* matrix and *rhs* vector as a single column matrix.
@inlinable
public func simd_mul(_ x: simd_double4x3, _ y: simd_double4) -> simd_double3 { x * y }

/// - Returns: Product of *lhs* matrix and *rhs* vector as a single column matrix.
@inlinable
public func simd_mul(_ x: simd_double4x4, _ y: simd_double4) -> simd_double4 { x * y }


/// - Returns: Product of *lhs* vector as a single row matrix and *rhs* matrix.
@inlinable
public func simd_mul(_ x: simd_float2, _ y: simd_float2x2) -> simd_float2 { x * y }

/// - Returns: Product of *lhs* vector as a single row matrix and *rhs* matrix.
@inlinable
public func simd_mul(_ x: simd_float2, _ y: simd_float3x2) -> simd_float3 { x * y }

/// - Returns: Product of *lhs* vector as a single row matrix and *rhs* matrix.
@inlinable
public func simd_mul(_ x: simd_float2, _ y: simd_float4x2) -> simd_float4 { x * y }

/// - Returns: Product of *lhs* vector as a single row matrix and *rhs* matrix.
@inlinable
public func simd_mul(_ x: simd_float3, _ y: simd_float2x3) -> simd_float2 { x * y }

/// - Returns: Product of *lhs* vector as a single row matrix and *rhs* matrix.
@inlinable
public func simd_mul(_ x: simd_float3, _ y: simd_float3x3) -> simd_float3 { x * y }

/// - Returns: Product of *lhs* vector as a single row matrix and *rhs* matrix.
@inlinable
public func simd_mul(_ x: simd_float3, _ y: simd_float4x3) -> simd_float4 { x * y }

/// - Returns: Product of *lhs* vector as a single row matrix and *rhs* matrix.
@inlinable
public func simd_mul(_ x: simd_float4, _ y: simd_float2x4) -> simd_float2 { x * y }

/// - Returns: Product of *lhs* vector as a single row matrix and *rhs* matrix.
@inlinable
public func simd_mul(_ x: simd_float4, _ y: simd_float3x4) -> simd_float3 { x * y }

/// - Returns: Product of *lhs* vector as a single row matrix and *rhs* matrix.
@inlinable
public func simd_mul(_ x: simd_float4, _ y: simd_float4x4) -> simd_float4 { x * y }

/// - Returns: Product of *lhs* vector as a single row matrix and *rhs* matrix.
@inlinable
public func simd_mul(_ x: simd_double2, _ y: simd_double2x2) -> simd_double2 { x * y }

/// - Returns: Product of *lhs* vector as a single row matrix and *rhs* matrix.
@inlinable
public func simd_mul(_ x: simd_double2, _ y: simd_double3x2) -> simd_double3 { x * y }

/// - Returns: Product of *lhs* vector as a single row matrix and *rhs* matrix.
@inlinable
public func simd_mul(_ x: simd_double2, _ y: simd_double4x2) -> simd_double4 { x * y }

/// - Returns: Product of *lhs* vector as a single row matrix and *rhs* matrix.
@inlinable
public func simd_mul(_ x: simd_double3, _ y: simd_double2x3) -> simd_double2 { x * y }

/// - Returns: Product of *lhs* vector as a single row matrix and *rhs* matrix.
@inlinable
public func simd_mul(_ x: simd_double3, _ y: simd_double3x3) -> simd_double3 { x * y }

/// - Returns: Product of *lhs* vector as a single row matrix and *rhs* matrix.
@inlinable
public func simd_mul(_ x: simd_double3, _ y: simd_double4x3) -> simd_double4 { x * y }

/// - Returns: Product of *lhs* vector as a single row matrix and *rhs* matrix.
@inlinable
public func simd_mul(_ x: simd_double4, _ y: simd_double2x4) -> simd_double2 { x * y }

/// - Returns: Product of *lhs* vector as a single row matrix and *rhs* matrix.
@inlinable
public func simd_mul(_ x: simd_double4, _ y: simd_double3x4) -> simd_double3 { x * y }

/// - Returns: Product of *lhs* vector as a single row matrix and *rhs* matrix.
@inlinable
public func simd_mul(_ x: simd_double4, _ y: simd_double4x4) -> simd_double4 { x * y }


/// - Returns: Composition of two quaternions.
@inlinable
public func simd_mul(_ p: simd_quatf, _ q: simd_quatf) -> simd_quatf { p * q }

/// - Returns: Composition of two quaternions.
@inlinable
public func simd_mul(_ p: simd_quatd, _ q: simd_quatd) -> simd_quatd { p * q }


/// - Returns: Product of *x* and *y* matrices.
@inlinable
public func simd_mul(_ x: simd_float2x2, _ y: simd_float2x2) -> simd_float2x2 { x * y }

/// - Returns: Product of *x* and *y* matrices.
@inlinable
public func simd_mul(_ x: simd_float2x3, _ y: simd_float2x2) -> simd_float2x3 { x * y }

/// - Returns: Product of *x* and *y* matrices.
@inlinable
public func simd_mul(_ x: simd_float2x4, _ y: simd_float2x2) -> simd_float2x4 { x * y }

/// - Returns: Product of *x* and *y* matrices.
@inlinable
public func simd_mul(_ x: simd_float3x2, _ y: simd_float2x3) -> simd_float2x2 { x * y }

/// - Returns: Product of *x* and *y* matrices.
@inlinable
public func simd_mul(_ x: simd_float3x3, _ y: simd_float2x3) -> simd_float2x3 { x * y }

/// - Returns: Product of *x* and *y* matrices.
@inlinable
public func simd_mul(_ x: simd_float3x4, _ y: simd_float2x3) -> simd_float2x4 { x * y }

/// - Returns: Product of *x* and *y* matrices.
@inlinable
public func simd_mul(_ x: simd_float4x2, _ y: simd_float2x4) -> simd_float2x2 { x * y }

/// - Returns: Product of *x* and *y* matrices.
@inlinable
public func simd_mul(_ x: simd_float4x3, _ y: simd_float2x4) -> simd_float2x3 { x * y }

/// - Returns: Product of *x* and *y* matrices.
@inlinable
public func simd_mul(_ x: simd_float4x4, _ y: simd_float2x4) -> simd_float2x4 { x * y }

/// - Returns: Product of *x* and *y* matrices.
@inlinable
public func simd_mul(_ x: simd_double2x2, _ y: simd_double2x2) -> simd_double2x2 { x * y }

/// - Returns: Product of *x* and *y* matrices.
@inlinable
public func simd_mul(_ x: simd_double2x3, _ y: simd_double2x2) -> simd_double2x3 { x * y }

/// - Returns: Product of *x* and *y* matrices.
@inlinable
public func simd_mul(_ x: simd_double2x4, _ y: simd_double2x2) -> simd_double2x4 { x * y }

/// - Returns: Product of *x* and *y* matrices.
@inlinable
public func simd_mul(_ x: simd_double3x2, _ y: simd_double2x3) -> simd_double2x2 { x * y }

/// - Returns: Product of *x* and *y* matrices.
@inlinable
public func simd_mul(_ x: simd_double3x3, _ y: simd_double2x3) -> simd_double2x3 { x * y }

/// - Returns: Product of *x* and *y* matrices.
@inlinable
public func simd_mul(_ x: simd_double3x4, _ y: simd_double2x3) -> simd_double2x4 { x * y }

/// - Returns: Product of *x* and *y* matrices.
@inlinable
public func simd_mul(_ x: simd_double4x2, _ y: simd_double2x4) -> simd_double2x2 { x * y }

/// - Returns: Product of *x* and *y* matrices.
@inlinable
public func simd_mul(_ x: simd_double4x3, _ y: simd_double2x4) -> simd_double2x3 { x * y }

/// - Returns: Product of *x* and *y* matrices.
@inlinable
public func simd_mul(_ x: simd_double4x4, _ y: simd_double2x4) -> simd_double2x4 { x * y }


/// - Returns: Product of *x* and *y* matrices.
@inlinable
public func simd_mul(_ x: simd_float2x2, _ y: simd_float3x2) -> simd_float3x2 { x * y }

/// - Returns: Product of *x* and *y* matrices.
@inlinable
public func simd_mul(_ x: simd_float2x3, _ y: simd_float3x2) -> simd_float3x3 { x * y }

/// - Returns: Product of *x* and *y* matrices.
@inlinable
public func simd_mul(_ x: simd_float2x4, _ y: simd_float3x2) -> simd_float3x4 { x * y }

/// - Returns: Product of *x* and *y* matrices.
@inlinable
public func simd_mul(_ x: simd_float3x2, _ y: simd_float3x3) -> simd_float3x2 { x * y }

/// - Returns: Product of *x* and *y* matrices.
@inlinable
public func simd_mul(_ x: simd_float3x3, _ y: simd_float3x3) -> simd_float3x3 { x * y }

/// - Returns: Product of *x* and *y* matrices.
@inlinable
public func simd_mul(_ x: simd_float3x4, _ y: simd_float3x3) -> simd_float3x4 { x * y }

/// - Returns: Product of *x* and *y* matrices.
@inlinable
public func simd_mul(_ x: simd_float4x2, _ y: simd_float3x4) -> simd_float3x2 { x * y }

/// - Returns: Product of *x* and *y* matrices.
@inlinable
public func simd_mul(_ x: simd_float4x3, _ y: simd_float3x4) -> simd_float3x3 { x * y }

/// - Returns: Product of *x* and *y* matrices.
@inlinable
public func simd_mul(_ x: simd_float4x4, _ y: simd_float3x4) -> simd_float3x4 { x * y }

/// - Returns: Product of *x* and *y* matrices.
@inlinable
public func simd_mul(_ x: simd_double2x2, _ y: simd_double3x2) -> simd_double3x2 { x * y }

/// - Returns: Product of *x* and *y* matrices.
@inlinable
public func simd_mul(_ x: simd_double2x3, _ y: simd_double3x2) -> simd_double3x3 { x * y }

/// - Returns: Product of *x* and *y* matrices.
@inlinable
public func simd_mul(_ x: simd_double2x4, _ y: simd_double3x2) -> simd_double3x4 { x * y }

/// - Returns: Product of *x* and *y* matrices.
@inlinable
public func simd_mul(_ x: simd_double3x2, _ y: simd_double3x3) -> simd_double3x2 { x * y }

/// - Returns: Product of *x* and *y* matrices.
@inlinable
public func simd_mul(_ x: simd_double3x3, _ y: simd_double3x3) -> simd_double3x3 { x * y }

/// - Returns: Product of *x* and *y* matrices.
@inlinable
public func simd_mul(_ x: simd_double3x4, _ y: simd_double3x3) -> simd_double3x4 { x * y }

/// - Returns: Product of *x* and *y* matrices.
@inlinable
public func simd_mul(_ x: simd_double4x2, _ y: simd_double3x4) -> simd_double3x2 { x * y }

/// - Returns: Product of *x* and *y* matrices.
@inlinable
public func simd_mul(_ x: simd_double4x3, _ y: simd_double3x4) -> simd_double3x3 { x * y }

/// - Returns: Product of *x* and *y* matrices.
@inlinable
public func simd_mul(_ x: simd_double4x4, _ y: simd_double3x4) -> simd_double3x4 { x * y }


/// - Returns: Product of *x* and *y* matrices.
@inlinable
public func simd_mul(_ x: simd_float2x2, _ y: simd_float4x2) -> simd_float4x2 { x * y }

/// - Returns: Product of *x* and *y* matrices.
@inlinable
public func simd_mul(_ x: simd_float2x3, _ y: simd_float4x2) -> simd_float4x3 { x * y }

/// - Returns: Product of *x* and *y* matrices.
@inlinable
public func simd_mul(_ x: simd_float2x4, _ y: simd_float4x2) -> simd_float4x4 { x * y }

/// - Returns: Product of *x* and *y* matrices.
@inlinable
public func simd_mul(_ x: simd_float3x2, _ y: simd_float4x3) -> simd_float4x2 { x * y }

/// - Returns: Product of *x* and *y* matrices.
@inlinable
public func simd_mul(_ x: simd_float3x3, _ y: simd_float4x3) -> simd_float4x3 { x * y }

/// - Returns: Product of *x* and *y* matrices.
@inlinable
public func simd_mul(_ x: simd_float3x4, _ y: simd_float4x3) -> simd_float4x4 { x * y }

/// - Returns: Product of *x* and *y* matrices.
@inlinable
public func simd_mul(_ x: simd_float4x2, _ y: simd_float4x4) -> simd_float4x2 { x * y }

/// - Returns: Product of *x* and *y* matrices.
@inlinable
public func simd_mul(_ x: simd_float4x3, _ y: simd_float4x4) -> simd_float4x3 { x * y }

/// - Returns: Product of *x* and *y* matrices.
@inlinable
public func simd_mul(_ x: simd_float4x4, _ y: simd_float4x4) -> simd_float4x4 { x * y }

/// - Returns: Product of *x* and *y* matrices.
@inlinable
public func simd_mul(_ x: simd_double2x2, _ y: simd_double4x2) -> simd_double4x2 { x * y }

/// - Returns: Product of *x* and *y* matrices.
@inlinable
public func simd_mul(_ x: simd_double2x3, _ y: simd_double4x2) -> simd_double4x3 { x * y }

/// - Returns: Product of *x* and *y* matrices.
@inlinable
public func simd_mul(_ x: simd_double2x4, _ y: simd_double4x2) -> simd_double4x4 { x * y }

/// - Returns: Product of *x* and *y* matrices.
@inlinable
public func simd_mul(_ x: simd_double3x2, _ y: simd_double4x3) -> simd_double4x2 { x * y }

/// - Returns: Product of *x* and *y* matrices.
@inlinable
public func simd_mul(_ x: simd_double3x3, _ y: simd_double4x3) -> simd_double4x3 { x * y }

/// - Returns: Product of *x* and *y* matrices.
@inlinable
public func simd_mul(_ x: simd_double3x4, _ y: simd_double4x3) -> simd_double4x4 { x * y }

/// - Returns: Product of *x* and *y* matrices.
@inlinable
public func simd_mul(_ x: simd_double4x2, _ y: simd_double4x4) -> simd_double4x2 { x * y }

/// - Returns: Product of *x* and *y* matrices.
@inlinable
public func simd_mul(_ x: simd_double4x3, _ y: simd_double4x4) -> simd_double4x3 { x * y }

/// - Returns: Product of *x* and *y* matrices.
@inlinable
public func simd_mul(_ x: simd_double4x4, _ y: simd_double4x4) -> simd_double4x4 { x * y }


// MARK: - simd_muladd

/// - Returns: x × y + z.
@inlinable
public func simd_muladd(x: Float, y: Float, z: Float) -> Float { x * y + z }

/// - Returns: x × y + z.
@inlinable
public func simd_muladd(x: simd_float2, y: simd_float2, z: simd_float2) -> simd_float2 { x * y + z }

/// - Returns: x × y + z.
@inlinable
public func simd_muladd(x: simd_float3, y: simd_float3, z: simd_float3) -> simd_float3 { x * y + z }

/// - Returns: x × y + z.
@inlinable
public func simd_muladd(x: simd_float4, y: simd_float4, z: simd_float4) -> simd_float4 { x * y + z }

/// - Returns: x × y + z.
@inlinable
public func simd_muladd(x: simd_float8, y: simd_float8, z: simd_float8) -> simd_float8 { x * y + z }

/// - Returns: x × y + z.
@inlinable
public func simd_muladd(x: simd_float16, y: simd_float16, z: simd_float16) -> simd_float16 { x * y + z }

/// - Returns: x × y + z.
@inlinable
public func simd_muladd(x: Double, y: Double, z: Double) -> Double { x * y + z }

/// - Returns: x × y + z.
@inlinable
public func simd_muladd(x: simd_double2, y: simd_double2, z: simd_double2) -> simd_double2 { x * y + z }

/// - Returns: x × y + z.
@inlinable
public func simd_muladd(x: simd_double3, y: simd_double3, z: simd_double3) -> simd_double3 { x * y + z }

/// - Returns: x × y + z.
@inlinable
public func simd_muladd(x: simd_double4, y: simd_double4, z: simd_double4) -> simd_double4 { x * y + z }

/// - Returns: x × y + z.
@inlinable
public func simd_muladd(x: simd_double8, y: simd_double8, z: simd_double8) -> simd_double8 { x * y + z }


// MARK: - simd_negate

/// - Returns: A quaternion having the negated vector represention.
@inlinable
public func simd_negate(_ q: simd_quatf) -> simd_quatf { -q }

/// - Returns: A quaternion having the negated vector represention.
@inlinable
public func simd_negate(_ q: simd_quatd) -> simd_quatd { -q }


// MARK: - simd_norm_inf

/// - Returns: The infinity norm of *x*.
@inlinable
public func simd_norm_inf(_ x: simd_float2) -> Float { simd_abs(x).max() }

/// - Returns: The infinity norm of *x*.
@inlinable
public func simd_norm_inf(_ x: simd_float3) -> Float { simd_abs(x).max() }

/// - Returns: The infinity norm of *x*.
@inlinable
public func simd_norm_inf(_ x: simd_float4) -> Float { simd_abs(x).max() }

/// - Returns: The infinity norm of *x*.
@inlinable
public func simd_norm_inf(_ x: simd_float8) -> Float { simd_abs(x).max() }

/// - Returns: The infinity norm of *x*.
@inlinable
public func simd_norm_inf(_ x: simd_float16) -> Float { simd_abs(x).max() }

/// - Returns: The infinity norm of *x*.
@inlinable
public func simd_norm_inf(_ x: simd_double2) -> Double { simd_abs(x).max() }

/// - Returns: The infinity norm of *x*.
@inlinable
public func simd_norm_inf(_ x: simd_double3) -> Double { simd_abs(x).max() }

/// - Returns: The infinity norm of *x*.
@inlinable
public func simd_norm_inf(_ x: simd_double4) -> Double { simd_abs(x).max() }

/// - Returns: The infinity norm of *x*.
@inlinable
public func simd_norm_inf(_ x: simd_double8) -> Double { simd_abs(x).max() }


// MARK: - simd_norm_one

/// - Returns: 1-norm of *x*.
@inlinable
public func simd_norm_one(_ x: simd_float2) -> Float { simd_abs(x).sum() }

/// - Returns: 1-norm of *x*.
@inlinable
public func simd_norm_one(_ x: simd_float3) -> Float { simd_abs(x).sum() }

/// - Returns: 1-norm of *x*.
@inlinable
public func simd_norm_one(_ x: simd_float4) -> Float { simd_abs(x).sum() }

/// - Returns: 1-norm of *x*.
@inlinable
public func simd_norm_one(_ x: simd_float8) -> Float { simd_abs(x).sum() }

/// - Returns: 1-norm of *x*.
@inlinable
public func simd_norm_one(_ x: simd_float16) -> Float { simd_abs(x).sum() }

/// - Returns: 1-norm of *x*.
@inlinable
public func simd_norm_one(_ x: simd_double2) -> Double { simd_abs(x).sum() }

/// - Returns: 1-norm of *x*.
@inlinable
public func simd_norm_one(_ x: simd_double3) -> Double { simd_abs(x).sum() }

/// - Returns: 1-norm of *x*.
@inlinable
public func simd_norm_one(_ x: simd_double4) -> Double { simd_abs(x).sum() }

/// - Returns: 1-norm of *x*.
@inlinable
public func simd_norm_one(_ x: simd_double8) -> Double { simd_abs(x).sum() }


// MARK: - simd_normalize

/// - Returns: Unit vector having the same direction as *x*.
///
/// - Note: This function calls ``kvSIMD/simd_fast_normalize(_:)-18c9i`` if `-ffast-math` compiler flag is specified.
///         Otherwise ``kvSIMD/simd_precise_normalize(_:)-nrpz`` is called.
@inlinable
public func simd_normalize(_ x: simd_float2) -> simd_float2 {
#if __FAST_MATH__
    return simd_fast_normalize(x)
#else // !__FAST_MATH__
    return simd_precise_normalize(x)
#endif
}

/// - Returns: Unit vector having the same direction as *x*.
///
/// - Note: This function calls ``kvSIMD/simd_fast_normalize(_:)-9osuc`` if `-ffast-math` compiler flag is specified.
///         Otherwise ``kvSIMD/simd_precise_normalize(_:)-nrpz`` is called.
@inlinable
public func simd_normalize(_ x: simd_float3) -> simd_float3 {
#if __FAST_MATH__
    return simd_fast_normalize(x)
#else // !__FAST_MATH__
    return simd_precise_normalize(x)
#endif
}

/// - Returns: Unit vector having the same direction as *x*.
///
/// - Note: This function calls ``kvSIMD/simd_fast_normalize(_:)-5uvj2`` if `-ffast-math` compiler flag is specified.
///         Otherwise ``kvSIMD/simd_precise_normalize(_:)-nrpz`` is called.
@inlinable
public func simd_normalize(_ x: simd_float4) -> simd_float4 {
#if __FAST_MATH__
    return simd_fast_normalize(x)
#else // !__FAST_MATH__
    return simd_precise_normalize(x)
#endif
}

/// - Returns: Unit vector having the same direction as *x*.
///
/// - Note: This function calls ``kvSIMD/simd_fast_normalize(_:)-9bpya`` if `-ffast-math` compiler flag is specified.
///         Otherwise ``kvSIMD/simd_precise_normalize(_:)-nrpz`` is called.
@inlinable
public func simd_normalize(_ x: simd_float8) -> simd_float8 {
#if __FAST_MATH__
    return simd_fast_normalize(x)
#else // !__FAST_MATH__
    return simd_precise_normalize(x)
#endif
}

/// - Returns: Unit vector having the same direction as *x*.
///
/// - Note: This function calls ``kvSIMD/simd_fast_normalize(_:)-o2kj`` if `-ffast-math` compiler flag is specified.
///         Otherwise ``kvSIMD/simd_precise_normalize(_:)-nrpz`` is called.
@inlinable
public func simd_normalize(_ x: simd_float16) -> simd_float16 {
#if __FAST_MATH__
    return simd_fast_normalize(x)
#else // !__FAST_MATH__
    return simd_precise_normalize(x)
#endif
}

/// - Returns: Unit vector having the same direction as *x*.
///
/// - Note: This function calls ``kvSIMD/simd_fast_normalize(_:)-1p5kg`` if `-ffast-math` compiler flag is specified.
///         Otherwise ``kvSIMD/simd_precise_normalize(_:)-nrpz`` is called.
@inlinable
public func simd_normalize(_ x: simd_double2) -> simd_double2 {
#if __FAST_MATH__
    return simd_fast_normalize(x)
#else // !__FAST_MATH__
    return simd_precise_normalize(x)
#endif
}

/// - Returns: Unit vector having the same direction as *x*.
///
/// - Note: This function calls ``kvSIMD/simd_fast_normalize(_:)-vpxi`` if `-ffast-math` compiler flag is specified.
///         Otherwise ``kvSIMD/simd_precise_normalize(_:)-nrpz`` is called.
@inlinable
public func simd_normalize(_ x: simd_double3) -> simd_double3 {
#if __FAST_MATH__
    return simd_fast_normalize(x)
#else // !__FAST_MATH__
    return simd_precise_normalize(x)
#endif
}

/// - Returns: Unit vector having the same direction as *x*.
///
/// - Note: This function calls ``kvSIMD/simd_fast_normalize(_:)-8uvrz`` if `-ffast-math` compiler flag is specified.
///         Otherwise ``kvSIMD/simd_precise_normalize(_:)-nrpz`` is called.
@inlinable
public func simd_normalize(_ x: simd_double4) -> simd_double4 {
#if __FAST_MATH__
    return simd_fast_normalize(x)
#else // !__FAST_MATH__
    return simd_precise_normalize(x)
#endif
}

/// - Returns: Unit vector having the same direction as *x*.
///
/// - Note: This function calls ``kvSIMD/simd_fast_normalize(_:)-4rcup`` if `-ffast-math` compiler flag is specified.
///         Otherwise ``kvSIMD/simd_precise_normalize(_:)-nrpz`` is called.
@inlinable
public func simd_normalize(_ x: simd_double8) -> simd_double8 {
#if __FAST_MATH__
    return simd_fast_normalize(x)
#else // !__FAST_MATH__
    return simd_precise_normalize(x)
#endif
}

/// - Returns: Given quaternion devided by it's length.
@inlinable
public func simd_normalize(_ q: simd_quatf) -> simd_quatf { q.normalized }

/// - Returns: Given quaternion devided by it's length.
@inlinable
public func simd_normalize(_ q: simd_quatd) -> simd_quatd { q.normalized }


// MARK: - simd_orient

/// - Returns: A value havisng the same sign as sign of angle from *x* to *y* viewed down the *Z* axis. It's calculated as cross product of *x* and *y* extended with z = 1.
@inlinable
public func simd_orient(_ x: simd_float2, _ y: simd_float2) -> Float { simd_cross(x, y).z }

/// - Returns: A value havisng the same sign as sign of angle from *x* to *y* viewed down the *Z* axis. It's calculated as cross product of *x* and *y* extended with z = 1.
@inlinable
public func simd_orient(_ x: simd_double2, _ y: simd_double2) -> Double { simd_cross(x, y).z }

/// - Returns: A positive value when (*x*, *y*, *z*) vectors meet *right hand rule*, a negative value then the vectors meet *left hand rule* and zero otherwise.
///            It's calculated at `dot(cross(x, y), z)`.
@inlinable
public func simd_orient(_ x: simd_float3, _ y: simd_float3, _ z: simd_float3) -> Float { simd_dot(simd_cross(x, y), z) }

/// - Returns: A positive value when (*x*, *y*, *z*) vectors meet *right hand rule*, a negative value then the vectors meet *left hand rule* and zero otherwise.
///            It's calculated at `dot(cross(x, y), z)`.
@inlinable
public func simd_orient(_ x: simd_double3, _ y: simd_double3, _ z: simd_double3) -> Double { simd_dot(simd_cross(x, y), z) }

/// - Returns: A positive value when (*a*, *b*, *c*) coordinates are ordered counter-clockwise when viewed down the *Z* axis, a negative value then the order is clockwise and zero otherwise.
@inlinable
public func simd_orient(_ a: simd_float2, _ b: simd_float2, _ c: simd_float2) -> Float { simd_orient(c - a, c - b) }

/// - Returns: A positive value when (*a*, *b*, *c*) coordinates are ordered counter-clockwise when viewed down the *Z* axis, a negative value then the order is clockwise and zero otherwise.
@inlinable
public func simd_orient(_ a: simd_double2, _ b: simd_double2, _ c: simd_double2) -> Double { simd_orient(c - a, c - b) }

/// - Returns: A positive value when tetrahedron produced by given coordinates is positively-oriented, zero when the coordinates are coplanar, a negative value otherwise.
@inlinable
public func simd_orient(_ a: simd_float3, _ b: simd_float3, _ c: simd_float3, _ d: simd_float3) -> Float { simd_dot(simd_cross(d - a, d - b), c - d) }

/// - Returns: A positive value when tetrahedron produced by given coordinates is positively-oriented, zero when the coordinates are coplanar, a negative value otherwise.
@inlinable
public func simd_orient(_ a: simd_double3, _ b: simd_double3, _ c: simd_double3, _ d: simd_double3) -> Double { simd_dot(simd_cross(d - a, d - b), c - d) }


// MARK: - simd_precise_distance

/// - Returns: Distance between *x* and *y*.
@inlinable
public func simd_precise_distance(_ x: simd_float2, _ y: simd_float2) -> Float { sqrt(simd_distance_squared(x, y)) }

/// - Returns: Distance between *x* and *y*.
@inlinable
public func simd_precise_distance(_ x: simd_float3, _ y: simd_float3) -> Float { sqrt(simd_distance_squared(x, y)) }

/// - Returns: Distance between *x* and *y*.
@inlinable
public func simd_precise_distance(_ x: simd_float4, _ y: simd_float4) -> Float { sqrt(simd_distance_squared(x, y)) }

/// - Returns: Distance between *x* and *y*.
@inlinable
public func simd_precise_distance(_ x: simd_float8, _ y: simd_float8) -> Float { sqrt(simd_distance_squared(x, y)) }

/// - Returns: Distance between *x* and *y*.
@inlinable
public func simd_precise_distance(_ x: simd_float16, _ y: simd_float16) -> Float { sqrt(simd_distance_squared(x, y)) }

/// - Returns: Distance between *x* and *y*.
@inlinable
public func simd_precise_distance(_ x: simd_double2, _ y: simd_double2) -> Double { sqrt(simd_distance_squared(x, y)) }

/// - Returns: Distance between *x* and *y*.
@inlinable
public func simd_precise_distance(_ x: simd_double3, _ y: simd_double3) -> Double { sqrt(simd_distance_squared(x, y)) }

/// - Returns: Distance between *x* and *y*.
@inlinable
public func simd_precise_distance(_ x: simd_double4, _ y: simd_double4) -> Double { sqrt(simd_distance_squared(x, y)) }

/// - Returns: Distance between *x* and *y*.
@inlinable
public func simd_precise_distance(_ x: simd_double8, _ y: simd_double8) -> Double { sqrt(simd_distance_squared(x, y)) }


// MARK: - simd_precise_length

/// - Returns: Length of *x* (sqrt(dot(x, x))).
@inlinable
public func simd_precise_length(_ x: simd_float2) -> Float { sqrt(simd_dot(x, x)) }

/// - Returns: Length of *x* (sqrt(dot(x, x))).
@inlinable
public func simd_precise_length(_ x: simd_float3) -> Float { sqrt(simd_dot(x, x)) }

/// - Returns: Length of *x* (sqrt(dot(x, x))).
@inlinable
public func simd_precise_length(_ x: simd_float4) -> Float { sqrt(simd_dot(x, x)) }

/// - Returns: Length of *x* (sqrt(dot(x, x))).
@inlinable
public func simd_precise_length(_ x: simd_float8) -> Float { sqrt(simd_dot(x, x)) }

/// - Returns: Length of *x* (sqrt(dot(x, x))).
@inlinable
public func simd_precise_length(_ x: simd_float16) -> Float { sqrt(simd_dot(x, x)) }

/// - Returns: Length of *x* (sqrt(dot(x, x))).
@inlinable
public func simd_precise_length(_ x: simd_double2) -> Double { sqrt(simd_dot(x, x)) }

/// - Returns: Length of *x* (sqrt(dot(x, x))).
@inlinable
public func simd_precise_length(_ x: simd_double3) -> Double { sqrt(simd_dot(x, x)) }

/// - Returns: Length of *x* (sqrt(dot(x, x))).
@inlinable
public func simd_precise_length(_ x: simd_double4) -> Double { sqrt(simd_dot(x, x)) }

/// - Returns: Length of *x* (sqrt(dot(x, x))).
@inlinable
public func simd_precise_length(_ x: simd_double8) -> Double { sqrt(simd_dot(x, x)) }


// MARK: - simd_precise_normalize

/// - Returns: Unit vector having the same direction as *x*.
@inlinable
public func simd_precise_normalize(_ x: simd_float2) -> simd_float2 { x * rsqrt(simd_dot(x, x)) }

/// - Returns: Unit vector having the same direction as *x*.
@inlinable
public func simd_precise_normalize(_ x: simd_float3) -> simd_float3 { x * rsqrt(simd_dot(x, x)) }

/// - Returns: Unit vector having the same direction as *x*.
@inlinable
public func simd_precise_normalize(_ x: simd_float4) -> simd_float4 { x * rsqrt(simd_dot(x, x)) }

/// - Returns: Unit vector having the same direction as *x*.
@inlinable
public func simd_precise_normalize(_ x: simd_float8) -> simd_float8 { x * rsqrt(simd_dot(x, x)) }

/// - Returns: Unit vector having the same direction as *x*.
@inlinable
public func simd_precise_normalize(_ x: simd_float16) -> simd_float16 { x * rsqrt(simd_dot(x, x)) }

/// - Returns: Unit vector having the same direction as *x*.
@inlinable
public func simd_precise_normalize(_ x: simd_double2) -> simd_double2 { x * rsqrt(simd_dot(x, x)) }

/// - Returns: Unit vector having the same direction as *x*.
@inlinable
public func simd_precise_normalize(_ x: simd_double3) -> simd_double3 { x * rsqrt(simd_dot(x, x)) }

/// - Returns: Unit vector having the same direction as *x*.
@inlinable
public func simd_precise_normalize(_ x: simd_double4) -> simd_double4 { x * rsqrt(simd_dot(x, x)) }

/// - Returns: Unit vector having the same direction as *x*.
@inlinable
public func simd_precise_normalize(_ x: simd_double8) -> simd_double8 { x * rsqrt(simd_dot(x, x)) }


// MARK: - simd_precise_project

/// - Returns: Projection of *x* onto *y*.
@inlinable
public func simd_precise_project(_ x: simd_float2, _ y: simd_float2) -> simd_float2 { (simd_dot(x, y) / simd_dot(y, y)) * y }

/// - Returns: Projection of *x* onto *y*.
@inlinable
public func simd_precise_project(_ x: simd_float3, _ y: simd_float3) -> simd_float3 { (simd_dot(x, y) / simd_dot(y, y)) * y }

/// - Returns: Projection of *x* onto *y*.
@inlinable
public func simd_precise_project(_ x: simd_float4, _ y: simd_float4) -> simd_float4 { (simd_dot(x, y) / simd_dot(y, y)) * y }

/// - Returns: Projection of *x* onto *y*.
@inlinable
public func simd_precise_project(_ x: simd_float8, _ y: simd_float8) -> simd_float8 { (simd_dot(x, y) / simd_dot(y, y)) * y }

/// - Returns: Projection of *x* onto *y*.
@inlinable
public func simd_precise_project(_ x: simd_float16, _ y: simd_float16) -> simd_float16 { (simd_dot(x, y) / simd_dot(y, y)) * y }

/// - Returns: Projection of *x* onto *y*.
@inlinable
public func simd_precise_project(_ x: simd_double2, _ y: simd_double2) -> simd_double2 { (simd_dot(x, y) / simd_dot(y, y)) * y }

/// - Returns: Projection of *x* onto *y*.
@inlinable
public func simd_precise_project(_ x: simd_double3, _ y: simd_double3) -> simd_double3 { (simd_dot(x, y) / simd_dot(y, y)) * y }

/// - Returns: Projection of *x* onto *y*.
@inlinable
public func simd_precise_project(_ x: simd_double4, _ y: simd_double4) -> simd_double4 { (simd_dot(x, y) / simd_dot(y, y)) * y }

/// - Returns: Projection of *x* onto *y*.
@inlinable
public func simd_precise_project(_ x: simd_double8, _ y: simd_double8) -> simd_double8 { (simd_dot(x, y) / simd_dot(y, y)) * y }


// MARK: - simd_precise_recip

/// - Returns: Reciprocial of *x*.
@inlinable
public func simd_precise_recip(_ x: Float) -> Float { 1.0 / x }

/// - Returns: Elementwise reciprocial of *x*.
@inlinable
public func simd_precise_recip(_ x: simd_float2) -> simd_float2 { simd_float2.one / x }

/// - Returns: Elementwise reciprocial of *x*.
@inlinable
public func simd_precise_recip(_ x: simd_float3) -> simd_float3 { simd_float3.one / x }

/// - Returns: Elementwise reciprocial of *x*.
@inlinable
public func simd_precise_recip(_ x: simd_float4) -> simd_float4 { simd_float4.one / x }

/// - Returns: Elementwise reciprocial of *x*.
@inlinable
public func simd_precise_recip(_ x: simd_float8) -> simd_float8 { simd_float8.one / x }

/// - Returns: Elementwise reciprocial of *x*.
@inlinable
public func simd_precise_recip(_ x: simd_float16) -> simd_float16 { simd_float16.one / x }

/// - Returns: Reciprocial of *x*.
@inlinable
public func simd_precise_recip(_ x: Double) -> Double { 1.0 / x }

/// - Returns: Elementwise reciprocial of *x*.
@inlinable
public func simd_precise_recip(_ x: simd_double2) -> simd_double2 { simd_double2.one / x }

/// - Returns: Elementwise reciprocial of *x*.
@inlinable
public func simd_precise_recip(_ x: simd_double3) -> simd_double3 { simd_double3.one / x }

/// - Returns: Elementwise reciprocial of *x*.
@inlinable
public func simd_precise_recip(_ x: simd_double4) -> simd_double4 { simd_double4.one / x }

/// - Returns: Elementwise reciprocial of *x*.
@inlinable
public func simd_precise_recip(_ x: simd_double8) -> simd_double8 { simd_double8.one / x }


// MARK: - simd_precise_rsqrt

/// - Returns: Reciprocal square root of *x*.
@inlinable
public func simd_precise_rsqrt(_ x: Float) -> Float { 1.0 / sqrt(x) }

/// - Returns: Elementwise reciprocal square root of *x*.
@inlinable
public func simd_precise_rsqrt(_ x: simd_float2) -> simd_float2 { simd_float2.one / sqrt(x) }

/// - Returns: Elementwise reciprocal square root of *x*.
@inlinable
public func simd_precise_rsqrt(_ x: simd_float3) -> simd_float3 { simd_float3.one / sqrt(x) }

/// - Returns: Elementwise reciprocal square root of *x*.
@inlinable
public func simd_precise_rsqrt(_ x: simd_float4) -> simd_float4 { simd_float4.one / sqrt(x) }

/// - Returns: Elementwise reciprocal square root of *x*.
@inlinable
public func simd_precise_rsqrt(_ x: simd_float8) -> simd_float8 { simd_float8.one / sqrt(x) }

/// - Returns: Elementwise reciprocal square root of *x*.
@inlinable
public func simd_precise_rsqrt(_ x: simd_float16) -> simd_float16 { simd_float16.one / sqrt(x) }

/// - Returns: Reciprocal square root of *x*.
@inlinable
public func simd_precise_rsqrt(_ x: Double) -> Double { 1.0 / sqrt(x) }

/// - Returns: Elementwise reciprocal square root of *x*.
@inlinable
public func simd_precise_rsqrt(_ x: simd_double2) -> simd_double2 { simd_double2.one / sqrt(x) }

/// - Returns: Elementwise reciprocal square root of *x*.
@inlinable
public func simd_precise_rsqrt(_ x: simd_double3) -> simd_double3 { simd_double3.one / sqrt(x) }

/// - Returns: Elementwise reciprocal square root of *x*.
@inlinable
public func simd_precise_rsqrt(_ x: simd_double4) -> simd_double4 { simd_double4.one / sqrt(x) }

/// - Returns: Elementwise reciprocal square root of *x*.
@inlinable
public func simd_precise_rsqrt(_ x: simd_double8) -> simd_double8 { simd_double8.one / sqrt(x) }


// MARK: - simd_project

/// - Returns: Projection of *x* onto *y*.
///
/// - Note: This function calls ``kvSIMD/simd_fast_project(_:_:)-1kb50`` if `-ffast-math` compiler flag is specified.
///         Otherwise ``kvSIMD/simd_precise_project(_:_:)-74g1l`` is called.
@inlinable
public func simd_project(_ x: simd_float2, _ y: simd_float2) -> simd_float2 {
#if __FAST_MATH__
    return simd_fast_project(x, y)
#else // !__FAST_MATH__
    return simd_precise_project(x, y)
#endif
}

/// - Returns: Projection of *x* onto *y*.
///
/// - Note: This function calls ``kvSIMD/simd_fast_project(_:_:)-7x3yu`` if `-ffast-math` compiler flag is specified.
///         Otherwise ``kvSIMD/simd_precise_project(_:_:)-48ojf`` is called.
@inlinable
public func simd_project(_ x: simd_float3, _ y: simd_float3) -> simd_float3 {
#if __FAST_MATH__
    return simd_fast_project(x, y)
#else // !__FAST_MATH__
    return simd_precise_project(x, y)
#endif
}

/// - Returns: Projection of *x* onto *y*.
///
/// - Note: This function calls ``kvSIMD/simd_fast_project(_:_:)-87cr5`` if `-ffast-math` compiler flag is specified.
///         Otherwise ``kvSIMD/simd_precise_project(_:_:)-9aw4h`` is called.
@inlinable
public func simd_project(_ x: simd_float4, _ y: simd_float4) -> simd_float4 {
#if __FAST_MATH__
    return simd_fast_project(x, y)
#else // !__FAST_MATH__
    return simd_precise_project(x, y)
#endif
}

/// - Returns: Projection of *x* onto *y*.
///
/// - Note: This function calls ``kvSIMD/simd_fast_project(_:_:)-8ag67`` if `-ffast-math` compiler flag is specified.
///         Otherwise ``kvSIMD/simd_precise_project(_:_:)-6t9uh`` is called.
@inlinable
public func simd_project(_ x: simd_float8, _ y: simd_float8) -> simd_float8 {
#if __FAST_MATH__
    return simd_fast_project(x, y)
#else // !__FAST_MATH__
    return simd_precise_project(x, y)
#endif
}

/// - Returns: Projection of *x* onto *y*.
///
/// - Note: This function calls ``kvSIMD/simd_fast_project(_:_:)-766k0`` if `-ffast-math` compiler flag is specified.
///         Otherwise ``kvSIMD/simd_precise_project(_:_:)-wglk`` is called.
@inlinable
public func simd_project(_ x: simd_float16, _ y: simd_float16) -> simd_float16 {
#if __FAST_MATH__
    return simd_fast_project(x, y)
#else // !__FAST_MATH__
    return simd_precise_project(x, y)
#endif
}

/// - Returns: Projection of *x* onto *y*.
///
/// - Note: This function calls ``kvSIMD/simd_fast_project(_:_:)-3bpwh`` if `-ffast-math` compiler flag is specified.
///         Otherwise ``kvSIMD/simd_precise_project(_:_:)-38qyr`` is called.
@inlinable
public func simd_project(_ x: simd_double2, _ y: simd_double2) -> simd_double2 {
#if __FAST_MATH__
    return simd_fast_project(x, y)
#else // !__FAST_MATH__
    return simd_precise_project(x, y)
#endif
}

/// - Returns: Projection of *x* onto *y*.
///
/// - Note: This function calls ``kvSIMD/simd_fast_project(_:_:)-166je`` if `-ffast-math` compiler flag is specified.
///         Otherwise ``kvSIMD/simd_precise_project(_:_:)-3t4vx`` is called.
@inlinable
public func simd_project(_ x: simd_double3, _ y: simd_double3) -> simd_double3 {
#if __FAST_MATH__
    return simd_fast_project(x, y)
#else // !__FAST_MATH__
    return simd_precise_project(x, y)
#endif
}

/// - Returns: Projection of *x* onto *y*.
///
/// - Note: This function calls ``kvSIMD/simd_fast_project(_:_:)-3oga6`` if `-ffast-math` compiler flag is specified.
///         Otherwise ``kvSIMD/simd_precise_project(_:_:)-5yusy`` is called.
@inlinable
public func simd_project(_ x: simd_double4, _ y: simd_double4) -> simd_double4 {
#if __FAST_MATH__
    return simd_fast_project(x, y)
#else // !__FAST_MATH__
    return simd_precise_project(x, y)
#endif
}

/// - Returns: Projection of *x* onto *y*.
///
/// - Note: This function calls ``kvSIMD/simd_fast_project(_:_:)-16627`` if `-ffast-math` compiler flag is specified.
///         Otherwise ``kvSIMD/simd_precise_project(_:_:)-6q5dg`` is called.
@inlinable
public func simd_project(_ x: simd_double8, _ y: simd_double8) -> simd_double8 {
#if __FAST_MATH__
    return simd_fast_project(x, y)
#else // !__FAST_MATH__
    return simd_precise_project(x, y)
#endif
}


// MARK: - simd_real

/// - Returns: The scalar (real) part of *q*.
@inlinable
public func simd_real(_ q: simd_quatf) -> Float { q.real }

/// - Returns: The scalar (real) part of *q*.
@inlinable
public func simd_real(_ q: simd_quatd) -> Double { q.real }


// MARK: - simd_recip

/// - Returns: Reciprocial of *x*.
///
/// - Note: This function calls ``kvSIMD/simd_fast_recip(_:)-7v0tr`` if `-ffast-math` compiler flag is specified.
///         Otherwise ``kvSIMD/simd_precise_recip(_:)-6fc7x`` is called.
@inlinable
public func simd_recip(_ x: Float) -> Float {
#if __FAST_MATH__
    return simd_fast_recip(x)
#else // !__FAST_MATH__
    return simd_precise_recip(x)
#endif
}

/// - Returns: Elementwise reciprocial of *x*.
///
/// - Note: This function calls ``kvSIMD/simd_fast_recip(_:)-8dirl`` if `-ffast-math` compiler flag is specified.
///         Otherwise ``kvSIMD/simd_precise_recip(_:)-o7aa`` is called.
@inlinable
public func simd_recip(_ x: simd_float2) -> simd_float2 {
#if __FAST_MATH__
    return simd_fast_recip(x)
#else // !__FAST_MATH__
    return simd_precise_recip(x)
#endif
}

/// - Returns: Elementwise reciprocial of *x*.
///
/// - Note: This function calls ``kvSIMD/simd_fast_recip(_:)-a2qq`` if `-ffast-math` compiler flag is specified.
///         Otherwise ``kvSIMD/simd_precise_recip(_:)-4vqlb`` is called.
@inlinable
public func simd_recip(_ x: simd_float3) -> simd_float3 {
#if __FAST_MATH__
    return simd_fast_recip(x)
#else // !__FAST_MATH__
    return simd_precise_recip(x)
#endif
}

/// - Returns: Elementwise reciprocial of *x*.
///
/// - Note: This function calls ``kvSIMD/simd_fast_recip(_:)-3h3nq`` if `-ffast-math` compiler flag is specified.
///         Otherwise ``kvSIMD/simd_precise_recip(_:)-5spja`` is called.
@inlinable
public func simd_recip(_ x: simd_float4) -> simd_float4 {
#if __FAST_MATH__
    return simd_fast_recip(x)
#else // !__FAST_MATH__
    return simd_precise_recip(x)
#endif
}

/// - Returns: Elementwise reciprocial of *x*.
///
/// - Note: This function calls ``kvSIMD/simd_fast_recip(_:)-4okv5`` if `-ffast-math` compiler flag is specified.
///         Otherwise ``kvSIMD/simd_precise_recip(_:)-1ehtc`` is called.
@inlinable
public func simd_recip(_ x: simd_float8) -> simd_float8 {
#if __FAST_MATH__
    return simd_fast_recip(x)
#else // !__FAST_MATH__
    return simd_precise_recip(x)
#endif
}

/// - Returns: Elementwise reciprocial of *x*.
///
/// - Note: This function calls ``kvSIMD/simd_fast_recip(_:)-4lvvn`` if `-ffast-math` compiler flag is specified.
///         Otherwise ``kvSIMD/simd_precise_recip(_:)-6dq9l`` is called.
@inlinable
public func simd_recip(_ x: simd_float16) -> simd_float16 {
#if __FAST_MATH__
    return simd_fast_recip(x)
#else // !__FAST_MATH__
    return simd_precise_recip(x)
#endif
}

/// - Returns: Reciprocial of *x*.
///
/// - Note: This function calls ``kvSIMD/simd_fast_recip(_:)-7v07n`` if `-ffast-math` compiler flag is specified.
///         Otherwise ``kvSIMD/simd_precise_recip(_:)-6fctx`` is called.
@inlinable
public func simd_recip(_ x: Double) -> Double {
#if __FAST_MATH__
    return simd_fast_recip(x)
#else // !__FAST_MATH__
    return simd_precise_recip(x)
#endif
}

/// - Returns: Elementwise reciprocial of *x*.
///
/// - Note: This function calls ``kvSIMD/simd_fast_recip(_:)-wdm`` if `-ffast-math` compiler flag is specified.
///         Otherwise ``kvSIMD/simd_precise_recip(_:)-7iwc`` is called.
@inlinable
public func simd_recip(_ x: simd_double2) -> simd_double2 {
#if __FAST_MATH__
    return simd_fast_recip(x)
#else // !__FAST_MATH__
    return simd_precise_recip(x)
#endif
}

/// - Returns: Elementwise reciprocial of *x*.
///
/// - Note: This function calls ``kvSIMD/simd_fast_recip(_:)-8hjdb`` if `-ffast-math` compiler flag is specified.
///         Otherwise ``kvSIMD/simd_precise_recip(_:)-7upha`` is called.
@inlinable
public func simd_recip(_ x: simd_double3) -> simd_double3 {
#if __FAST_MATH__
    return simd_fast_recip(x)
#else // !__FAST_MATH__
    return simd_precise_recip(x)
#endif
}

/// - Returns: Elementwise reciprocial of *x*.
///
/// - Note: This function calls ``kvSIMD/simd_fast_recip(_:)-9fr30`` if `-ffast-math` compiler flag is specified.
///         Otherwise ``kvSIMD/simd_precise_recip(_:)-9rb7f`` is called.
@inlinable
public func simd_recip(_ x: simd_double4) -> simd_double4 {
#if __FAST_MATH__
    return simd_fast_recip(x)
#else // !__FAST_MATH__
    return simd_precise_recip(x)
#endif
}

/// - Returns: Elementwise reciprocial of *x*.
///
/// - Note: This function calls ``kvSIMD/simd_fast_recip(_:)-nrqg`` if `-ffast-math` compiler flag is specified.
///         Otherwise ``kvSIMD/simd_precise_recip(_:)-5ffqh`` is called.
@inlinable
public func simd_recip(_ x: simd_double8) -> simd_double8 {
#if __FAST_MATH__
    return simd_fast_recip(x)
#else // !__FAST_MATH__
    return simd_precise_recip(x)
#endif
}


// MARK: - simd_reduce_add

/// - Returns: Sum of elements of *x*.
@inlinable
public func simd_reduce_add(_ x: simd_char2) -> CChar { x.wrappedSum() }

/// - Returns: Sum of elements of *x*.
@inlinable
public func simd_reduce_add(_ x: simd_char3) -> CChar { x.wrappedSum() }

/// - Returns: Sum of elements of *x*.
@inlinable
public func simd_reduce_add(_ x: simd_char4) -> CChar { x.wrappedSum() }

/// - Returns: Sum of elements of *x*.
@inlinable
public func simd_reduce_add(_ x: simd_char8) -> CChar { x.wrappedSum() }

/// - Returns: Sum of elements of *x*.
@inlinable
public func simd_reduce_add(_ x: simd_char16) -> CChar { x.wrappedSum() }

/// - Returns: Sum of elements of *x*.
@inlinable
public func simd_reduce_add(_ x: simd_char32) -> CChar { x.wrappedSum() }

/// - Returns: Sum of elements of *x*.
@inlinable
public func simd_reduce_add(_ x: simd_char64) -> CChar { x.wrappedSum() }

/// - Returns: Sum of elements of *x*.
@inlinable
public func simd_reduce_add(_ x: simd_uchar2) -> UInt8 { x.wrappedSum() }

/// - Returns: Sum of elements of *x*.
@inlinable
public func simd_reduce_add(_ x: simd_uchar3) -> UInt8 { x.wrappedSum() }

/// - Returns: Sum of elements of *x*.
@inlinable
public func simd_reduce_add(_ x: simd_uchar4) -> UInt8 { x.wrappedSum() }

/// - Returns: Sum of elements of *x*.
@inlinable
public func simd_reduce_add(_ x: simd_uchar8) -> UInt8 { x.wrappedSum() }

/// - Returns: Sum of elements of *x*.
@inlinable
public func simd_reduce_add(_ x: simd_uchar16) -> UInt8 { x.wrappedSum() }

/// - Returns: Sum of elements of *x*.
@inlinable
public func simd_reduce_add(_ x: simd_uchar32) -> UInt8 { x.wrappedSum() }

/// - Returns: Sum of elements of *x*.
@inlinable
public func simd_reduce_add(_ x: simd_uchar64) -> UInt8 { x.wrappedSum() }

/// - Returns: Sum of elements of *x*.
@inlinable
public func simd_reduce_add(_ x: simd_short2) -> Int16 { x.wrappedSum() }

/// - Returns: Sum of elements of *x*.
@inlinable
public func simd_reduce_add(_ x: simd_short3) -> Int16 { x.wrappedSum() }

/// - Returns: Sum of elements of *x*.
@inlinable
public func simd_reduce_add(_ x: simd_short4) -> Int16 { x.wrappedSum() }

/// - Returns: Sum of elements of *x*.
@inlinable
public func simd_reduce_add(_ x: simd_short8) -> Int16 { x.wrappedSum() }

/// - Returns: Sum of elements of *x*.
@inlinable
public func simd_reduce_add(_ x: simd_short16) -> Int16 { x.wrappedSum() }

/// - Returns: Sum of elements of *x*.
@inlinable
public func simd_reduce_add(_ x: simd_short32) -> Int16 { x.wrappedSum() }

/// - Returns: Sum of elements of *x*.
@inlinable
public func simd_reduce_add(_ x: simd_ushort2) -> UInt16 { x.wrappedSum() }

/// - Returns: Sum of elements of *x*.
@inlinable
public func simd_reduce_add(_ x: simd_ushort3) -> UInt16 { x.wrappedSum() }

/// - Returns: Sum of elements of *x*.
@inlinable
public func simd_reduce_add(_ x: simd_ushort4) -> UInt16 { x.wrappedSum() }

/// - Returns: Sum of elements of *x*.
@inlinable
public func simd_reduce_add(_ x: simd_ushort8) -> UInt16 { x.wrappedSum() }

/// - Returns: Sum of elements of *x*.
@inlinable
public func simd_reduce_add(_ x: simd_ushort16) -> UInt16 { x.wrappedSum() }

/// - Returns: Sum of elements of *x*.
@inlinable
public func simd_reduce_add(_ x: simd_ushort32) -> UInt16 { x.wrappedSum() }

/// - Returns: Sum of elements of *x*.
@inlinable
public func simd_reduce_add(_ x: simd_int2) -> Int32 { x.wrappedSum() }

/// - Returns: Sum of elements of *x*.
@inlinable
public func simd_reduce_add(_ x: simd_int3) -> Int32 { x.wrappedSum() }

/// - Returns: Sum of elements of *x*.
@inlinable
public func simd_reduce_add(_ x: simd_int4) -> Int32 { x.wrappedSum() }

/// - Returns: Sum of elements of *x*.
@inlinable
public func simd_reduce_add(_ x: simd_int8) -> Int32 { x.wrappedSum() }

/// - Returns: Sum of elements of *x*.
@inlinable
public func simd_reduce_add(_ x: simd_int16) -> Int32 { x.wrappedSum() }

/// - Returns: Sum of elements of *x*.
@inlinable
public func simd_reduce_add(_ x: simd_uint2) -> UInt32 { x.wrappedSum() }

/// - Returns: Sum of elements of *x*.
@inlinable
public func simd_reduce_add(_ x: simd_uint3) -> UInt32 { x.wrappedSum() }

/// - Returns: Sum of elements of *x*.
@inlinable
public func simd_reduce_add(_ x: simd_uint4) -> UInt32 { x.wrappedSum() }

/// - Returns: Sum of elements of *x*.
@inlinable
public func simd_reduce_add(_ x: simd_uint8) -> UInt32 { x.wrappedSum() }

/// - Returns: Sum of elements of *x*.
@inlinable
public func simd_reduce_add(_ x: simd_uint16) -> UInt32 { x.wrappedSum() }

/// - Returns: Sum of elements of *x*.
@inlinable
public func simd_reduce_add(_ x: simd_long2) -> simd_long1 { x.wrappedSum() }

/// - Returns: Sum of elements of *x*.
@inlinable
public func simd_reduce_add(_ x: simd_long3) -> simd_long1 { x.wrappedSum() }

/// - Returns: Sum of elements of *x*.
@inlinable
public func simd_reduce_add(_ x: simd_long4) -> simd_long1 { x.wrappedSum() }

/// - Returns: Sum of elements of *x*.
@inlinable
public func simd_reduce_add(_ x: simd_long8) -> simd_long1 { x.wrappedSum() }

/// - Returns: Sum of elements of *x*.
@inlinable
public func simd_reduce_add(_ x: simd_ulong2) -> simd_ulong1 { x.wrappedSum() }

/// - Returns: Sum of elements of *x*.
@inlinable
public func simd_reduce_add(_ x: simd_ulong3) -> simd_ulong1 { x.wrappedSum() }

/// - Returns: Sum of elements of *x*.
@inlinable
public func simd_reduce_add(_ x: simd_ulong4) -> simd_ulong1 { x.wrappedSum() }

/// - Returns: Sum of elements of *x*.
@inlinable
public func simd_reduce_add(_ x: simd_ulong8) -> simd_ulong1 { x.wrappedSum() }

/// - Returns: Sum of elements of *x*.
@inlinable
public func simd_reduce_add(_ x: simd_float2) -> Float { x.sum() }

/// - Returns: Sum of elements of *x*.
@inlinable
public func simd_reduce_add(_ x: simd_float3) -> Float { x.sum() }

/// - Returns: Sum of elements of *x*.
@inlinable
public func simd_reduce_add(_ x: simd_float4) -> Float { x.sum() }

/// - Returns: Sum of elements of *x*.
@inlinable
public func simd_reduce_add(_ x: simd_float8) -> Float { x.sum() }

/// - Returns: Sum of elements of *x*.
@inlinable
public func simd_reduce_add(_ x: simd_float16) -> Float { x.sum() }

/// - Returns: Sum of elements of *x*.
@inlinable
public func simd_reduce_add(_ x: simd_double2) -> Double { x.sum() }

/// - Returns: Sum of elements of *x*.
@inlinable
public func simd_reduce_add(_ x: simd_double3) -> Double { x.sum() }

/// - Returns: Sum of elements of *x*.
@inlinable
public func simd_reduce_add(_ x: simd_double4) -> Double { x.sum() }

/// - Returns: Sum of elements of *x*.
@inlinable
public func simd_reduce_add(_ x: simd_double8) -> Double { x.sum() }


// MARK: - simd_reduce_max

/// - Returns: Maximum element of *x*.
@inlinable
public func simd_reduce_max(_ x: simd_char2) -> CChar { x.max() }

/// - Returns: Maximum element of *x*.
@inlinable
public func simd_reduce_max(_ x: simd_char3) -> CChar { x.max() }

/// - Returns: Maximum element of *x*.
@inlinable
public func simd_reduce_max(_ x: simd_char4) -> CChar { x.max() }

/// - Returns: Maximum element of *x*.
@inlinable
public func simd_reduce_max(_ x: simd_char8) -> CChar { x.max() }

/// - Returns: Maximum element of *x*.
@inlinable
public func simd_reduce_max(_ x: simd_char16) -> CChar { x.max() }

/// - Returns: Maximum element of *x*.
@inlinable
public func simd_reduce_max(_ x: simd_char32) -> CChar { x.max() }

/// - Returns: Maximum element of *x*.
@inlinable
public func simd_reduce_max(_ x: simd_char64) -> CChar { x.max() }

/// - Returns: Maximum element of *x*.
@inlinable
public func simd_reduce_max(_ x: simd_uchar2) -> UInt8 { x.max() }

/// - Returns: Maximum element of *x*.
@inlinable
public func simd_reduce_max(_ x: simd_uchar3) -> UInt8 { x.max() }

/// - Returns: Maximum element of *x*.
@inlinable
public func simd_reduce_max(_ x: simd_uchar4) -> UInt8 { x.max() }

/// - Returns: Maximum element of *x*.
@inlinable
public func simd_reduce_max(_ x: simd_uchar8) -> UInt8 { x.max() }

/// - Returns: Maximum element of *x*.
@inlinable
public func simd_reduce_max(_ x: simd_uchar16) -> UInt8 { x.max() }

/// - Returns: Maximum element of *x*.
@inlinable
public func simd_reduce_max(_ x: simd_uchar32) -> UInt8 { x.max() }

/// - Returns: Maximum element of *x*.
@inlinable
public func simd_reduce_max(_ x: simd_uchar64) -> UInt8 { x.max() }

/// - Returns: Maximum element of *x*.
@inlinable
public func simd_reduce_max(_ x: simd_short2) -> Int16 { x.max() }

/// - Returns: Maximum element of *x*.
@inlinable
public func simd_reduce_max(_ x: simd_short3) -> Int16 { x.max() }

/// - Returns: Maximum element of *x*.
@inlinable
public func simd_reduce_max(_ x: simd_short4) -> Int16 { x.max() }

/// - Returns: Maximum element of *x*.
@inlinable
public func simd_reduce_max(_ x: simd_short8) -> Int16 { x.max() }

/// - Returns: Maximum element of *x*.
@inlinable
public func simd_reduce_max(_ x: simd_short16) -> Int16 { x.max() }

/// - Returns: Maximum element of *x*.
@inlinable
public func simd_reduce_max(_ x: simd_short32) -> Int16 { x.max() }

/// - Returns: Maximum element of *x*.
@inlinable
public func simd_reduce_max(_ x: simd_ushort2) -> UInt16 { x.max() }

/// - Returns: Maximum element of *x*.
@inlinable
public func simd_reduce_max(_ x: simd_ushort3) -> UInt16 { x.max() }

/// - Returns: Maximum element of *x*.
@inlinable
public func simd_reduce_max(_ x: simd_ushort4) -> UInt16 { x.max() }

/// - Returns: Maximum element of *x*.
@inlinable
public func simd_reduce_max(_ x: simd_ushort8) -> UInt16 { x.max() }

/// - Returns: Maximum element of *x*.
@inlinable
public func simd_reduce_max(_ x: simd_ushort16) -> UInt16 { x.max() }

/// - Returns: Maximum element of *x*.
@inlinable
public func simd_reduce_max(_ x: simd_ushort32) -> UInt16 { x.max() }

/// - Returns: Maximum element of *x*.
@inlinable
public func simd_reduce_max(_ x: simd_int2) -> Int32 { x.max() }

/// - Returns: Maximum element of *x*.
@inlinable
public func simd_reduce_max(_ x: simd_int3) -> Int32 { x.max() }

/// - Returns: Maximum element of *x*.
@inlinable
public func simd_reduce_max(_ x: simd_int4) -> Int32 { x.max() }

/// - Returns: Maximum element of *x*.
@inlinable
public func simd_reduce_max(_ x: simd_int8) -> Int32 { x.max() }

/// - Returns: Maximum element of *x*.
@inlinable
public func simd_reduce_max(_ x: simd_int16) -> Int32 { x.max() }

/// - Returns: Maximum element of *x*.
@inlinable
public func simd_reduce_max(_ x: simd_uint2) -> UInt32 { x.max() }

/// - Returns: Maximum element of *x*.
@inlinable
public func simd_reduce_max(_ x: simd_uint3) -> UInt32 { x.max() }

/// - Returns: Maximum element of *x*.
@inlinable
public func simd_reduce_max(_ x: simd_uint4) -> UInt32 { x.max() }

/// - Returns: Maximum element of *x*.
@inlinable
public func simd_reduce_max(_ x: simd_uint8) -> UInt32 { x.max() }

/// - Returns: Maximum element of *x*.
@inlinable
public func simd_reduce_max(_ x: simd_long2) -> simd_long1 { x.max() }

/// - Returns: Maximum element of *x*.
@inlinable
public func simd_reduce_max(_ x: simd_long3) -> simd_long1 { x.max() }

/// - Returns: Maximum element of *x*.
@inlinable
public func simd_reduce_max(_ x: simd_long4) -> simd_long1 { x.max() }

/// - Returns: Maximum element of *x*.
@inlinable
public func simd_reduce_max(_ x: simd_long8) -> simd_long1 { x.max() }

/// - Returns: Maximum element of *x*.
@inlinable
public func simd_reduce_max(_ x: simd_ulong2) -> simd_ulong1 { x.max() }

/// - Returns: Maximum element of *x*.
@inlinable
public func simd_reduce_max(_ x: simd_ulong3) -> simd_ulong1 { x.max() }

/// - Returns: Maximum element of *x*.
@inlinable
public func simd_reduce_max(_ x: simd_ulong4) -> simd_ulong1 { x.max() }

/// - Returns: Maximum element of *x*.
@inlinable
public func simd_reduce_max(_ x: simd_ulong8) -> simd_ulong1 { x.max() }

/// - Returns: Maximum element of *x*.
@inlinable
public func simd_reduce_max(_ x: simd_uint16) -> UInt32 { x.max() }

/// - Returns: Maximum element of *x*.
@inlinable
public func simd_reduce_max(_ x: simd_float2) -> Float { x.max() }

/// - Returns: Maximum element of *x*.
@inlinable
public func simd_reduce_max(_ x: simd_float3) -> Float { x.max() }

/// - Returns: Maximum element of *x*.
@inlinable
public func simd_reduce_max(_ x: simd_float4) -> Float { x.max() }

/// - Returns: Maximum element of *x*.
@inlinable
public func simd_reduce_max(_ x: simd_float8) -> Float { x.max() }

/// - Returns: Maximum element of *x*.
@inlinable
public func simd_reduce_max(_ x: simd_float16) -> Float { x.max() }

/// - Returns: Maximum element of *x*.
@inlinable
public func simd_reduce_max(_ x: simd_double2) -> Double { x.max() }

/// - Returns: Maximum element of *x*.
@inlinable
public func simd_reduce_max(_ x: simd_double3) -> Double { x.max() }

/// - Returns: Maximum element of *x*.
@inlinable
public func simd_reduce_max(_ x: simd_double4) -> Double { x.max() }

/// - Returns: Maximum element of *x*.
@inlinable
public func simd_reduce_max(_ x: simd_double8) -> Double { x.max() }


// MARK: - simd_reduce_min

/// - Returns: Minimum element of *x*.
@inlinable
public func simd_reduce_min(_ x: simd_char2) -> CChar { x.min() }

/// - Returns: Minimum element of *x*.
@inlinable
public func simd_reduce_min(_ x: simd_char3) -> CChar { x.min() }

/// - Returns: Minimum element of *x*.
@inlinable
public func simd_reduce_min(_ x: simd_char4) -> CChar { x.min() }

/// - Returns: Minimum element of *x*.
@inlinable
public func simd_reduce_min(_ x: simd_char8) -> CChar { x.min() }

/// - Returns: Minimum element of *x*.
@inlinable
public func simd_reduce_min(_ x: simd_char16) -> CChar { x.min() }

/// - Returns: Minimum element of *x*.
@inlinable
public func simd_reduce_min(_ x: simd_char32) -> CChar { x.min() }

/// - Returns: Minimum element of *x*.
@inlinable
public func simd_reduce_min(_ x: simd_char64) -> CChar { x.min() }

/// - Returns: Minimum element of *x*.
@inlinable
public func simd_reduce_min(_ x: simd_uchar2) -> UInt8 { x.min() }

/// - Returns: Minimum element of *x*.
@inlinable
public func simd_reduce_min(_ x: simd_uchar3) -> UInt8 { x.min() }

/// - Returns: Minimum element of *x*.
@inlinable
public func simd_reduce_min(_ x: simd_uchar4) -> UInt8 { x.min() }

/// - Returns: Minimum element of *x*.
@inlinable
public func simd_reduce_min(_ x: simd_uchar8) -> UInt8 { x.min() }

/// - Returns: Minimum element of *x*.
@inlinable
public func simd_reduce_min(_ x: simd_uchar16) -> UInt8 { x.min() }

/// - Returns: Minimum element of *x*.
@inlinable
public func simd_reduce_min(_ x: simd_uchar32) -> UInt8 { x.min() }

/// - Returns: Minimum element of *x*.
@inlinable
public func simd_reduce_min(_ x: simd_uchar64) -> UInt8 { x.min() }

/// - Returns: Minimum element of *x*.
@inlinable
public func simd_reduce_min(_ x: simd_short2) -> Int16 { x.min() }

/// - Returns: Minimum element of *x*.
@inlinable
public func simd_reduce_min(_ x: simd_short3) -> Int16 { x.min() }

/// - Returns: Minimum element of *x*.
@inlinable
public func simd_reduce_min(_ x: simd_short4) -> Int16 { x.min() }

/// - Returns: Minimum element of *x*.
@inlinable
public func simd_reduce_min(_ x: simd_short8) -> Int16 { x.min() }

/// - Returns: Minimum element of *x*.
@inlinable
public func simd_reduce_min(_ x: simd_short16) -> Int16 { x.min() }

/// - Returns: Minimum element of *x*.
@inlinable
public func simd_reduce_min(_ x: simd_short32) -> Int16 { x.min() }

/// - Returns: Minimum element of *x*.
@inlinable
public func simd_reduce_min(_ x: simd_ushort2) -> UInt16 { x.min() }

/// - Returns: Minimum element of *x*.
@inlinable
public func simd_reduce_min(_ x: simd_ushort3) -> UInt16 { x.min() }

/// - Returns: Minimum element of *x*.
@inlinable
public func simd_reduce_min(_ x: simd_ushort4) -> UInt16 { x.min() }

/// - Returns: Minimum element of *x*.
@inlinable
public func simd_reduce_min(_ x: simd_ushort8) -> UInt16 { x.min() }

/// - Returns: Minimum element of *x*.
@inlinable
public func simd_reduce_min(_ x: simd_ushort16) -> UInt16 { x.min() }

/// - Returns: Minimum element of *x*.
@inlinable
public func simd_reduce_min(_ x: simd_ushort32) -> UInt16 { x.min() }

/// - Returns: Minimum element of *x*.
@inlinable
public func simd_reduce_min(_ x: simd_int2) -> Int32 { x.min() }

/// - Returns: Minimum element of *x*.
@inlinable
public func simd_reduce_min(_ x: simd_int3) -> Int32 { x.min() }

/// - Returns: Minimum element of *x*.
@inlinable
public func simd_reduce_min(_ x: simd_int4) -> Int32 { x.min() }

/// - Returns: Minimum element of *x*.
@inlinable
public func simd_reduce_min(_ x: simd_int8) -> Int32 { x.min() }

/// - Returns: Minimum element of *x*.
@inlinable
public func simd_reduce_min(_ x: simd_int16) -> Int32 { x.min() }

/// - Returns: Minimum element of *x*.
@inlinable
public func simd_reduce_min(_ x: simd_uint2) -> UInt32 { x.min() }

/// - Returns: Minimum element of *x*.
@inlinable
public func simd_reduce_min(_ x: simd_uint3) -> UInt32 { x.min() }

/// - Returns: Minimum element of *x*.
@inlinable
public func simd_reduce_min(_ x: simd_uint4) -> UInt32 { x.min() }

/// - Returns: Minimum element of *x*.
@inlinable
public func simd_reduce_min(_ x: simd_uint8) -> UInt32 { x.min() }

/// - Returns: Minimum element of *x*.
@inlinable
public func simd_reduce_min(_ x: simd_uint16) -> UInt32 { x.min() }

/// - Returns: Minimum element of *x*.
@inlinable
public func simd_reduce_min(_ x: simd_long2) -> simd_long1 { x.min() }

/// - Returns: Minimum element of *x*.
@inlinable
public func simd_reduce_min(_ x: simd_long3) -> simd_long1 { x.min() }

/// - Returns: Minimum element of *x*.
@inlinable
public func simd_reduce_min(_ x: simd_long4) -> simd_long1 { x.min() }

/// - Returns: Minimum element of *x*.
@inlinable
public func simd_reduce_min(_ x: simd_long8) -> simd_long1 { x.min() }

/// - Returns: Minimum element of *x*.
@inlinable
public func simd_reduce_min(_ x: simd_ulong2) -> simd_ulong1 { x.min() }

/// - Returns: Minimum element of *x*.
@inlinable
public func simd_reduce_min(_ x: simd_ulong3) -> simd_ulong1 { x.min() }

/// - Returns: Minimum element of *x*.
@inlinable
public func simd_reduce_min(_ x: simd_ulong4) -> simd_ulong1 { x.min() }

/// - Returns: Minimum element of *x*.
@inlinable
public func simd_reduce_min(_ x: simd_ulong8) -> simd_ulong1 { x.min() }

/// - Returns: Minimum element of *x*.
@inlinable
public func simd_reduce_min(_ x: simd_float2) -> Float { x.min() }

/// - Returns: Minimum element of *x*.
@inlinable
public func simd_reduce_min(_ x: simd_float3) -> Float { x.min() }

/// - Returns: Minimum element of *x*.
@inlinable
public func simd_reduce_min(_ x: simd_float4) -> Float { x.min() }

/// - Returns: Minimum element of *x*.
@inlinable
public func simd_reduce_min(_ x: simd_float8) -> Float { x.min() }

/// - Returns: Minimum element of *x*.
@inlinable
public func simd_reduce_min(_ x: simd_float16) -> Float { x.min() }

/// - Returns: Minimum element of *x*.
@inlinable
public func simd_reduce_min(_ x: simd_double2) -> Double { x.min() }

/// - Returns: Minimum element of *x*.
@inlinable
public func simd_reduce_min(_ x: simd_double3) -> Double { x.min() }

/// - Returns: Minimum element of *x*.
@inlinable
public func simd_reduce_min(_ x: simd_double4) -> Double { x.min() }

/// - Returns: Minimum element of *x*.
@inlinable
public func simd_reduce_min(_ x: simd_double8) -> Double { x.min() }


// MARK: - simd_reflect

/// - Returns: Reflection of *x* from a plane having unit normal *n*.
@inlinable
public func simd_reflect(_ x: simd_float2, _ n: simd_float2) -> simd_float2 { x - ((2.0 * simd_dot(x, n)) as Float * n) as simd_float2 }

/// - Returns: Reflection of *x* from a plane having unit normal *n*.
@inlinable
public func simd_reflect(_ x: simd_float3, _ n: simd_float3) -> simd_float3 { x - ((2.0 * simd_dot(x, n)) as Float * n) as simd_float3 }

/// - Returns: Reflection of *x* from a plane having unit normal *n*.
@inlinable
public func simd_reflect(_ x: simd_float4, _ n: simd_float4) -> simd_float4 { x - ((2.0 * simd_dot(x, n)) as Float * n) as simd_float4 }

/// - Returns: Reflection of *x* from a plane having unit normal *n*.
@inlinable
public func simd_reflect(_ x: simd_double2, _ n: simd_double2) -> simd_double2 { x - ((2.0 * simd_dot(x, n)) as Double * n) as simd_double2 }

/// - Returns: Reflection of *x* from a plane having unit normal *n*.
@inlinable
public func simd_reflect(_ x: simd_double3, _ n: simd_double3) -> simd_double3 { x - ((2.0 * simd_dot(x, n)) as Double * n) as simd_double3 }

/// - Returns: Reflection of *x* from a plane having unit normal *n*.
@inlinable
public func simd_reflect(_ x: simd_double4, _ n: simd_double4) -> simd_double4 { x - ((2.0 * simd_dot(x, n)) as Double * n) as simd_double4 }


// MARK: - simd_refract

/// - Returns: The reflection vector for incident vector *x*, unit surface normal *n* and index of refraction *eta*.
@inlinable
public func simd_refract(_ x: simd_float2, _ n: simd_float2, _ eta: Float) -> simd_float2 {
    let eta_dot_nx = eta * simd_dot(n, x)
    let k = (1.0 as Float) - eta * eta + eta_dot_nx * eta_dot_nx

    guard k >= 0.0 else { return simd_float2.zero }

    return (eta * x) as simd_float2 - ((eta_dot_nx + sqrt(k)) * n) as simd_float2
}

/// - Returns: The reflection vector for incident vector *x*, unit surface normal *n* and index of refraction *eta*.
@inlinable
public func simd_refract(_ x: simd_float3, _ n: simd_float3, _ eta: Float) -> simd_float3 {
    let eta_dot_nx = eta * simd_dot(n, x)
    let k = (1.0 as Float) - eta * eta + eta_dot_nx * eta_dot_nx

    guard k >= 0.0 else { return simd_float3.zero }

    return (eta * x) as simd_float3 - ((eta_dot_nx + sqrt(k)) * n) as simd_float3
}

/// - Returns: The reflection vector for incident vector *x*, unit surface normal *n* and index of refraction *eta*.
@inlinable
public func simd_refract(_ x: simd_float4, _ n: simd_float4, _ eta: Float) -> simd_float4 {
    let eta_dot_nx = eta * simd_dot(n, x)
    let k = (1.0 as Float) - eta * eta + eta_dot_nx * eta_dot_nx

    guard k >= 0.0 else { return simd_float4.zero }

    return (eta * x) as simd_float4 - ((eta_dot_nx + sqrt(k)) * n) as simd_float4
}

/// - Returns: The reflection vector for incident vector *x*, unit surface normal *n* and index of refraction *eta*.
@inlinable
public func simd_refract(_ x: simd_double2, _ n: simd_double2, _ eta: Double) -> simd_double2 {
    let eta_dot_nx = eta * simd_dot(n, x)
    let k = (1.0 as Double) - eta * eta + eta_dot_nx * eta_dot_nx

    guard k >= 0.0 else { return simd_double2.zero }

    return (eta * x) as simd_double2 - ((eta_dot_nx + sqrt(k)) * n) as simd_double2
}

/// - Returns: The reflection vector for incident vector *x*, unit surface normal *n* and index of refraction *eta*.
@inlinable
public func simd_refract(_ x: simd_double3, _ n: simd_double3, _ eta: Double) -> simd_double3 {
    let eta_dot_nx = eta * simd_dot(n, x)
    let k = (1.0 as Double) - eta * eta + eta_dot_nx * eta_dot_nx

    guard k >= 0.0 else { return simd_double3.zero }

    return (eta * x) as simd_double3 - ((eta_dot_nx + sqrt(k)) * n) as simd_double3
}

/// - Returns: The reflection vector for incident vector *x*, unit surface normal *n* and index of refraction *eta*.
@inlinable
public func simd_refract(_ x: simd_double4, _ n: simd_double4, _ eta: Double) -> simd_double4 {
    let eta_dot_nx = eta * simd_dot(n, x)
    let k = (1.0 as Double) - eta * eta + eta_dot_nx * eta_dot_nx

    guard k >= 0.0 else { return simd_double4.zero }

    return (eta * x) as simd_double4 - ((eta_dot_nx + sqrt(k)) * n) as simd_double4
}


// MARK: - simd_rsqrt

/// - Returns: Reciprocal square root of *x*.
///
/// - Note: This function calls ``kvSIMD/simd_fast_rsqrt(_:)-6finb`` if `-ffast-math` compiler flag is specified.
///         Otherwise ``kvSIMD/simd_precise_rsqrt(_:)-7w28g`` is called.
@inlinable
public func simd_rsqrt(_ x: Float) -> Float {
#if __FAST_MATH__
    return simd_fast_rsqrt(x)
#else // !__FAST_MATH__
    return simd_precise_rsqrt(x)
#endif
}

/// - Returns: Elementwise reciprocal square root of *x*.
///
/// - Note: This function calls ``kvSIMD/simd_fast_rsqrt(_:)-54o7j`` if `-ffast-math` compiler flag is specified.
///         Otherwise ``kvSIMD/simd_precise_rsqrt(_:)-6s6bg`` is called.
@inlinable
public func simd_rsqrt(_ x: simd_float2) -> simd_float2 {
#if __FAST_MATH__
    return simd_fast_rsqrt(x)
#else // !__FAST_MATH__
    return simd_precise_rsqrt(x)
#endif
}

/// - Returns: Elementwise reciprocal square root of *x*.
///
/// - Note: This function calls ``kvSIMD/simd_fast_rsqrt(_:)-54o7j`` if `-ffast-math` compiler flag is specified.
///         Otherwise ``kvSIMD/simd_precise_rsqrt(_:)-6s6bg`` is called.
@inlinable
public func simd_rsqrt(_ x: simd_float3) -> simd_float3 {
#if __FAST_MATH__
    return simd_fast_rsqrt(x)
#else // !__FAST_MATH__
    return simd_precise_rsqrt(x)
#endif
}

/// - Returns: Elementwise reciprocal square root of *x*.
///
/// - Note: This function calls ``kvSIMD/simd_fast_rsqrt(_:)-54o7j`` if `-ffast-math` compiler flag is specified.
///         Otherwise ``kvSIMD/simd_precise_rsqrt(_:)-6s6bg`` is called.
@inlinable
public func simd_rsqrt(_ x: simd_float4) -> simd_float4 {
#if __FAST_MATH__
    return simd_fast_rsqrt(x)
#else // !__FAST_MATH__
    return simd_precise_rsqrt(x)
#endif
}

/// - Returns: Elementwise reciprocal square root of *x*.
///
/// - Note: This function calls ``kvSIMD/simd_fast_rsqrt(_:)-2cuek`` if `-ffast-math` compiler flag is specified.
///         Otherwise ``kvSIMD/simd_precise_rsqrt(_:)-8dq5o`` is called.
@inlinable
public func simd_rsqrt(_ x: simd_float8) -> simd_float8 {
#if __FAST_MATH__
    return simd_fast_rsqrt(x)
#else // !__FAST_MATH__
    return simd_precise_rsqrt(x)
#endif
}

/// - Returns: Elementwise reciprocal square root of *x*.
///
/// - Note: This function calls ``kvSIMD/simd_fast_rsqrt(_:)-9nus1`` if `-ffast-math` compiler flag is specified.
///         Otherwise ``kvSIMD/simd_precise_rsqrt(_:)-4ca6`` is called.
@inlinable
public func simd_rsqrt(_ x: simd_float16) -> simd_float16 {
#if __FAST_MATH__
    return simd_fast_rsqrt(x)
#else // !__FAST_MATH__
    return simd_precise_rsqrt(x)
#endif
}

/// - Returns: Reciprocal square root of *x*.
///
/// - Note: This function calls ``kvSIMD/simd_fast_rsqrt(_:)-94219`` if `-ffast-math` compiler flag is specified.
///         Otherwise ``kvSIMD/simd_precise_rsqrt(_:)-d3ua`` is called.
@inlinable
public func simd_rsqrt(_ x: Double) -> Double {
#if __FAST_MATH__
    return simd_fast_rsqrt(x)
#else // !__FAST_MATH__
    return simd_precise_rsqrt(x)
#endif
}

/// - Returns: Elementwise reciprocal square root of *x*.
///
/// - Note: This function calls ``kvSIMD/simd_fast_rsqrt(_:)-1e53x`` if `-ffast-math` compiler flag is specified.
///         Otherwise ``kvSIMD/simd_precise_rsqrt(_:)-57con`` is called.
@inlinable
public func simd_rsqrt(_ x: simd_double2) -> simd_double2 {
#if __FAST_MATH__
    return simd_fast_rsqrt(x)
#else // !__FAST_MATH__
    return simd_precise_rsqrt(x)
#endif
}

/// - Returns: Elementwise reciprocal square root of *x*.
///
/// - Note: This function calls ``kvSIMD/simd_fast_rsqrt(_:)-39nmm`` if `-ffast-math` compiler flag is specified.
///         Otherwise ``kvSIMD/simd_precise_rsqrt(_:)-559s4`` is called.
@inlinable
public func simd_rsqrt(_ x: simd_double3) -> simd_double3 {
#if __FAST_MATH__
    return simd_fast_rsqrt(x)
#else // !__FAST_MATH__
    return simd_precise_rsqrt(x)
#endif
}

/// - Returns: Elementwise reciprocal square root of *x*.
///
/// - Note: This function calls ``kvSIMD/simd_fast_rsqrt(_:)-6finb`` if `-ffast-math` compiler flag is specified.
///         Otherwise ``kvSIMD/simd_precise_rsqrt(_:)-7w28g`` is called.
@inlinable
public func simd_rsqrt(_ x: simd_double4) -> simd_double4 {
#if __FAST_MATH__
    return simd_fast_rsqrt(x)
#else // !__FAST_MATH__
    return simd_precise_rsqrt(x)
#endif
}

/// - Returns: Elementwise reciprocal square root of *x*.
///
/// - Note: This function calls ``kvSIMD/simd_fast_rsqrt(_:)-2ctsc`` if `-ffast-math` compiler flag is specified.
///         Otherwise ``kvSIMD/simd_precise_rsqrt(_:)-8dqsc`` is called.
@inlinable
public func simd_rsqrt(_ x: simd_double8) -> simd_double8 {
#if __FAST_MATH__
    return simd_fast_rsqrt(x)
#else // !__FAST_MATH__
    return simd_precise_rsqrt(x)
#endif
}


// MARK: - simd_select

/// - Returns: Elementwise selecion from *x* and *y* where element of *y* or *x* is selected whether high-order bit of the correcponding element of *mask* is 1.
@inlinable
public func simd_select(_ x: simd_float2, _ y: simd_float2, _ mask: simd_int2) -> simd_float2 { simd_bitselect(x, y, mask &>> 31) }

/// - Returns: Elementwise selecion from *x* and *y* where element of *y* or *x* is selected whether high-order bit of the correcponding element of *mask* is 1.
@inlinable
public func simd_select(_ x: simd_float3, _ y: simd_float3, _ mask: simd_int3) -> simd_float3 { simd_bitselect(x, y, mask &>> 31) }

/// - Returns: Elementwise selecion from *x* and *y* where element of *y* or *x* is selected whether high-order bit of the correcponding element of *mask* is 1.
@inlinable
public func simd_select(_ x: simd_float4, _ y: simd_float4, _ mask: simd_int4) -> simd_float4 { simd_bitselect(x, y, mask &>> 31) }

/// - Returns: Elementwise selecion from *x* and *y* where element of *y* or *x* is selected whether high-order bit of the correcponding element of *mask* is 1.
@inlinable
public func simd_select(_ x: simd_float8, _ y: simd_float8, _ mask: simd_int8) -> simd_float8 { simd_bitselect(x, y, mask &>> 31) }

/// - Returns: Elementwise selecion from *x* and *y* where element of *y* or *x* is selected whether high-order bit of the correcponding element of *mask* is 1.
@inlinable
public func simd_select(_ x: simd_float16, _ y: simd_float16, _ mask: simd_int16) -> simd_float16 { simd_bitselect(x, y, mask &>> 31) }

/// - Returns: Elementwise selecion from *x* and *y* where element of *y* or *x* is selected whether high-order bit of the correcponding element of *mask* is 1.
@inlinable
public func simd_select(_ x: simd_double2, _ y: simd_double2, _ mask: simd_long2) -> simd_double2 { simd_bitselect(x, y, mask &>> 63) }

/// - Returns: Elementwise selecion from *x* and *y* where element of *y* or *x* is selected whether high-order bit of the correcponding element of *mask* is 1.
@inlinable
public func simd_select(_ x: simd_double3, _ y: simd_double3, _ mask: simd_long3) -> simd_double3 { simd_bitselect(x, y, mask &>> 63) }

/// - Returns: Elementwise selecion from *x* and *y* where element of *y* or *x* is selected whether high-order bit of the correcponding element of *mask* is 1.
@inlinable
public func simd_select(_ x: simd_double4, _ y: simd_double4, _ mask: simd_long4) -> simd_double4 { simd_bitselect(x, y, mask &>> 63) }

/// - Returns: Elementwise selecion from *x* and *y* where element of *y* or *x* is selected whether high-order bit of the correcponding element of *mask* is 1.
@inlinable
public func simd_select(_ x: simd_double8, _ y: simd_double8, _ mask: simd_long8) -> simd_double8 { simd_bitselect(x, y, mask &>> 63) }


// MARK: - simd_sign

/// - Returns: +1, –1 or 0.
@inlinable
public func simd_sign(_ x: Float) -> Float { x == 0.0 || x != x ? 0.0 : copysignf(1.0, x) }

/// - Returns: Elementwise +1, –1 or 0.
@inlinable
public func simd_sign(_ x: simd_float2) -> simd_float2 { .init(simd_sign(x.x), simd_sign(x.y)) }

/// - Returns: Elementwise +1, –1 or 0.
@inlinable
public func simd_sign(_ x: simd_float3) -> simd_float3 { .init(simd_sign(x.x), simd_sign(x.y), simd_sign(x.z)) }

/// - Returns: Elementwise +1, –1 or 0.
@inlinable
public func simd_sign(_ x: simd_float4) -> simd_float4 { .init(simd_sign(x.x), simd_sign(x.y), simd_sign(x.z), simd_sign(x.w)) }

/// - Returns: Elementwise +1, –1 or 0.
@inlinable
public func simd_sign(_ x: simd_float8) -> simd_float8 { .init(simd_sign(x[0]), simd_sign(x[1]), simd_sign(x[2]), simd_sign(x[3]), simd_sign(x[4]), simd_sign(x[5]), simd_sign(x[6]), simd_sign(x[7])) }

/// - Returns: Elementwise +1, –1 or 0.
@inlinable
public func simd_sign(_ x: simd_float16) -> simd_float16 { .init(simd_sign(x[0]), simd_sign(x[1]), simd_sign(x[2]), simd_sign(x[3]), simd_sign(x[4]), simd_sign(x[5]), simd_sign(x[6]), simd_sign(x[7]), simd_sign(x[8]), simd_sign(x[9]), simd_sign(x[10]), simd_sign(x[11]), simd_sign(x[12]), simd_sign(x[13]), simd_sign(x[14]), simd_sign(x[15])) }

/// - Returns: +1, –1 or 0.
@inlinable
public func simd_sign(_ x: Double) -> Double { x == 0.0 || x != x ? 0.0 : copysign(1.0, x) }

/// - Returns: Elementwise +1, –1 or 0.
@inlinable
public func simd_sign(_ x: simd_double2) -> simd_double2 { .init(simd_sign(x.x), simd_sign(x.y)) }

/// - Returns: Elementwise +1, –1 or 0.
@inlinable
public func simd_sign(_ x: simd_double3) -> simd_double3 { .init(simd_sign(x.x), simd_sign(x.y), simd_sign(x.z)) }

/// - Returns: Elementwise +1, –1 or 0.
@inlinable
public func simd_sign(_ x: simd_double4) -> simd_double4 { .init(simd_sign(x.x), simd_sign(x.y), simd_sign(x.z), simd_sign(x.w)) }

/// - Returns: Elementwise +1, –1 or 0.
@inlinable
public func simd_sign(_ x: simd_double8) -> simd_double8 { .init(simd_sign(x[0]), simd_sign(x[1]), simd_sign(x[2]), simd_sign(x[3]), simd_sign(x[4]), simd_sign(x[5]), simd_sign(x[6]), simd_sign(x[7])) }


// MARK: - simd_slerp

/// Direct spherical linear interpolation from *q0* at *t* = 0 to *q1* at *t* = 1.
@usableFromInline
internal func __simd_slerp(_ q0: simd_quatf, _ q1: simd_quatf, _ t: Float) -> simd_quatf {
    let angle = acos(simd_dot(q0, q1))

    guard angle > 1e-4 else { return  .init(vector: simd_normalize(mix(q0.vector, q1.vector, t: t))) }

    let sa⁻¹ = simd_recip(sin(angle))

    return  .init(vector: ((sin((1.0 - t) * angle) * sa⁻¹) * q0.vector) as simd_float4 + ((sin(t * angle) * sa⁻¹) * q1.vector) as simd_float4)
}

/// Direct spherical linear interpolation from *q0* at *t* = 0 to *q1* at *t* = 1.
@usableFromInline
internal func __simd_slerp(_ q0: simd_quatd, _ q1: simd_quatd, _ t: Double) -> simd_quatd {
    let angle = acos(simd_dot(q0, q1))

    guard angle > 1e-4 else { return  .init(vector: simd_normalize(mix(q0.vector, q1.vector, t: t))) }

    let sa⁻¹ = simd_recip(sin(angle))

    return  .init(vector: ((sin((1.0 - t) * angle) * sa⁻¹) * q0.vector) as simd_double4 + ((sin(t * angle) * sa⁻¹) * q1.vector) as simd_double4)
}


/// - Returns: Spherical linear interpolation along the shortest arc from *q0* at *t* = 0 to *q1* at *t* = 1.
@inlinable
public func simd_slerp(_ q0: simd_quatf, _ q1: simd_quatf, _ t: Float) -> simd_quatf {
    __simd_slerp(q0, simd_dot(q0, q1) >= 0.0 ? q1 : (-q1), t)
}

/// - Returns: Spherical linear interpolation along the shortest arc from *q0* at *t* = 0 to *q1* at *t* = 1.
@inlinable
public func simd_slerp(_ q0: simd_quatd, _ q1: simd_quatd, _ t: Double) -> simd_quatd {
    __simd_slerp(q0, simd_dot(q0, q1) >= 0.0 ? q1 : (-q1), t)
}


// MARK: - simd_slerp_longest

/// - Returns: Spherical linear interpolation along the longest arc from *q0* at *t* = 0 to *q1* at *t* = 1.
@inlinable
public func simd_slerp_longest(_ q0: simd_quatf, _ q1: simd_quatf, _ t: Float) -> simd_quatf {
    __simd_slerp(q0, simd_dot(q0, q1) >= 0.0 ? -q1 : q1, t)
}

/// - Returns: Spherical linear interpolation along the longest arc from *q0* at *t* = 0 to *q1* at *t* = 1.
@inlinable
public func simd_slerp_longest(_ q0: simd_quatd, _ q1: simd_quatd, _ t: Double) -> simd_quatd{
    __simd_slerp(q0, simd_dot(q0, q1) >= 0.0 ? -q1 : q1, t)
}


// MARK: - simd_smoothstep

/// - Returns: Result of the smooth interpolation between 0.0 at *edge0* and 1.0 at *edge1*.
@inlinable
public func simd_smoothstep(_ edge0: Float, _ edge1: Float, _ x: Float) -> Float {
    let t = simd_clamp((x - edge0) / (edge1 - edge0), 0.0, 1.0)
    return t * t * (3.0 - 2.0 * t)
}

/// - Returns: Elementwise `smoothtep`.
@inlinable
public func simd_smoothstep(_ edge0: simd_float2, _ edge1: simd_float2, _ x: simd_float2) -> simd_float2 {
    let t = simd_clamp((x - edge0) / (edge1 - edge0), simd_float2.zero, simd_float2.one)
    return t * t * (simd_float2(repeating: 3.0) - (2.0 * t) as simd_float2)
}

/// - Returns: Elementwise `smoothtep`.
@inlinable
public func simd_smoothstep(_ edge0: simd_float3, _ edge1: simd_float3, _ x: simd_float3) -> simd_float3 {
    let t = simd_clamp((x - edge0) / (edge1 - edge0), simd_float3.zero, simd_float3.one)
    return t * t * (simd_float3(repeating: 3.0) - (2.0 * t) as simd_float3)
}

/// - Returns: Elementwise `smoothtep`.
@inlinable
public func simd_smoothstep(_ edge0: simd_float4, _ edge1: simd_float4, _ x: simd_float4) -> simd_float4 {
    let t = simd_clamp((x - edge0) / (edge1 - edge0), simd_float4.zero, simd_float4.one)
    return t * t * (simd_float4(repeating: 3.0) - (2.0 * t) as simd_float4)
}

/// - Returns: Elementwise `smoothtep`.
@inlinable
public func simd_smoothstep(_ edge0: simd_float8, _ edge1: simd_float8, _ x: simd_float8) -> simd_float8 {
    let t = simd_clamp((x - edge0) / (edge1 - edge0), simd_float8.zero, simd_float8.one)
    return t * t * (simd_float8(repeating: 3.0) - (2.0 * t) as simd_float8)
}

/// - Returns: Elementwise `smoothtep`.
@inlinable
public func simd_smoothstep(_ edge0: simd_float16, _ edge1: simd_float16, _ x: simd_float16) -> simd_float16 {
    let t = simd_clamp((x - edge0) / (edge1 - edge0), simd_float16.zero, simd_float16.one)
    return t * t * (simd_float16(repeating: 3.0) - (2.0 * t) as simd_float16)
}

/// - Returns: Result of the smooth interpolation between 0.0 at *edge0* and 1.0 at *edge1*.
@inlinable
public func simd_smoothstep(_ edge0: Double, _ edge1: Double, _ x: Double) -> Double {
    let t = simd_clamp((x - edge0) / (edge1 - edge0), 0.0, 1.0)
    return t * t * (3.0 - 2.0 * t)
}

/// - Returns: Elementwise `smoothtep`.
@inlinable
public func simd_smoothstep(_ edge0: simd_double2, _ edge1: simd_double2, _ x: simd_double2) -> simd_double2 {
    let t = simd_clamp((x - edge0) / (edge1 - edge0), simd_double2.zero, simd_double2.one)
    return t * t * (simd_double2(repeating: 3.0) - (2.0 * t) as simd_double2)
}

/// - Returns: Elementwise `smoothtep`.
@inlinable
public func simd_smoothstep(_ edge0: simd_double3, _ edge1: simd_double3, _ x: simd_double3) -> simd_double3 {
    let t = simd_clamp((x - edge0) / (edge1 - edge0), simd_double3.zero, simd_double3.one)
    return t * t * (simd_double3(repeating: 3.0) - (2.0 * t) as simd_double3)
}

/// - Returns: Elementwise `smoothtep`.
@inlinable
public func simd_smoothstep(_ edge0: simd_double4, _ edge1: simd_double4, _ x: simd_double4) -> simd_double4 {
    let t = simd_clamp((x - edge0) / (edge1 - edge0), simd_double4.zero, simd_double4.one)
    return t * t * (simd_double4(repeating: 3.0) - (2.0 * t) as simd_double4)
}

/// - Returns: Elementwise `smoothtep`.
@inlinable
public func simd_smoothstep(_ edge0: simd_double8, _ edge1: simd_double8, _ x: simd_double8) -> simd_double8 {
    let t = simd_clamp((x - edge0) / (edge1 - edge0), simd_double8.zero, simd_double8.one)
    return t * t * (simd_double8(repeating: 3.0) - (2.0 * t) as simd_double8)
}


// MARK: - simd_spline

/// - Returns: Spherical cubic spline interpolation (*Squad* — spherical and quadrangle) from *q0* at *t* = 0 to *q3* at *t* = 1 with *q1* and *q2* as the control points.
@inlinable
public func simd_spline(_ q0: simd_quatf, _ q1: simd_quatf, _ q2: simd_quatf, _ q3: simd_quatf, _ t: Float) -> simd_quatf {

    func S(_ q0: simd_quatf, _ q1: simd_quatf, _ q2: simd_quatf) -> simd_quatf {
        let l0 = log(q0 * q1.inverse)
        let l2 = log(q2 * q1.inverse)

        return q1 * exp(-0.25 * (l0 + l2))
    }

    let s1 = S(q0, q1, q2)
    let s2 = S(q1, q2, q3)

    let q12 = __simd_slerp(q1, q2, t)
    let s12 = __simd_slerp(s1, s2, t)
    return __simd_slerp(q12, s12, 2.0 * t * (1 - t))
}

/// - Returns: Spherical cubic spline interpolation (*Squad* — spherical and quadrangle) from *q0* at *t* = 0 to *q3* at *t* = 1 with *q1* and *q2* as the control points.
@inlinable
public func simd_spline(_ q0: simd_quatd, _ q1: simd_quatd, _ q2: simd_quatd, _ q3: simd_quatd, _ t: Double) -> simd_quatd {

    func S(_ q0: simd_quatd, _ q1: simd_quatd, _ q2: simd_quatd) -> simd_quatd {
        let l0 = log(q0 * q1.inverse)
        let l2 = log(q2 * q1.inverse)

        return q1 * exp(-0.25 * (l0 + l2))
    }

    let s1 = S(q0, q1, q2)
    let s2 = S(q1, q2, q3)

    let q12 = __simd_slerp(q1, q2, t)
    let s12 = __simd_slerp(s1, s2, t)
    return __simd_slerp(q12, s12, 2.0 * t * (1 - t))
}


// MARK: - simd_step

/// - Returns: 0.0 or 1.0 whether *x* is less then *edge*.
@inlinable
public func simd_step(_ edge: Float, _ x: Float) -> Float { x < edge ? 0.0 : 1.0 }

/// - Returns: Elementwise `step`.
@inlinable
public func simd_step(_ edge: simd_float2, _ x: simd_float2) -> simd_float2 {
    .init(x.x < edge.x ? 0.0 : 1.0,
          x.y < edge.y ? 0.0 : 1.0)
}

/// - Returns: Elementwise `step`.
@inlinable
public func simd_step(_ edge: simd_float3, _ x: simd_float3) -> simd_float3 {
    .init(x.x < edge.x ? 0.0 : 1.0,
          x.y < edge.y ? 0.0 : 1.0,
          x.z < edge.z ? 0.0 : 1.0)
}

/// - Returns: Elementwise `step`.
@inlinable
public func simd_step(_ edge: simd_float4, _ x: simd_float4) -> simd_float4 {
    .init(x.x < edge.x ? 0.0 : 1.0,
          x.y < edge.y ? 0.0 : 1.0,
          x.z < edge.z ? 0.0 : 1.0,
          x.w < edge.w ? 0.0 : 1.0)
}

/// - Returns: Elementwise `step`.
@inlinable
public func simd_step(_ edge: simd_float8, _ x: simd_float8) -> simd_float8 {
    .init(x[0] < edge[0] ? 0.0 : 1.0, x[1] < edge[1] ? 0.0 : 1.0, x[2] < edge[2] ? 0.0 : 1.0, x[3] < edge[3] ? 0.0 : 1.0,
          x[4] < edge[4] ? 0.0 : 1.0, x[5] < edge[5] ? 0.0 : 1.0, x[6] < edge[6] ? 0.0 : 1.0, x[7] < edge[7] ? 0.0 : 1.0)
}

/// - Returns: Elementwise `step`.
@inlinable
public func simd_step(_ edge: simd_float16, _ x: simd_float16) -> simd_float16 {
    .init(x[0 ] < edge[0 ] ? 0.0 : 1.0, x[1 ] < edge[1 ] ? 0.0 : 1.0, x[2 ] < edge[2 ] ? 0.0 : 1.0, x[3 ] < edge[3 ] ? 0.0 : 1.0,
          x[4 ] < edge[4 ] ? 0.0 : 1.0, x[5 ] < edge[5 ] ? 0.0 : 1.0, x[6 ] < edge[6 ] ? 0.0 : 1.0, x[7 ] < edge[7 ] ? 0.0 : 1.0,
          x[8 ] < edge[8 ] ? 0.0 : 1.0, x[9 ] < edge[9 ] ? 0.0 : 1.0, x[10] < edge[10] ? 0.0 : 1.0, x[11] < edge[11] ? 0.0 : 1.0,
          x[12] < edge[12] ? 0.0 : 1.0, x[13] < edge[13] ? 0.0 : 1.0, x[14] < edge[14] ? 0.0 : 1.0, x[15] < edge[15] ? 0.0 : 1.0)
}

/// - Returns: 0.0 or 1.0 whether *x* is less then *edge*.
@inlinable
public func simd_step(_ edge: Double, _ x: Double) -> Double { x < edge ? 0.0 : 1.0 }

/// - Returns: Elementwise `step`.
@inlinable
public func simd_step(_ edge: simd_double2, _ x: simd_double2) -> simd_double2 {
    .init(x.x < edge.x ? 0.0 : 1.0,
          x.y < edge.y ? 0.0 : 1.0)
}

/// - Returns: Elementwise `step`.
@inlinable
public func simd_step(_ edge: simd_double3, _ x: simd_double3) -> simd_double3 {
    .init(x.x < edge.x ? 0.0 : 1.0,
          x.y < edge.y ? 0.0 : 1.0,
          x.z < edge.z ? 0.0 : 1.0)
}

/// - Returns: Elementwise `step`.
@inlinable
public func simd_step(_ edge: simd_double4, _ x: simd_double4) -> simd_double4 {
    .init(x.x < edge.x ? 0.0 : 1.0,
          x.y < edge.y ? 0.0 : 1.0,
          x.z < edge.z ? 0.0 : 1.0,
          x.w < edge.w ? 0.0 : 1.0)
}

/// - Returns: Elementwise `step`.
@inlinable
public func simd_step(_ edge: simd_double8, _ x: simd_double8) -> simd_double8 {
    .init(x[0] < edge[0] ? 0.0 : 1.0, x[1] < edge[1] ? 0.0 : 1.0, x[2] < edge[2] ? 0.0 : 1.0, x[3] < edge[3] ? 0.0 : 1.0,
          x[4] < edge[4] ? 0.0 : 1.0, x[5] < edge[5] ? 0.0 : 1.0, x[6] < edge[6] ? 0.0 : 1.0, x[7] < edge[7] ? 0.0 : 1.0)
}


// MARK: - simd_sub

/// - Returns: Componentwise subtraction of given quaternions.
@inlinable
public func simd_sub(_ p: simd_quatf, _ q: simd_quatf) -> simd_quatf { p - q }

/// - Returns: Componentwise subtraction of given quaternions.
@inlinable
public func simd_sub(_ p: simd_quatd, _ q: simd_quatd) -> simd_quatd { p - q }

/// - Returns: Componentwise subtraction of given matrices.
@inlinable
public func simd_sub(_ x: simd_float2x2, _ y: simd_float2x2) -> simd_float2x2 { x - y }

/// - Returns: Componentwise subtraction of given matrices.
@inlinable
public func simd_sub(_ x: simd_float3x2, _ y: simd_float3x2) -> simd_float3x2 { x - y }

/// - Returns: Componentwise subtraction of given matrices.
@inlinable
public func simd_sub(_ x: simd_float4x2, _ y: simd_float4x2) -> simd_float4x2 { x - y }

/// - Returns: Componentwise subtraction of given matrices.
@inlinable
public func simd_sub(_ x: simd_float2x3, _ y: simd_float2x3) -> simd_float2x3 { x - y }

/// - Returns: Componentwise subtraction of given matrices.
@inlinable
public func simd_sub(_ x: simd_float3x3, _ y: simd_float3x3) -> simd_float3x3 { x - y }

/// - Returns: Componentwise subtraction of given matrices.
@inlinable
public func simd_sub(_ x: simd_float4x3, _ y: simd_float4x3) -> simd_float4x3 { x - y }

/// - Returns: Componentwise subtraction of given matrices.
@inlinable
public func simd_sub(_ x: simd_float2x4, _ y: simd_float2x4) -> simd_float2x4 { x - y }

/// - Returns: Componentwise subtraction of given matrices.
@inlinable
public func simd_sub(_ x: simd_float3x4, _ y: simd_float3x4) -> simd_float3x4 { x - y }

/// - Returns: Componentwise subtraction of given matrices.
@inlinable
public func simd_sub(_ x: simd_float4x4, _ y: simd_float4x4) -> simd_float4x4 { x - y }

/// - Returns: Componentwise subtraction of given matrices.
@inlinable
public func simd_sub(_ x: simd_double2x2, _ y: simd_double2x2) -> simd_double2x2 { x - y }

/// - Returns: Componentwise subtraction of given matrices.
@inlinable
public func simd_sub(_ x: simd_double3x2, _ y: simd_double3x2) -> simd_double3x2 { x - y }

/// - Returns: Componentwise subtraction of given matrices.
@inlinable
public func simd_sub(_ x: simd_double4x2, _ y: simd_double4x2) -> simd_double4x2 { x - y }

/// - Returns: Componentwise subtraction of given matrices.
@inlinable
public func simd_sub(_ x: simd_double2x3, _ y: simd_double2x3) -> simd_double2x3 { x - y }

/// - Returns: Componentwise subtraction of given matrices.
@inlinable
public func simd_sub(_ x: simd_double3x3, _ y: simd_double3x3) -> simd_double3x3 { x - y }

/// - Returns: Componentwise subtraction of given matrices.
@inlinable
public func simd_sub(_ x: simd_double4x3, _ y: simd_double4x3) -> simd_double4x3 { x - y }

/// - Returns: Componentwise subtraction of given matrices.
@inlinable
public func simd_sub(_ x: simd_double2x4, _ y: simd_double2x4) -> simd_double2x4 { x - y }

/// - Returns: Componentwise subtraction of given matrices.
@inlinable
public func simd_sub(_ x: simd_double3x4, _ y: simd_double3x4) -> simd_double3x4 { x - y }

/// - Returns: Componentwise subtraction of given matrices.
@inlinable
public func simd_sub(_ x: simd_double4x4, _ y: simd_double4x4) -> simd_double4x4 { x - y }


// MARK: - simd_trace

/// - Returns: Trace of *x*.
@inlinable
public func simd_trace(_ x: simd_float2x2) -> Float { x.columns.0.x + x.columns.1.y }

/// - Returns: Trace of *x*.
@inlinable
public func simd_trace(_ x: simd_float3x3) -> Float { x.columns.0.x + x.columns.1.y + x.columns.2.z }

/// - Returns: Trace of *x*.
@inlinable
public func simd_trace(_ x: simd_float4x4) -> Float { x.columns.0.x + x.columns.1.y + x.columns.2.z + x.columns.3.w }

/// - Returns: Trace of *x*.
@inlinable
public func simd_trace(_ x: simd_double2x2) -> Double { x.columns.0.x + x.columns.1.y }

/// - Returns: Trace of *x*.
@inlinable
public func simd_trace(_ x: simd_double3x3) -> Double { x.columns.0.x + x.columns.1.y + x.columns.2.z }

/// - Returns: Trace of *x*.
@inlinable
public func simd_trace(_ x: simd_double4x4) -> Double { x.columns.0.x + x.columns.1.y + x.columns.2.z + x.columns.3.w }


// MARK: - simd_transpose

/// - Returns: Transpose of *x*.
@inlinable
public func simd_transpose(_ x: simd_float2x2) -> simd_float2x2 { x.transpose }

/// - Returns: Transpose of *x*.
@inlinable
public func simd_transpose(_ x: simd_float2x3) -> simd_float3x2 { x.transpose }

/// - Returns: Transpose of *x*.
@inlinable
public func simd_transpose(_ x: simd_float2x4) -> simd_float4x2 { x.transpose }

/// - Returns: Transpose of *x*.
@inlinable
public func simd_transpose(_ x: simd_float3x2) -> simd_float2x3 { x.transpose }

/// - Returns: Transpose of *x*.
@inlinable
public func simd_transpose(_ x: simd_float3x3) -> simd_float3x3 { x.transpose }

/// - Returns: Transpose of *x*.
@inlinable
public func simd_transpose(_ x: simd_float3x4) -> simd_float4x3 { x.transpose }

/// - Returns: Transpose of *x*.
@inlinable
public func simd_transpose(_ x: simd_float4x2) -> simd_float2x4 { x.transpose }

/// - Returns: Transpose of *x*.
@inlinable
public func simd_transpose(_ x: simd_float4x3) -> simd_float3x4 { x.transpose }

/// - Returns: Transpose of *x*.
@inlinable
public func simd_transpose(_ x: simd_float4x4) -> simd_float4x4 { x.transpose }

/// - Returns: Transpose of *x*.
@inlinable
public func simd_transpose(_ x: simd_double2x2) -> simd_double2x2 { x.transpose }

/// - Returns: Transpose of *x*.
@inlinable
public func simd_transpose(_ x: simd_double2x3) -> simd_double3x2 { x.transpose }

/// - Returns: Transpose of *x*.
@inlinable
public func simd_transpose(_ x: simd_double2x4) -> simd_double4x2 { x.transpose }

/// - Returns: Transpose of *x*.
@inlinable
public func simd_transpose(_ x: simd_double3x2) -> simd_double2x3 { x.transpose }

/// - Returns: Transpose of *x*.
@inlinable
public func simd_transpose(_ x: simd_double3x3) -> simd_double3x3 { x.transpose }

/// - Returns: Transpose of *x*.
@inlinable
public func simd_transpose(_ x: simd_double3x4) -> simd_double4x3 { x.transpose }

/// - Returns: Transpose of *x*.
@inlinable
public func simd_transpose(_ x: simd_double4x2) -> simd_double2x4 { x.transpose }

/// - Returns: Transpose of *x*.
@inlinable
public func simd_transpose(_ x: simd_double4x3) -> simd_double3x4 { x.transpose }

/// - Returns: Transpose of *x*.
@inlinable
public func simd_transpose(_ x: simd_double4x4) -> simd_double4x4 { x.transpose }


// MARK: - sin

/// - Returns: Elementwise sine of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func sin(_ x: simd_float2) -> simd_float2 { .init(sin(x.x), sin(x.y)) }

/// - Returns: Elementwise sine of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func sin(_ x: simd_float3) -> simd_float3 { .init(sin(x.x), sin(x.y), sin(x.z)) }

/// - Returns: Elementwise sine of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func sin(_ x: simd_float4) -> simd_float4 { .init(sin(x.x), sin(x.y), sin(x.z), sin(x.w)) }

/// - Returns: Elementwise sine of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func sin(_ x: simd_float8) -> simd_float8 { .init(sin(x[0]), sin(x[1]), sin(x[2]), sin(x[3]), sin(x[4]), sin(x[5]), sin(x[6]), sin(x[7])) }

/// - Returns: Elementwise sine of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func sin(_ x: simd_float16) -> simd_float16 { .init(sin(x[0]), sin(x[1]), sin(x[2]), sin(x[3]), sin(x[4]), sin(x[5]), sin(x[6]), sin(x[7]), sin(x[8]), sin(x[9]), sin(x[10]), sin(x[11]), sin(x[12]), sin(x[13]), sin(x[14]), sin(x[15])) }

/// - Returns: Elementwise sine of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func sin(_ x: simd_double2) -> simd_double2 { .init(sin(x.x), sin(x.y)) }

/// - Returns: Elementwise sine of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func sin(_ x: simd_double3) -> simd_double3 { .init(sin(x.x), sin(x.y), sin(x.z)) }

/// - Returns: Elementwise sine of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func sin(_ x: simd_double4) -> simd_double4 { .init(sin(x.x), sin(x.y), sin(x.z), sin(x.w)) }

/// - Returns: Elementwise sine of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func sin(_ x: simd_double8) -> simd_double8 { .init(sin(x[0]), sin(x[1]), sin(x[2]), sin(x[3]), sin(x[4]), sin(x[5]), sin(x[6]), sin(x[7])) }


// MARK: - sinh

/// - Returns: Elementwise hyperbolic sine of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func sinh(_ x: simd_float2) -> simd_float2 { .init(sinh(x.x), sinh(x.y)) }

/// - Returns: Elementwise hyperbolic sine of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func sinh(_ x: simd_float3) -> simd_float3 { .init(sinh(x.x), sinh(x.y), sinh(x.z)) }

/// - Returns: Elementwise hyperbolic sine of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func sinh(_ x: simd_float4) -> simd_float4 { .init(sinh(x.x), sinh(x.y), sinh(x.z), sinh(x.w)) }

/// - Returns: Elementwise hyperbolic sine of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func sinh(_ x: simd_float8) -> simd_float8 { .init(sinh(x[0]), sinh(x[1]), sinh(x[2]), sinh(x[3]), sinh(x[4]), sinh(x[5]), sinh(x[6]), sinh(x[7])) }

/// - Returns: Elementwise hyperbolic sine of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func sinh(_ x: simd_float16) -> simd_float16 { .init(sinh(x[0]), sinh(x[1]), sinh(x[2]), sinh(x[3]), sinh(x[4]), sinh(x[5]), sinh(x[6]), sinh(x[7]), sinh(x[8]), sinh(x[9]), sinh(x[10]), sinh(x[11]), sinh(x[12]), sinh(x[13]), sinh(x[14]), sinh(x[15])) }

/// - Returns: Elementwise hyperbolic sine of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func sinh(_ x: simd_double2) -> simd_double2 { .init(sinh(x.x), sinh(x.y)) }

/// - Returns: Elementwise hyperbolic sine of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func sinh(_ x: simd_double3) -> simd_double3 { .init(sinh(x.x), sinh(x.y), sinh(x.z)) }

/// - Returns: Elementwise hyperbolic sine of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func sinh(_ x: simd_double4) -> simd_double4 { .init(sinh(x.x), sinh(x.y), sinh(x.z), sinh(x.w)) }

/// - Returns: Elementwise hyperbolic sine of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func sinh(_ x: simd_double8) -> simd_double8 { .init(sinh(x[0]), sinh(x[1]), sinh(x[2]), sinh(x[3]), sinh(x[4]), sinh(x[5]), sinh(x[6]), sinh(x[7])) }


// MARK: - sinpi

#if canImport(Darwin)

@inline(__always)
@usableFromInline
internal func __sinpi_darwin(_ x: simd_float2) -> simd_float2 {
    .init(Darwin.__sinpif(x.x), Darwin.__sinpif(x.y))
}

@inline(__always)
@usableFromInline
internal func __sinpi_darwin(_ x: simd_float3) -> simd_float3 {
    .init(Darwin.__sinpif(x.x), Darwin.__sinpif(x.y), Darwin.__sinpif(x.z))
}

@inline(__always)
@usableFromInline
internal func __sinpi_darwin(_ x: simd_float4) -> simd_float4 {
    .init(Darwin.__sinpif(x.x), Darwin.__sinpif(x.y), Darwin.__sinpif(x.z), Darwin.__sinpif(x.w))
}

@inline(__always)
@usableFromInline
internal func __sinpi_darwin(_ x: simd_float8) -> simd_float8 {
    .init(Darwin.__sinpif(x[0]), Darwin.__sinpif(x[1]), Darwin.__sinpif(x[2]), Darwin.__sinpif(x[3]), Darwin.__sinpif(x[4]), Darwin.__sinpif(x[5]), Darwin.__sinpif(x[6]), Darwin.__sinpif(x[7]))
}

@inline(__always)
@usableFromInline
internal func __sinpi_darwin(_ x: simd_float16) -> simd_float16 {
    .init(Darwin.__sinpif(x[0]), Darwin.__sinpif(x[1]), Darwin.__sinpif(x[2]), Darwin.__sinpif(x[3]), Darwin.__sinpif(x[4]), Darwin.__sinpif(x[5]), Darwin.__sinpif(x[6]), Darwin.__sinpif(x[7]), Darwin.__sinpif(x[8]), Darwin.__sinpif(x[9]), Darwin.__sinpif(x[10]), Darwin.__sinpif(x[11]), Darwin.__sinpif(x[12]), Darwin.__sinpif(x[13]), Darwin.__sinpif(x[14]), Darwin.__sinpif(x[15]))
}

@inline(__always)
@usableFromInline
internal func __sinpi_darwin(_ x: simd_double2) -> simd_double2 {
    .init(Darwin.__sinpi(x.x), Darwin.__sinpi(x.y))
}

@inline(__always)
@usableFromInline
internal func __sinpi_darwin(_ x: simd_double3) -> simd_double3 {
    .init(Darwin.__sinpi(x.x), Darwin.__sinpi(x.y), Darwin.__sinpi(x.z))
}

@inline(__always)
@usableFromInline
internal func __sinpi_darwin(_ x: simd_double4) -> simd_double4 {
    .init(Darwin.__sinpi(x.x), Darwin.__sinpi(x.y), Darwin.__sinpi(x.z), Darwin.__sinpi(x.w))
}

@inline(__always)
@usableFromInline
internal func __sinpi_darwin(_ x: simd_double8) -> simd_double8 {
    .init(Darwin.__sinpi(x[0]), Darwin.__sinpi(x[1]), Darwin.__sinpi(x[2]), Darwin.__sinpi(x[3]), Darwin.__sinpi(x[4]), Darwin.__sinpi(x[5]), Darwin.__sinpi(x[6]), Darwin.__sinpi(x[7]))
}

#endif // canImport(Darwin)


@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inline(__always)
@usableFromInline
internal func __sinpi_any(_ x: simd_float2) -> simd_float2 { sin(x * Float.pi) }

@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inline(__always)
@usableFromInline
internal func __sinpi_any(_ x: simd_float3) -> simd_float3 { sin(x * Float.pi) }

@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inline(__always)
@usableFromInline
internal func __sinpi_any(_ x: simd_float4) -> simd_float4 { sin(x * Float.pi) }

@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inline(__always)
@usableFromInline
internal func __sinpi_any(_ x: simd_float8) -> simd_float8 { sin(x * Float.pi) }

@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inline(__always)
@usableFromInline
internal func __sinpi_any(_ x: simd_float16) -> simd_float16 { sin(x * Float.pi) }

@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inline(__always)
@usableFromInline
internal func __sinpi_any(_ x: simd_double2) -> simd_double2 { sin(x * Double.pi) }

@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inline(__always)
@usableFromInline
internal func __sinpi_any(_ x: simd_double3) -> simd_double3 { sin(x * Double.pi) }

@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inline(__always)
@usableFromInline
internal func __sinpi_any(_ x: simd_double4) -> simd_double4 { sin(x * Double.pi) }

@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inline(__always)
@usableFromInline
internal func __sinpi_any(_ x: simd_double8) -> simd_double8 { sin(x * Double.pi) }


/// - Returns: Elementwise sine of *x*∙π.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func sinpi(_ x: simd_float2) -> simd_float2 {
#if canImport(Darwin)
    __sinpi_darwin(x)
#else
    __sinpi_any(x)
#endif
}

/// - Returns: Elementwise sine of *x*∙π.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func sinpi(_ x: simd_float3) -> simd_float3 {
#if canImport(Darwin)
    __sinpi_darwin(x)
#else
    __sinpi_any(x)
#endif
}

/// - Returns: Elementwise sine of *x*∙π.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func sinpi(_ x: simd_float4) -> simd_float4 {
#if canImport(Darwin)
    __sinpi_darwin(x)
#else
    __sinpi_any(x)
#endif
}

/// - Returns: Elementwise sine of *x*∙π.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func sinpi(_ x: simd_float8) -> simd_float8 {
#if canImport(Darwin)
    __sinpi_darwin(x)
#else
    __sinpi_any(x)
#endif
}

/// - Returns: Elementwise sine of *x*∙π.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func sinpi(_ x: simd_float16) -> simd_float16 {
#if canImport(Darwin)
    __sinpi_darwin(x)
#else
    __sinpi_any(x)
#endif
}

/// - Returns: Elementwise sine of *x*∙π.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func sinpi(_ x: simd_double2) -> simd_double2 {
#if canImport(Darwin)
    __sinpi_darwin(x)
#else
    __sinpi_any(x)
#endif
}

/// - Returns: Elementwise sine of *x*∙π.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func sinpi(_ x: simd_double3) -> simd_double3 {
#if canImport(Darwin)
    __sinpi_darwin(x)
#else
    __sinpi_any(x)
#endif
}

/// - Returns: Elementwise sine of *x*∙π.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func sinpi(_ x: simd_double4) -> simd_double4 {
#if canImport(Darwin)
    __sinpi_darwin(x)
#else
    __sinpi_any(x)
#endif
}

/// - Returns: Elementwise sine of *x*∙π.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func sinpi(_ x: simd_double8) -> simd_double8 {
#if canImport(Darwin)
    __sinpi_darwin(x)
#else
    __sinpi_any(x)
#endif
}


// MARK: - smoothstep

/// - Returns: Elementwise `smoothtep`.
@inlinable
public func smoothstep(_ x: SIMD2<Float>, edge0: SIMD2<Float>, edge1: SIMD2<Float>) -> SIMD2<Float> { simd_smoothstep(edge0, edge1, x) }

/// - Returns: Elementwise `smoothtep`.
@inlinable
public func smoothstep(_ x: SIMD3<Float>, edge0: SIMD3<Float>, edge1: SIMD3<Float>) -> SIMD3<Float> { simd_smoothstep(edge0, edge1, x) }

/// - Returns: Elementwise `smoothtep`.
@inlinable
public func smoothstep(_ x: SIMD4<Float>, edge0: SIMD4<Float>, edge1: SIMD4<Float>) -> SIMD4<Float> { simd_smoothstep(edge0, edge1, x) }

/// - Returns: Elementwise `smoothtep`.
@inlinable
public func smoothstep(_ x: SIMD2<Double>, edge0: SIMD2<Double>, edge1: SIMD2<Double>) -> SIMD2<Double> { simd_smoothstep(edge0, edge1, x) }

/// - Returns: Elementwise `smoothtep`.
@inlinable
public func smoothstep(_ x: SIMD3<Double>, edge0: SIMD3<Double>, edge1: SIMD3<Double>) -> SIMD3<Double> { simd_smoothstep(edge0, edge1, x) }

/// - Returns: Elementwise `smoothtep`.
@inlinable
public func smoothstep(_ x: SIMD4<Double>, edge0: SIMD4<Double>, edge1: SIMD4<Double>) -> SIMD4<Double> { simd_smoothstep(edge0, edge1, x) }


// MARK: - sqrt

/// - Returns: Elementwise square root of *x*.
@inline(__always)
@usableFromInline
internal func sqrt(_ x: SIMD2<Float>) -> SIMD2<Float> { .init(x.x.squareRoot(), x.y.squareRoot()) }

/// - Returns: Elementwise square root of *x*.
@inline(__always)
@usableFromInline
internal func sqrt(_ x: SIMD3<Float>) -> SIMD3<Float> { .init(x.x.squareRoot(), x.y.squareRoot(), x.z.squareRoot()) }

/// - Returns: Elementwise square root of *x*.
@inline(__always)
@usableFromInline
internal func sqrt(_ x: SIMD4<Float>) -> SIMD4<Float> { .init(x.x.squareRoot(), x.y.squareRoot(), x.z.squareRoot(), x.w.squareRoot()) }

/// - Returns: Elementwise square root of *x*.
@inline(__always)
@usableFromInline
internal func sqrt(_ x: SIMD8<Float>) -> SIMD8<Float> { .init(x[0].squareRoot(), x[1].squareRoot(), x[2].squareRoot(), x[3].squareRoot(), x[4].squareRoot(), x[5].squareRoot(), x[6].squareRoot(), x[7].squareRoot()) }

/// - Returns: Elementwise square root of *x*.
@inline(__always)
@usableFromInline
internal func sqrt(_ x: SIMD16<Float>) -> SIMD16<Float> { .init(x[0].squareRoot(), x[1].squareRoot(), x[2].squareRoot(), x[3].squareRoot(), x[4].squareRoot(), x[5].squareRoot(), x[6].squareRoot(), x[7].squareRoot(), x[8].squareRoot(), x[9].squareRoot(), x[10].squareRoot(), x[11].squareRoot(), x[12].squareRoot(), x[13].squareRoot(), x[14].squareRoot(), x[15].squareRoot()) }

/// - Returns: Elementwise square root of *x*.
@inline(__always)
@usableFromInline
internal func sqrt(_ x: SIMD2<Double>) -> SIMD2<Double> { .init(x.x.squareRoot(), x.y.squareRoot()) }

/// - Returns: Elementwise square root of *x*.
@inline(__always)
@usableFromInline
internal func sqrt(_ x: SIMD3<Double>) -> SIMD3<Double> { .init(x.x.squareRoot(), x.y.squareRoot(), x.z.squareRoot()) }

/// - Returns: Elementwise square root of *x*.
@inline(__always)
@usableFromInline
internal func sqrt(_ x: SIMD4<Double>) -> SIMD4<Double> { .init(x.x.squareRoot(), x.y.squareRoot(), x.z.squareRoot(), x.w.squareRoot()) }

/// - Returns: Elementwise square root of *x*.
@inline(__always)
@usableFromInline
internal func sqrt(_ x: SIMD8<Double>) -> SIMD8<Double> { .init(x[0].squareRoot(), x[1].squareRoot(), x[2].squareRoot(), x[3].squareRoot(), x[4].squareRoot(), x[5].squareRoot(), x[6].squareRoot(), x[7].squareRoot()) }


// MARK: - step

/// - Returns: 0.0 or 1.0 whether *x* is less then *edge*.
@inlinable
public func step(_ x: Float, edge: Float) -> Float { simd_step(edge, x) }

/// - Returns: Elementwise `step`.
@inlinable
public func step(_ x: SIMD2<Float>, edge: SIMD2<Float>) -> SIMD2<Float> { simd_step(edge, x) }

/// - Returns: Elementwise `step`.
@inlinable
public func step(_ x: SIMD3<Float>, edge: SIMD3<Float>) -> SIMD3<Float> { simd_step(edge, x) }

/// - Returns: Elementwise `step`.
@inlinable
public func step(_ x: SIMD4<Float>, edge: SIMD4<Float>) -> SIMD4<Float> { simd_step(edge, x) }

/// - Returns: 0.0 or 1.0 whether *x* is less then *edge*.
@inlinable
public func step(_ x: Double, edge: Double) -> Double { simd_step(edge, x) }

/// - Returns: Elementwise `step`.
@inlinable
public func step(_ x: SIMD2<Double>, edge: SIMD2<Double>) -> SIMD2<Double> { simd_step(edge, x) }

/// - Returns: Elementwise `step`.
@inlinable
public func step(_ x: SIMD3<Double>, edge: SIMD3<Double>) -> SIMD3<Double> { simd_step(edge, x) }

/// - Returns: Elementwise `step`.
@inlinable
public func step(_ x: SIMD4<Double>, edge: SIMD4<Double>) -> SIMD4<Double> { simd_step(edge, x) }


// MARK: - tan

/// - Returns: Elementwise tangent of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func tan(_ x: simd_float2) -> simd_float2 { .init(tan(x.x), tan(x.y)) }

/// - Returns: Elementwise tangent of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func tan(_ x: simd_float3) -> simd_float3 { .init(tan(x.x), tan(x.y), tan(x.z)) }

/// - Returns: Elementwise tangent of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func tan(_ x: simd_float4) -> simd_float4 { .init(tan(x.x), tan(x.y), tan(x.z), tan(x.w)) }

/// - Returns: Elementwise tangent of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func tan(_ x: simd_float8) -> simd_float8 { .init(tan(x[0]), tan(x[1]), tan(x[2]), tan(x[3]), tan(x[4]), tan(x[5]), tan(x[6]), tan(x[7])) }

/// - Returns: Elementwise tangent of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func tan(_ x: simd_float16) -> simd_float16 { .init(tan(x[0]), tan(x[1]), tan(x[2]), tan(x[3]), tan(x[4]), tan(x[5]), tan(x[6]), tan(x[7]), tan(x[8]), tan(x[9]), tan(x[10]), tan(x[11]), tan(x[12]), tan(x[13]), tan(x[14]), tan(x[15])) }

/// - Returns: Elementwise tangent of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func tan(_ x: simd_double2) -> simd_double2 { .init(tan(x.x), tan(x.y)) }

/// - Returns: Elementwise tangent of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func tan(_ x: simd_double3) -> simd_double3 { .init(tan(x.x), tan(x.y), tan(x.z)) }

/// - Returns: Elementwise tangent of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func tan(_ x: simd_double4) -> simd_double4 { .init(tan(x.x), tan(x.y), tan(x.z), tan(x.w)) }

/// - Returns: Elementwise tangent of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func tan(_ x: simd_double8) -> simd_double8 { .init(tan(x[0]), tan(x[1]), tan(x[2]), tan(x[3]), tan(x[4]), tan(x[5]), tan(x[6]), tan(x[7])) }


// MARK: - tanh

/// - Returns: Elementwise hyperbolic tangent of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func tanh(_ x: simd_float2) -> simd_float2 { .init(tanh(x.x), tanh(x.y)) }

/// - Returns: Elementwise hyperbolic tangent of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func tanh(_ x: simd_float3) -> simd_float3 { .init(tanh(x.x), tanh(x.y), tanh(x.z)) }

/// - Returns: Elementwise hyperbolic tangent of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func tanh(_ x: simd_float4) -> simd_float4 { .init(tanh(x.x), tanh(x.y), tanh(x.z), tanh(x.w)) }

/// - Returns: Elementwise hyperbolic tangent of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func tanh(_ x: simd_float8) -> simd_float8 { .init(tanh(x[0]), tanh(x[1]), tanh(x[2]), tanh(x[3]), tanh(x[4]), tanh(x[5]), tanh(x[6]), tanh(x[7])) }

/// - Returns: Elementwise hyperbolic tangent of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func tanh(_ x: simd_float16) -> simd_float16 { .init(tanh(x[0]), tanh(x[1]), tanh(x[2]), tanh(x[3]), tanh(x[4]), tanh(x[5]), tanh(x[6]), tanh(x[7]), tanh(x[8]), tanh(x[9]), tanh(x[10]), tanh(x[11]), tanh(x[12]), tanh(x[13]), tanh(x[14]), tanh(x[15])) }

/// - Returns: Elementwise hyperbolic tangent of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func tanh(_ x: simd_double2) -> simd_double2 { .init(tanh(x.x), tanh(x.y)) }

/// - Returns: Elementwise hyperbolic tangent of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func tanh(_ x: simd_double3) -> simd_double3 { .init(tanh(x.x), tanh(x.y), tanh(x.z)) }

/// - Returns: Elementwise hyperbolic tangent of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func tanh(_ x: simd_double4) -> simd_double4 { .init(tanh(x.x), tanh(x.y), tanh(x.z), tanh(x.w)) }

/// - Returns: Elementwise hyperbolic tangent of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func tanh(_ x: simd_double8) -> simd_double8 { .init(tanh(x[0]), tanh(x[1]), tanh(x[2]), tanh(x[3]), tanh(x[4]), tanh(x[5]), tanh(x[6]), tanh(x[7])) }


// MARK: - tanpi

#if canImport(Darwin)

@inline(__always)
@usableFromInline
internal func __tanpi_darwin(_ x: simd_float2) -> simd_float2 {
    .init(Darwin.__tanpif(x.x), Darwin.__tanpif(x.y))
}

@inline(__always)
@usableFromInline
internal func __tanpi_darwin(_ x: simd_float3) -> simd_float3 {
    .init(Darwin.__tanpif(x.x), Darwin.__tanpif(x.y), Darwin.__tanpif(x.z))
}

@inline(__always)
@usableFromInline
internal func __tanpi_darwin(_ x: simd_float4) -> simd_float4 {
    .init(Darwin.__tanpif(x.x), Darwin.__tanpif(x.y), Darwin.__tanpif(x.z), Darwin.__tanpif(x.w))
}

@inline(__always)
@usableFromInline
internal func __tanpi_darwin(_ x: simd_float8) -> simd_float8 {
    .init(Darwin.__tanpif(x[0]), Darwin.__tanpif(x[1]), Darwin.__tanpif(x[2]), Darwin.__tanpif(x[3]), Darwin.__tanpif(x[4]), Darwin.__tanpif(x[5]), Darwin.__tanpif(x[6]), Darwin.__tanpif(x[7]))
}

@inline(__always)
@usableFromInline
internal func __tanpi_darwin(_ x: simd_float16) -> simd_float16 {
    .init(Darwin.__tanpif(x[0]), Darwin.__tanpif(x[1]), Darwin.__tanpif(x[2]), Darwin.__tanpif(x[3]), Darwin.__tanpif(x[4]), Darwin.__tanpif(x[5]), Darwin.__tanpif(x[6]), Darwin.__tanpif(x[7]), Darwin.__tanpif(x[8]), Darwin.__tanpif(x[9]), Darwin.__tanpif(x[10]), Darwin.__tanpif(x[11]), Darwin.__tanpif(x[12]), Darwin.__tanpif(x[13]), Darwin.__tanpif(x[14]), Darwin.__tanpif(x[15]))
}

@inline(__always)
@usableFromInline
internal func __tanpi_darwin(_ x: simd_double2) -> simd_double2 {
    .init(Darwin.__tanpi(x.x), Darwin.__tanpi(x.y))
}

@inline(__always)
@usableFromInline
internal func __tanpi_darwin(_ x: simd_double3) -> simd_double3 {
    .init(Darwin.__tanpi(x.x), Darwin.__tanpi(x.y), Darwin.__tanpi(x.z))
}

@inline(__always)
@usableFromInline
internal func __tanpi_darwin(_ x: simd_double4) -> simd_double4 {
    .init(Darwin.__tanpi(x.x), Darwin.__tanpi(x.y), Darwin.__tanpi(x.z), Darwin.__tanpi(x.w))
}

@inline(__always)
@usableFromInline
internal func __tanpi_darwin(_ x: simd_double8) -> simd_double8 {
    .init(Darwin.__tanpi(x[0]), Darwin.__tanpi(x[1]), Darwin.__tanpi(x[2]), Darwin.__tanpi(x[3]), Darwin.__tanpi(x[4]), Darwin.__tanpi(x[5]), Darwin.__tanpi(x[6]), Darwin.__tanpi(x[7]))
}

#endif // canImport(Darwin)


@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inline(__always)
@usableFromInline
internal func __tanpi_any(_ x: simd_float2) -> simd_float2 { tan(x * Float.pi) }

@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inline(__always)
@usableFromInline
internal func __tanpi_any(_ x: simd_float3) -> simd_float3 { tan(x * Float.pi) }

@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inline(__always)
@usableFromInline
internal func __tanpi_any(_ x: simd_float4) -> simd_float4 { tan(x * Float.pi) }

@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inline(__always)
@usableFromInline
internal func __tanpi_any(_ x: simd_float8) -> simd_float8 { tan(x * Float.pi) }

@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inline(__always)
@usableFromInline
internal func __tanpi_any(_ x: simd_float16) -> simd_float16 { tan(x * Float.pi) }

@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inline(__always)
@usableFromInline
internal func __tanpi_any(_ x: simd_double2) -> simd_double2 { tan(x * Double.pi) }

@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inline(__always)
@usableFromInline
internal func __tanpi_any(_ x: simd_double3) -> simd_double3 { tan(x * Double.pi) }

@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inline(__always)
@usableFromInline
internal func __tanpi_any(_ x: simd_double4) -> simd_double4 { tan(x * Double.pi) }

@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inline(__always)
@usableFromInline
internal func __tanpi_any(_ x: simd_double8) -> simd_double8 { tan(x * Double.pi) }


/// - Returns: Elementwise tangent of *x*∙π.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func tanpi(_ x: simd_float2) -> simd_float2 {
#if canImport(Darwin)
    __tanpi_darwin(x)
#else // !canImport(Darwin)
    __tanpi_any(x)
#endif // !canImport(Darwin)
}

/// - Returns: Elementwise tangent of *x*∙π.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func tanpi(_ x: simd_float3) -> simd_float3 {
#if canImport(Darwin)
    __tanpi_darwin(x)
#else // !canImport(Darwin)
    __tanpi_any(x)
#endif // !canImport(Darwin)
}

/// - Returns: Elementwise tangent of *x*∙π.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func tanpi(_ x: simd_float4) -> simd_float4 {
#if canImport(Darwin)
    __tanpi_darwin(x)
#else // !canImport(Darwin)
    __tanpi_any(x)
#endif // !canImport(Darwin)
}

/// - Returns: Elementwise tangent of *x*∙π.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func tanpi(_ x: simd_float8) -> simd_float8 {
#if canImport(Darwin)
    __tanpi_darwin(x)
#else // !canImport(Darwin)
    __tanpi_any(x)
#endif // !canImport(Darwin)
}

/// - Returns: Elementwise tangent of *x*∙π.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func tanpi(_ x: simd_float16) -> simd_float16 {
#if canImport(Darwin)
    __tanpi_darwin(x)
#else // !canImport(Darwin)
    __tanpi_any(x)
#endif // !canImport(Darwin)
}

/// - Returns: Elementwise tangent of *x*∙π.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func tanpi(_ x: simd_double2) -> simd_double2 {
#if canImport(Darwin)
    __tanpi_darwin(x)
#else // !canImport(Darwin)
    __tanpi_any(x)
#endif // !canImport(Darwin)
}

/// - Returns: Elementwise tangent of *x*∙π.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func tanpi(_ x: simd_double3) -> simd_double3 {
#if canImport(Darwin)
    __tanpi_darwin(x)
#else // !canImport(Darwin)
    __tanpi_any(x)
#endif // !canImport(Darwin)
}

/// - Returns: Elementwise tangent of *x*∙π.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func tanpi(_ x: simd_double4) -> simd_double4 {
#if canImport(Darwin)
    __tanpi_darwin(x)
#else // !canImport(Darwin)
    __tanpi_any(x)
#endif // !canImport(Darwin)
}

/// - Returns: Elementwise tangent of *x*∙π.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func tanpi(_ x: simd_double8) -> simd_double8 {
#if canImport(Darwin)
    __tanpi_darwin(x)
#else // !canImport(Darwin)
    __tanpi_any(x)
#endif // !canImport(Darwin)
}


// MARK: - tgamma

/// - Returns: Elementwise `tgamma` of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func tgamma(_ x: simd_float2) -> simd_float2 { .init(tgammaf(x.x), tgammaf(x.y)) }

/// - Returns: Elementwise `tgamma` of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func tgamma(_ x: simd_float3) -> simd_float3 { .init(tgammaf(x.x), tgammaf(x.y), tgammaf(x.z)) }

/// - Returns: Elementwise `tgamma` of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func tgamma(_ x: simd_float4) -> simd_float4 { .init(tgammaf(x.x), tgammaf(x.y), tgammaf(x.z), tgammaf(x.w)) }

/// - Returns: Elementwise `tgamma` of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func tgamma(_ x: simd_float8) -> simd_float8 { .init(tgammaf(x[0]), tgammaf(x[1]), tgammaf(x[2]), tgammaf(x[3]), tgammaf(x[4]), tgammaf(x[5]), tgammaf(x[6]), tgammaf(x[7])) }

/// - Returns: Elementwise `tgamma` of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func tgamma(_ x: simd_float16) -> simd_float16 { .init(tgammaf(x[0]), tgammaf(x[1]), tgammaf(x[2]), tgammaf(x[3]), tgammaf(x[4]), tgammaf(x[5]), tgammaf(x[6]), tgammaf(x[7]), tgammaf(x[8]), tgammaf(x[9]), tgammaf(x[10]), tgammaf(x[11]), tgammaf(x[12]), tgammaf(x[13]), tgammaf(x[14]), tgammaf(x[15])) }

/// - Returns: Elementwise `tgamma` of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func tgamma(_ x: simd_double2) -> simd_double2 { .init(tgamma(x.x), tgamma(x.y)) }

/// - Returns: Elementwise `tgamma` of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func tgamma(_ x: simd_double3) -> simd_double3 { .init(tgamma(x.x), tgamma(x.y), tgamma(x.z)) }

/// - Returns: Elementwise `tgamma` of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func tgamma(_ x: simd_double4) -> simd_double4 { .init(tgamma(x.x), tgamma(x.y), tgamma(x.z), tgamma(x.w)) }

/// - Returns: Elementwise `tgamma` of *x*.
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
@inlinable
public func tgamma(_ x: simd_double8) -> simd_double8 { .init(tgamma(x[0]), tgamma(x[1]), tgamma(x[2]), tgamma(x[3]), tgamma(x[4]), tgamma(x[5]), tgamma(x[6]), tgamma(x[7])) }


// MARK: - trunc

/// - Returns: Elementwise rounding toward zero of *x*.
@inlinable
public func trunc(_ x: SIMD2<Float>) -> SIMD2<Float> { x.rounded(.towardZero) }

/// - Returns: Elementwise rounding toward zero of *x*.
@inlinable
public func trunc(_ x: SIMD3<Float>) -> SIMD3<Float> { x.rounded(.towardZero) }

/// - Returns: Elementwise rounding toward zero of *x*.
@inlinable
public func trunc(_ x: SIMD4<Float>) -> SIMD4<Float> { x.rounded(.towardZero) }

/// - Returns: Elementwise rounding toward zero of *x*.
@inlinable
public func trunc(_ x: SIMD2<Double>) -> SIMD2<Double> { x.rounded(.towardZero) }

/// - Returns: Elementwise rounding toward zero of *x*.
@inlinable
public func trunc(_ x: SIMD3<Double>) -> SIMD3<Double> { x.rounded(.towardZero) }

/// - Returns: Elementwise rounding toward zero of *x*.
@inlinable
public func trunc(_ x: SIMD4<Double>) -> SIMD4<Double> { x.rounded(.towardZero) }
