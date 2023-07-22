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
//  KvAux.swift
//  kvSimdImplTests
//
//  Created by Svyatoslav Popov on 22.08.2023.
//

import XCTest

import kvSimdImpl

import simd



typealias C1  = CChar
typealias C2  = kvSimdImpl.simd_char2
typealias C3  = kvSimdImpl.simd_char3
typealias C4  = kvSimdImpl.simd_char4
typealias C8  = kvSimdImpl.simd_char8
typealias C16 = kvSimdImpl.simd_char16
typealias C32 = kvSimdImpl.simd_char32
typealias C64 = kvSimdImpl.simd_char64

typealias UC1  = UInt8
typealias UC2  = kvSimdImpl.simd_uchar2
typealias UC3  = kvSimdImpl.simd_uchar3
typealias UC4  = kvSimdImpl.simd_uchar4
typealias UC8  = kvSimdImpl.simd_uchar8
typealias UC16 = kvSimdImpl.simd_uchar16
typealias UC32 = kvSimdImpl.simd_uchar32
typealias UC64 = kvSimdImpl.simd_uchar64

typealias S1  = Int16
typealias S2  = kvSimdImpl.simd_short2
typealias S3  = kvSimdImpl.simd_short3
typealias S4  = kvSimdImpl.simd_short4
typealias S8  = kvSimdImpl.simd_short8
typealias S16 = kvSimdImpl.simd_short16
typealias S32 = kvSimdImpl.simd_short32

typealias US1  = UInt16
typealias US2  = kvSimdImpl.simd_ushort2
typealias US3  = kvSimdImpl.simd_ushort3
typealias US4  = kvSimdImpl.simd_ushort4
typealias US8  = kvSimdImpl.simd_ushort8
typealias US16 = kvSimdImpl.simd_ushort16
typealias US32 = kvSimdImpl.simd_ushort32

typealias I1  = Int32
typealias I2  = kvSimdImpl.simd_int2
typealias I3  = kvSimdImpl.simd_int3
typealias I4  = kvSimdImpl.simd_int4
typealias I8  = kvSimdImpl.simd_int8
typealias I16 = kvSimdImpl.simd_int16

typealias UI1  = UInt32
typealias UI2  = kvSimdImpl.simd_uint2
typealias UI3  = kvSimdImpl.simd_uint3
typealias UI4  = kvSimdImpl.simd_uint4
typealias UI8  = kvSimdImpl.simd_uint8
typealias UI16 = kvSimdImpl.simd_uint16

typealias L1 = kvSimdImpl.simd_long1
typealias L2 = kvSimdImpl.simd_long2
typealias L3 = kvSimdImpl.simd_long3
typealias L4 = kvSimdImpl.simd_long4
typealias L8 = kvSimdImpl.simd_long8

typealias UL1 = kvSimdImpl.simd_ulong1
typealias UL2 = kvSimdImpl.simd_ulong2
typealias UL3 = kvSimdImpl.simd_ulong3
typealias UL4 = kvSimdImpl.simd_ulong4
typealias UL8 = kvSimdImpl.simd_ulong8

typealias F1  = kvSimdImpl.simd_float1
typealias F2  = kvSimdImpl.simd_float2
typealias F3  = kvSimdImpl.simd_float3
typealias F4  = kvSimdImpl.simd_float4
typealias F8  = kvSimdImpl.simd_float8
typealias F16 = kvSimdImpl.simd_float16

typealias D1  = kvSimdImpl.simd_double1
typealias D2  = kvSimdImpl.simd_double2
typealias D3  = kvSimdImpl.simd_double3
typealias D4  = kvSimdImpl.simd_double4
typealias D8  = kvSimdImpl.simd_double8


typealias QF = kvSimdImpl.simd_quatf
typealias QD = kvSimdImpl.simd_quatd


typealias F2x2 = kvSimdImpl.simd_float2x2
typealias F2x3 = kvSimdImpl.simd_float2x3
typealias F2x4 = kvSimdImpl.simd_float2x4

typealias F3x2 = kvSimdImpl.simd_float3x2
typealias F3x3 = kvSimdImpl.simd_float3x3
typealias F3x4 = kvSimdImpl.simd_float3x4

typealias F4x2 = kvSimdImpl.simd_float4x2
typealias F4x3 = kvSimdImpl.simd_float4x3
typealias F4x4 = kvSimdImpl.simd_float4x4


typealias D2x2 = kvSimdImpl.simd_double2x2
typealias D2x3 = kvSimdImpl.simd_double2x3
typealias D2x4 = kvSimdImpl.simd_double2x4

typealias D3x2 = kvSimdImpl.simd_double3x2
typealias D3x3 = kvSimdImpl.simd_double3x3
typealias D3x4 = kvSimdImpl.simd_double3x4

typealias D4x2 = kvSimdImpl.simd_double4x2
typealias D4x3 = kvSimdImpl.simd_double4x3
typealias D4x4 = kvSimdImpl.simd_double4x4


typealias EpsF = KvNumericTolerance<Float>
typealias EpsArgF = KvNumericToleranceArgument<Float>

typealias EpsD = KvNumericTolerance<Double>
typealias EpsArgD = KvNumericToleranceArgument<Double>



let DefaultInputCount: Int = 100


let Cols2x2f: (SIMD2<Float>, SIMD2<Float>) = ([ 00, 10 ], [ 01, 11 ])
let Cols2x3f: (SIMD3<Float>, SIMD3<Float>) = ([ 00, 10, 20 ], [ 01, 11, 21 ])
let Cols2x4f: (SIMD4<Float>, SIMD4<Float>) = ([ 00, 10, 20, 30 ], [ 01, 11, 21, 31 ])

let Cols3x2f: (SIMD2<Float>, SIMD2<Float>, SIMD2<Float>) = ([ 00, 10 ], [ 01, 11 ], [ 02, 12 ])
let Cols3x3f: (SIMD3<Float>, SIMD3<Float>, SIMD3<Float>) = ([ 00, 10, 20 ], [ 01, 11, 21 ], [ 02, 12, 22 ])
let Cols3x4f: (SIMD4<Float>, SIMD4<Float>, SIMD4<Float>) = ([ 00, 10, 20, 30 ], [ 01, 11, 21, 31 ], [ 02, 12, 22, 32 ])

