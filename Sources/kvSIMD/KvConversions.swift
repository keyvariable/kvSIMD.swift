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
//  KvConversions.swift
//  kvSIMD
//
//  Created by Svyatoslav Popov on 25.08.2023.
//


// MARK: - simd_char

@inlinable
public func simd_char(_ x: simd_char2) -> simd_char2 { x }

@inlinable
public func simd_char(_ x: simd_char3) -> simd_char3 { x }

@inlinable
public func simd_char(_ x: simd_char4) -> simd_char4 { x }

@inlinable
public func simd_char(_ x: simd_char8) -> simd_char8 { x }

@inlinable
public func simd_char(_ x: simd_char16) -> simd_char16 { x }

@inlinable
public func simd_char(_ x: simd_char32) -> simd_char32 { x }

@inlinable
public func simd_char(_ x: simd_uchar2) -> simd_char2 { unsafeBitCast(x, to: simd_char2.self) }

@inlinable
public func simd_char(_ x: simd_uchar3) -> simd_char3 { unsafeBitCast(x, to: simd_char3.self) }

@inlinable
public func simd_char(_ x: simd_uchar4) -> simd_char4 { unsafeBitCast(x, to: simd_char4.self) }

@inlinable
public func simd_char(_ x: simd_uchar8) -> simd_char8 { unsafeBitCast(x, to: simd_char8.self) }

@inlinable
public func simd_char(_ x: simd_uchar16) -> simd_char16 { unsafeBitCast(x, to: simd_char16.self) }

@inlinable
public func simd_char(_ x: simd_uchar32) -> simd_char32 { unsafeBitCast(x, to: simd_char32.self) }

@inlinable
public func simd_char(_ x: simd_short2) -> simd_char2 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_char(_ x: simd_short3) -> simd_char3 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_char(_ x: simd_short4) -> simd_char4 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_char(_ x: simd_short8) -> simd_char8 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_char(_ x: simd_short16) -> simd_char16 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_char(_ x: simd_short32) -> simd_char32 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_char(_ x: simd_ushort2) -> simd_char2 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_char(_ x: simd_ushort3) -> simd_char3 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_char(_ x: simd_ushort4) -> simd_char4 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_char(_ x: simd_ushort8) -> simd_char8 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_char(_ x: simd_ushort16) -> simd_char16 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_char(_ x: simd_ushort32) -> simd_char32 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_char(_ x: simd_int2) -> simd_char2 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_char(_ x: simd_int3) -> simd_char3 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_char(_ x: simd_int4) -> simd_char4 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_char(_ x: simd_int8) -> simd_char8 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_char(_ x: simd_int16) -> simd_char16 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_char(_ x: simd_uint2) -> simd_char2 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_char(_ x: simd_uint3) -> simd_char3 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_char(_ x: simd_uint4) -> simd_char4 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_char(_ x: simd_uint8) -> simd_char8 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_char(_ x: simd_uint16) -> simd_char16 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_char(_ x: simd_long2) -> simd_char2 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_char(_ x: simd_long3) -> simd_char3 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_char(_ x: simd_long4) -> simd_char4 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_char(_ x: simd_long8) -> simd_char8 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_char(_ x: simd_ulong2) -> simd_char2 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_char(_ x: simd_ulong3) -> simd_char3 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_char(_ x: simd_ulong4) -> simd_char4 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_char(_ x: simd_ulong8) -> simd_char8 { .init(truncatingIfNeeded: x) }

@inline(__always)
@usableFromInline
internal func __simd_char(_ x: Float) -> simd_char1 { x < 0x1.0p7 && x >= -0x1.0p7 ? simd_char1(x) : 0 }

@inline(__always)
@usableFromInline
internal func __simd_char(_ x: Double) -> simd_char1 { x < 0x1.0p7 && x >= -0x1.0p7 ? simd_char1(x) : 0 }

@inlinable
public func simd_char(_ x: simd_float2) -> simd_char2 { .init(__simd_char(x.x), __simd_char(x.y)) }

@inlinable
public func simd_char(_ x: simd_float3) -> simd_char3 { .init(__simd_char(x.x), __simd_char(x.y), __simd_char(x.z)) }

@inlinable
public func simd_char(_ x: simd_float4) -> simd_char4 { .init(__simd_char(x.x), __simd_char(x.y), __simd_char(x.z), __simd_char(x.w)) }

@inlinable
public func simd_char(_ x: simd_float8) -> simd_char8 { .init(__simd_char(x[0]), __simd_char(x[1]), __simd_char(x[2]), __simd_char(x[3]), __simd_char(x[4]), __simd_char(x[5]), __simd_char(x[6]), __simd_char(x[7])) }

@inlinable
public func simd_char(_ x: simd_float16) -> simd_char16 { .init(__simd_char(x[0]), __simd_char(x[1]), __simd_char(x[2]), __simd_char(x[3]), __simd_char(x[4]), __simd_char(x[5]), __simd_char(x[6]), __simd_char(x[7]), __simd_char(x[8]), __simd_char(x[9]), __simd_char(x[10]), __simd_char(x[11]), __simd_char(x[12]), __simd_char(x[13]), __simd_char(x[14]), __simd_char(x[15])) }

@inlinable
public func simd_char(_ x: simd_double2) -> simd_char2 { .init(__simd_char(x.x), __simd_char(x.y)) }

@inlinable
public func simd_char(_ x: simd_double3) -> simd_char3 { .init(__simd_char(x.x), __simd_char(x.y), __simd_char(x.z)) }

@inlinable
public func simd_char(_ x: simd_double4) -> simd_char4 { .init(__simd_char(x.x), __simd_char(x.y), __simd_char(x.z), __simd_char(x.w)) }

@inlinable
public func simd_char(_ x: simd_double8) -> simd_char8 { .init(__simd_char(x[0]), __simd_char(x[1]), __simd_char(x[2]), __simd_char(x[3]), __simd_char(x[4]), __simd_char(x[5]), __simd_char(x[6]), __simd_char(x[7])) }


// MARK: - simd_char_sat

@inlinable
public func simd_char_sat(_ x: simd_char2) -> simd_char2 { x }

@inlinable
public func simd_char_sat(_ x: simd_char3) -> simd_char3 { x }

@inlinable
public func simd_char_sat(_ x: simd_char4) -> simd_char4 { x }

@inlinable
public func simd_char_sat(_ x: simd_char8) -> simd_char8 { x }

@inlinable
public func simd_char_sat(_ x: simd_char16) -> simd_char16 { x }

@inlinable
public func simd_char_sat(_ x: simd_char32) -> simd_char32 { x }

@inlinable
public func simd_char_sat(_ x: simd_uchar2) -> simd_char2 { .init(clamping: x) }

@inlinable
public func simd_char_sat(_ x: simd_uchar3) -> simd_char3 { .init(clamping: x) }

@inlinable
public func simd_char_sat(_ x: simd_uchar4) -> simd_char4 { .init(clamping: x) }

@inlinable
public func simd_char_sat(_ x: simd_uchar8) -> simd_char8 { .init(clamping: x) }

@inlinable
public func simd_char_sat(_ x: simd_uchar16) -> simd_char16 { .init(clamping: x) }

@inlinable
public func simd_char_sat(_ x: simd_uchar32) -> simd_char32 { .init(clamping: x) }

@inlinable
public func simd_char_sat(_ x: simd_short2) -> simd_char2 { .init(clamping: x) }

@inlinable
public func simd_char_sat(_ x: simd_short3) -> simd_char3 { .init(clamping: x) }

@inlinable
public func simd_char_sat(_ x: simd_short4) -> simd_char4 { .init(clamping: x) }

@inlinable
public func simd_char_sat(_ x: simd_short8) -> simd_char8 { .init(clamping: x) }

@inlinable
public func simd_char_sat(_ x: simd_short16) -> simd_char16 { .init(clamping: x) }

@inlinable
public func simd_char_sat(_ x: simd_short32) -> simd_char32 { .init(clamping: x) }

@inlinable
public func simd_char_sat(_ x: simd_ushort2) -> simd_char2 { .init(clamping: x) }

@inlinable
public func simd_char_sat(_ x: simd_ushort3) -> simd_char3 { .init(clamping: x) }

@inlinable
public func simd_char_sat(_ x: simd_ushort4) -> simd_char4 { .init(clamping: x) }

@inlinable
public func simd_char_sat(_ x: simd_ushort8) -> simd_char8 { .init(clamping: x) }

@inlinable
public func simd_char_sat(_ x: simd_ushort16) -> simd_char16 { .init(clamping: x) }

@inlinable
public func simd_char_sat(_ x: simd_ushort32) -> simd_char32 { .init(clamping: x) }

@inlinable
public func simd_char_sat(_ x: simd_int2) -> simd_char2 { .init(clamping: x) }

@inlinable
public func simd_char_sat(_ x: simd_int3) -> simd_char3 { .init(clamping: x) }

@inlinable
public func simd_char_sat(_ x: simd_int4) -> simd_char4 { .init(clamping: x) }

@inlinable
public func simd_char_sat(_ x: simd_int8) -> simd_char8 { .init(clamping: x) }

@inlinable
public func simd_char_sat(_ x: simd_int16) -> simd_char16 { .init(clamping: x) }

@inlinable
public func simd_char_sat(_ x: simd_uint2) -> simd_char2 { .init(clamping: x) }

@inlinable
public func simd_char_sat(_ x: simd_uint3) -> simd_char3 { .init(clamping: x) }

@inlinable
public func simd_char_sat(_ x: simd_uint4) -> simd_char4 { .init(clamping: x) }

@inlinable
public func simd_char_sat(_ x: simd_uint8) -> simd_char8 { .init(clamping: x) }

@inlinable
public func simd_char_sat(_ x: simd_uint16) -> simd_char16 { .init(clamping: x) }

@inlinable
public func simd_char_sat(_ x: simd_long2) -> simd_char2 { .init(clamping: x) }

@inlinable
public func simd_char_sat(_ x: simd_long3) -> simd_char3 { .init(clamping: x) }

@inlinable
public func simd_char_sat(_ x: simd_long4) -> simd_char4 { .init(clamping: x) }

@inlinable
public func simd_char_sat(_ x: simd_long8) -> simd_char8 { .init(clamping: x) }

@inlinable
public func simd_char_sat(_ x: simd_ulong2) -> simd_char2 { .init(clamping: x) }

@inlinable
public func simd_char_sat(_ x: simd_ulong3) -> simd_char3 { .init(clamping: x) }

@inlinable
public func simd_char_sat(_ x: simd_ulong4) -> simd_char4 { .init(clamping: x) }

@inlinable
public func simd_char_sat(_ x: simd_ulong8) -> simd_char8 { .init(clamping: x) }

@inline(__always)
@usableFromInline
internal func __simd_char_sat(_ x: Float) -> simd_char1 { x < 0x1.0p7 ? simd_char1(max(x, -0x1.0p7)) : simd_char1.max }

@inline(__always)
@usableFromInline
internal func __simd_char_sat(_ x: Double) -> simd_char1 { x < 0x1.0p7 ? simd_char1(max(x, -0x1.0p7)) : simd_char1.max }

@inlinable
public func simd_char_sat(_ x: simd_float2) -> simd_char2 { .init(__simd_char_sat(x.x), __simd_char_sat(x.y)) }

@inlinable
public func simd_char_sat(_ x: simd_float3) -> simd_char3 { .init(__simd_char_sat(x.x), __simd_char_sat(x.y), __simd_char_sat(x.z)) }

@inlinable
public func simd_char_sat(_ x: simd_float4) -> simd_char4 { .init(__simd_char_sat(x.x), __simd_char_sat(x.y), __simd_char_sat(x.z), __simd_char_sat(x.w)) }

@inlinable
public func simd_char_sat(_ x: simd_float8) -> simd_char8 { .init(__simd_char_sat(x[0]), __simd_char_sat(x[1]), __simd_char_sat(x[2]), __simd_char_sat(x[3]), __simd_char_sat(x[4]), __simd_char_sat(x[5]), __simd_char_sat(x[6]), __simd_char_sat(x[7])) }

@inlinable
public func simd_char_sat(_ x: simd_float16) -> simd_char16 { .init(__simd_char_sat(x[0]), __simd_char_sat(x[1]), __simd_char_sat(x[2]), __simd_char_sat(x[3]), __simd_char_sat(x[4]), __simd_char_sat(x[5]), __simd_char_sat(x[6]), __simd_char_sat(x[7]), __simd_char_sat(x[8]), __simd_char_sat(x[9]), __simd_char_sat(x[10]), __simd_char_sat(x[11]), __simd_char_sat(x[12]), __simd_char_sat(x[13]), __simd_char_sat(x[14]), __simd_char_sat(x[15])) }

@inlinable
public func simd_char_sat(_ x: simd_double2) -> simd_char2 { .init(__simd_char_sat(x.x), __simd_char_sat(x.y)) }

@inlinable
public func simd_char_sat(_ x: simd_double3) -> simd_char3 { .init(__simd_char_sat(x.x), __simd_char_sat(x.y), __simd_char_sat(x.z)) }

@inlinable
public func simd_char_sat(_ x: simd_double4) -> simd_char4 { .init(__simd_char_sat(x.x), __simd_char_sat(x.y), __simd_char_sat(x.z), __simd_char_sat(x.w)) }

@inlinable
public func simd_char_sat(_ x: simd_double8) -> simd_char8 { .init(__simd_char_sat(x[0]), __simd_char_sat(x[1]), __simd_char_sat(x[2]), __simd_char_sat(x[3]), __simd_char_sat(x[4]), __simd_char_sat(x[5]), __simd_char_sat(x[6]), __simd_char_sat(x[7])) }


// MARK: - simd_uchar

@inlinable
public func simd_uchar(_ x: simd_char2) -> simd_uchar2 { unsafeBitCast(x, to: simd_uchar2.self) }

@inlinable
public func simd_uchar(_ x: simd_char3) -> simd_uchar3 { unsafeBitCast(x, to: simd_uchar3.self) }

@inlinable
public func simd_uchar(_ x: simd_char4) -> simd_uchar4 { unsafeBitCast(x, to: simd_uchar4.self) }

