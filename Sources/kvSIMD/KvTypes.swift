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
//  KvTypes.swift
//  kvSIMD
//
//  Created by Svyatoslav Popov on 25.07.2023.
//


public typealias simd_bool = Bool

public typealias simd_char1 = CChar
public typealias simd_char2 = SIMD2<CChar>
public typealias simd_char3 = SIMD3<CChar>
public typealias simd_char4 = SIMD4<CChar>
public typealias simd_char8 = SIMD8<CChar>
public typealias simd_char16 = SIMD16<CChar>
public typealias simd_char32 = SIMD32<CChar>
public typealias simd_char64 = SIMD64<CChar>

public typealias simd_uchar1 = UInt8
public typealias simd_uchar2 = SIMD2<UInt8>
public typealias simd_uchar3 = SIMD3<UInt8>
public typealias simd_uchar4 = SIMD4<UInt8>
public typealias simd_uchar8 = SIMD8<UInt8>
public typealias simd_uchar16 = SIMD16<UInt8>
public typealias simd_uchar32 = SIMD32<UInt8>
public typealias simd_uchar64 = SIMD64<UInt8>

public typealias simd_short1 = Int16
public typealias simd_short2 = SIMD2<Int16>
public typealias simd_short3 = SIMD3<Int16>
public typealias simd_short4 = SIMD4<Int16>
public typealias simd_short8 = SIMD8<Int16>
public typealias simd_short16 = SIMD16<Int16>
public typealias simd_short32 = SIMD32<Int16>

public typealias simd_ushort1 = UInt16
public typealias simd_ushort2 = SIMD2<UInt16>
public typealias simd_ushort3 = SIMD3<UInt16>
public typealias simd_ushort4 = SIMD4<UInt16>
public typealias simd_ushort8 = SIMD8<UInt16>
public typealias simd_ushort16 = SIMD16<UInt16>
public typealias simd_ushort32 = SIMD32<UInt16>

public typealias simd_int1 = Int32
public typealias simd_int2 = SIMD2<simd_int1>
public typealias simd_int3 = SIMD3<simd_int1>
public typealias simd_int4 = SIMD4<simd_int1>
public typealias simd_int8 = SIMD8<simd_int1>
public typealias simd_int16 = SIMD16<simd_int1>

public typealias simd_uint1 = UInt32
public typealias simd_uint2 = SIMD2<simd_uint1>
public typealias simd_uint3 = SIMD3<simd_uint1>
public typealias simd_uint4 = SIMD4<simd_uint1>
public typealias simd_uint8 = SIMD8<simd_uint1>
public typealias simd_uint16 = SIMD16<simd_uint1>

#if _pointerBitWidth(_64)
public typealias simd_long1 = Int
#else // !_pointerBitWidth(_64)
public typealias simd_long1 = Int64
#endif // !_pointerBitWidth(_64)
public typealias simd_long2 = SIMD2<simd_long1>
public typealias simd_long3 = SIMD3<simd_long1>
public typealias simd_long4 = SIMD4<simd_long1>
public typealias simd_long8 = SIMD8<simd_long1>

#if _pointerBitWidth(_64)
public typealias simd_ulong1 = UInt
#else // !_pointerBitWidth(_64)
public typealias simd_ulong1 = UInt64
#endif // !_pointerBitWidth(_64)
public typealias simd_ulong2 = SIMD2<simd_ulong1>
public typealias simd_ulong3 = SIMD3<simd_ulong1>
public typealias simd_ulong4 = SIMD4<simd_ulong1>
public typealias simd_ulong8 = SIMD8<simd_ulong1>

public typealias simd_float1 = Float
public typealias simd_float2 = SIMD2<Float>
public typealias simd_float3 = SIMD3<Float>
public typealias simd_float4 = SIMD4<Float>
public typealias simd_float8 = SIMD8<Float>
public typealias simd_float16 = SIMD16<Float>

public typealias simd_double1 = Double
public typealias simd_double2 = SIMD2<Double>
public typealias simd_double3 = SIMD3<Double>
public typealias simd_double4 = SIMD4<Double>
public typealias simd_double8 = SIMD8<Double>

public typealias vector_char2 = simd_char2
public typealias vector_char3 = simd_char3
public typealias vector_char4 = simd_char4
public typealias vector_char8 = simd_char8
public typealias vector_char16 = simd_char16
public typealias vector_char32 = simd_char32

public typealias vector_uchar2 = simd_uchar2
public typealias vector_uchar3 = simd_uchar3
public typealias vector_uchar4 = simd_uchar4
public typealias vector_uchar8 = simd_uchar8
public typealias vector_uchar16 = simd_uchar16
public typealias vector_uchar32 = simd_uchar32