let Cols4x2f: (SIMD2<Float>, SIMD2<Float>, SIMD2<Float>, SIMD2<Float>) = ([ 00, 10 ], [ 01, 11 ], [ 02, 12 ], [ 03, 13 ])
let Cols4x3f: (SIMD3<Float>, SIMD3<Float>, SIMD3<Float>, SIMD3<Float>) = ([ 00, 10, 20 ], [ 01, 11, 21 ], [ 02, 12, 22 ], [ 03, 13, 23 ])
let Cols4x4f: (SIMD4<Float>, SIMD4<Float>, SIMD4<Float>, SIMD4<Float>) = ([ 00, 10, 20, 30 ], [ 01, 11, 21, 31 ], [ 02, 12, 22, 32 ], [ 03, 13, 23, 33 ])


let Cols2x2d: (SIMD2<Double>, SIMD2<Double>) = ([ 00, 10 ], [ 01, 11 ])
let Cols2x3d: (SIMD3<Double>, SIMD3<Double>) = ([ 00, 10, 20 ], [ 01, 11, 21 ])
let Cols2x4d: (SIMD4<Double>, SIMD4<Double>) = ([ 00, 10, 20, 30 ], [ 01, 11, 21, 31 ])

let Cols3x2d: (SIMD2<Double>, SIMD2<Double>, SIMD2<Double>) = ([ 00, 10 ], [ 01, 11 ], [ 02, 12 ])
let Cols3x3d: (SIMD3<Double>, SIMD3<Double>, SIMD3<Double>) = ([ 00, 10, 20 ], [ 01, 11, 21 ], [ 02, 12, 22 ])
let Cols3x4d: (SIMD4<Double>, SIMD4<Double>, SIMD4<Double>) = ([ 00, 10, 20, 30 ], [ 01, 11, 21, 31 ], [ 02, 12, 22, 32 ])

let Cols4x2d: (SIMD2<Double>, SIMD2<Double>, SIMD2<Double>, SIMD2<Double>) = ([ 00, 10 ], [ 01, 11 ], [ 02, 12 ], [ 03, 13 ])
let Cols4x3d: (SIMD3<Double>, SIMD3<Double>, SIMD3<Double>, SIMD3<Double>) = ([ 00, 10, 20 ], [ 01, 11, 21 ], [ 02, 12, 22 ], [ 03, 13, 23 ])
let Cols4x4d: (SIMD4<Double>, SIMD4<Double>, SIMD4<Double>, SIMD4<Double>) = ([ 00, 10, 20, 30 ], [ 01, 11, 21, 31 ], [ 02, 12, 22, 32 ], [ 03, 13, 23, 33 ])



/// - Returns: Array of regular and special floating point values.
func ValidatingFloats<T : BinaryFloatingPoint>() -> [T] { [
    0.0, 1.0, -1.0,
    T.greatestFiniteMagnitude, -T.greatestFiniteMagnitude,
    T.leastNonzeroMagnitude, -T.leastNonzeroMagnitude,
    T.leastNormalMagnitude, -T.leastNormalMagnitude,
    T.infinity, -T.infinity,
    T.nan,
] }


func RandomC1s (_ count: Int = DefaultInputCount, in domain: ValueDomain<C1>? = nil) -> LazyMapSequence<Range<Int>, C1 > { (0 ..< count).lazy.map { _ in Random(in: domain ?? .default) } }
func RandomC2s (_ count: Int = DefaultInputCount, in domain: ValueDomain<C1>? = nil) -> LazyMapSequence<Range<Int>, C2 > { (0 ..< count).lazy.map { _ in Random(in: domain ?? .default) } }
func RandomC3s (_ count: Int = DefaultInputCount, in domain: ValueDomain<C1>? = nil) -> LazyMapSequence<Range<Int>, C3 > { (0 ..< count).lazy.map { _ in Random(in: domain ?? .default) } }
func RandomC4s (_ count: Int = DefaultInputCount, in domain: ValueDomain<C1>? = nil) -> LazyMapSequence<Range<Int>, C4 > { (0 ..< count).lazy.map { _ in Random(in: domain ?? .default) } }
func RandomC8s (_ count: Int = DefaultInputCount, in domain: ValueDomain<C1>? = nil) -> LazyMapSequence<Range<Int>, C8 > { (0 ..< count).lazy.map { _ in Random(in: domain ?? .default) } }
func RandomC16s(_ count: Int = DefaultInputCount, in domain: ValueDomain<C1>? = nil) -> LazyMapSequence<Range<Int>, C16> { (0 ..< count).lazy.map { _ in Random(in: domain ?? .default) } }
func RandomC32s(_ count: Int = DefaultInputCount, in domain: ValueDomain<C1>? = nil) -> LazyMapSequence<Range<Int>, C32> { (0 ..< count).lazy.map { _ in Random(in: domain ?? .default) } }
func RandomC64s(_ count: Int = DefaultInputCount, in domain: ValueDomain<C1>? = nil) -> LazyMapSequence<Range<Int>, C64> { (0 ..< count).lazy.map { _ in Random(in: domain ?? .default) } }

func RandomUC1s (_ count: Int = DefaultInputCount, in domain: ValueDomain<UC1>? = nil) -> LazyMapSequence<Range<Int>, UC1 > { (0 ..< count).lazy.map { _ in Random(in: domain ?? .default) } }
func RandomUC2s (_ count: Int = DefaultInputCount, in domain: ValueDomain<UC1>? = nil) -> LazyMapSequence<Range<Int>, UC2 > { (0 ..< count).lazy.map { _ in Random(in: domain ?? .default) } }
func RandomUC3s (_ count: Int = DefaultInputCount, in domain: ValueDomain<UC1>? = nil) -> LazyMapSequence<Range<Int>, UC3 > { (0 ..< count).lazy.map { _ in Random(in: domain ?? .default) } }
func RandomUC4s (_ count: Int = DefaultInputCount, in domain: ValueDomain<UC1>? = nil) -> LazyMapSequence<Range<Int>, UC4 > { (0 ..< count).lazy.map { _ in Random(in: domain ?? .default) } }
func RandomUC8s (_ count: Int = DefaultInputCount, in domain: ValueDomain<UC1>? = nil) -> LazyMapSequence<Range<Int>, UC8 > { (0 ..< count).lazy.map { _ in Random(in: domain ?? .default) } }
func RandomUC16s(_ count: Int = DefaultInputCount, in domain: ValueDomain<UC1>? = nil) -> LazyMapSequence<Range<Int>, UC16> { (0 ..< count).lazy.map { _ in Random(in: domain ?? .default) } }
func RandomUC32s(_ count: Int = DefaultInputCount, in domain: ValueDomain<UC1>? = nil) -> LazyMapSequence<Range<Int>, UC32> { (0 ..< count).lazy.map { _ in Random(in: domain ?? .default) } }
func RandomUC64s(_ count: Int = DefaultInputCount, in domain: ValueDomain<UC1>? = nil) -> LazyMapSequence<Range<Int>, UC64> { (0 ..< count).lazy.map { _ in Random(in: domain ?? .default) } }