@inlinable
public func simd_uchar(_ x: simd_char8) -> simd_uchar8 { unsafeBitCast(x, to: simd_uchar8.self) }

@inlinable
public func simd_uchar(_ x: simd_char16) -> simd_uchar16 { unsafeBitCast(x, to: simd_uchar16.self) }

@inlinable
public func simd_uchar(_ x: simd_char32) -> simd_uchar32 { unsafeBitCast(x, to: simd_uchar32.self) }

@inlinable
public func simd_uchar(_ x: simd_uchar2) -> simd_uchar2 { x }

@inlinable
public func simd_uchar(_ x: simd_uchar3) -> simd_uchar3 { x }

@inlinable
public func simd_uchar(_ x: simd_uchar4) -> simd_uchar4 { x }

@inlinable
public func simd_uchar(_ x: simd_uchar8) -> simd_uchar8 { x }

@inlinable
public func simd_uchar(_ x: simd_uchar16) -> simd_uchar16 { x }

@inlinable
public func simd_uchar(_ x: simd_uchar32) -> simd_uchar32 { x }

@inlinable
public func simd_uchar(_ x: simd_short2) -> simd_uchar2 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_uchar(_ x: simd_short3) -> simd_uchar3 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_uchar(_ x: simd_short4) -> simd_uchar4 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_uchar(_ x: simd_short8) -> simd_uchar8 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_uchar(_ x: simd_short16) -> simd_uchar16 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_uchar(_ x: simd_short32) -> simd_uchar32 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_uchar(_ x: simd_ushort2) -> simd_uchar2 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_uchar(_ x: simd_ushort3) -> simd_uchar3 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_uchar(_ x: simd_ushort4) -> simd_uchar4 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_uchar(_ x: simd_ushort8) -> simd_uchar8 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_uchar(_ x: simd_ushort16) -> simd_uchar16 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_uchar(_ x: simd_ushort32) -> simd_uchar32 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_uchar(_ x: simd_int2) -> simd_uchar2 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_uchar(_ x: simd_int3) -> simd_uchar3 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_uchar(_ x: simd_int4) -> simd_uchar4 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_uchar(_ x: simd_int8) -> simd_uchar8 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_uchar(_ x: simd_int16) -> simd_uchar16 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_uchar(_ x: simd_uint2) -> simd_uchar2 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_uchar(_ x: simd_uint3) -> simd_uchar3 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_uchar(_ x: simd_uint4) -> simd_uchar4 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_uchar(_ x: simd_uint8) -> simd_uchar8 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_uchar(_ x: simd_uint16) -> simd_uchar16 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_uchar(_ x: simd_long2) -> simd_uchar2 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_uchar(_ x: simd_long3) -> simd_uchar3 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_uchar(_ x: simd_long4) -> simd_uchar4 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_uchar(_ x: simd_long8) -> simd_uchar8 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_uchar(_ x: simd_ulong2) -> simd_uchar2 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_uchar(_ x: simd_ulong3) -> simd_uchar3 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_uchar(_ x: simd_ulong4) -> simd_uchar4 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_uchar(_ x: simd_ulong8) -> simd_uchar8 { .init(truncatingIfNeeded: x) }

@inline(__always)
@usableFromInline
internal func __simd_uchar(_ x: Float) -> simd_uchar1 { .init(bitPattern: __simd_char(x)) }

@inline(__always)
@usableFromInline
internal func __simd_uchar(_ x: Double) -> simd_uchar1 { .init(bitPattern: __simd_char(x)) }

@inlinable
public func simd_uchar(_ x: simd_float2) -> simd_uchar2 { .init(__simd_uchar(x.x), __simd_uchar(x.y)) }

@inlinable
public func simd_uchar(_ x: simd_float3) -> simd_uchar3 { .init(__simd_uchar(x.x), __simd_uchar(x.y), __simd_uchar(x.z)) }

@inlinable
public func simd_uchar(_ x: simd_float4) -> simd_uchar4 { .init(__simd_uchar(x.x), __simd_uchar(x.y), __simd_uchar(x.z), __simd_uchar(x.w)) }

@inlinable
public func simd_uchar(_ x: simd_float8) -> simd_uchar8 { .init(__simd_uchar(x[0]), __simd_uchar(x[1]), __simd_uchar(x[2]), __simd_uchar(x[3]), __simd_uchar(x[4]), __simd_uchar(x[5]), __simd_uchar(x[6]), __simd_uchar(x[7])) }

@inlinable
public func simd_uchar(_ x: simd_float16) -> simd_uchar16 { .init(__simd_uchar(x[0]), __simd_uchar(x[1]), __simd_uchar(x[2]), __simd_uchar(x[3]), __simd_uchar(x[4]), __simd_uchar(x[5]), __simd_uchar(x[6]), __simd_uchar(x[7]), __simd_uchar(x[8]), __simd_uchar(x[9]), __simd_uchar(x[10]), __simd_uchar(x[11]), __simd_uchar(x[12]), __simd_uchar(x[13]), __simd_uchar(x[14]), __simd_uchar(x[15])) }

@inlinable
public func simd_uchar(_ x: simd_double2) -> simd_uchar2 { .init(__simd_uchar(x.x), __simd_uchar(x.y)) }

@inlinable
public func simd_uchar(_ x: simd_double3) -> simd_uchar3 { .init(__simd_uchar(x.x), __simd_uchar(x.y), __simd_uchar(x.z)) }

@inlinable
public func simd_uchar(_ x: simd_double4) -> simd_uchar4 { .init(__simd_uchar(x.x), __simd_uchar(x.y), __simd_uchar(x.z), __simd_uchar(x.w)) }

@inlinable
public func simd_uchar(_ x: simd_double8) -> simd_uchar8 { .init(__simd_uchar(x[0]), __simd_uchar(x[1]), __simd_uchar(x[2]), __simd_uchar(x[3]), __simd_uchar(x[4]), __simd_uchar(x[5]), __simd_uchar(x[6]), __simd_uchar(x[7])) }


// MARK: - simd_uchar_sat

@inlinable
public func simd_uchar_sat(_ x: simd_char2) -> simd_uchar2 { .init(clamping: x) }

@inlinable
public func simd_uchar_sat(_ x: simd_char3) -> simd_uchar3 { .init(clamping: x) }

@inlinable
public func simd_uchar_sat(_ x: simd_char4) -> simd_uchar4 { .init(clamping: x) }

@inlinable
public func simd_uchar_sat(_ x: simd_char8) -> simd_uchar8 { .init(clamping: x) }

@inlinable
public func simd_uchar_sat(_ x: simd_char16) -> simd_uchar16 { .init(clamping: x) }

@inlinable
public func simd_uchar_sat(_ x: simd_char32) -> simd_uchar32 { .init(clamping: x) }

@inlinable
public func simd_uchar_sat(_ x: simd_uchar2) -> simd_uchar2 { x }

@inlinable
public func simd_uchar_sat(_ x: simd_uchar3) -> simd_uchar3 { x }

@inlinable
public func simd_uchar_sat(_ x: simd_uchar4) -> simd_uchar4 { x }

@inlinable
public func simd_uchar_sat(_ x: simd_uchar8) -> simd_uchar8 { x }

@inlinable
public func simd_uchar_sat(_ x: simd_uchar16) -> simd_uchar16 { x }

@inlinable
public func simd_uchar_sat(_ x: simd_uchar32) -> simd_uchar32 { x }

@inlinable
public func simd_uchar_sat(_ x: simd_short2) -> simd_uchar2 { .init(clamping: x) }

@inlinable
public func simd_uchar_sat(_ x: simd_short3) -> simd_uchar3 { .init(clamping: x) }

@inlinable
public func simd_uchar_sat(_ x: simd_short4) -> simd_uchar4 { .init(clamping: x) }

@inlinable
public func simd_uchar_sat(_ x: simd_short8) -> simd_uchar8 { .init(clamping: x) }

@inlinable
public func simd_uchar_sat(_ x: simd_short16) -> simd_uchar16 { .init(clamping: x) }

@inlinable
public func simd_uchar_sat(_ x: simd_short32) -> simd_uchar32 { .init(clamping: x) }

@inlinable
public func simd_uchar_sat(_ x: simd_ushort2) -> simd_uchar2 { .init(clamping: x) }

@inlinable
public func simd_uchar_sat(_ x: simd_ushort3) -> simd_uchar3 { .init(clamping: x) }

@inlinable
public func simd_uchar_sat(_ x: simd_ushort4) -> simd_uchar4 { .init(clamping: x) }

@inlinable
public func simd_uchar_sat(_ x: simd_ushort8) -> simd_uchar8 { .init(clamping: x) }

@inlinable
public func simd_uchar_sat(_ x: simd_ushort16) -> simd_uchar16 { .init(clamping: x) }

@inlinable
public func simd_uchar_sat(_ x: simd_ushort32) -> simd_uchar32 { .init(clamping: x) }

@inlinable
public func simd_uchar_sat(_ x: simd_int2) -> simd_uchar2 { .init(clamping: x) }

@inlinable
public func simd_uchar_sat(_ x: simd_int3) -> simd_uchar3 { .init(clamping: x) }

@inlinable
public func simd_uchar_sat(_ x: simd_int4) -> simd_uchar4 { .init(clamping: x) }

@inlinable
public func simd_uchar_sat(_ x: simd_int8) -> simd_uchar8 { .init(clamping: x) }

@inlinable
public func simd_uchar_sat(_ x: simd_int16) -> simd_uchar16 { .init(clamping: x) }

@inlinable
public func simd_uchar_sat(_ x: simd_uint2) -> simd_uchar2 { .init(clamping: x) }

@inlinable
public func simd_uchar_sat(_ x: simd_uint3) -> simd_uchar3 { .init(clamping: x) }

@inlinable
public func simd_uchar_sat(_ x: simd_uint4) -> simd_uchar4 { .init(clamping: x) }

@inlinable
public func simd_uchar_sat(_ x: simd_uint8) -> simd_uchar8 { .init(clamping: x) }

@inlinable
public func simd_uchar_sat(_ x: simd_uint16) -> simd_uchar16 { .init(clamping: x) }

@inlinable
public func simd_uchar_sat(_ x: simd_long2) -> simd_uchar2 { .init(clamping: x) }

@inlinable
public func simd_uchar_sat(_ x: simd_long3) -> simd_uchar3 { .init(clamping: x) }

@inlinable
public func simd_uchar_sat(_ x: simd_long4) -> simd_uchar4 { .init(clamping: x) }

@inlinable
public func simd_uchar_sat(_ x: simd_long8) -> simd_uchar8 { .init(clamping: x) }

@inlinable
public func simd_uchar_sat(_ x: simd_ulong2) -> simd_uchar2 { .init(clamping: x) }

@inlinable
public func simd_uchar_sat(_ x: simd_ulong3) -> simd_uchar3 { .init(clamping: x) }

@inlinable
public func simd_uchar_sat(_ x: simd_ulong4) -> simd_uchar4 { .init(clamping: x) }

@inlinable
public func simd_uchar_sat(_ x: simd_ulong8) -> simd_uchar8 { .init(clamping: x) }

@inline(__always)
@usableFromInline
internal func __simd_uchar_sat(_ x: Float) -> simd_uchar1 { x < 0x1.0p8 ? simd_uchar1(max(x, 0.0)) : simd_uchar1.max }

@inline(__always)
@usableFromInline
internal func __simd_uchar_sat(_ x: Double) -> simd_uchar1 { x < 0x1.0p8 ? simd_uchar1(max(x, 0.0)) : simd_uchar1.max }

@inlinable
public func simd_uchar_sat(_ x: simd_float2) -> simd_uchar2 { .init(__simd_uchar_sat(x.x), __simd_uchar_sat(x.y)) }

@inlinable
public func simd_uchar_sat(_ x: simd_float3) -> simd_uchar3 { .init(__simd_uchar_sat(x.x), __simd_uchar_sat(x.y), __simd_uchar_sat(x.z)) }

@inlinable
public func simd_uchar_sat(_ x: simd_float4) -> simd_uchar4 { .init(__simd_uchar_sat(x.x), __simd_uchar_sat(x.y), __simd_uchar_sat(x.z), __simd_uchar_sat(x.w)) }

@inlinable
public func simd_uchar_sat(_ x: simd_float8) -> simd_uchar8 { .init(__simd_uchar_sat(x[0]), __simd_uchar_sat(x[1]), __simd_uchar_sat(x[2]), __simd_uchar_sat(x[3]), __simd_uchar_sat(x[4]), __simd_uchar_sat(x[5]), __simd_uchar_sat(x[6]), __simd_uchar_sat(x[7])) }

@inlinable
public func simd_uchar_sat(_ x: simd_float16) -> simd_uchar16 { .init(__simd_uchar_sat(x[0]), __simd_uchar_sat(x[1]), __simd_uchar_sat(x[2]), __simd_uchar_sat(x[3]), __simd_uchar_sat(x[4]), __simd_uchar_sat(x[5]), __simd_uchar_sat(x[6]), __simd_uchar_sat(x[7]), __simd_uchar_sat(x[8]), __simd_uchar_sat(x[9]), __simd_uchar_sat(x[10]), __simd_uchar_sat(x[11]), __simd_uchar_sat(x[12]), __simd_uchar_sat(x[13]), __simd_uchar_sat(x[14]), __simd_uchar_sat(x[15])) }

@inlinable
public func simd_uchar_sat(_ x: simd_double2) -> simd_uchar2 { .init(__simd_uchar_sat(x.x), __simd_uchar_sat(x.y)) }

@inlinable
public func simd_uchar_sat(_ x: simd_double3) -> simd_uchar3 { .init(__simd_uchar_sat(x.x), __simd_uchar_sat(x.y), __simd_uchar_sat(x.z)) }

@inlinable
public func simd_uchar_sat(_ x: simd_double4) -> simd_uchar4 { .init(__simd_uchar_sat(x.x), __simd_uchar_sat(x.y), __simd_uchar_sat(x.z), __simd_uchar_sat(x.w)) }