public typealias vector_short2 = simd_short2
public typealias vector_short3 = simd_short3
public typealias vector_short4 = simd_short4
public typealias vector_short8 = simd_short8
public typealias vector_short16 = simd_short16
public typealias vector_short32 = simd_short32

public typealias vector_ushort2 = simd_ushort2
public typealias vector_ushort3 = simd_ushort3
public typealias vector_ushort4 = simd_ushort4
public typealias vector_ushort8 = simd_ushort8
public typealias vector_ushort16 = simd_ushort16
public typealias vector_ushort32 = simd_ushort32

public typealias vector_int2 = simd_int2
public typealias vector_int3 = simd_int3
public typealias vector_int4 = simd_int4
public typealias vector_int8 = simd_int8
public typealias vector_int16 = simd_int16

public typealias vector_uint2 = simd_uint2
public typealias vector_uint3 = simd_uint3
public typealias vector_uint4 = simd_uint4
public typealias vector_uint8 = simd_uint8
public typealias vector_uint16 = simd_uint16

public typealias vector_long1 = simd_long1
public typealias vector_long2 = simd_long2
public typealias vector_long3 = simd_long3
public typealias vector_long4 = simd_long4
public typealias vector_long8 = simd_long8

public typealias vector_ulong1 = simd_ulong1
public typealias vector_ulong2 = simd_ulong2
public typealias vector_ulong3 = simd_ulong3
public typealias vector_ulong4 = simd_ulong4
public typealias vector_ulong8 = simd_ulong8

public typealias vector_float2 = simd_float2
public typealias vector_float3 = simd_float3
public typealias vector_float4 = simd_float4
public typealias vector_float8 = simd_float8
public typealias vector_float16 = simd_float16

public typealias vector_double2 = simd_double2
public typealias vector_double3 = simd_double3
public typealias vector_double4 = simd_double4
public typealias vector_double8 = simd_double8


/// A vector type having the same alignment as underlying scalar type.
public typealias simd_packed_char2 = SIMD2<CChar>
/// A vector type having the same alignment as underlying scalar type.
public typealias simd_packed_char4 = SIMD4<CChar>
/// A vector type having the same alignment as underlying scalar type.
public typealias simd_packed_char8 = SIMD8<CChar>
/// A vector type having the same alignment as underlying scalar type.
public typealias simd_packed_char16 = SIMD16<CChar>
/// A vector type having the same alignment as underlying scalar type.
public typealias simd_packed_char32 = SIMD32<CChar>
/// A vector type having the same alignment as underlying scalar type.
public typealias simd_packed_char64 = SIMD64<CChar>
/// A vector type having the same alignment as underlying scalar type.
public typealias simd_packed_uchar2 = SIMD2<UInt8>
/// A vector type having the same alignment as underlying scalar type.
public typealias simd_packed_uchar4 = SIMD4<UInt8>
/// A vector type having the same alignment as underlying scalar type.
public typealias simd_packed_uchar8 = SIMD8<UInt8>
/// A vector type having the same alignment as underlying scalar type.
public typealias simd_packed_uchar16 = SIMD16<UInt8>
/// A vector type having the same alignment as underlying scalar type.
public typealias simd_packed_uchar32 = SIMD32<UInt8>
/// A vector type having the same alignment as underlying scalar type.
public typealias simd_packed_uchar64 = SIMD64<UInt8>
/// A vector type having the same alignment as underlying scalar type.
public typealias simd_packed_short2 = SIMD2<Int16>
/// A vector type having the same alignment as underlying scalar type.
public typealias simd_packed_short4 = SIMD4<Int16>
/// A vector type having the same alignment as underlying scalar type.
public typealias simd_packed_short8 = SIMD8<Int16>
/// A vector type having the same alignment as underlying scalar type.
public typealias simd_packed_short16 = SIMD16<Int16>
/// A vector type having the same alignment as underlying scalar type.
public typealias simd_packed_short32 = SIMD32<Int16>
/// A vector type having the same alignment as underlying scalar type.
public typealias simd_packed_ushort2 = SIMD2<UInt16>
/// A vector type having the same alignment as underlying scalar type.
public typealias simd_packed_ushort4 = SIMD4<UInt16>
/// A vector type having the same alignment as underlying scalar type.
public typealias simd_packed_ushort8 = SIMD8<UInt16>
/// A vector type having the same alignment as underlying scalar type.
public typealias simd_packed_ushort16 = SIMD16<UInt16>
/// A vector type having the same alignment as underlying scalar type.
public typealias simd_packed_ushort32 = SIMD32<UInt16>
/// A vector type having the same alignment as underlying scalar type.
public typealias simd_packed_int2 = SIMD2<Int32>
/// A vector type having the same alignment as underlying scalar type.
public typealias simd_packed_int4 = SIMD4<Int32>
/// A vector type having the same alignment as underlying scalar type.
public typealias simd_packed_int8 = SIMD8<Int32>
/// A vector type having the same alignment as underlying scalar type.
public typealias simd_packed_int16 = SIMD16<Int32>
/// A vector type having the same alignment as underlying scalar type.
public typealias simd_packed_uint2 = SIMD2<UInt32>
/// A vector type having the same alignment as underlying scalar type.
public typealias simd_packed_uint4 = SIMD4<UInt32>
/// A vector type having the same alignment as underlying scalar type.
public typealias simd_packed_uint8 = SIMD8<UInt32>
/// A vector type having the same alignment as underlying scalar type.
public typealias simd_packed_uint16 = SIMD16<UInt32>
/// A vector type having the same alignment as underlying scalar type.
public typealias simd_packed_long2 = SIMD2<simd_long1>
/// A vector type having the same alignment as underlying scalar type.
public typealias simd_packed_long4 = SIMD4<simd_long1>
/// A vector type having the same alignment as underlying scalar type.
public typealias simd_packed_long8 = SIMD8<simd_long1>
/// A vector type having the same alignment as underlying scalar type.
public typealias simd_packed_ulong2 = SIMD2<simd_ulong1>
/// A vector type having the same alignment as underlying scalar type.
public typealias simd_packed_ulong4 = SIMD4<simd_ulong1>
/// A vector type having the same alignment as underlying scalar type.
public typealias simd_packed_ulong8 = SIMD8<simd_ulong1>
/// A vector type having the same alignment as underlying scalar type.
public typealias simd_packed_float2 = SIMD2<Float>
/// A vector type having the same alignment as underlying scalar type.
public typealias simd_packed_float4 = SIMD4<Float>
/// A vector type having the same alignment as underlying scalar type.
public typealias simd_packed_float8 = SIMD8<Float>
/// A vector type having the same alignment as underlying scalar type.
public typealias simd_packed_float16 = SIMD16<Float>
/// A vector type having the same alignment as underlying scalar type.
public typealias simd_packed_double2 = SIMD2<Double>
/// A vector type having the same alignment as underlying scalar type.
public typealias simd_packed_double4 = SIMD4<Double>
/// A vector type having the same alignment as underlying scalar type.
public typealias simd_packed_double8 = SIMD8<Double>