func RandomS1s (_ count: Int = DefaultInputCount, in domain: ValueDomain<S1>? = nil) -> LazyMapSequence<Range<Int>, S1 > { (0 ..< count).lazy.map { _ in Random(in: domain ?? .default) } }
func RandomS2s (_ count: Int = DefaultInputCount, in domain: ValueDomain<S1>? = nil) -> LazyMapSequence<Range<Int>, S2 > { (0 ..< count).lazy.map { _ in Random(in: domain ?? .default) } }
func RandomS3s (_ count: Int = DefaultInputCount, in domain: ValueDomain<S1>? = nil) -> LazyMapSequence<Range<Int>, S3 > { (0 ..< count).lazy.map { _ in Random(in: domain ?? .default) } }
func RandomS4s (_ count: Int = DefaultInputCount, in domain: ValueDomain<S1>? = nil) -> LazyMapSequence<Range<Int>, S4 > { (0 ..< count).lazy.map { _ in Random(in: domain ?? .default) } }
func RandomS8s (_ count: Int = DefaultInputCount, in domain: ValueDomain<S1>? = nil) -> LazyMapSequence<Range<Int>, S8 > { (0 ..< count).lazy.map { _ in Random(in: domain ?? .default) } }
func RandomS16s(_ count: Int = DefaultInputCount, in domain: ValueDomain<S1>? = nil) -> LazyMapSequence<Range<Int>, S16> { (0 ..< count).lazy.map { _ in Random(in: domain ?? .default) } }
func RandomS32s(_ count: Int = DefaultInputCount, in domain: ValueDomain<S1>? = nil) -> LazyMapSequence<Range<Int>, S32> { (0 ..< count).lazy.map { _ in Random(in: domain ?? .default) } }

func RandomUS1s (_ count: Int = DefaultInputCount, in domain: ValueDomain<US1>? = nil) -> LazyMapSequence<Range<Int>, US1 > { (0 ..< count).lazy.map { _ in Random(in: domain ?? .default) } }
func RandomUS2s (_ count: Int = DefaultInputCount, in domain: ValueDomain<US1>? = nil) -> LazyMapSequence<Range<Int>, US2 > { (0 ..< count).lazy.map { _ in Random(in: domain ?? .default) } }
func RandomUS3s (_ count: Int = DefaultInputCount, in domain: ValueDomain<US1>? = nil) -> LazyMapSequence<Range<Int>, US3 > { (0 ..< count).lazy.map { _ in Random(in: domain ?? .default) } }
func RandomUS4s (_ count: Int = DefaultInputCount, in domain: ValueDomain<US1>? = nil) -> LazyMapSequence<Range<Int>, US4 > { (0 ..< count).lazy.map { _ in Random(in: domain ?? .default) } }
func RandomUS8s (_ count: Int = DefaultInputCount, in domain: ValueDomain<US1>? = nil) -> LazyMapSequence<Range<Int>, US8 > { (0 ..< count).lazy.map { _ in Random(in: domain ?? .default) } }
func RandomUS16s(_ count: Int = DefaultInputCount, in domain: ValueDomain<US1>? = nil) -> LazyMapSequence<Range<Int>, US16> { (0 ..< count).lazy.map { _ in Random(in: domain ?? .default) } }
func RandomUS32s(_ count: Int = DefaultInputCount, in domain: ValueDomain<US1>? = nil) -> LazyMapSequence<Range<Int>, US32> { (0 ..< count).lazy.map { _ in Random(in: domain ?? .default) } }

func RandomI1s (_ count: Int = DefaultInputCount, in domain: ValueDomain<I1>? = nil) -> LazyMapSequence<Range<Int>, I1 > { (0 ..< count).lazy.map { _ in Random(in: domain ?? .default) } }
func RandomI2s (_ count: Int = DefaultInputCount, in domain: ValueDomain<I1>? = nil) -> LazyMapSequence<Range<Int>, I2 > { (0 ..< count).lazy.map { _ in Random(in: domain ?? .default) } }
func RandomI3s (_ count: Int = DefaultInputCount, in domain: ValueDomain<I1>? = nil) -> LazyMapSequence<Range<Int>, I3 > { (0 ..< count).lazy.map { _ in Random(in: domain ?? .default) } }
func RandomI4s (_ count: Int = DefaultInputCount, in domain: ValueDomain<I1>? = nil) -> LazyMapSequence<Range<Int>, I4 > { (0 ..< count).lazy.map { _ in Random(in: domain ?? .default) } }
func RandomI8s (_ count: Int = DefaultInputCount, in domain: ValueDomain<I1>? = nil) -> LazyMapSequence<Range<Int>, I8 > { (0 ..< count).lazy.map { _ in Random(in: domain ?? .default) } }
func RandomI16s(_ count: Int = DefaultInputCount, in domain: ValueDomain<I1>? = nil) -> LazyMapSequence<Range<Int>, I16> { (0 ..< count).lazy.map { _ in Random(in: domain ?? .default) } }

func RandomUI1s (_ count: Int = DefaultInputCount, in domain: ValueDomain<UI1>? = nil) -> LazyMapSequence<Range<Int>, UI1 > { (0 ..< count).lazy.map { _ in Random(in: domain ?? .default) } }
func RandomUI2s (_ count: Int = DefaultInputCount, in domain: ValueDomain<UI1>? = nil) -> LazyMapSequence<Range<Int>, UI2 > { (0 ..< count).lazy.map { _ in Random(in: domain ?? .default) } }
func RandomUI3s (_ count: Int = DefaultInputCount, in domain: ValueDomain<UI1>? = nil) -> LazyMapSequence<Range<Int>, UI3 > { (0 ..< count).lazy.map { _ in Random(in: domain ?? .default) } }
func RandomUI4s (_ count: Int = DefaultInputCount, in domain: ValueDomain<UI1>? = nil) -> LazyMapSequence<Range<Int>, UI4 > { (0 ..< count).lazy.map { _ in Random(in: domain ?? .default) } }
func RandomUI8s (_ count: Int = DefaultInputCount, in domain: ValueDomain<UI1>? = nil) -> LazyMapSequence<Range<Int>, UI8 > { (0 ..< count).lazy.map { _ in Random(in: domain ?? .default) } }
func RandomUI16s(_ count: Int = DefaultInputCount, in domain: ValueDomain<UI1>? = nil) -> LazyMapSequence<Range<Int>, UI16> { (0 ..< count).lazy.map { _ in Random(in: domain ?? .default) } }