@inlinable
public func simd_uchar_sat(_ x: simd_double8) -> simd_uchar8 { .init(__simd_uchar_sat(x[0]), __simd_uchar_sat(x[1]), __simd_uchar_sat(x[2]), __simd_uchar_sat(x[3]), __simd_uchar_sat(x[4]), __simd_uchar_sat(x[5]), __simd_uchar_sat(x[6]), __simd_uchar_sat(x[7])) }


// MARK: - simd_short

@inlinable
public func simd_short(_ x: simd_char2) -> simd_short2 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_short(_ x: simd_char3) -> simd_short3 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_short(_ x: simd_char4) -> simd_short4 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_short(_ x: simd_char8) -> simd_short8 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_short(_ x: simd_char16) -> simd_short16 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_short(_ x: simd_char32) -> simd_short32 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_short(_ x: simd_uchar2) -> simd_short2 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_short(_ x: simd_uchar3) -> simd_short3 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_short(_ x: simd_uchar4) -> simd_short4 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_short(_ x: simd_uchar8) -> simd_short8 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_short(_ x: simd_uchar16) -> simd_short16 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_short(_ x: simd_uchar32) -> simd_short32 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_short(_ x: simd_short2) -> simd_short2 { x }

@inlinable
public func simd_short(_ x: simd_short3) -> simd_short3 { x }

@inlinable
public func simd_short(_ x: simd_short4) -> simd_short4 { x }

@inlinable
public func simd_short(_ x: simd_short8) -> simd_short8 { x }

@inlinable
public func simd_short(_ x: simd_short16) -> simd_short16 { x }

@inlinable
public func simd_short(_ x: simd_short32) -> simd_short32 { x }

@inlinable
public func simd_short(_ x: simd_ushort2) -> simd_short2 { unsafeBitCast(x, to: simd_short2.self) }

@inlinable
public func simd_short(_ x: simd_ushort3) -> simd_short3 { unsafeBitCast(x, to: simd_short3.self) }

@inlinable
public func simd_short(_ x: simd_ushort4) -> simd_short4 { unsafeBitCast(x, to: simd_short4.self) }

@inlinable
public func simd_short(_ x: simd_ushort8) -> simd_short8 { unsafeBitCast(x, to: simd_short8.self) }

@inlinable
public func simd_short(_ x: simd_ushort16) -> simd_short16 { unsafeBitCast(x, to: simd_short16.self) }

@inlinable
public func simd_short(_ x: simd_ushort32) -> simd_short32 { unsafeBitCast(x, to: simd_short32.self) }

@inlinable
public func simd_short(_ x: simd_int2) -> simd_short2 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_short(_ x: simd_int3) -> simd_short3 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_short(_ x: simd_int4) -> simd_short4 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_short(_ x: simd_int8) -> simd_short8 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_short(_ x: simd_int16) -> simd_short16 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_short(_ x: simd_uint2) -> simd_short2 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_short(_ x: simd_uint3) -> simd_short3 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_short(_ x: simd_uint4) -> simd_short4 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_short(_ x: simd_uint8) -> simd_short8 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_short(_ x: simd_uint16) -> simd_short16 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_short(_ x: simd_long2) -> simd_short2 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_short(_ x: simd_long3) -> simd_short3 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_short(_ x: simd_long4) -> simd_short4 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_short(_ x: simd_long8) -> simd_short8 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_short(_ x: simd_ulong2) -> simd_short2 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_short(_ x: simd_ulong3) -> simd_short3 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_short(_ x: simd_ulong4) -> simd_short4 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_short(_ x: simd_ulong8) -> simd_short8 { .init(truncatingIfNeeded: x) }

@inline(__always)
@usableFromInline
internal func __simd_short(_ x: Float) -> simd_short1 { x < 0x1.0p15 && x >= -0x1.0p15 ? simd_short1(x) : 0 }

@inline(__always)
@usableFromInline
internal func __simd_short(_ x: Double) -> simd_short1 { x < 0x1.0p15 && x >= -0x1.0p15 ? simd_short1(x) : 0 }

@inlinable
public func simd_short(_ x: simd_float2) -> simd_short2 { .init(__simd_short(x.x), __simd_short(x.y)) }

@inlinable
public func simd_short(_ x: simd_float3) -> simd_short3 { .init(__simd_short(x.x), __simd_short(x.y), __simd_short(x.z)) }

@inlinable
public func simd_short(_ x: simd_float4) -> simd_short4 { .init(__simd_short(x.x), __simd_short(x.y), __simd_short(x.z), __simd_short(x.w)) }

@inlinable
public func simd_short(_ x: simd_float8) -> simd_short8 { .init(__simd_short(x[0]), __simd_short(x[1]), __simd_short(x[2]), __simd_short(x[3]), __simd_short(x[4]), __simd_short(x[5]), __simd_short(x[6]), __simd_short(x[7])) }

@inlinable
public func simd_short(_ x: simd_float16) -> simd_short16 { .init(__simd_short(x[0]), __simd_short(x[1]), __simd_short(x[2]), __simd_short(x[3]), __simd_short(x[4]), __simd_short(x[5]), __simd_short(x[6]), __simd_short(x[7]), __simd_short(x[8]), __simd_short(x[9]), __simd_short(x[10]), __simd_short(x[11]), __simd_short(x[12]), __simd_short(x[13]), __simd_short(x[14]), __simd_short(x[15])) }

@inlinable
public func simd_short(_ x: simd_double2) -> simd_short2 { .init(__simd_short(x.x), __simd_short(x.y)) }

@inlinable
public func simd_short(_ x: simd_double3) -> simd_short3 { .init(__simd_short(x.x), __simd_short(x.y), __simd_short(x.z)) }

@inlinable
public func simd_short(_ x: simd_double4) -> simd_short4 { .init(__simd_short(x.x), __simd_short(x.y), __simd_short(x.z), __simd_short(x.w)) }

@inlinable
public func simd_short(_ x: simd_double8) -> simd_short8 { .init(__simd_short(x[0]), __simd_short(x[1]), __simd_short(x[2]), __simd_short(x[3]), __simd_short(x[4]), __simd_short(x[5]), __simd_short(x[6]), __simd_short(x[7])) }


// MARK: - simd_short_sat

@inlinable
public func simd_short_sat(_ x: simd_char2) -> simd_short2 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_short_sat(_ x: simd_char3) -> simd_short3 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_short_sat(_ x: simd_char4) -> simd_short4 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_short_sat(_ x: simd_char8) -> simd_short8 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_short_sat(_ x: simd_char16) -> simd_short16 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_short_sat(_ x: simd_char32) -> simd_short32 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_short_sat(_ x: simd_uchar2) -> simd_short2 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_short_sat(_ x: simd_uchar3) -> simd_short3 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_short_sat(_ x: simd_uchar4) -> simd_short4 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_short_sat(_ x: simd_uchar8) -> simd_short8 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_short_sat(_ x: simd_uchar16) -> simd_short16 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_short_sat(_ x: simd_uchar32) -> simd_short32 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_short_sat(_ x: simd_short2) -> simd_short2 { x }

@inlinable
public func simd_short_sat(_ x: simd_short3) -> simd_short3 { x }

@inlinable
public func simd_short_sat(_ x: simd_short4) -> simd_short4 { x }

@inlinable
public func simd_short_sat(_ x: simd_short8) -> simd_short8 { x }

@inlinable
public func simd_short_sat(_ x: simd_short16) -> simd_short16 { x }

@inlinable
public func simd_short_sat(_ x: simd_short32) -> simd_short32 { x }

@inlinable
public func simd_short_sat(_ x: simd_ushort2) -> simd_short2 { .init(clamping: x) }

@inlinable
public func simd_short_sat(_ x: simd_ushort3) -> simd_short3 { .init(clamping: x) }

@inlinable
public func simd_short_sat(_ x: simd_ushort4) -> simd_short4 { .init(clamping: x) }

@inlinable
public func simd_short_sat(_ x: simd_ushort8) -> simd_short8 { .init(clamping: x) }

@inlinable
public func simd_short_sat(_ x: simd_ushort16) -> simd_short16 { .init(clamping: x) }

@inlinable
public func simd_short_sat(_ x: simd_ushort32) -> simd_short32 { .init(clamping: x) }

@inlinable
public func simd_short_sat(_ x: simd_int2) -> simd_short2 { .init(clamping: x) }

@inlinable
public func simd_short_sat(_ x: simd_int3) -> simd_short3 { .init(clamping: x) }

@inlinable
public func simd_short_sat(_ x: simd_int4) -> simd_short4 { .init(clamping: x) }

@inlinable
public func simd_short_sat(_ x: simd_int8) -> simd_short8 { .init(clamping: x) }

@inlinable
public func simd_short_sat(_ x: simd_int16) -> simd_short16 { .init(clamping: x) }

@inlinable
public func simd_short_sat(_ x: simd_uint2) -> simd_short2 { .init(clamping: x) }

@inlinable
public func simd_short_sat(_ x: simd_uint3) -> simd_short3 { .init(clamping: x) }

@inlinable
public func simd_short_sat(_ x: simd_uint4) -> simd_short4 { .init(clamping: x) }

@inlinable
public func simd_short_sat(_ x: simd_uint8) -> simd_short8 { .init(clamping: x) }

@inlinable
public func simd_short_sat(_ x: simd_uint16) -> simd_short16 { .init(clamping: x) }

@inlinable
public func simd_short_sat(_ x: simd_long2) -> simd_short2 { .init(clamping: x) }

@inlinable
public func simd_short_sat(_ x: simd_long3) -> simd_short3 { .init(clamping: x) }

@inlinable
public func simd_short_sat(_ x: simd_long4) -> simd_short4 { .init(clamping: x) }

@inlinable
public func simd_short_sat(_ x: simd_long8) -> simd_short8 { .init(clamping: x) }

@inlinable
public func simd_short_sat(_ x: simd_ulong2) -> simd_short2 { .init(clamping: x) }

@inlinable
public func simd_short_sat(_ x: simd_ulong3) -> simd_short3 { .init(clamping: x) }

@inlinable
public func simd_short_sat(_ x: simd_ulong4) -> simd_short4 { .init(clamping: x) }

@inlinable
public func simd_short_sat(_ x: simd_ulong8) -> simd_short8 { .init(clamping: x) }

@inline(__always)
@usableFromInline
internal func __simd_short_sat(_ x: Float) -> simd_short1 { x < 0x1.0p15 ? simd_short1(max(x, -0x1.0p15)) : simd_short1.max }

@inline(__always)
@usableFromInline
internal func __simd_short_sat(_ x: Double) -> simd_short1 { x < 0x1.0p15 ? simd_short1(max(x, -0x1.0p15)) : simd_short1.max }

@inlinable
public func simd_short_sat(_ x: simd_float2) -> simd_short2 { .init(__simd_short_sat(x.x), __simd_short_sat(x.y)) }

@inlinable
public func simd_short_sat(_ x: simd_float3) -> simd_short3 { .init(__simd_short_sat(x.x), __simd_short_sat(x.y), __simd_short_sat(x.z)) }

@inlinable
public func simd_short_sat(_ x: simd_float4) -> simd_short4 { .init(__simd_short_sat(x.x), __simd_short_sat(x.y), __simd_short_sat(x.z), __simd_short_sat(x.w)) }

@inlinable
public func simd_short_sat(_ x: simd_float8) -> simd_short8 { .init(__simd_short_sat(x[0]), __simd_short_sat(x[1]), __simd_short_sat(x[2]), __simd_short_sat(x[3]), __simd_short_sat(x[4]), __simd_short_sat(x[5]), __simd_short_sat(x[6]), __simd_short_sat(x[7])) }

@inlinable
public func simd_short_sat(_ x: simd_float16) -> simd_short16 { .init(__simd_short_sat(x[0]), __simd_short_sat(x[1]), __simd_short_sat(x[2]), __simd_short_sat(x[3]), __simd_short_sat(x[4]), __simd_short_sat(x[5]), __simd_short_sat(x[6]), __simd_short_sat(x[7]), __simd_short_sat(x[8]), __simd_short_sat(x[9]), __simd_short_sat(x[10]), __simd_short_sat(x[11]), __simd_short_sat(x[12]), __simd_short_sat(x[13]), __simd_short_sat(x[14]), __simd_short_sat(x[15])) }

@inlinable
public func simd_short_sat(_ x: simd_double2) -> simd_short2 { .init(__simd_short_sat(x.x), __simd_short_sat(x.y)) }

@inlinable
public func simd_short_sat(_ x: simd_double3) -> simd_short3 { .init(__simd_short_sat(x.x), __simd_short_sat(x.y), __simd_short_sat(x.z)) }

@inlinable
public func simd_short_sat(_ x: simd_double4) -> simd_short4 { .init(__simd_short_sat(x.x), __simd_short_sat(x.y), __simd_short_sat(x.z), __simd_short_sat(x.w)) }

@inlinable
public func simd_short_sat(_ x: simd_double8) -> simd_short8 { .init(__simd_short_sat(x[0]), __simd_short_sat(x[1]), __simd_short_sat(x[2]), __simd_short_sat(x[3]), __simd_short_sat(x[4]), __simd_short_sat(x[5]), __simd_short_sat(x[6]), __simd_short_sat(x[7])) }


// MARK: - simd_ushort

@inlinable
public func simd_ushort(_ x: simd_char2) -> simd_ushort2 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_ushort(_ x: simd_char3) -> simd_ushort3 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_ushort(_ x: simd_char4) -> simd_ushort4 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_ushort(_ x: simd_char8) -> simd_ushort8 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_ushort(_ x: simd_char16) -> simd_ushort16 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_ushort(_ x: simd_char32) -> simd_ushort32 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_ushort(_ x: simd_uchar2) -> simd_ushort2 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_ushort(_ x: simd_uchar3) -> simd_ushort3 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_ushort(_ x: simd_uchar4) -> simd_ushort4 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_ushort(_ x: simd_uchar8) -> simd_ushort8 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_ushort(_ x: simd_uchar16) -> simd_ushort16 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_ushort(_ x: simd_uchar32) -> simd_ushort32 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_ushort(_ x: simd_short2) -> simd_ushort2 { unsafeBitCast(x, to: simd_ushort2.self) }

