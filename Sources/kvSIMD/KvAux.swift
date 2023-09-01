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
//  KvAux.swift
//  kvSIMD
//
//  Created by Svyatoslav Popov on 28.07.2023.
//
//
//===----------------------------------------------------------------------===//
//
//  Internal auxiliary code.
//

// MARK: - KvMakeInt

/// - Returns: Value all of 1 or 0 bits whether *flag* is `true`.
@inline(__always)
@usableFromInline
internal func KvMakeInt(_ flag: Bool) -> simd_int1 { flag ? ~0 : 0 }


// MARK: - KvMakeLong

/// - Returns: Value all of 1 or 0 bits whether *flag* is `true`.
@inline(__always)
@usableFromInline
internal func KvMakeLong(_ flag: Bool) -> simd_long1 { flag ? ~0 : 0 }


// MARK: - KvShiftLeft1

/// - Returns: Cyclic shift of *x* by 1.
@inline(__always)
@usableFromInline
internal func KvShiftLeft1(_ x: simd_float3) -> simd_float3 { .init(x.y, x.z, x.x) }

/// - Returns: Cyclic shift of *x* by 1.
@inline(__always)
@usableFromInline
internal func KvShiftLeft1(_ x: simd_float4) -> simd_float4 { .init(x.y, x.z, x.w, x.x) }

/// - Returns: Cyclic shift of *x* by 1.
@inline(__always)
@usableFromInline
internal func KvShiftLeft1(_ x: simd_double3) -> simd_double3 { .init(x.y, x.z, x.x) }

/// - Returns: Cyclic shift of *x* by 1.
@inline(__always)
@usableFromInline
internal func KvShiftLeft1(_ x: simd_double4) -> simd_double4 { .init(x.y, x.z, x.w, x.x) }


// MARK: - KvShiftLeft2

/// - Returns: Cyclic shift of *x* by 2.
@inline(__always)
@usableFromInline
internal func KvShiftLeft2(_ x: simd_float3) -> simd_float3 { .init(x.z, x.x, x.y) }

/// - Returns: Cyclic shift of *x* by 2.
@inline(__always)
@usableFromInline
internal func KvShiftLeft2(_ x: simd_float4) -> simd_float4 { .init(x.z, x.w, x.x, x.y) }

/// - Returns: Cyclic shift of *x* by 2.
@inline(__always)
@usableFromInline
internal func KvShiftLeft2(_ x: simd_double3) -> simd_double3 { .init(x.z, x.x, x.y) }

/// - Returns: Cyclic shift of *x* by 2.
@inline(__always)
@usableFromInline
internal func KvShiftLeft2(_ x: simd_double4) -> simd_double4 { .init(x.z, x.w, x.x, x.y) }


// MARK: - KvShiftLeft3

/// - Returns: Cyclic shift of *x* by 3.
@inline(__always)
@usableFromInline
internal func KvShiftLeft3(_ x: simd_float4) -> simd_float4 { .init(x.w, x.x, x.y, x.z) }

/// - Returns: Cyclic shift of *x* by 3.
@inline(__always)
@usableFromInline
internal func KvShiftLeft3(_ x: simd_double4) -> simd_double4 { .init(x.w, x.x, x.y, x.z) }