func RandomL1s(_ count: Int = DefaultInputCount, in domain: ValueDomain<L1>? = nil) -> LazyMapSequence<Range<Int>, L1> { (0 ..< count).lazy.map { _ in Random(in: domain ?? .default) } }
func RandomL2s(_ count: Int = DefaultInputCount, in domain: ValueDomain<L1>? = nil) -> LazyMapSequence<Range<Int>, L2> { (0 ..< count).lazy.map { _ in Random(in: domain ?? .default) } }
func RandomL3s(_ count: Int = DefaultInputCount, in domain: ValueDomain<L1>? = nil) -> LazyMapSequence<Range<Int>, L3> { (0 ..< count).lazy.map { _ in Random(in: domain ?? .default) } }
func RandomL4s(_ count: Int = DefaultInputCount, in domain: ValueDomain<L1>? = nil) -> LazyMapSequence<Range<Int>, L4> { (0 ..< count).lazy.map { _ in Random(in: domain ?? .default) } }
func RandomL8s(_ count: Int = DefaultInputCount, in domain: ValueDomain<L1>? = nil) -> LazyMapSequence<Range<Int>, L8> { (0 ..< count).lazy.map { _ in Random(in: domain ?? .default) } }

func RandomUL1s(_ count: Int = DefaultInputCount, in domain: ValueDomain<UL1>? = nil) -> LazyMapSequence<Range<Int>, UL1> { (0 ..< count).lazy.map { _ in Random(in: domain ?? .default) } }
func RandomUL2s(_ count: Int = DefaultInputCount, in domain: ValueDomain<UL1>? = nil) -> LazyMapSequence<Range<Int>, UL2> { (0 ..< count).lazy.map { _ in Random(in: domain ?? .default) } }
func RandomUL3s(_ count: Int = DefaultInputCount, in domain: ValueDomain<UL1>? = nil) -> LazyMapSequence<Range<Int>, UL3> { (0 ..< count).lazy.map { _ in Random(in: domain ?? .default) } }
func RandomUL4s(_ count: Int = DefaultInputCount, in domain: ValueDomain<UL1>? = nil) -> LazyMapSequence<Range<Int>, UL4> { (0 ..< count).lazy.map { _ in Random(in: domain ?? .default) } }
func RandomUL8s(_ count: Int = DefaultInputCount, in domain: ValueDomain<UL1>? = nil) -> LazyMapSequence<Range<Int>, UL8> { (0 ..< count).lazy.map { _ in Random(in: domain ?? .default) } }

func RandomF1s (_ count: Int = DefaultInputCount, in domain: ValueDomain<F1>? = nil) -> LazyMapSequence<Range<Int>, F1 > { (0 ..< count).lazy.map { _ in Random(in: domain ?? .default) } }
func RandomF2s (_ count: Int = DefaultInputCount, in domain: ValueDomain<F1>? = nil) -> LazyMapSequence<Range<Int>, F2 > { (0 ..< count).lazy.map { _ in Random(in: domain ?? .default) } }
func RandomF3s (_ count: Int = DefaultInputCount, in domain: ValueDomain<F1>? = nil) -> LazyMapSequence<Range<Int>, F3 > { (0 ..< count).lazy.map { _ in Random(in: domain ?? .default) } }
func RandomF4s (_ count: Int = DefaultInputCount, in domain: ValueDomain<F1>? = nil) -> LazyMapSequence<Range<Int>, F4 > { (0 ..< count).lazy.map { _ in Random(in: domain ?? .default) } }
func RandomF8s (_ count: Int = DefaultInputCount, in domain: ValueDomain<F1>? = nil) -> LazyMapSequence<Range<Int>, F8 > { (0 ..< count).lazy.map { _ in Random(in: domain ?? .default) } }
func RandomF16s(_ count: Int = DefaultInputCount, in domain: ValueDomain<F1>? = nil) -> LazyMapSequence<Range<Int>, F16> { (0 ..< count).lazy.map { _ in Random(in: domain ?? .default) } }

func RandomD1s(_ count: Int = DefaultInputCount, in domain: ValueDomain<D1>? = nil) -> LazyMapSequence<Range<Int>, D1> { (0 ..< count).lazy.map { _ in Random(in: domain ?? .default) } }
func RandomD2s(_ count: Int = DefaultInputCount, in domain: ValueDomain<D1>? = nil) -> LazyMapSequence<Range<Int>, D2> { (0 ..< count).lazy.map { _ in Random(in: domain ?? .default) } }
func RandomD3s(_ count: Int = DefaultInputCount, in domain: ValueDomain<D1>? = nil) -> LazyMapSequence<Range<Int>, D3> { (0 ..< count).lazy.map { _ in Random(in: domain ?? .default) } }
func RandomD4s(_ count: Int = DefaultInputCount, in domain: ValueDomain<D1>? = nil) -> LazyMapSequence<Range<Int>, D4> { (0 ..< count).lazy.map { _ in Random(in: domain ?? .default) } }
func RandomD8s(_ count: Int = DefaultInputCount, in domain: ValueDomain<D1>? = nil) -> LazyMapSequence<Range<Int>, D8> { (0 ..< count).lazy.map { _ in Random(in: domain ?? .default) } }


func RandomAngleAxisF() -> (angle: F1, axis: F3) { (angle: F1.random(in: 0.0 ..< (2.0 * F1.pi)), axis: RandomUnitF3()) }
func RandomAngleAxisD() -> (angle: D1, axis: D3) { (angle: D1.random(in: 0.0 ..< (2.0 * D1.pi)), axis: RandomUnitD3()) }


func RandomNxF2(_ count: Int) -> [simd_float2] { (0..<count).map { _ in simd_float2.random(in: -1.0 ... 1.0) } }
func RandomNxF3(_ count: Int) -> [simd_float3] { (0..<count).map { _ in simd_float3.random(in: -1.0 ... 1.0) } }
func RandomNxF4(_ count: Int) -> [simd_float4] { (0..<count).map { _ in simd_float4.random(in: -1.0 ... 1.0) } }

func RandomNxD2(_ count: Int) -> [simd_double2] { (0..<count).map { _ in simd_double2.random(in: -1.0 ... 1.0) } }
func RandomNxD3(_ count: Int) -> [simd_double3] { (0..<count).map { _ in simd_double3.random(in: -1.0 ... 1.0) } }
func RandomNxD4(_ count: Int) -> [simd_double4] { (0..<count).map { _ in simd_double4.random(in: -1.0 ... 1.0) } }