@inlinable
public func simd_ushort(_ x: simd_short3) -> simd_ushort3 { unsafeBitCast(x, to: simd_ushort3.self) }

@inlinable
public func simd_ushort(_ x: simd_short4) -> simd_ushort4 { unsafeBitCast(x, to: simd_ushort4.self) }

@inlinable
public func simd_ushort(_ x: simd_short8) -> simd_ushort8 { unsafeBitCast(x, to: simd_ushort8.self) }

@inlinable
public func simd_ushort(_ x: simd_short16) -> simd_ushort16 { unsafeBitCast(x, to: simd_ushort16.self) }

@inlinable
public func simd_ushort(_ x: simd_short32) -> simd_ushort32 { unsafeBitCast(x, to: simd_ushort32.self) }

@inlinable
public func simd_ushort(_ x: simd_ushort2) -> simd_ushort2 { x }

@inlinable
public func simd_ushort(_ x: simd_ushort3) -> simd_ushort3 { x }

@inlinable
public func simd_ushort(_ x: simd_ushort4) -> simd_ushort4 { x }

@inlinable
public func simd_ushort(_ x: simd_ushort8) -> simd_ushort8 { x }

@inlinable
public func simd_ushort(_ x: simd_ushort16) -> simd_ushort16 { x }

@inlinable
public func simd_ushort(_ x: simd_ushort32) -> simd_ushort32 { x }

@inlinable
public func simd_ushort(_ x: simd_int2) -> simd_ushort2 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_ushort(_ x: simd_int3) -> simd_ushort3 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_ushort(_ x: simd_int4) -> simd_ushort4 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_ushort(_ x: simd_int8) -> simd_ushort8 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_ushort(_ x: simd_int16) -> simd_ushort16 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_ushort(_ x: simd_uint2) -> simd_ushort2 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_ushort(_ x: simd_uint3) -> simd_ushort3 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_ushort(_ x: simd_uint4) -> simd_ushort4 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_ushort(_ x: simd_uint8) -> simd_ushort8 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_ushort(_ x: simd_uint16) -> simd_ushort16 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_ushort(_ x: simd_long2) -> simd_ushort2 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_ushort(_ x: simd_long3) -> simd_ushort3 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_ushort(_ x: simd_long4) -> simd_ushort4 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_ushort(_ x: simd_long8) -> simd_ushort8 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_ushort(_ x: simd_ulong2) -> simd_ushort2 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_ushort(_ x: simd_ulong3) -> simd_ushort3 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_ushort(_ x: simd_ulong4) -> simd_ushort4 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_ushort(_ x: simd_ulong8) -> simd_ushort8 { .init(truncatingIfNeeded: x) }

@inline(__always)
@usableFromInline
internal func __simd_ushort(_ x: Float) -> simd_ushort1 { .init(bitPattern: __simd_short(x)) }

@inline(__always)
@usableFromInline
internal func __simd_ushort(_ x: Double) -> simd_ushort1 { .init(bitPattern: __simd_short(x)) }

@inlinable
public func simd_ushort(_ x: simd_float2) -> simd_ushort2 { .init(__simd_ushort(x.x), __simd_ushort(x.y)) }

@inlinable
public func simd_ushort(_ x: simd_float3) -> simd_ushort3 { .init(__simd_ushort(x.x), __simd_ushort(x.y), __simd_ushort(x.z)) }

@inlinable
public func simd_ushort(_ x: simd_float4) -> simd_ushort4 { .init(__simd_ushort(x.x), __simd_ushort(x.y), __simd_ushort(x.z), __simd_ushort(x.w)) }

@inlinable
public func simd_ushort(_ x: simd_float8) -> simd_ushort8 { .init(__simd_ushort(x[0]), __simd_ushort(x[1]), __simd_ushort(x[2]), __simd_ushort(x[3]), __simd_ushort(x[4]), __simd_ushort(x[5]), __simd_ushort(x[6]), __simd_ushort(x[7])) }

@inlinable
public func simd_ushort(_ x: simd_float16) -> simd_ushort16 { .init(__simd_ushort(x[0]), __simd_ushort(x[1]), __simd_ushort(x[2]), __simd_ushort(x[3]), __simd_ushort(x[4]), __simd_ushort(x[5]), __simd_ushort(x[6]), __simd_ushort(x[7]), __simd_ushort(x[8]), __simd_ushort(x[9]), __simd_ushort(x[10]), __simd_ushort(x[11]), __simd_ushort(x[12]), __simd_ushort(x[13]), __simd_ushort(x[14]), __simd_ushort(x[15])) }

@inlinable
public func simd_ushort(_ x: simd_double2) -> simd_ushort2 { .init(__simd_ushort(x.x), __simd_ushort(x.y)) }

@inlinable
public func simd_ushort(_ x: simd_double3) -> simd_ushort3 { .init(__simd_ushort(x.x), __simd_ushort(x.y), __simd_ushort(x.z)) }

@inlinable
public func simd_ushort(_ x: simd_double4) -> simd_ushort4 { .init(__simd_ushort(x.x), __simd_ushort(x.y), __simd_ushort(x.z), __simd_ushort(x.w)) }

@inlinable
public func simd_ushort(_ x: simd_double8) -> simd_ushort8 { .init(__simd_ushort(x[0]), __simd_ushort(x[1]), __simd_ushort(x[2]), __simd_ushort(x[3]), __simd_ushort(x[4]), __simd_ushort(x[5]), __simd_ushort(x[6]), __simd_ushort(x[7])) }


// MARK: - simd_ushort_sat

@inlinable
public func simd_ushort_sat(_ x: simd_char2) -> simd_ushort2 { .init(clamping: x) }

@inlinable
public func simd_ushort_sat(_ x: simd_char3) -> simd_ushort3 { .init(clamping: x) }

@inlinable
public func simd_ushort_sat(_ x: simd_char4) -> simd_ushort4 { .init(clamping: x) }

@inlinable
public func simd_ushort_sat(_ x: simd_char8) -> simd_ushort8 { .init(clamping: x) }

@inlinable
public func simd_ushort_sat(_ x: simd_char16) -> simd_ushort16 { .init(clamping: x) }

@inlinable
public func simd_ushort_sat(_ x: simd_char32) -> simd_ushort32 { .init(clamping: x) }

@inlinable
public func simd_ushort_sat(_ x: simd_uchar2) -> simd_ushort2 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_ushort_sat(_ x: simd_uchar3) -> simd_ushort3 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_ushort_sat(_ x: simd_uchar4) -> simd_ushort4 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_ushort_sat(_ x: simd_uchar8) -> simd_ushort8 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_ushort_sat(_ x: simd_uchar16) -> simd_ushort16 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_ushort_sat(_ x: simd_uchar32) -> simd_ushort32 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_ushort_sat(_ x: simd_short2) -> simd_ushort2 { .init(clamping: x) }

@inlinable
public func simd_ushort_sat(_ x: simd_short3) -> simd_ushort3 { .init(clamping: x) }

@inlinable
public func simd_ushort_sat(_ x: simd_short4) -> simd_ushort4 { .init(clamping: x) }

@inlinable
public func simd_ushort_sat(_ x: simd_short8) -> simd_ushort8 { .init(clamping: x) }

@inlinable
public func simd_ushort_sat(_ x: simd_short16) -> simd_ushort16 { .init(clamping: x) }

@inlinable
public func simd_ushort_sat(_ x: simd_short32) -> simd_ushort32 { .init(clamping: x) }

@inlinable
public func simd_ushort_sat(_ x: simd_ushort2) -> simd_ushort2 { x }

@inlinable
public func simd_ushort_sat(_ x: simd_ushort3) -> simd_ushort3 { x }

@inlinable
public func simd_ushort_sat(_ x: simd_ushort4) -> simd_ushort4 { x }

@inlinable
public func simd_ushort_sat(_ x: simd_ushort8) -> simd_ushort8 { x }

@inlinable
public func simd_ushort_sat(_ x: simd_ushort16) -> simd_ushort16 { x }

@inlinable
public func simd_ushort_sat(_ x: simd_ushort32) -> simd_ushort32 { x }

@inlinable
public func simd_ushort_sat(_ x: simd_int2) -> simd_ushort2 { .init(clamping: x) }

@inlinable
public func simd_ushort_sat(_ x: simd_int3) -> simd_ushort3 { .init(clamping: x) }

@inlinable
public func simd_ushort_sat(_ x: simd_int4) -> simd_ushort4 { .init(clamping: x) }

@inlinable
public func simd_ushort_sat(_ x: simd_int8) -> simd_ushort8 { .init(clamping: x) }

@inlinable
public func simd_ushort_sat(_ x: simd_int16) -> simd_ushort16 { .init(clamping: x) }

@inlinable
public func simd_ushort_sat(_ x: simd_uint2) -> simd_ushort2 { .init(clamping: x) }

@inlinable
public func simd_ushort_sat(_ x: simd_uint3) -> simd_ushort3 { .init(clamping: x) }

@inlinable
public func simd_ushort_sat(_ x: simd_uint4) -> simd_ushort4 { .init(clamping: x) }

@inlinable
public func simd_ushort_sat(_ x: simd_uint8) -> simd_ushort8 { .init(clamping: x) }

@inlinable
public func simd_ushort_sat(_ x: simd_uint16) -> simd_ushort16 { .init(clamping: x) }

@inlinable
public func simd_ushort_sat(_ x: simd_long2) -> simd_ushort2 { .init(clamping: x) }

@inlinable
public func simd_ushort_sat(_ x: simd_long3) -> simd_ushort3 { .init(clamping: x) }

@inlinable
public func simd_ushort_sat(_ x: simd_long4) -> simd_ushort4 { .init(clamping: x) }

@inlinable
public func simd_ushort_sat(_ x: simd_long8) -> simd_ushort8 { .init(clamping: x) }

@inlinable
public func simd_ushort_sat(_ x: simd_ulong2) -> simd_ushort2 { .init(clamping: x) }

@inlinable
public func simd_ushort_sat(_ x: simd_ulong3) -> simd_ushort3 { .init(clamping: x) }

@inlinable
public func simd_ushort_sat(_ x: simd_ulong4) -> simd_ushort4 { .init(clamping: x) }

@inlinable
public func simd_ushort_sat(_ x: simd_ulong8) -> simd_ushort8 { .init(clamping: x) }

@inline(__always)
@usableFromInline
internal func __simd_ushort_sat(_ x: Float) -> simd_ushort1 { x < 0x1.0p16 ? simd_ushort1(max(x, 0.0)) : simd_ushort1.max }

@inline(__always)
@usableFromInline
internal func __simd_ushort_sat(_ x: Double) -> simd_ushort1 { x < 0x1.0p16 ? simd_ushort1(max(x, 0.0)) : simd_ushort1.max }

@inlinable
public func simd_ushort_sat(_ x: simd_float2) -> simd_ushort2 { .init(__simd_ushort_sat(x.x), __simd_ushort_sat(x.y)) }

@inlinable
public func simd_ushort_sat(_ x: simd_float3) -> simd_ushort3 { .init(__simd_ushort_sat(x.x), __simd_ushort_sat(x.y), __simd_ushort_sat(x.z)) }

@inlinable
public func simd_ushort_sat(_ x: simd_float4) -> simd_ushort4 { .init(__simd_ushort_sat(x.x), __simd_ushort_sat(x.y), __simd_ushort_sat(x.z), __simd_ushort_sat(x.w)) }

@inlinable
public func simd_ushort_sat(_ x: simd_float8) -> simd_ushort8 { .init(__simd_ushort_sat(x[0]), __simd_ushort_sat(x[1]), __simd_ushort_sat(x[2]), __simd_ushort_sat(x[3]), __simd_ushort_sat(x[4]), __simd_ushort_sat(x[5]), __simd_ushort_sat(x[6]), __simd_ushort_sat(x[7])) }

@inlinable
public func simd_ushort_sat(_ x: simd_float16) -> simd_ushort16 { .init(__simd_ushort_sat(x[0]), __simd_ushort_sat(x[1]), __simd_ushort_sat(x[2]), __simd_ushort_sat(x[3]), __simd_ushort_sat(x[4]), __simd_ushort_sat(x[5]), __simd_ushort_sat(x[6]), __simd_ushort_sat(x[7]), __simd_ushort_sat(x[8]), __simd_ushort_sat(x[9]), __simd_ushort_sat(x[10]), __simd_ushort_sat(x[11]), __simd_ushort_sat(x[12]), __simd_ushort_sat(x[13]), __simd_ushort_sat(x[14]), __simd_ushort_sat(x[15])) }

@inlinable
public func simd_ushort_sat(_ x: simd_double2) -> simd_ushort2 { .init(__simd_ushort_sat(x.x), __simd_ushort_sat(x.y)) }

@inlinable
public func simd_ushort_sat(_ x: simd_double3) -> simd_ushort3 { .init(__simd_ushort_sat(x.x), __simd_ushort_sat(x.y), __simd_ushort_sat(x.z)) }

@inlinable
public func simd_ushort_sat(_ x: simd_double4) -> simd_ushort4 { .init(__simd_ushort_sat(x.x), __simd_ushort_sat(x.y), __simd_ushort_sat(x.z), __simd_ushort_sat(x.w)) }

@inlinable
public func simd_ushort_sat(_ x: simd_double8) -> simd_ushort8 { .init(__simd_ushort_sat(x[0]), __simd_ushort_sat(x[1]), __simd_ushort_sat(x[2]), __simd_ushort_sat(x[3]), __simd_ushort_sat(x[4]), __simd_ushort_sat(x[5]), __simd_ushort_sat(x[6]), __simd_ushort_sat(x[7])) }


// MARK: - simd_int