@available(swift, deprecated: 5.1, message: "Use SIMD2<Int32>")
public typealias int2 = SIMD2<Int32>

@available(swift, deprecated: 5.1, message: "Use SIMD3<Int32>")
public typealias int3 = SIMD3<Int32>

@available(swift, deprecated: 5.1, message: "Use SIMD4<Int32>")
public typealias int4 = SIMD4<Int32>


@available(swift, deprecated: 5.1, message: "Use SIMD2<UInt32>")
public typealias uint2 = SIMD2<UInt32>

@available(swift, deprecated: 5.1, message: "Use SIMD3<UInt32>")
public typealias uint3 = SIMD3<UInt32>

@available(swift, deprecated: 5.1, message: "Use SIMD4<UInt32>")
public typealias uint4 = SIMD4<UInt32>


@available(swift, deprecated: 5.1, message: "Use SIMD2<Float>")
public typealias float2 = SIMD2<Float>

public typealias float2x2 = simd_float2x2
public typealias float2x3 = simd_float2x3
public typealias float2x4 = simd_float2x4

@available(swift, deprecated: 5.1, message: "Use SIMD3<Float>")
public typealias float3 = SIMD3<Float>

public typealias float3x2 = simd_float3x2
public typealias float3x3 = simd_float3x3
public typealias float3x4 = simd_float3x4

@available(swift, deprecated: 5.1, message: "Use SIMD4<Float>")
public typealias float4 = SIMD4<Float>

public typealias float4x2 = simd_float4x2
public typealias float4x3 = simd_float4x3
public typealias float4x4 = simd_float4x4

@available(swift, deprecated: 5.1, message: "Use SIMD2<Double>")
public typealias double2 = SIMD2<Double>

public typealias double2x2 = simd_double2x2
public typealias double2x3 = simd_double2x3
public typealias double2x4 = simd_double2x4

@available(swift, deprecated: 5.1, message: "Use SIMD3<Double>")
public typealias double3 = SIMD3<Double>

public typealias double3x2 = simd_double3x2
public typealias double3x3 = simd_double3x3
public typealias double3x4 = simd_double3x4

@available(swift, deprecated: 5.1, message: "Use SIMD4<Double>")
public typealias double4 = SIMD4<Double>

public typealias double4x2 = simd_double4x2
public typealias double4x3 = simd_double4x3
public typealias double4x4 = simd_double4x4