func RepeatedF2 (_ scalars: [F1]) -> [F2 ] { scalars.map(F2 .init(repeating:)) }
func RepeatedF3 (_ scalars: [F1]) -> [F3 ] { scalars.map(F3 .init(repeating:)) }
func RepeatedF4 (_ scalars: [F1]) -> [F4 ] { scalars.map(F4 .init(repeating:)) }
func RepeatedF8 (_ scalars: [F1]) -> [F8 ] { scalars.map(F8 .init(repeating:)) }
func RepeatedF16(_ scalars: [F1]) -> [F16] { scalars.map(F16.init(repeating:)) }

func RepeatedD2(_ scalars: [D1]) -> [D2] { scalars.map(D2.init(repeating:)) }
func RepeatedD3(_ scalars: [D1]) -> [D3] { scalars.map(D3.init(repeating:)) }
func RepeatedD4(_ scalars: [D1]) -> [D4] { scalars.map(D4.init(repeating:)) }
func RepeatedD8(_ scalars: [D1]) -> [D8] { scalars.map(D8.init(repeating:)) }


func Random<T>(in domain: ValueDomain<T>) -> T
where T : FixedWidthInteger
{
    switch domain {
    case .range(let range):
        return .random(in: range)
    }
}

func Random<T>(in domain: ValueDomain<T>) -> T
where T : BinaryFloatingPoint, T.RawSignificand : FixedWidthInteger
{
    switch domain {
    case .range(let range):
        return .random(in: range)
    }
}

func Random<T>(in domain: ValueDomain<T>) -> SIMD2<T> where T : SIMDScalar & FixedWidthInteger {
    .init(Random(in: domain) as T, Random(in: domain) as T)
}

func Random<T>(in domain: ValueDomain<T>) -> SIMD3<T> where T : SIMDScalar & FixedWidthInteger {
    .init(Random(in: domain) as T, Random(in: domain) as T, Random(in: domain) as T)
}

func Random<T>(in domain: ValueDomain<T>) -> SIMD4<T> where T : SIMDScalar & FixedWidthInteger {
    .init(Random(in: domain) as T, Random(in: domain) as T, Random(in: domain) as T, Random(in: domain) as T)
}

func Random<T>(in domain: ValueDomain<T>) -> SIMD8<T> where T : SIMDScalar & FixedWidthInteger {
    .init(lowHalf: Random(in: domain) as SIMD4<T>, highHalf: Random(in: domain) as SIMD4<T>)
}

func Random<T>(in domain: ValueDomain<T>) -> SIMD16<T> where T : SIMDScalar & FixedWidthInteger {
    .init(lowHalf: Random(in: domain) as SIMD8<T>, highHalf: Random(in: domain) as SIMD8<T>)
}

func Random<T>(in domain: ValueDomain<T>) -> SIMD32<T> where T : SIMDScalar & FixedWidthInteger {
    .init(lowHalf: Random(in: domain) as SIMD16<T>, highHalf: Random(in: domain) as SIMD16<T>)
}

func Random<T>(in domain: ValueDomain<T>) -> SIMD64<T> where T : SIMDScalar & FixedWidthInteger {
    .init(lowHalf: Random(in: domain) as SIMD32<T>, highHalf: Random(in: domain) as SIMD32<T>)
}


func Random<T>(in domain: ValueDomain<T>) -> SIMD2<T> where T : SIMDScalar & BinaryFloatingPoint, T.RawSignificand : FixedWidthInteger {
    .init(Random(in: domain) as T, Random(in: domain) as T)
}

func Random<T>(in domain: ValueDomain<T>) -> SIMD3<T> where T : SIMDScalar & BinaryFloatingPoint, T.RawSignificand : FixedWidthInteger {
    .init(Random(in: domain) as T, Random(in: domain) as T, Random(in: domain) as T)
}

func Random<T>(in domain: ValueDomain<T>) -> SIMD4<T> where T : SIMDScalar & BinaryFloatingPoint, T.RawSignificand : FixedWidthInteger {
    .init(Random(in: domain) as T, Random(in: domain) as T, Random(in: domain) as T, Random(in: domain) as T)
}

func Random<T>(in domain: ValueDomain<T>) -> SIMD8<T> where T : SIMDScalar & BinaryFloatingPoint, T.RawSignificand : FixedWidthInteger {
    .init(lowHalf: Random(in: domain) as SIMD4<T>, highHalf: Random(in: domain) as SIMD4<T>)
}

func Random<T>(in domain: ValueDomain<T>) -> SIMD16<T> where T : SIMDScalar & BinaryFloatingPoint, T.RawSignificand : FixedWidthInteger {
    .init(lowHalf: Random(in: domain) as SIMD8<T>, highHalf: Random(in: domain) as SIMD8<T>)
}


func RandomInputQF() -> (subject: QF, reference: simd.simd_quatf) {
    let (angle, axis) = RandomAngleAxisF()
    return (QF(angle: angle, axis: axis), simd.simd_quatf(angle: angle, axis: axis))
}

func RandomInputQD() -> (subject: QD, reference: simd.simd_quatd) {
    let (angle, axis) = RandomAngleAxisD()
    return (QD(angle: angle, axis: axis), simd.simd_quatd(angle: angle, axis: axis))
}


/// - Note: Copied from kvKit 4.1.0.
func RandomUnitF3() -> F3 {
    typealias Scalar = Float

    let x = Scalar.random(in: (-1.0 as Scalar) ... (1.0 as Scalar))
    let oneMinusXX = (1.0 as Scalar) - x * x

    let y: Scalar = { maxY in Scalar.random(in: -maxY ... maxY) }(oneMinusXX.squareRoot())

    var z = ((oneMinusXX - y * y) as Scalar).squareRoot()
    if Bool.random() {
        z.negate()
    }

    return .init(x, y, z)
}

/// - Note: Copied from kvKit 4.1.0.
func RandomUnitD3() -> D3 {
    typealias Scalar = Double

    let x = Scalar.random(in: (-1.0 as Scalar) ... (1.0 as Scalar))
    let oneMinusXX = (1.0 as Scalar) - x * x

    let y: Scalar = { maxY in Scalar.random(in: -maxY ... maxY) }(oneMinusXX.squareRoot())

    var z = ((oneMinusXX - y * y) as Scalar).squareRoot()
    if Bool.random() {
        z.negate()
    }

    return .init(x, y, z)
}