@inlinable
public func simd_int(_ x: simd_char2) -> simd_int2 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_int(_ x: simd_char3) -> simd_int3 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_int(_ x: simd_char4) -> simd_int4 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_int(_ x: simd_char8) -> simd_int8 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_int(_ x: simd_char16) -> simd_int16 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_int(_ x: simd_uchar2) -> simd_int2 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_int(_ x: simd_uchar3) -> simd_int3 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_int(_ x: simd_uchar4) -> simd_int4 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_int(_ x: simd_uchar8) -> simd_int8 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_int(_ x: simd_uchar16) -> simd_int16 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_int(_ x: simd_short2) -> simd_int2 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_int(_ x: simd_short3) -> simd_int3 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_int(_ x: simd_short4) -> simd_int4 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_int(_ x: simd_short8) -> simd_int8 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_int(_ x: simd_short16) -> simd_int16 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_int(_ x: simd_ushort2) -> simd_int2 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_int(_ x: simd_ushort3) -> simd_int3 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_int(_ x: simd_ushort4) -> simd_int4 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_int(_ x: simd_ushort8) -> simd_int8 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_int(_ x: simd_ushort16) -> simd_int16 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_int(_ x: simd_int2) -> simd_int2 { x }

@inlinable
public func simd_int(_ x: simd_int3) -> simd_int3 { x }

@inlinable
public func simd_int(_ x: simd_int4) -> simd_int4 { x }

@inlinable
public func simd_int(_ x: simd_int8) -> simd_int8 { x }

@inlinable
public func simd_int(_ x: simd_int16) -> simd_int16 { x }

@inlinable
public func simd_int(_ x: simd_uint2) -> simd_int2 { unsafeBitCast(x, to: simd_int2.self) }

@inlinable
public func simd_int(_ x: simd_uint3) -> simd_int3 { unsafeBitCast(x, to: simd_int3.self) }

@inlinable
public func simd_int(_ x: simd_uint4) -> simd_int4 { unsafeBitCast(x, to: simd_int4.self) }

@inlinable
public func simd_int(_ x: simd_uint8) -> simd_int8 { unsafeBitCast(x, to: simd_int8.self) }

@inlinable
public func simd_int(_ x: simd_uint16) -> simd_int16 { unsafeBitCast(x, to: simd_int16.self) }

@inlinable
public func simd_int(_ x: simd_long2) -> simd_int2 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_int(_ x: simd_long3) -> simd_int3 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_int(_ x: simd_long4) -> simd_int4 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_int(_ x: simd_long8) -> simd_int8 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_int(_ x: simd_ulong2) -> simd_int2 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_int(_ x: simd_ulong3) -> simd_int3 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_int(_ x: simd_ulong4) -> simd_int4 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_int(_ x: simd_ulong8) -> simd_int8 { .init(truncatingIfNeeded: x) }

@inline(__always)
@usableFromInline
internal func __simd_int(_ x: Float) -> simd_int1 { x < 0x1.0p31 && x >= -0x1.0p31 ? simd_int1(x) : simd_int1.min }

@inline(__always)
@usableFromInline
internal func __simd_int(_ x: Double) -> simd_int1 { x < 0x1.0p31 && x >= -0x1.0p31 ? simd_int1(x) : simd_int1.min }

@inlinable
public func simd_int(_ x: simd_float2) -> simd_int2 { .init(__simd_int(x.x), __simd_int(x.y)) }

@inlinable
public func simd_int(_ x: simd_float3) -> simd_int3 { .init(__simd_int(x.x), __simd_int(x.y), __simd_int(x.z)) }

@inlinable
public func simd_int(_ x: simd_float4) -> simd_int4 { .init(__simd_int(x.x), __simd_int(x.y), __simd_int(x.z), __simd_int(x.w)) }

@inlinable
public func simd_int(_ x: simd_float8) -> simd_int8 { .init(__simd_int(x[0]), __simd_int(x[1]), __simd_int(x[2]), __simd_int(x[3]), __simd_int(x[4]), __simd_int(x[5]), __simd_int(x[6]), __simd_int(x[7])) }

@inlinable
public func simd_int(_ x: simd_float16) -> simd_int16 { .init(__simd_int(x[0]), __simd_int(x[1]), __simd_int(x[2]), __simd_int(x[3]), __simd_int(x[4]), __simd_int(x[5]), __simd_int(x[6]), __simd_int(x[7]), __simd_int(x[8]), __simd_int(x[9]), __simd_int(x[10]), __simd_int(x[11]), __simd_int(x[12]), __simd_int(x[13]), __simd_int(x[14]), __simd_int(x[15])) }

@inlinable
public func simd_int(_ x: simd_double2) -> simd_int2 { .init(__simd_int(x.x), __simd_int(x.y)) }

@inlinable
public func simd_int(_ x: simd_double3) -> simd_int3 { .init(__simd_int(x.x), __simd_int(x.y), __simd_int(x.z)) }

@inlinable
public func simd_int(_ x: simd_double4) -> simd_int4 { .init(__simd_int(x.x), __simd_int(x.y), __simd_int(x.z), __simd_int(x.w)) }

@inlinable
public func simd_int(_ x: simd_double8) -> simd_int8 { .init(__simd_int(x[0]), __simd_int(x[1]), __simd_int(x[2]), __simd_int(x[3]), __simd_int(x[4]), __simd_int(x[5]), __simd_int(x[6]), __simd_int(x[7])) }


// MARK: - simd_int_sat

@inlinable
public func simd_int_sat(_ x: simd_char2) -> simd_int2 { .init(clamping: x) }

@inlinable
public func simd_int_sat(_ x: simd_char3) -> simd_int3 { .init(clamping: x) }

@inlinable
public func simd_int_sat(_ x: simd_char4) -> simd_int4 { .init(clamping: x) }

@inlinable
public func simd_int_sat(_ x: simd_char8) -> simd_int8 { .init(clamping: x) }

@inlinable
public func simd_int_sat(_ x: simd_char16) -> simd_int16 { .init(clamping: x) }

@inlinable
public func simd_int_sat(_ x: simd_uchar2) -> simd_int2 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_int_sat(_ x: simd_uchar3) -> simd_int3 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_int_sat(_ x: simd_uchar4) -> simd_int4 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_int_sat(_ x: simd_uchar8) -> simd_int8 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_int_sat(_ x: simd_uchar16) -> simd_int16 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_int_sat(_ x: simd_short2) -> simd_int2 { .init(clamping: x) }

@inlinable
public func simd_int_sat(_ x: simd_short3) -> simd_int3 { .init(clamping: x) }

@inlinable
public func simd_int_sat(_ x: simd_short4) -> simd_int4 { .init(clamping: x) }

@inlinable
public func simd_int_sat(_ x: simd_short8) -> simd_int8 { .init(clamping: x) }

@inlinable
public func simd_int_sat(_ x: simd_short16) -> simd_int16 { .init(clamping: x) }

@inlinable
public func simd_int_sat(_ x: simd_ushort2) -> simd_int2 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_int_sat(_ x: simd_ushort3) -> simd_int3 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_int_sat(_ x: simd_ushort4) -> simd_int4 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_int_sat(_ x: simd_ushort8) -> simd_int8 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_int_sat(_ x: simd_ushort16) -> simd_int16 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_int_sat(_ x: simd_int2) -> simd_int2 { x }

@inlinable
public func simd_int_sat(_ x: simd_int3) -> simd_int3 { x }

@inlinable
public func simd_int_sat(_ x: simd_int4) -> simd_int4 { x }

@inlinable
public func simd_int_sat(_ x: simd_int8) -> simd_int8 { x }

@inlinable
public func simd_int_sat(_ x: simd_int16) -> simd_int16 { x }

@inlinable
public func simd_int_sat(_ x: simd_uint2) -> simd_int2 { .init(clamping: x) }

@inlinable
public func simd_int_sat(_ x: simd_uint3) -> simd_int3 { .init(clamping: x) }

@inlinable
public func simd_int_sat(_ x: simd_uint4) -> simd_int4 { .init(clamping: x) }

@inlinable
public func simd_int_sat(_ x: simd_uint8) -> simd_int8 { .init(clamping: x) }

@inlinable
public func simd_int_sat(_ x: simd_uint16) -> simd_int16 { .init(clamping: x) }

@inlinable
public func simd_int_sat(_ x: simd_long2) -> simd_int2 { .init(clamping: x) }

@inlinable
public func simd_int_sat(_ x: simd_long3) -> simd_int3 { .init(clamping: x) }

@inlinable
public func simd_int_sat(_ x: simd_long4) -> simd_int4 { .init(clamping: x) }

@inlinable
public func simd_int_sat(_ x: simd_long8) -> simd_int8 { .init(clamping: x) }

@inlinable
public func simd_int_sat(_ x: simd_ulong2) -> simd_int2 { .init(clamping: x) }

@inlinable
public func simd_int_sat(_ x: simd_ulong3) -> simd_int3 { .init(clamping: x) }

@inlinable
public func simd_int_sat(_ x: simd_ulong4) -> simd_int4 { .init(clamping: x) }

@inlinable
public func simd_int_sat(_ x: simd_ulong8) -> simd_int8 { .init(clamping: x) }

@inline(__always)
@usableFromInline
internal func __simd_int_sat(_ x: Float) -> simd_int1 { x < 0x1.0p31 ? simd_int1(max(x, -0x1.0p31)) : simd_int1.max }

@inline(__always)
@usableFromInline
internal func __simd_int_sat(_ x: Double) -> simd_int1 { x < 0x1.0p31 ? simd_int1(max(x, -0x1.0p31)) : simd_int1.max }

@inlinable
public func simd_int_sat(_ x: simd_float2) -> simd_int2 { .init(__simd_int_sat(x.x), __simd_int_sat(x.y)) }

@inlinable
public func simd_int_sat(_ x: simd_float3) -> simd_int3 { .init(__simd_int_sat(x.x), __simd_int_sat(x.y), __simd_int_sat(x.z)) }

@inlinable
public func simd_int_sat(_ x: simd_float4) -> simd_int4 { .init(__simd_int_sat(x.x), __simd_int_sat(x.y), __simd_int_sat(x.z), __simd_int_sat(x.w)) }

@inlinable
public func simd_int_sat(_ x: simd_float8) -> simd_int8 { .init(__simd_int_sat(x[0]), __simd_int_sat(x[1]), __simd_int_sat(x[2]), __simd_int_sat(x[3]), __simd_int_sat(x[4]), __simd_int_sat(x[5]), __simd_int_sat(x[6]), __simd_int_sat(x[7])) }

@inlinable
public func simd_int_sat(_ x: simd_float16) -> simd_int16 { .init(__simd_int_sat(x[0]), __simd_int_sat(x[1]), __simd_int_sat(x[2]), __simd_int_sat(x[3]), __simd_int_sat(x[4]), __simd_int_sat(x[5]), __simd_int_sat(x[6]), __simd_int_sat(x[7]), __simd_int_sat(x[8]), __simd_int_sat(x[9]), __simd_int_sat(x[10]), __simd_int_sat(x[11]), __simd_int_sat(x[12]), __simd_int_sat(x[13]), __simd_int_sat(x[14]), __simd_int_sat(x[15])) }

@inlinable
public func simd_int_sat(_ x: simd_double2) -> simd_int2 { .init(__simd_int_sat(x.x), __simd_int_sat(x.y)) }

@inlinable
public func simd_int_sat(_ x: simd_double3) -> simd_int3 { .init(__simd_int_sat(x.x), __simd_int_sat(x.y), __simd_int_sat(x.z)) }

@inlinable
public func simd_int_sat(_ x: simd_double4) -> simd_int4 { .init(__simd_int_sat(x.x), __simd_int_sat(x.y), __simd_int_sat(x.z), __simd_int_sat(x.w)) }

@inlinable
public func simd_int_sat(_ x: simd_double8) -> simd_int8 { .init(__simd_int_sat(x[0]), __simd_int_sat(x[1]), __simd_int_sat(x[2]), __simd_int_sat(x[3]), __simd_int_sat(x[4]), __simd_int_sat(x[5]), __simd_int_sat(x[6]), __simd_int_sat(x[7])) }


// MARK: - simd_int_rte

@inline(__always)
@usableFromInline
internal func __simd_int_rte(_ x: Float) -> simd_int1 { x < 0x1.0p31 && x >= -0x1.0p31 ? simd_int1(x.rounded(.toNearestOrEven)) : simd_int1.min }

@inlinable
public func simd_int_rte(_ x: simd_float2) -> simd_int2 { .init(__simd_int_rte(x.x), __simd_int_rte(x.y)) }

@inlinable
public func simd_int_rte(_ x: simd_float3) -> simd_int3 { .init(__simd_int_rte(x.x), __simd_int_rte(x.y), __simd_int_rte(x.z)) }

@inlinable
public func simd_int_rte(_ x: simd_float4) -> simd_int4 { .init(__simd_int_rte(x.x), __simd_int_rte(x.y), __simd_int_rte(x.z), __simd_int_rte(x.w)) }

@inlinable
public func simd_int_rte(_ x: simd_float8) -> simd_int8 { .init(__simd_int_rte(x[0]), __simd_int_rte(x[1]), __simd_int_rte(x[2]), __simd_int_rte(x[3]), __simd_int_rte(x[4]), __simd_int_rte(x[5]), __simd_int_rte(x[6]), __simd_int_rte(x[7])) }

@inlinable
public func simd_int_rte(_ x: simd_float16) -> simd_int16 { .init(__simd_int_rte(x[0]), __simd_int_rte(x[1]), __simd_int_rte(x[2]), __simd_int_rte(x[3]), __simd_int_rte(x[4]), __simd_int_rte(x[5]), __simd_int_rte(x[6]), __simd_int_rte(x[7]), __simd_int_rte(x[8]), __simd_int_rte(x[9]), __simd_int_rte(x[10]), __simd_int_rte(x[11]), __simd_int_rte(x[12]), __simd_int_rte(x[13]), __simd_int_rte(x[14]), __simd_int_rte(x[15])) }


// MARK: - simd_uint