@available(*, deprecated, renamed: "simd_packed_char2")
public typealias packed_char2 = simd_packed_char2
@available(*, deprecated, renamed: "simd_packed_char4")
public typealias packed_char4 = simd_packed_char4
@available(*, deprecated, renamed: "simd_packed_char8")
public typealias packed_char8 = simd_packed_char8
@available(*, deprecated, renamed: "simd_packed_char16")
public typealias packed_char16 = simd_packed_char16
@available(*, deprecated, renamed: "simd_packed_char32")
public typealias packed_char32 = simd_packed_char32
@available(*, deprecated, renamed: "simd_packed_char64")
public typealias packed_char64 = simd_packed_char64
@available(*, deprecated, renamed: "simd_packed_uchar2")
public typealias packed_uchar2 = simd_packed_uchar2
@available(*, deprecated, renamed: "simd_packed_uchar4")
public typealias packed_uchar4 = simd_packed_uchar4
@available(*, deprecated, renamed: "simd_packed_uchar8")
public typealias packed_uchar8 = simd_packed_uchar8
@available(*, deprecated, renamed: "simd_packed_uchar16")
public typealias packed_uchar16 = simd_packed_uchar16
@available(*, deprecated, renamed: "simd_packed_uchar32")
public typealias packed_uchar32 = simd_packed_uchar32
@available(*, deprecated, renamed: "simd_packed_uchar64")
public typealias packed_uchar64 = simd_packed_uchar64
@available(*, deprecated, renamed: "simd_packed_short2")
public typealias packed_short2 = simd_packed_short2
@available(*, deprecated, renamed: "simd_packed_short4")
public typealias packed_short4 = simd_packed_short4
@available(*, deprecated, renamed: "simd_packed_short8")
public typealias packed_short8 = simd_packed_short8
@available(*, deprecated, renamed: "simd_packed_short16")
public typealias packed_short16 = simd_packed_short16
@available(*, deprecated, renamed: "simd_packed_short32")
public typealias packed_short32 = simd_packed_short32
@available(*, deprecated, renamed: "simd_packed_ushort2")
public typealias packed_ushort2 = simd_packed_ushort2
@available(*, deprecated, renamed: "simd_packed_ushort4")
public typealias packed_ushort4 = simd_packed_ushort4
@available(*, deprecated, renamed: "simd_packed_ushort8")
public typealias packed_ushort8 = simd_packed_ushort8
@available(*, deprecated, renamed: "simd_packed_ushort16")
public typealias packed_ushort16 = simd_packed_ushort16
@available(*, deprecated, renamed: "simd_packed_ushort32")
public typealias packed_ushort32 = simd_packed_ushort32
@available(*, deprecated, renamed: "simd_packed_int2")
public typealias packed_int2 = simd_packed_int2
@available(*, deprecated, renamed: "simd_packed_int4")
public typealias packed_int4 = simd_packed_int4
@available(*, deprecated, renamed: "simd_packed_int8")
public typealias packed_int8 = simd_packed_int8
@available(*, deprecated, renamed: "simd_packed_int16")
public typealias packed_int16 = simd_packed_int16
@available(*, deprecated, renamed: "simd_packed_uint2")
public typealias packed_uint2 = simd_packed_uint2
@available(*, deprecated, renamed: "simd_packed_uint4")
public typealias packed_uint4 = simd_packed_uint4
@available(*, deprecated, renamed: "simd_packed_uint8")
public typealias packed_uint8 = simd_packed_uint8
@available(*, deprecated, renamed: "simd_packed_uint16")
public typealias packed_uint16 = simd_packed_uint16
@available(*, deprecated, renamed: "simd_packed_long2")
public typealias packed_long2 = simd_packed_long2
@available(*, deprecated, renamed: "simd_packed_long4")
public typealias packed_long4 = simd_packed_long4
@available(*, deprecated, renamed: "simd_packed_long8")
public typealias packed_long8 = simd_packed_long8
@available(*, deprecated, renamed: "simd_packed_ulong2")
public typealias packed_ulong2 = simd_packed_ulong2
@available(*, deprecated, renamed: "simd_packed_ulong4")
public typealias packed_ulong4 = simd_packed_ulong4
@available(*, deprecated, renamed: "simd_packed_ulong8")
public typealias packed_ulong8 = simd_packed_ulong8
@available(*, deprecated, renamed: "simd_packed_float2")
public typealias packed_float2 = simd_packed_float2
@available(*, deprecated, renamed: "simd_packed_float4")
public typealias packed_float4 = simd_packed_float4
@available(*, deprecated, renamed: "simd_packed_float8")
public typealias packed_float8 = simd_packed_float8
@available(*, deprecated, renamed: "simd_packed_float16")
public typealias packed_float16 = simd_packed_float16
@available(*, deprecated, renamed: "simd_packed_double2")
public typealias packed_double2 = simd_packed_double2
@available(*, deprecated, renamed: "simd_packed_double4")
public typealias packed_double4 = simd_packed_double4
@available(*, deprecated, renamed: "simd_packed_double8")
public typealias packed_double8 = simd_packed_double8