/// - Note: Copied from kvKit 4.1.0.
func KvIsZero<T : BinaryFloatingPoint>(_ value: T, eps: KvNumericTolerance<T> = .default) -> Bool { abs(value) <= eps.value }

/// - Note: Copied from kvKit 4.1.0.
func KvIsZero<T : BinaryFloatingPoint>(_ value: T, eps: KvNumericTolerance<T> = .default, alsoIsPositive positiveFlag: inout Bool) -> Bool {
    positiveFlag = value > eps.value

    return !positiveFlag && value >= -eps.value
}


func IsEqual(_ lhs: F1 , _ rhs: F1 , eps: EpsF) -> Bool { abs(lhs - rhs) <= eps.value }
func IsEqual(_ lhs: F2 , _ rhs: F2 , eps: EpsF) -> Bool { KvIsZero(simd.simd_abs(rhs - lhs).max(), eps: eps) }
func IsEqual(_ lhs: F3 , _ rhs: F3 , eps: EpsF) -> Bool { KvIsZero(simd.simd_abs(rhs - lhs).max(), eps: eps) }
func IsEqual(_ lhs: F4 , _ rhs: F4 , eps: EpsF) -> Bool { KvIsZero(simd.simd_abs(rhs - lhs).max(), eps: eps) }
func IsEqual(_ lhs: F8 , _ rhs: F8 , eps: EpsF) -> Bool { KvIsZero(simd.simd_abs(rhs - lhs).max(), eps: eps) }
func IsEqual(_ lhs: F16, _ rhs: F16, eps: EpsF) -> Bool { KvIsZero(simd.simd_abs(rhs - lhs).max(), eps: eps) }

func IsEqual(_ lhs: F1 , _ rhs: F1 ) -> Bool { IsEqual(lhs, rhs, eps: EpsArgF(lhs, rhs).tolerance) }
func IsEqual(_ lhs: F2 , _ rhs: F2 ) -> Bool { KvIsZero(simd.simd_abs(rhs - lhs).max(), eps: EpsF(EpsArgF(simd.simd_abs(lhs).max() + simd.simd_abs(rhs).max()))) }
func IsEqual(_ lhs: F3 , _ rhs: F3 ) -> Bool { KvIsZero(simd.simd_abs(rhs - lhs).max(), eps: EpsF(EpsArgF(simd.simd_abs(lhs).max() + simd.simd_abs(rhs).max()))) }
func IsEqual(_ lhs: F4 , _ rhs: F4 ) -> Bool { KvIsZero(simd.simd_abs(rhs - lhs).max(), eps: EpsF(EpsArgF(simd.simd_abs(lhs).max() + simd.simd_abs(rhs).max()))) }
func IsEqual(_ lhs: F8 , _ rhs: F8 ) -> Bool { KvIsZero(simd.simd_abs(rhs - lhs).max(), eps: EpsF(EpsArgF(simd.simd_abs(lhs).max() + simd.simd_abs(rhs).max()))) }
func IsEqual(_ lhs: F16, _ rhs: F16) -> Bool { KvIsZero(simd.simd_abs(rhs - lhs).max(), eps: EpsF(EpsArgF(simd.simd_abs(lhs).max() + simd.simd_abs(rhs).max()))) }

func IsEqual(_ lhs: D1, _ rhs: D1, eps: EpsD) -> Bool { abs(lhs - rhs) <= eps.value }
func IsEqual(_ lhs: D2, _ rhs: D2, eps: EpsD) -> Bool { KvIsZero(simd.simd_abs(rhs - lhs).max(), eps: eps) }
func IsEqual(_ lhs: D3, _ rhs: D3, eps: EpsD) -> Bool { KvIsZero(simd.simd_abs(rhs - lhs).max(), eps: eps) }
func IsEqual(_ lhs: D4, _ rhs: D4, eps: EpsD) -> Bool { KvIsZero(simd.simd_abs(rhs - lhs).max(), eps: eps) }
func IsEqual(_ lhs: D8, _ rhs: D8, eps: EpsD) -> Bool { KvIsZero(simd.simd_abs(rhs - lhs).max(), eps: eps) }

func IsEqual(_ lhs: D1, _ rhs: D1) -> Bool { IsEqual(lhs, rhs, eps: EpsArgD(lhs, rhs).tolerance) }
func IsEqual(_ lhs: D2, _ rhs: D2) -> Bool { KvIsZero(simd.simd_abs(rhs - lhs).max(), eps: EpsD(EpsArgD(simd.simd_abs(lhs).max() + simd.simd_abs(rhs).max()))) }
func IsEqual(_ lhs: D3, _ rhs: D3) -> Bool { KvIsZero(simd.simd_abs(rhs - lhs).max(), eps: EpsD(EpsArgD(simd.simd_abs(lhs).max() + simd.simd_abs(rhs).max()))) }
func IsEqual(_ lhs: D4, _ rhs: D4) -> Bool { KvIsZero(simd.simd_abs(rhs - lhs).max(), eps: EpsD(EpsArgD(simd.simd_abs(lhs).max() + simd.simd_abs(rhs).max()))) }
func IsEqual(_ lhs: D8, _ rhs: D8) -> Bool { KvIsZero(simd.simd_abs(rhs - lhs).max(), eps: EpsD(EpsArgD(simd.simd_abs(lhs).max() + simd.simd_abs(rhs).max()))) }

func IsEqualQ(_ lhs: QF, _ rhs: QF) -> Bool { IsEqual(lhs.vector, rhs.vector) }
func IsEqualQ(_ lhs: QD, _ rhs: QD) -> Bool { IsEqual(lhs.vector, rhs.vector) }

func IsEqualQ(_ lhs: QF, _ rhs: simd.simd_quatf) -> Bool { IsEqual(lhs.vector, rhs.vector) }
func IsEqualQ(_ lhs: QD, _ rhs: simd.simd_quatd) -> Bool { IsEqual(lhs.vector, rhs.vector) }

func IsEqualQ(_ lhs: QF, _ rhs: simd.simd_quatf, eps: EpsF) -> Bool { IsEqual(lhs.vector, rhs.vector, eps: eps) }
func IsEqualQ(_ lhs: QD, _ rhs: simd.simd_quatd, eps: EpsD) -> Bool { IsEqual(lhs.vector, rhs.vector, eps: eps) }

func IsEqual(_ result: kvSimdImpl.simd_float2x2, _ expectation: simd.simd_float2x2) -> Bool {
    IsEqual(result[0], expectation[0]) && IsEqual(result[1], expectation[1])
}