@inlinable
public func simd_uint(_ x: simd_char2) -> simd_uint2 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_uint(_ x: simd_char3) -> simd_uint3 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_uint(_ x: simd_char4) -> simd_uint4 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_uint(_ x: simd_char8) -> simd_uint8 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_uint(_ x: simd_char16) -> simd_uint16 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_uint(_ x: simd_uchar2) -> simd_uint2 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_uint(_ x: simd_uchar3) -> simd_uint3 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_uint(_ x: simd_uchar4) -> simd_uint4 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_uint(_ x: simd_uchar8) -> simd_uint8 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_uint(_ x: simd_uchar16) -> simd_uint16 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_uint(_ x: simd_short2) -> simd_uint2 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_uint(_ x: simd_short3) -> simd_uint3 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_uint(_ x: simd_short4) -> simd_uint4 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_uint(_ x: simd_short8) -> simd_uint8 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_uint(_ x: simd_short16) -> simd_uint16 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_uint(_ x: simd_ushort2) -> simd_uint2 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_uint(_ x: simd_ushort3) -> simd_uint3 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_uint(_ x: simd_ushort4) -> simd_uint4 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_uint(_ x: simd_ushort8) -> simd_uint8 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_uint(_ x: simd_ushort16) -> simd_uint16 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_uint(_ x: simd_int2) -> simd_uint2 { unsafeBitCast(x, to: simd_uint2.self) }

@inlinable
public func simd_uint(_ x: simd_int3) -> simd_uint3 { unsafeBitCast(x, to: simd_uint3.self) }

@inlinable
public func simd_uint(_ x: simd_int4) -> simd_uint4 { unsafeBitCast(x, to: simd_uint4.self) }

@inlinable
public func simd_uint(_ x: simd_int8) -> simd_uint8 { unsafeBitCast(x, to: simd_uint8.self) }

@inlinable
public func simd_uint(_ x: simd_int16) -> simd_uint16 { unsafeBitCast(x, to: simd_uint16.self) }

@inlinable
public func simd_uint(_ x: simd_uint2) -> simd_uint2 { x }

@inlinable
public func simd_uint(_ x: simd_uint3) -> simd_uint3 { x }

@inlinable
public func simd_uint(_ x: simd_uint4) -> simd_uint4 { x }

@inlinable
public func simd_uint(_ x: simd_uint8) -> simd_uint8 { x }

@inlinable
public func simd_uint(_ x: simd_uint16) -> simd_uint16 { x }

@inlinable
public func simd_uint(_ x: simd_long2) -> simd_uint2 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_uint(_ x: simd_long3) -> simd_uint3 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_uint(_ x: simd_long4) -> simd_uint4 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_uint(_ x: simd_long8) -> simd_uint8 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_uint(_ x: simd_ulong2) -> simd_uint2 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_uint(_ x: simd_ulong3) -> simd_uint3 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_uint(_ x: simd_ulong4) -> simd_uint4 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_uint(_ x: simd_ulong8) -> simd_uint8 { .init(truncatingIfNeeded: x) }

@inline(__always)
@usableFromInline
internal func __simd_uint(_ x: Float) -> simd_uint1 { x < 0x1.0p31 ? simd_uint1(bitPattern: __simd_int(x)) : 0 }

@inline(__always)
@usableFromInline
internal func __simd_uint(_ x: Double) -> simd_uint1 { x < 0x1.0p31 ? simd_uint1(bitPattern: __simd_int(x)) : 0 }

@inlinable
public func simd_uint(_ x: simd_float2) -> simd_uint2 { .init(__simd_uint(x.x), __simd_uint(x.y)) }

@inlinable
public func simd_uint(_ x: simd_float3) -> simd_uint3 { .init(__simd_uint(x.x), __simd_uint(x.y), __simd_uint(x.z)) }

@inlinable
public func simd_uint(_ x: simd_float4) -> simd_uint4 { .init(__simd_uint(x.x), __simd_uint(x.y), __simd_uint(x.z), __simd_uint(x.w)) }

@inlinable
public func simd_uint(_ x: simd_float8) -> simd_uint8 { .init(__simd_uint(x[0]), __simd_uint(x[1]), __simd_uint(x[2]), __simd_uint(x[3]), __simd_uint(x[4]), __simd_uint(x[5]), __simd_uint(x[6]), __simd_uint(x[7])) }

@inlinable
public func simd_uint(_ x: simd_float16) -> simd_uint16 { .init(__simd_uint(x[0]), __simd_uint(x[1]), __simd_uint(x[2]), __simd_uint(x[3]), __simd_uint(x[4]), __simd_uint(x[5]), __simd_uint(x[6]), __simd_uint(x[7]), __simd_uint(x[8]), __simd_uint(x[9]), __simd_uint(x[10]), __simd_uint(x[11]), __simd_uint(x[12]), __simd_uint(x[13]), __simd_uint(x[14]), __simd_uint(x[15])) }

@inlinable
public func simd_uint(_ x: simd_double2) -> simd_uint2 { .init(__simd_uint(x.x), __simd_uint(x.y)) }

@inlinable
public func simd_uint(_ x: simd_double3) -> simd_uint3 { .init(__simd_uint(x.x), __simd_uint(x.y), __simd_uint(x.z)) }

@inlinable
public func simd_uint(_ x: simd_double4) -> simd_uint4 { .init(__simd_uint(x.x), __simd_uint(x.y), __simd_uint(x.z), __simd_uint(x.w)) }

@inlinable
public func simd_uint(_ x: simd_double8) -> simd_uint8 { .init(__simd_uint(x[0]), __simd_uint(x[1]), __simd_uint(x[2]), __simd_uint(x[3]), __simd_uint(x[4]), __simd_uint(x[5]), __simd_uint(x[6]), __simd_uint(x[7])) }


// MARK: - simd_uint_sat

@inlinable
public func simd_uint_sat(_ x: simd_char2) -> simd_uint2 { .init(clamping: x) }

@inlinable
public func simd_uint_sat(_ x: simd_char3) -> simd_uint3 { .init(clamping: x) }

@inlinable
public func simd_uint_sat(_ x: simd_char4) -> simd_uint4 { .init(clamping: x) }

@inlinable
public func simd_uint_sat(_ x: simd_char8) -> simd_uint8 { .init(clamping: x) }

@inlinable
public func simd_uint_sat(_ x: simd_char16) -> simd_uint16 { .init(clamping: x) }

@inlinable
public func simd_uint_sat(_ x: simd_uchar2) -> simd_uint2 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_uint_sat(_ x: simd_uchar3) -> simd_uint3 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_uint_sat(_ x: simd_uchar4) -> simd_uint4 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_uint_sat(_ x: simd_uchar8) -> simd_uint8 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_uint_sat(_ x: simd_uchar16) -> simd_uint16 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_uint_sat(_ x: simd_short2) -> simd_uint2 { .init(clamping: x) }

@inlinable
public func simd_uint_sat(_ x: simd_short3) -> simd_uint3 { .init(clamping: x) }

@inlinable
public func simd_uint_sat(_ x: simd_short4) -> simd_uint4 { .init(clamping: x) }

@inlinable
public func simd_uint_sat(_ x: simd_short8) -> simd_uint8 { .init(clamping: x) }

@inlinable
public func simd_uint_sat(_ x: simd_short16) -> simd_uint16 { .init(clamping: x) }

@inlinable
public func simd_uint_sat(_ x: simd_ushort2) -> simd_uint2 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_uint_sat(_ x: simd_ushort3) -> simd_uint3 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_uint_sat(_ x: simd_ushort4) -> simd_uint4 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_uint_sat(_ x: simd_ushort8) -> simd_uint8 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_uint_sat(_ x: simd_ushort16) -> simd_uint16 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_uint_sat(_ x: simd_int2) -> simd_uint2 { .init(clamping: x) }

@inlinable
public func simd_uint_sat(_ x: simd_int3) -> simd_uint3 { .init(clamping: x) }

@inlinable
public func simd_uint_sat(_ x: simd_int4) -> simd_uint4 { .init(clamping: x) }

@inlinable
public func simd_uint_sat(_ x: simd_int8) -> simd_uint8 { .init(clamping: x) }

@inlinable
public func simd_uint_sat(_ x: simd_int16) -> simd_uint16 { .init(clamping: x) }

@inlinable
public func simd_uint_sat(_ x: simd_uint2) -> simd_uint2 { x }

@inlinable
public func simd_uint_sat(_ x: simd_uint3) -> simd_uint3 { x }

@inlinable
public func simd_uint_sat(_ x: simd_uint4) -> simd_uint4 { x }

@inlinable
public func simd_uint_sat(_ x: simd_uint8) -> simd_uint8 { x }

@inlinable
public func simd_uint_sat(_ x: simd_uint16) -> simd_uint16 { x }

@inlinable
public func simd_uint_sat(_ x: simd_long2) -> simd_uint2 { .init(clamping: x) }

@inlinable
public func simd_uint_sat(_ x: simd_long3) -> simd_uint3 { .init(clamping: x) }

@inlinable
public func simd_uint_sat(_ x: simd_long4) -> simd_uint4 { .init(clamping: x) }

@inlinable
public func simd_uint_sat(_ x: simd_long8) -> simd_uint8 { .init(clamping: x) }

@inlinable
public func simd_uint_sat(_ x: simd_ulong2) -> simd_uint2 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_uint_sat(_ x: simd_ulong3) -> simd_uint3 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_uint_sat(_ x: simd_ulong4) -> simd_uint4 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_uint_sat(_ x: simd_ulong8) -> simd_uint8 { .init(truncatingIfNeeded: x) }

@inline(__always)
@usableFromInline
internal func __simd_uint_sat(_ x: Float) -> simd_uint1 { x < 0x1.0p32 ? simd_uint1(max(x, 0.0)) : simd_uint1.max }

@inline(__always)
@usableFromInline
internal func __simd_uint_sat(_ x: Double) -> simd_uint1 { x < 0x1.0p32 ? simd_uint1(max(x, 0.0)) : simd_uint1.max }

@inlinable
public func simd_uint_sat(_ x: simd_float2) -> simd_uint2 { .init(__simd_uint_sat(x.x), __simd_uint_sat(x.y)) }

@inlinable
public func simd_uint_sat(_ x: simd_float3) -> simd_uint3 { .init(__simd_uint_sat(x.x), __simd_uint_sat(x.y), __simd_uint_sat(x.z)) }

@inlinable
public func simd_uint_sat(_ x: simd_float4) -> simd_uint4 { .init(__simd_uint_sat(x.x), __simd_uint_sat(x.y), __simd_uint_sat(x.z), __simd_uint_sat(x.w)) }

@inlinable
public func simd_uint_sat(_ x: simd_float8) -> simd_uint8 { .init(__simd_uint_sat(x[0]), __simd_uint_sat(x[1]), __simd_uint_sat(x[2]), __simd_uint_sat(x[3]), __simd_uint_sat(x[4]), __simd_uint_sat(x[5]), __simd_uint_sat(x[6]), __simd_uint_sat(x[7])) }

@inlinable
public func simd_uint_sat(_ x: simd_float16) -> simd_uint16 { .init(__simd_uint_sat(x[0]), __simd_uint_sat(x[1]), __simd_uint_sat(x[2]), __simd_uint_sat(x[3]), __simd_uint_sat(x[4]), __simd_uint_sat(x[5]), __simd_uint_sat(x[6]), __simd_uint_sat(x[7]), __simd_uint_sat(x[8]), __simd_uint_sat(x[9]), __simd_uint_sat(x[10]), __simd_uint_sat(x[11]), __simd_uint_sat(x[12]), __simd_uint_sat(x[13]), __simd_uint_sat(x[14]), __simd_uint_sat(x[15])) }

@inlinable
public func simd_uint_sat(_ x: simd_double2) -> simd_uint2 { .init(__simd_uint_sat(x.x), __simd_uint_sat(x.y)) }

@inlinable
public func simd_uint_sat(_ x: simd_double3) -> simd_uint3 { .init(__simd_uint_sat(x.x), __simd_uint_sat(x.y), __simd_uint_sat(x.z)) }

@inlinable
public func simd_uint_sat(_ x: simd_double4) -> simd_uint4 { .init(__simd_uint_sat(x.x), __simd_uint_sat(x.y), __simd_uint_sat(x.z), __simd_uint_sat(x.w)) }

@inlinable
public func simd_uint_sat(_ x: simd_double8) -> simd_uint8 { .init(__simd_uint_sat(x[0]), __simd_uint_sat(x[1]), __simd_uint_sat(x[2]), __simd_uint_sat(x[3]), __simd_uint_sat(x[4]), __simd_uint_sat(x[5]), __simd_uint_sat(x[6]), __simd_uint_sat(x[7])) }


// MARK: - simd_long

@inlinable
public func simd_long(_ x: simd_char2) -> simd_long2 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_long(_ x: simd_char3) -> simd_long3 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_long(_ x: simd_char4) -> simd_long4 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_long(_ x: simd_char8) -> simd_long8 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_long(_ x: simd_uchar2) -> simd_long2 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_long(_ x: simd_uchar3) -> simd_long3 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_long(_ x: simd_uchar4) -> simd_long4 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_long(_ x: simd_uchar8) -> simd_long8 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_long(_ x: simd_short2) -> simd_long2 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_long(_ x: simd_short3) -> simd_long3 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_long(_ x: simd_short4) -> simd_long4 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_long(_ x: simd_short8) -> simd_long8 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_long(_ x: simd_ushort2) -> simd_long2 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_long(_ x: simd_ushort3) -> simd_long3 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_long(_ x: simd_ushort4) -> simd_long4 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_long(_ x: simd_ushort8) -> simd_long8 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_long(_ x: simd_int2) -> simd_long2 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_long(_ x: simd_int3) -> simd_long3 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_long(_ x: simd_int4) -> simd_long4 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_long(_ x: simd_int8) -> simd_long8 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_long(_ x: simd_uint2) -> simd_long2 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_long(_ x: simd_uint3) -> simd_long3 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_long(_ x: simd_uint4) -> simd_long4 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_long(_ x: simd_uint8) -> simd_long8 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_long(_ x: simd_long2) -> simd_long2 { x }

@inlinable
public func simd_long(_ x: simd_long3) -> simd_long3 { x }

@inlinable
public func simd_long(_ x: simd_long4) -> simd_long4 { x }

@inlinable
public func simd_long(_ x: simd_long8) -> simd_long8 { x }

@inlinable
public func simd_long(_ x: simd_ulong2) -> simd_long2 { unsafeBitCast(x, to: simd_long2.self) }

@inlinable
public func simd_long(_ x: simd_ulong3) -> simd_long3 { unsafeBitCast(x, to: simd_long3.self) }

@inlinable
public func simd_long(_ x: simd_ulong4) -> simd_long4 { unsafeBitCast(x, to: simd_long4.self) }

@inlinable
public func simd_long(_ x: simd_ulong8) -> simd_long8 { unsafeBitCast(x, to: simd_long8.self) }

@inline(__always)
@usableFromInline
internal func __simd_long(_ x: Float) -> simd_long1 { x < 0x1.0p63 && x >= -0x1.0p63 ? simd_long1(x) : simd_long1.min }

@inline(__always)
@usableFromInline
internal func __simd_long(_ x: Double) -> simd_long1 { x < 0x1.0p63 && x >= -0x1.0p63 ? simd_long1(x) : simd_long1.min }

@inlinable
public func simd_long(_ x: simd_float2) -> simd_long2 { .init(__simd_long(x.x), __simd_long(x.y)) }

@inlinable
public func simd_long(_ x: simd_float3) -> simd_long3 { .init(__simd_long(x.x), __simd_long(x.y), __simd_long(x.z)) }

@inlinable
public func simd_long(_ x: simd_float4) -> simd_long4 { .init(__simd_long(x.x), __simd_long(x.y), __simd_long(x.z), __simd_long(x.w)) }

@inlinable
public func simd_long(_ x: simd_float8) -> simd_long8 { .init(__simd_long(x[0]), __simd_long(x[1]), __simd_long(x[2]), __simd_long(x[3]), __simd_long(x[4]), __simd_long(x[5]), __simd_long(x[6]), __simd_long(x[7])) }

@inlinable
public func simd_long(_ x: simd_double2) -> simd_long2 { .init(__simd_long(x.x), __simd_long(x.y)) }

@inlinable
public func simd_long(_ x: simd_double3) -> simd_long3 { .init(__simd_long(x.x), __simd_long(x.y), __simd_long(x.z)) }

@inlinable
public func simd_long(_ x: simd_double4) -> simd_long4 { .init(__simd_long(x.x), __simd_long(x.y), __simd_long(x.z), __simd_long(x.w)) }

@inlinable
public func simd_long(_ x: simd_double8) -> simd_long8 { .init(__simd_long(x[0]), __simd_long(x[1]), __simd_long(x[2]), __simd_long(x[3]), __simd_long(x[4]), __simd_long(x[5]), __simd_long(x[6]), __simd_long(x[7])) }


// MARK: - simd_long_sat

@inlinable
public func simd_long_sat(_ x: simd_char2) -> simd_long2 { .init(clamping: x) }

@inlinable
public func simd_long_sat(_ x: simd_char3) -> simd_long3 { .init(clamping: x) }

@inlinable
public func simd_long_sat(_ x: simd_char4) -> simd_long4 { .init(clamping: x) }

@inlinable
public func simd_long_sat(_ x: simd_char8) -> simd_long8 { .init(clamping: x) }

@inlinable
public func simd_long_sat(_ x: simd_uchar2) -> simd_long2 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_long_sat(_ x: simd_uchar3) -> simd_long3 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_long_sat(_ x: simd_uchar4) -> simd_long4 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_long_sat(_ x: simd_uchar8) -> simd_long8 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_long_sat(_ x: simd_short2) -> simd_long2 { .init(clamping: x) }

@inlinable
public func simd_long_sat(_ x: simd_short3) -> simd_long3 { .init(clamping: x) }

@inlinable
public func simd_long_sat(_ x: simd_short4) -> simd_long4 { .init(clamping: x) }

@inlinable
public func simd_long_sat(_ x: simd_short8) -> simd_long8 { .init(clamping: x) }

@inlinable
public func simd_long_sat(_ x: simd_ushort2) -> simd_long2 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_long_sat(_ x: simd_ushort3) -> simd_long3 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_long_sat(_ x: simd_ushort4) -> simd_long4 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_long_sat(_ x: simd_ushort8) -> simd_long8 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_long_sat(_ x: simd_int2) -> simd_long2 { .init(clamping: x) }

@inlinable
public func simd_long_sat(_ x: simd_int3) -> simd_long3 { .init(clamping: x) }

@inlinable
public func simd_long_sat(_ x: simd_int4) -> simd_long4 { .init(clamping: x) }

@inlinable
public func simd_long_sat(_ x: simd_int8) -> simd_long8 { .init(clamping: x) }

@inlinable
public func simd_long_sat(_ x: simd_uint2) -> simd_long2 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_long_sat(_ x: simd_uint3) -> simd_long3 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_long_sat(_ x: simd_uint4) -> simd_long4 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_long_sat(_ x: simd_uint8) -> simd_long8 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_long_sat(_ x: simd_long2) -> simd_long2 { x }

@inlinable
public func simd_long_sat(_ x: simd_long3) -> simd_long3 { x }

@inlinable
public func simd_long_sat(_ x: simd_long4) -> simd_long4 { x }

@inlinable
public func simd_long_sat(_ x: simd_long8) -> simd_long8 { x }

@inlinable
public func simd_long_sat(_ x: simd_ulong2) -> simd_long2 { .init(clamping: x) }

@inlinable
public func simd_long_sat(_ x: simd_ulong3) -> simd_long3 { .init(clamping: x) }

@inlinable
public func simd_long_sat(_ x: simd_ulong4) -> simd_long4 { .init(clamping: x) }

@inlinable
public func simd_long_sat(_ x: simd_ulong8) -> simd_long8 { .init(clamping: x) }

@inline(__always)
@usableFromInline
internal func __simd_long_sat(_ x: Float) -> simd_long1 { x < 0x1.0p63 ? simd_long1(max(x, -0x1.0p63)) : simd_long1.max }

@inline(__always)
@usableFromInline
internal func __simd_long_sat(_ x: Double) -> simd_long1 { x < 0x1.0p63 ? simd_long1(max(x, -0x1.0p63)) : simd_long1.max }

@inlinable
public func simd_long_sat(_ x: simd_float2) -> simd_long2 { .init(__simd_long_sat(x.x), __simd_long_sat(x.y)) }

@inlinable
public func simd_long_sat(_ x: simd_float3) -> simd_long3 { .init(__simd_long_sat(x.x), __simd_long_sat(x.y), __simd_long_sat(x.z)) }

@inlinable
public func simd_long_sat(_ x: simd_float4) -> simd_long4 { .init(__simd_long_sat(x.x), __simd_long_sat(x.y), __simd_long_sat(x.z), __simd_long_sat(x.w)) }

@inlinable
public func simd_long_sat(_ x: simd_float8) -> simd_long8 { .init(__simd_long_sat(x[0]), __simd_long_sat(x[1]), __simd_long_sat(x[2]), __simd_long_sat(x[3]), __simd_long_sat(x[4]), __simd_long_sat(x[5]), __simd_long_sat(x[6]), __simd_long_sat(x[7])) }

@inlinable
public func simd_long_sat(_ x: simd_double2) -> simd_long2 { .init(__simd_long_sat(x.x), __simd_long_sat(x.y)) }

@inlinable
public func simd_long_sat(_ x: simd_double3) -> simd_long3 { .init(__simd_long_sat(x.x), __simd_long_sat(x.y), __simd_long_sat(x.z)) }

@inlinable
public func simd_long_sat(_ x: simd_double4) -> simd_long4 { .init(__simd_long_sat(x.x), __simd_long_sat(x.y), __simd_long_sat(x.z), __simd_long_sat(x.w)) }

@inlinable
public func simd_long_sat(_ x: simd_double8) -> simd_long8 { .init(__simd_long_sat(x[0]), __simd_long_sat(x[1]), __simd_long_sat(x[2]), __simd_long_sat(x[3]), __simd_long_sat(x[4]), __simd_long_sat(x[5]), __simd_long_sat(x[6]), __simd_long_sat(x[7])) }


// MARK: - simd_long_rte

@inline(__always)
@usableFromInline
internal func __simd_long_rte(_ x: Double) -> simd_long1 { x < 0x1.0p63 && x >= -0x1.0p63 ? simd_long1(x.rounded(.toNearestOrEven)) : simd_long1.min }

@inlinable
public func simd_long_rte(_ x: simd_double2) -> simd_long2 { .init(__simd_long_rte(x.x), __simd_long_rte(x.y)) }

@inlinable
public func simd_long_rte(_ x: simd_double3) -> simd_long3 { .init(__simd_long_rte(x.x), __simd_long_rte(x.y), __simd_long_rte(x.z)) }

@inlinable
public func simd_long_rte(_ x: simd_double4) -> simd_long4 { .init(__simd_long_rte(x.x), __simd_long_rte(x.y), __simd_long_rte(x.z), __simd_long_rte(x.w)) }

@inlinable
public func simd_long_rte(_ x: simd_double8) -> simd_long8 { .init(__simd_long_rte(x[0]), __simd_long_rte(x[1]), __simd_long_rte(x[2]), __simd_long_rte(x[3]), __simd_long_rte(x[4]), __simd_long_rte(x[5]), __simd_long_rte(x[6]), __simd_long_rte(x[7])) }


// MARK: - simd_ulong

@inlinable
public func simd_ulong(_ x: simd_char2) -> simd_ulong2 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_ulong(_ x: simd_char3) -> simd_ulong3 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_ulong(_ x: simd_char4) -> simd_ulong4 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_ulong(_ x: simd_char8) -> simd_ulong8 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_ulong(_ x: simd_uchar2) -> simd_ulong2 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_ulong(_ x: simd_uchar3) -> simd_ulong3 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_ulong(_ x: simd_uchar4) -> simd_ulong4 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_ulong(_ x: simd_uchar8) -> simd_ulong8 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_ulong(_ x: simd_short2) -> simd_ulong2 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_ulong(_ x: simd_short3) -> simd_ulong3 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_ulong(_ x: simd_short4) -> simd_ulong4 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_ulong(_ x: simd_short8) -> simd_ulong8 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_ulong(_ x: simd_ushort2) -> simd_ulong2 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_ulong(_ x: simd_ushort3) -> simd_ulong3 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_ulong(_ x: simd_ushort4) -> simd_ulong4 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_ulong(_ x: simd_ushort8) -> simd_ulong8 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_ulong(_ x: simd_int2) -> simd_ulong2 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_ulong(_ x: simd_int3) -> simd_ulong3 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_ulong(_ x: simd_int4) -> simd_ulong4 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_ulong(_ x: simd_int8) -> simd_ulong8 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_ulong(_ x: simd_uint2) -> simd_ulong2 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_ulong(_ x: simd_uint3) -> simd_ulong3 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_ulong(_ x: simd_uint4) -> simd_ulong4 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_ulong(_ x: simd_uint8) -> simd_ulong8 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_ulong(_ x: simd_long2) -> simd_ulong2 { unsafeBitCast(x, to: simd_ulong2.self) }

@inlinable
public func simd_ulong(_ x: simd_long3) -> simd_ulong3 { unsafeBitCast(x, to: simd_ulong3.self) }

@inlinable
public func simd_ulong(_ x: simd_long4) -> simd_ulong4 { unsafeBitCast(x, to: simd_ulong4.self) }

@inlinable
public func simd_ulong(_ x: simd_long8) -> simd_ulong8 { unsafeBitCast(x, to: simd_ulong8.self) }

@inlinable
public func simd_ulong(_ x: simd_ulong2) -> simd_ulong2 { x }

@inlinable
public func simd_ulong(_ x: simd_ulong3) -> simd_ulong3 { x }

@inlinable
public func simd_ulong(_ x: simd_ulong4) -> simd_ulong4 { x }

@inlinable
public func simd_ulong(_ x: simd_ulong8) -> simd_ulong8 { x }

@inline(__always)
@usableFromInline
internal func __simd_ulong(_ x: Float) -> simd_ulong1 { x < 0x1.0p63 ? simd_ulong1(bitPattern: __simd_long(x)) : 0 }

@inline(__always)
@usableFromInline
internal func __simd_ulong(_ x: Double) -> simd_ulong1 { x < 0x1.0p63 ? simd_ulong1(bitPattern: __simd_long(x)) : 0 }

@inlinable
public func simd_ulong(_ x: simd_float2) -> simd_ulong2 { .init(__simd_ulong(x.x), __simd_ulong(x.y)) }

@inlinable
public func simd_ulong(_ x: simd_float3) -> simd_ulong3 { .init(__simd_ulong(x.x), __simd_ulong(x.y), __simd_ulong(x.z)) }

@inlinable
public func simd_ulong(_ x: simd_float4) -> simd_ulong4{ .init(__simd_ulong(x.x), __simd_ulong(x.y), __simd_ulong(x.z), __simd_ulong(x.w)) }

@inlinable
public func simd_ulong(_ x: simd_float8) -> simd_ulong8 { .init(__simd_ulong(x[0]), __simd_ulong(x[1]), __simd_ulong(x[2]), __simd_ulong(x[3]), __simd_ulong(x[4]), __simd_ulong(x[5]), __simd_ulong(x[6]), __simd_ulong(x[7])) }

@inlinable
public func simd_ulong(_ x: simd_double2) -> simd_ulong2 { .init(__simd_ulong(x.x), __simd_ulong(x.y)) }

@inlinable
public func simd_ulong(_ x: simd_double3) -> simd_ulong3 { .init(__simd_ulong(x.x), __simd_ulong(x.y), __simd_ulong(x.z)) }

@inlinable
public func simd_ulong(_ x: simd_double4) -> simd_ulong4{ .init(__simd_ulong(x.x), __simd_ulong(x.y), __simd_ulong(x.z), __simd_ulong(x.w)) }

@inlinable
public func simd_ulong(_ x: simd_double8) -> simd_ulong8 { .init(__simd_ulong(x[0]), __simd_ulong(x[1]), __simd_ulong(x[2]), __simd_ulong(x[3]), __simd_ulong(x[4]), __simd_ulong(x[5]), __simd_ulong(x[6]), __simd_ulong(x[7])) }


// MARK: - simd_ulong_sat

@inlinable
public func simd_ulong_sat(_ x: simd_char2) -> simd_ulong2 { .init(clamping: x) }

@inlinable
public func simd_ulong_sat(_ x: simd_char3) -> simd_ulong3 { .init(clamping: x) }

@inlinable
public func simd_ulong_sat(_ x: simd_char4) -> simd_ulong4 { .init(clamping: x) }