func IsEqual(_ result: kvSimdImpl.simd_float2x3, _ expectation: simd.simd_float2x3) -> Bool {
    IsEqual(result[0], expectation[0]) && IsEqual(result[1], expectation[1])
}


func IsEqual(_ result: kvSimdImpl.simd_float2x4, _ expectation: simd.simd_float2x4) -> Bool {
    IsEqual(result[0], expectation[0]) && IsEqual(result[1], expectation[1])
}


func IsEqual(_ result: kvSimdImpl.simd_float3x2, _ expectation: simd.simd_float3x2) -> Bool {
    IsEqual(result[0], expectation[0]) && IsEqual(result[1], expectation[1]) && IsEqual(result[2], expectation[2])
}


func IsEqual(_ result: kvSimdImpl.simd_float3x3, _ expectation: simd.simd_float3x3) -> Bool {
    IsEqual(result[0], expectation[0]) && IsEqual(result[1], expectation[1]) && IsEqual(result[2], expectation[2])
}


func IsEqual(_ result: kvSimdImpl.simd_float3x4, _ expectation: simd.simd_float3x4) -> Bool {
    IsEqual(result[0], expectation[0]) && IsEqual(result[1], expectation[1]) && IsEqual(result[2], expectation[2])
}


func IsEqual(_ result: kvSimdImpl.simd_float4x2, _ expectation: simd.simd_float4x2) -> Bool {
    IsEqual(result[0], expectation[0]) && IsEqual(result[1], expectation[1]) && IsEqual(result[2], expectation[2]) && IsEqual(result[3], expectation[3])
}


func IsEqual(_ result: kvSimdImpl.simd_float4x3, _ expectation: simd.simd_float4x3) -> Bool {
    IsEqual(result[0], expectation[0]) && IsEqual(result[1], expectation[1]) && IsEqual(result[2], expectation[2]) && IsEqual(result[3], expectation[3])
}


func IsEqual(_ result: kvSimdImpl.simd_float4x4, _ expectation: simd.simd_float4x4) -> Bool {
    IsEqual(result[0], expectation[0]) && IsEqual(result[1], expectation[1]) && IsEqual(result[2], expectation[2]) && IsEqual(result[3], expectation[3])
}


func IsEqual(_ result: kvSimdImpl.simd_float4x4, _ expectation: simd.simd_float4x4, eps: EpsF) -> Bool {
    IsEqual(result[0], expectation[0], eps: eps) && IsEqual(result[1], expectation[1], eps: eps) && IsEqual(result[2], expectation[2], eps: eps) && IsEqual(result[3], expectation[3], eps: eps)
}


func IsEqual(_ result: D2x2, _ expectation: simd.simd_double2x2) -> Bool {
    IsEqual(result[0], expectation[0]) && IsEqual(result[1], expectation[1])
}


func IsEqual(_ result: D2x3, _ expectation: simd.simd_double2x3) -> Bool {
    IsEqual(result[0], expectation[0]) && IsEqual(result[1], expectation[1])
}


func IsEqual(_ result: D2x4, _ expectation: simd.simd_double2x4) -> Bool {
    IsEqual(result[0], expectation[0]) && IsEqual(result[1], expectation[1])
}


func IsEqual(_ result: D3x2, _ expectation: simd.simd_double3x2) -> Bool {
    IsEqual(result[0], expectation[0]) && IsEqual(result[1], expectation[1]) && IsEqual(result[2], expectation[2])
}


func IsEqual(_ result: D3x3, _ expectation: simd.simd_double3x3) -> Bool {
    IsEqual(result[0], expectation[0]) && IsEqual(result[1], expectation[1]) && IsEqual(result[2], expectation[2])
}


func IsEqual(_ result: D3x4, _ expectation: simd.simd_double3x4) -> Bool {
    IsEqual(result[0], expectation[0]) && IsEqual(result[1], expectation[1]) && IsEqual(result[2], expectation[2])
}


func IsEqual(_ result: D4x2, _ expectation: simd.simd_double4x2) -> Bool {
    IsEqual(result[0], expectation[0]) && IsEqual(result[1], expectation[1]) && IsEqual(result[2], expectation[2]) && IsEqual(result[3], expectation[3])
}


func IsEqual(_ result: D4x3, _ expectation: simd.simd_double4x3) -> Bool {
    IsEqual(result[0], expectation[0]) && IsEqual(result[1], expectation[1]) && IsEqual(result[2], expectation[2]) && IsEqual(result[3], expectation[3])
}


func IsEqual(_ result: D4x4, _ expectation: simd.simd_double4x4) -> Bool {
    IsEqual(result[0], expectation[0]) && IsEqual(result[1], expectation[1]) && IsEqual(result[2], expectation[2]) && IsEqual(result[3], expectation[3])
}


func IsEqual(_ result: D4x4, _ expectation: simd.simd_double4x4, eps: EpsD) -> Bool {
    IsEqual(result[0], expectation[0], eps: eps) && IsEqual(result[1], expectation[1], eps: eps) && IsEqual(result[2], expectation[2], eps: eps) && IsEqual(result[3], expectation[3], eps: eps)
}


func IsEqualSign<T : BinaryFloatingPoint>(_ lhs: T, _ rhs: T) -> Bool {

    func Sign(_ lhs: T) -> T {
        var isPositive = false
        return KvIsZero(lhs, alsoIsPositive: &isPositive) ? 0.0 : (isPositive ? 1.0 : -1.0)
    }

    return Sign(lhs) == Sign(rhs)
}


func TestAssert<I, R>(_ input: I, label: @autoclosure () -> String, reference: (I.Element) -> R, subject: (I.Element) -> R, validator: (R, R) -> Bool)
where I : Sequence
{
    input.forEach { input in
        let result = subject(input)
        let expected = reference(input)

        if !validator(result, expected) {
            XCTFail("\(label()) with \(input) input: (\(result)) is not equal to expected (\(expected)) value")
        }
    }
}


func TestAssert<I1, I2, R>(_ lhs: I1, _ rhs: I2, label: @autoclosure () -> String, reference: (I1.Element, I2.Element) -> R, subject: (I1.Element, I2.Element) -> R, validator: (R, R) -> Bool)
where I1 : Sequence, I2 : Sequence
{
    TestAssert(zip(lhs, rhs), label: label(), reference: reference, subject: subject, validator: validator)
}


func TestAssert<I1, I2, I3, R>(_ i1: I1, _ i2: I2, _ i3: I3, label: @autoclosure () -> String, reference: (I1.Element, I2.Element, I3.Element) -> R, subject: (I1.Element, I2.Element, I3.Element) -> R, validator: (R, R) -> Bool)
where I1 : Sequence, I2 : Sequence, I3 : Sequence
{
    TestAssert(zip(zip(i1, i2), i3).lazy.map { ($0.0, $0.1, $1) }, label: label(), reference: reference, subject: subject, validator: validator)
}