@inlinable
public func simd_ulong_sat(_ x: simd_char8) -> simd_ulong8 { .init(clamping: x) }

@inlinable
public func simd_ulong_sat(_ x: simd_uchar2) -> simd_ulong2 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_ulong_sat(_ x: simd_uchar3) -> simd_ulong3 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_ulong_sat(_ x: simd_uchar4) -> simd_ulong4 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_ulong_sat(_ x: simd_uchar8) -> simd_ulong8 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_ulong_sat(_ x: simd_short2) -> simd_ulong2 { .init(clamping: x) }

@inlinable
public func simd_ulong_sat(_ x: simd_short3) -> simd_ulong3 { .init(clamping: x) }

@inlinable
public func simd_ulong_sat(_ x: simd_short4) -> simd_ulong4 { .init(clamping: x) }

@inlinable
public func simd_ulong_sat(_ x: simd_short8) -> simd_ulong8 { .init(clamping: x) }

@inlinable
public func simd_ulong_sat(_ x: simd_ushort2) -> simd_ulong2 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_ulong_sat(_ x: simd_ushort3) -> simd_ulong3 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_ulong_sat(_ x: simd_ushort4) -> simd_ulong4 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_ulong_sat(_ x: simd_ushort8) -> simd_ulong8 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_ulong_sat(_ x: simd_int2) -> simd_ulong2 { .init(clamping: x) }

@inlinable
public func simd_ulong_sat(_ x: simd_int3) -> simd_ulong3 { .init(clamping: x) }

@inlinable
public func simd_ulong_sat(_ x: simd_int4) -> simd_ulong4 { .init(clamping: x) }

@inlinable
public func simd_ulong_sat(_ x: simd_int8) -> simd_ulong8 { .init(clamping: x) }

@inlinable
public func simd_ulong_sat(_ x: simd_uint2) -> simd_ulong2 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_ulong_sat(_ x: simd_uint3) -> simd_ulong3 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_ulong_sat(_ x: simd_uint4) -> simd_ulong4 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_ulong_sat(_ x: simd_uint8) -> simd_ulong8 { .init(truncatingIfNeeded: x) }

@inlinable
public func simd_ulong_sat(_ x: simd_long2) -> simd_ulong2 { .init(clamping: x) }

@inlinable
public func simd_ulong_sat(_ x: simd_long3) -> simd_ulong3 { .init(clamping: x) }

@inlinable
public func simd_ulong_sat(_ x: simd_long4) -> simd_ulong4 { .init(clamping: x) }

@inlinable
public func simd_ulong_sat(_ x: simd_long8) -> simd_ulong8 { .init(clamping: x) }

@inlinable
public func simd_ulong_sat(_ x: simd_ulong2) -> simd_ulong2 { x }

@inlinable
public func simd_ulong_sat(_ x: simd_ulong3) -> simd_ulong3 { x }

@inlinable
public func simd_ulong_sat(_ x: simd_ulong4) -> simd_ulong4 { x }

@inlinable
public func simd_ulong_sat(_ x: simd_ulong8) -> simd_ulong8 { x }

@inline(__always)
@usableFromInline
internal func __simd_ulong_sat(_ x: Float) -> simd_ulong1 { x < 0x1.0p64 ? simd_ulong1(max(x, 0.0)) : simd_ulong1.max }

@inline(__always)
@usableFromInline
internal func __simd_ulong_sat(_ x: Double) -> simd_ulong1 { x < 0x1.0p64 ? simd_ulong1(max(x, 0.0)) : simd_ulong1.max }

@inlinable
public func simd_ulong_sat(_ x: simd_float2) -> simd_ulong2 { .init(__simd_ulong_sat(x.x), __simd_ulong_sat(x.y)) }

@inlinable
public func simd_ulong_sat(_ x: simd_float3) -> simd_ulong3 { .init(__simd_ulong_sat(x.x), __simd_ulong_sat(x.y), __simd_ulong_sat(x.z)) }

@inlinable
public func simd_ulong_sat(_ x: simd_float4) -> simd_ulong4 { .init(__simd_ulong_sat(x.x), __simd_ulong_sat(x.y), __simd_ulong_sat(x.z), __simd_ulong_sat(x.w)) }

@inlinable
public func simd_ulong_sat(_ x: simd_float8) -> simd_ulong8 { .init(__simd_ulong_sat(x[0]), __simd_ulong_sat(x[1]), __simd_ulong_sat(x[2]), __simd_ulong_sat(x[3]), __simd_ulong_sat(x[4]), __simd_ulong_sat(x[5]), __simd_ulong_sat(x[6]), __simd_ulong_sat(x[7])) }

@inlinable
public func simd_ulong_sat(_ x: simd_double2) -> simd_ulong2 { .init(__simd_ulong_sat(x.x), __simd_ulong_sat(x.y)) }

@inlinable
public func simd_ulong_sat(_ x: simd_double3) -> simd_ulong3 { .init(__simd_ulong_sat(x.x), __simd_ulong_sat(x.y), __simd_ulong_sat(x.z)) }

@inlinable
public func simd_ulong_sat(_ x: simd_double4) -> simd_ulong4 { .init(__simd_ulong_sat(x.x), __simd_ulong_sat(x.y), __simd_ulong_sat(x.z), __simd_ulong_sat(x.w)) }

@inlinable
public func simd_ulong_sat(_ x: simd_double8) -> simd_ulong8 { .init(__simd_ulong_sat(x[0]), __simd_ulong_sat(x[1]), __simd_ulong_sat(x[2]), __simd_ulong_sat(x[3]), __simd_ulong_sat(x[4]), __simd_ulong_sat(x[5]), __simd_ulong_sat(x[6]), __simd_ulong_sat(x[7])) }


// MARK: - simd_float

@inlinable
public func simd_float(_ x: simd_char2) -> simd_float2 { .init(x) }

@inlinable
public func simd_float(_ x: simd_char3) -> simd_float3 { .init(x) }

@inlinable
public func simd_float(_ x: simd_char4) -> simd_float4 { .init(x) }

@inlinable
public func simd_float(_ x: simd_char8) -> simd_float8 { .init(x) }

@inlinable
public func simd_float(_ x: simd_char16) -> simd_float16 { .init(x) }

@inlinable
public func simd_float(_ x: simd_uchar2) -> simd_float2 { .init(x) }

@inlinable
public func simd_float(_ x: simd_uchar3) -> simd_float3 { .init(x) }

@inlinable
public func simd_float(_ x: simd_uchar4) -> simd_float4 { .init(x) }

@inlinable
public func simd_float(_ x: simd_uchar8) -> simd_float8 { .init(x) }

@inlinable
public func simd_float(_ x: simd_uchar16) -> simd_float16 { .init(x) }

@inlinable
public func simd_float(_ x: simd_short2) -> simd_float2 { .init(x) }

@inlinable
public func simd_float(_ x: simd_short3) -> simd_float3 { .init(x) }

@inlinable
public func simd_float(_ x: simd_short4) -> simd_float4 { .init(x) }

@inlinable
public func simd_float(_ x: simd_short8) -> simd_float8 { .init(x) }

@inlinable
public func simd_float(_ x: simd_short16) -> simd_float16 { .init(x) }

@inlinable
public func simd_float(_ x: simd_ushort2) -> simd_float2 { .init(x) }

@inlinable
public func simd_float(_ x: simd_ushort3) -> simd_float3 { .init(x) }

@inlinable
public func simd_float(_ x: simd_ushort4) -> simd_float4 { .init(x) }

@inlinable
public func simd_float(_ x: simd_ushort8) -> simd_float8 { .init(x) }

@inlinable
public func simd_float(_ x: simd_ushort16) -> simd_float16 { .init(x) }

@inlinable
public func simd_float(_ x: simd_int2) -> simd_float2 { .init(x) }

@inlinable
public func simd_float(_ x: simd_int3) -> simd_float3 { .init(x) }

@inlinable
public func simd_float(_ x: simd_int4) -> simd_float4 { .init(x) }

@inlinable
public func simd_float(_ x: simd_int8) -> simd_float8 { .init(x) }

@inlinable
public func simd_float(_ x: simd_int16) -> simd_float16 { .init(x) }

@inlinable
public func simd_float(_ x: simd_uint2) -> simd_float2 { .init(x) }

@inlinable
public func simd_float(_ x: simd_uint3) -> simd_float3 { .init(x) }

@inlinable
public func simd_float(_ x: simd_uint4) -> simd_float4 { .init(x) }

@inlinable
public func simd_float(_ x: simd_uint8) -> simd_float8 { .init(x) }

@inlinable
public func simd_float(_ x: simd_uint16) -> simd_float16 { .init(x) }

@inlinable
public func simd_float(_ x: simd_long2) -> simd_float2 { .init(x) }

@inlinable
public func simd_float(_ x: simd_long3) -> simd_float3 { .init(x) }

@inlinable
public func simd_float(_ x: simd_long4) -> simd_float4 { .init(x) }

@inlinable
public func simd_float(_ x: simd_long8) -> simd_float8 { .init(x) }

@inlinable
public func simd_float(_ x: simd_ulong2) -> simd_float2 { .init(x) }

@inlinable
public func simd_float(_ x: simd_ulong3) -> simd_float3 { .init(x) }

@inlinable
public func simd_float(_ x: simd_ulong4) -> simd_float4 { .init(x) }

@inlinable
public func simd_float(_ x: simd_ulong8) -> simd_float8 { .init(x) }

@inlinable
public func simd_float(_ x: simd_float2) -> simd_float2 { x }

@inlinable
public func simd_float(_ x: simd_float3) -> simd_float3 { x }

@inlinable
public func simd_float(_ x: simd_float4) -> simd_float4 { x }

@inlinable
public func simd_float(_ x: simd_float8) -> simd_float8 { x }

@inlinable
public func simd_float(_ x: simd_float16) -> simd_float16 { x }

@inlinable
public func simd_float(_ x: simd_double2) -> simd_float2 { .init(x) }

@inlinable
public func simd_float(_ x: simd_double3) -> simd_float3 { .init(x) }

@inlinable
public func simd_float(_ x: simd_double4) -> simd_float4 { .init(x) }

@inlinable
public func simd_float(_ x: simd_double8) -> simd_float8 { .init(x) }


// MARK: - simd_double

@inlinable
public func simd_double(_ x: simd_char2) -> simd_double2 { .init(x) }

@inlinable
public func simd_double(_ x: simd_char3) -> simd_double3 { .init(x) }

@inlinable
public func simd_double(_ x: simd_char4) -> simd_double4 { .init(x) }

@inlinable
public func simd_double(_ x: simd_char8) -> simd_double8 { .init(x) }

@inlinable
public func simd_double(_ x: simd_uchar2) -> simd_double2 { .init(x) }

@inlinable
public func simd_double(_ x: simd_uchar3) -> simd_double3 { .init(x) }

@inlinable
public func simd_double(_ x: simd_uchar4) -> simd_double4 { .init(x) }

@inlinable
public func simd_double(_ x: simd_uchar8) -> simd_double8 { .init(x) }

@inlinable
public func simd_double(_ x: simd_short2) -> simd_double2 { .init(x) }

@inlinable
public func simd_double(_ x: simd_short3) -> simd_double3 { .init(x) }

@inlinable
public func simd_double(_ x: simd_short4) -> simd_double4 { .init(x) }

@inlinable
public func simd_double(_ x: simd_short8) -> simd_double8 { .init(x) }

@inlinable
public func simd_double(_ x: simd_ushort2) -> simd_double2 { .init(x) }

@inlinable
public func simd_double(_ x: simd_ushort3) -> simd_double3 { .init(x) }

@inlinable
public func simd_double(_ x: simd_ushort4) -> simd_double4 { .init(x) }

@inlinable
public func simd_double(_ x: simd_ushort8) -> simd_double8 { .init(x) }

@inlinable
public func simd_double(_ x: simd_int2) -> simd_double2 { .init(x) }

@inlinable
public func simd_double(_ x: simd_int3) -> simd_double3 { .init(x) }

@inlinable
public func simd_double(_ x: simd_int4) -> simd_double4 { .init(x) }

@inlinable
public func simd_double(_ x: simd_int8) -> simd_double8 { .init(x) }

@inlinable
public func simd_double(_ x: simd_uint2) -> simd_double2 { .init(x) }

@inlinable
public func simd_double(_ x: simd_uint3) -> simd_double3 { .init(x) }

@inlinable
public func simd_double(_ x: simd_uint4) -> simd_double4 { .init(x) }

@inlinable
public func simd_double(_ x: simd_uint8) -> simd_double8 { .init(x) }

@inlinable
public func simd_double(_ x: simd_long2) -> simd_double2 { .init(x) }

@inlinable
public func simd_double(_ x: simd_long3) -> simd_double3 { .init(x) }

@inlinable
public func simd_double(_ x: simd_long4) -> simd_double4 { .init(x) }

@inlinable
public func simd_double(_ x: simd_long8) -> simd_double8 { .init(x) }

@inlinable
public func simd_double(_ x: simd_ulong2) -> simd_double2 { .init(x) }

@inlinable
public func simd_double(_ x: simd_ulong3) -> simd_double3 { .init(x) }

@inlinable
public func simd_double(_ x: simd_ulong4) -> simd_double4 { .init(x) }

@inlinable
public func simd_double(_ x: simd_ulong8) -> simd_double8 { .init(x) }

@inlinable
public func simd_double(_ x: simd_float2) -> simd_double2 { .init(x) }

@inlinable
public func simd_double(_ x: simd_float3) -> simd_double3 { .init(x) }

@inlinable
public func simd_double(_ x: simd_float4) -> simd_double4 { .init(x) }

@inlinable
public func simd_double(_ x: simd_float8) -> simd_double8 { .init(x) }

@inlinable
public func simd_double(_ x: simd_double2) -> simd_double2 { x }

@inlinable
public func simd_double(_ x: simd_double3) -> simd_double3 { x }

@inlinable
public func simd_double(_ x: simd_double4) -> simd_double4 { x }

@inlinable
public func simd_double(_ x: simd_double8) -> simd_double8 { x }