func TestAssert<I1, I2, I3, I4, R>(_ i1: I1, _ i2: I2, _ i3: I3, _ i4: I4, label: @autoclosure () -> String, reference: (I1.Element, I2.Element, I3.Element, I4.Element) -> R, subject: (I1.Element, I2.Element, I3.Element, I4.Element) -> R, validator: (R, R) -> Bool)
where I1 : Sequence, I2 : Sequence, I3 : Sequence, I4 : Sequence
{
    TestAssert(zip(zip(i1, i2), zip(i3, i4)).lazy.map { ($0.0, $0.1, $1.0, $1.1) }, label: label(), reference: reference, subject: subject, validator: validator)
}


func TestAssert<I1, I2, I3, I4, I5, R>(_ i1: I1, _ i2: I2, _ i3: I3, _ i4: I4, _ i5: I5, label: @autoclosure () -> String, reference: (I1.Element, I2.Element, I3.Element, I4.Element, I5.Element) -> R, subject: (I1.Element, I2.Element, I3.Element, I4.Element, I5.Element) -> R, validator: (R, R) -> Bool)
where I1 : Sequence, I2 : Sequence, I3 : Sequence, I4 : Sequence, I5 : Sequence
{
    TestAssert(zip(zip(zip(i1, i2), i3), zip(i4, i5)).lazy.map { ($0.0.0, $0.0.1, $0.1, $1.0, $1.1) }, label: label(), reference: reference, subject: subject, validator: validator)
}



// MARK: ValueDomain

enum ValueDomain<T : Comparable & Hashable> : Hashable {

    case range(ClosedRange<T>)

}


extension ValueDomain where T : BinaryInteger & UnsignedInteger {

    static var `default`: Self { .range(0 ... 10) }

}


extension ValueDomain where T : BinaryInteger & SignedInteger {

    static var `default`: Self { .range(-10 ... 10) }

}


extension ValueDomain where T : BinaryFloatingPoint {

    static var `default`: Self { .range(-10.0 ... -T.ulpOfOne) }

    static var negative: Self { .range(-10.0 ... 10.0) }
    static var nonNegative: Self { .range(0.0 ... 10.0) }
    static var nonPositive: Self { .range(-10.0 ... 0.0) }
    static var positive: Self { .range(T.ulpOfOne ... 10.0) }

    static var cosh: Self { .range(1.0 ... 100.0) }
    static var sin: Self { .range(-1.0 ... 1.0) }
    static var tanh: Self { .range(-0.999 ... 0.999) }

    static var log1p: Self { .range((-1.0 + T.ulpOfOne) ... 10.0) }

}



// MARK: KvNumericTolerance

/// - Note: Copied from kvKit 4.1.0.
struct KvNumericTolerance<T : BinaryFloatingPoint> {

    typealias Argument = KvNumericToleranceArgument<T>


    let value: T


    /// Initializes an instance with explicit tolerance value.
    ///
    /// Consider implicit way of tolerance handling with ``KvNumericToleranceArgument``.
    /// E.g. `KvNumericTolerance<Double>(100.0)` defines a tolerance near 100.0 with double precision.
    init(explicit value: T) {
        Swift.assert(value >= (0.0 as T), "Invalid argument: tolerance value (\(value)) must be positive")

        self.value = value
    }


    /// Initializes a default tolerance for simple operations with given argument.
    init(_ arg: Argument) {
        self.init(explicit: T.ulpOfOne * Swift.max(Swift.min((32.0 as T) * arg.value, T.greatestFiniteMagnitude), T.ulpOfOne))
    }


    // MARK: Auxiliaries

    /// Default tolerance for comparisons.
    static var `default`: Self { Self(explicit: (32.0 as T) * T.ulpOfOne) }


    /// A shorthand for ``init(explicit:)``.
    static func explicit(_ value: T) -> Self { .init(explicit: value) }

    /// A shorthand for ``init(_:)``.
    static func near(_ arg: Argument) -> Self { .init(arg) }

}


// MARK: : ExpressibleByIntegerLiteral

extension KvNumericTolerance : ExpressibleByIntegerLiteral where T : ExpressibleByIntegerLiteral {

    init(integerLiteral value: T.IntegerLiteralType) { self.init(explicit: .init(integerLiteral: value)) }

}


// MARK: : ExpressibleByFloatLiteral

extension KvNumericTolerance : ExpressibleByFloatLiteral where T : ExpressibleByFloatLiteral {

    init(floatLiteral value: T.FloatLiteralType) { self.init(explicit: .init(floatLiteral: value)) }

}



// MARK: KvNumericToleranceArgument

/// - Note: Copied from kvKit 4.1.0.
struct KvNumericToleranceArgument<T : BinaryFloatingPoint> {

    typealias Tolerance = KvNumericTolerance<T>


    let value: T


    /// Memerwise initializer.
    private init(value: T) {
        Swift.assert(value >= (0.0 as T), "Invalid argument: tolerance argument value (\(value)) must be positive")

        self.value = value
    }

    private init(values v1: T, _ v2: T) {
        Swift.assert(v1 >= (0.0 as T), "Invalid argument: tolerance argument v1 (\(v1)) must be positive")
        Swift.assert(v2 >= (0.0 as T), "Invalid argument: tolerance argument v2 (\(v2)) must be positive")

        self.value = Swift.max(v1, v2)
    }

    /// Zero argument initializer.
    init() { value = 0.0 as T }

    /// Initializes a single argument tolerance.
    init(_ arg: T) { self.init(value: abs(arg)) }

    /// Initializes a tolerance by simple combination of two arguments.
    init(_ a1: T, _ a2: T) { self.init(values: abs(a1), abs(a2)) }


    // MARK: Operations

    var tolerance: Tolerance { Tolerance(self) }

}


// MARK: : ExpressibleByIntegerLiteral

extension KvNumericToleranceArgument : ExpressibleByIntegerLiteral where T : ExpressibleByIntegerLiteral {

    init(integerLiteral value: T.IntegerLiteralType) { self.init(.init(integerLiteral: value)) }

}


// MARK: : ExpressibleByFloatLiteral

extension KvNumericToleranceArgument : ExpressibleByFloatLiteral where T : ExpressibleByFloatLiteral {

    init(floatLiteral value: T.FloatLiteralType) { self.init(.init(floatLiteral: value)) }

}
