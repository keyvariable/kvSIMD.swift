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
//  KvConversionTests.swift
//  kvSimdImplTests
//
//  Created by Svyatoslav Popov on 26.08.2023.
//

import XCTest

@testable import kvSimdImpl

import simd



final class KvConversionTests : XCTestCase {

    // MARK: test_simd_char()

    func test_simd_char() {
        assert( c2 , label: "simd_char-c2"  , reference: simd.simd_char as ( C2 ) -> C2 , subject: kvSimdImpl.simd_char as ( C2 ) -> C2 )
        assert( c3 , label: "simd_char-c3"  , reference: simd.simd_char as ( C3 ) -> C3 , subject: kvSimdImpl.simd_char as ( C3 ) -> C3 )
        assert( c4 , label: "simd_char-c4"  , reference: simd.simd_char as ( C4 ) -> C4 , subject: kvSimdImpl.simd_char as ( C4 ) -> C4 )
        assert( c8 , label: "simd_char-c8"  , reference: simd.simd_char as ( C8 ) -> C8 , subject: kvSimdImpl.simd_char as ( C8 ) -> C8 )
        assert( c16, label: "simd_char-c16" , reference: simd.simd_char as ( C16) -> C16, subject: kvSimdImpl.simd_char as ( C16) -> C16)
        assert( c32, label: "simd_char-c32" , reference: simd.simd_char as ( C32) -> C32, subject: kvSimdImpl.simd_char as ( C32) -> C32)
        assert(uc2 , label: "simd_char-uc2" , reference: simd.simd_char as (UC2 ) -> C2 , subject: kvSimdImpl.simd_char as (UC2 ) -> C2 )
        assert(uc3 , label: "simd_char-uc3" , reference: simd.simd_char as (UC3 ) -> C3 , subject: kvSimdImpl.simd_char as (UC3 ) -> C3 )
        assert(uc4 , label: "simd_char-uc4" , reference: simd.simd_char as (UC4 ) -> C4 , subject: kvSimdImpl.simd_char as (UC4 ) -> C4 )
        assert(uc8 , label: "simd_char-uc8" , reference: simd.simd_char as (UC8 ) -> C8 , subject: kvSimdImpl.simd_char as (UC8 ) -> C8 )
        assert(uc16, label: "simd_char-uc16", reference: simd.simd_char as (UC16) -> C16, subject: kvSimdImpl.simd_char as (UC16) -> C16)
        assert(uc32, label: "simd_char-uc32", reference: simd.simd_char as (UC32) -> C32, subject: kvSimdImpl.simd_char as (UC32) -> C32)

        assert( s2 , label: "simd_char-s2"  , reference: simd.simd_char as ( S2 ) -> C2 , subject: kvSimdImpl.simd_char as ( S2 ) -> C2 )
        assert( s3 , label: "simd_char-s3"  , reference: simd.simd_char as ( S3 ) -> C3 , subject: kvSimdImpl.simd_char as ( S3 ) -> C3 )
        assert( s4 , label: "simd_char-s4"  , reference: simd.simd_char as ( S4 ) -> C4 , subject: kvSimdImpl.simd_char as ( S4 ) -> C4 )
        assert( s8 , label: "simd_char-s8"  , reference: simd.simd_char as ( S8 ) -> C8 , subject: kvSimdImpl.simd_char as ( S8 ) -> C8 )
        assert( s16, label: "simd_char-s16" , reference: simd.simd_char as ( S16) -> C16, subject: kvSimdImpl.simd_char as ( S16) -> C16)
        assert( s32, label: "simd_char-s32" , reference: simd.simd_char as ( S32) -> C32, subject: kvSimdImpl.simd_char as ( S32) -> C32)
        assert(us2 , label: "simd_char-us2" , reference: simd.simd_char as (US2 ) -> C2 , subject: kvSimdImpl.simd_char as (US2 ) -> C2 )
        assert(us3 , label: "simd_char-us3" , reference: simd.simd_char as (US3 ) -> C3 , subject: kvSimdImpl.simd_char as (US3 ) -> C3 )
        assert(us4 , label: "simd_char-us4" , reference: simd.simd_char as (US4 ) -> C4 , subject: kvSimdImpl.simd_char as (US4 ) -> C4 )
        assert(us8 , label: "simd_char-us8" , reference: simd.simd_char as (US8 ) -> C8 , subject: kvSimdImpl.simd_char as (US8 ) -> C8 )
        assert(us16, label: "simd_char-us16", reference: simd.simd_char as (US16) -> C16, subject: kvSimdImpl.simd_char as (US16) -> C16)
        assert(us32, label: "simd_char-us32", reference: simd.simd_char as (US32) -> C32, subject: kvSimdImpl.simd_char as (US32) -> C32)

        assert( i2 , label: "simd_char-i2"  , reference: simd.simd_char as ( I2 ) -> C2 , subject: kvSimdImpl.simd_char as ( I2 ) -> C2 )
        assert( i3 , label: "simd_char-i3"  , reference: simd.simd_char as ( I3 ) -> C3 , subject: kvSimdImpl.simd_char as ( I3 ) -> C3 )
        assert( i4 , label: "simd_char-i4"  , reference: simd.simd_char as ( I4 ) -> C4 , subject: kvSimdImpl.simd_char as ( I4 ) -> C4 )
        assert( i8 , label: "simd_char-i8"  , reference: simd.simd_char as ( I8 ) -> C8 , subject: kvSimdImpl.simd_char as ( I8 ) -> C8 )
        assert( i16, label: "simd_char-i16" , reference: simd.simd_char as ( I16) -> C16, subject: kvSimdImpl.simd_char as ( I16) -> C16)
        assert(ui2 , label: "simd_char-ui2" , reference: simd.simd_char as (UI2 ) -> C2 , subject: kvSimdImpl.simd_char as (UI2 ) -> C2 )
        assert(ui3 , label: "simd_char-ui3" , reference: simd.simd_char as (UI3 ) -> C3 , subject: kvSimdImpl.simd_char as (UI3 ) -> C3 )
        assert(ui4 , label: "simd_char-ui4" , reference: simd.simd_char as (UI4 ) -> C4 , subject: kvSimdImpl.simd_char as (UI4 ) -> C4 )
        assert(ui8 , label: "simd_char-ui8" , reference: simd.simd_char as (UI8 ) -> C8 , subject: kvSimdImpl.simd_char as (UI8 ) -> C8 )
        assert(ui16, label: "simd_char-ui16", reference: simd.simd_char as (UI16) -> C16, subject: kvSimdImpl.simd_char as (UI16) -> C16)

        assert( l2 , label: "simd_char-l2"  , reference: simd.simd_char as ( L2 ) -> C2 , subject: kvSimdImpl.simd_char as ( L2 ) -> C2 )
        assert( l3 , label: "simd_char-l3"  , reference: simd.simd_char as ( L3 ) -> C3 , subject: kvSimdImpl.simd_char as ( L3 ) -> C3 )
        assert( l4 , label: "simd_char-l4"  , reference: simd.simd_char as ( L4 ) -> C4 , subject: kvSimdImpl.simd_char as ( L4 ) -> C4 )
        assert( l8 , label: "simd_char-l8"  , reference: simd.simd_char as ( L8 ) -> C8 , subject: kvSimdImpl.simd_char as ( L8 ) -> C8 )
        assert(ul2 , label: "simd_char-ul2" , reference: simd.simd_char as (UL2 ) -> C2 , subject: kvSimdImpl.simd_char as (UL2 ) -> C2 )
        assert(ul3 , label: "simd_char-ul3" , reference: simd.simd_char as (UL3 ) -> C3 , subject: kvSimdImpl.simd_char as (UL3 ) -> C3 )
        assert(ul4 , label: "simd_char-ul4" , reference: simd.simd_char as (UL4 ) -> C4 , subject: kvSimdImpl.simd_char as (UL4 ) -> C4 )
        assert(ul8 , label: "simd_char-ul8" , reference: simd.simd_char as (UL8 ) -> C8 , subject: kvSimdImpl.simd_char as (UL8 ) -> C8 )

        assert( f2 , label: "simd_char-f2"  , reference: simd.simd_char as ( F2 ) -> C2 , subject: kvSimdImpl.simd_char as ( F2 ) -> C2 )
        assert( f3 , label: "simd_char-f3"  , reference: simd.simd_char as ( F3 ) -> C3 , subject: kvSimdImpl.simd_char as ( F3 ) -> C3 )
        assert( f4 , label: "simd_char-f4"  , reference: simd.simd_char as ( F4 ) -> C4 , subject: kvSimdImpl.simd_char as ( F4 ) -> C4 )
        assert( f8 , label: "simd_char-f8"  , reference: simd.simd_char as ( F8 ) -> C8 , subject: kvSimdImpl.simd_char as ( F8 ) -> C8 )
        assert( f16, label: "simd_char-f16" , reference: simd.simd_char as ( F16) -> C16, subject: kvSimdImpl.simd_char as ( F16) -> C16)

        assert( d2 , label: "simd_char-d2"  , reference: simd.simd_char as ( D2 ) -> C2 , subject: kvSimdImpl.simd_char as ( D2 ) -> C2 )
        assert( d3 , label: "simd_char-d3"  , reference: simd.simd_char as ( D3 ) -> C3 , subject: kvSimdImpl.simd_char as ( D3 ) -> C3 )
        assert( d4 , label: "simd_char-d4"  , reference: simd.simd_char as ( D4 ) -> C4 , subject: kvSimdImpl.simd_char as ( D4 ) -> C4 )
        assert( d8 , label: "simd_char-d8"  , reference: simd.simd_char as ( D8 ) -> C8 , subject: kvSimdImpl.simd_char as ( D8 ) -> C8 )
    }



    // MARK: test_simd_char_sat()

    func test_simd_char_sat() {
        assert( c2 , label: "simd_char_sat-c2"  , reference: simd.simd_char_sat as ( C2 ) -> C2 , subject: kvSimdImpl.simd_char_sat as ( C2 ) -> C2 )
        assert( c3 , label: "simd_char_sat-c3"  , reference: simd.simd_char_sat as ( C3 ) -> C3 , subject: kvSimdImpl.simd_char_sat as ( C3 ) -> C3 )
        assert( c4 , label: "simd_char_sat-c4"  , reference: simd.simd_char_sat as ( C4 ) -> C4 , subject: kvSimdImpl.simd_char_sat as ( C4 ) -> C4 )
        assert( c8 , label: "simd_char_sat-c8"  , reference: simd.simd_char_sat as ( C8 ) -> C8 , subject: kvSimdImpl.simd_char_sat as ( C8 ) -> C8 )
        assert( c16, label: "simd_char_sat-c16" , reference: simd.simd_char_sat as ( C16) -> C16, subject: kvSimdImpl.simd_char_sat as ( C16) -> C16)
        assert( c32, label: "simd_char_sat-c32" , reference: simd.simd_char_sat as ( C32) -> C32, subject: kvSimdImpl.simd_char_sat as ( C32) -> C32)
        assert(uc2 , label: "simd_char_sat-uc2" , reference: simd.simd_char_sat as (UC2 ) -> C2 , subject: kvSimdImpl.simd_char_sat as (UC2 ) -> C2 )
        assert(uc3 , label: "simd_char_sat-uc3" , reference: simd.simd_char_sat as (UC3 ) -> C3 , subject: kvSimdImpl.simd_char_sat as (UC3 ) -> C3 )
        assert(uc4 , label: "simd_char_sat-uc4" , reference: simd.simd_char_sat as (UC4 ) -> C4 , subject: kvSimdImpl.simd_char_sat as (UC4 ) -> C4 )
        assert(uc8 , label: "simd_char_sat-uc8" , reference: simd.simd_char_sat as (UC8 ) -> C8 , subject: kvSimdImpl.simd_char_sat as (UC8 ) -> C8 )
        assert(uc16, label: "simd_char_sat-uc16", reference: simd.simd_char_sat as (UC16) -> C16, subject: kvSimdImpl.simd_char_sat as (UC16) -> C16)
        assert(uc32, label: "simd_char_sat-uc32", reference: simd.simd_char_sat as (UC32) -> C32, subject: kvSimdImpl.simd_char_sat as (UC32) -> C32)

        assert( s2 , label: "simd_char_sat-s2"  , reference: simd.simd_char_sat as ( S2 ) -> C2 , subject: kvSimdImpl.simd_char_sat as ( S2 ) -> C2 )
        assert( s3 , label: "simd_char_sat-s3"  , reference: simd.simd_char_sat as ( S3 ) -> C3 , subject: kvSimdImpl.simd_char_sat as ( S3 ) -> C3 )
        assert( s4 , label: "simd_char_sat-s4"  , reference: simd.simd_char_sat as ( S4 ) -> C4 , subject: kvSimdImpl.simd_char_sat as ( S4 ) -> C4 )
        assert( s8 , label: "simd_char_sat-s8"  , reference: simd.simd_char_sat as ( S8 ) -> C8 , subject: kvSimdImpl.simd_char_sat as ( S8 ) -> C8 )
        assert( s16, label: "simd_char_sat-s16" , reference: simd.simd_char_sat as ( S16) -> C16, subject: kvSimdImpl.simd_char_sat as ( S16) -> C16)
        assert( s32, label: "simd_char_sat-s32" , reference: simd.simd_char_sat as ( S32) -> C32, subject: kvSimdImpl.simd_char_sat as ( S32) -> C32)
        assert(us2 , label: "simd_char_sat-us2" , reference: simd.simd_char_sat as (US2 ) -> C2 , subject: kvSimdImpl.simd_char_sat as (US2 ) -> C2 )
        assert(us3 , label: "simd_char_sat-us3" , reference: simd.simd_char_sat as (US3 ) -> C3 , subject: kvSimdImpl.simd_char_sat as (US3 ) -> C3 )
        assert(us4 , label: "simd_char_sat-us4" , reference: simd.simd_char_sat as (US4 ) -> C4 , subject: kvSimdImpl.simd_char_sat as (US4 ) -> C4 )
        assert(us8 , label: "simd_char_sat-us8" , reference: simd.simd_char_sat as (US8 ) -> C8 , subject: kvSimdImpl.simd_char_sat as (US8 ) -> C8 )
        assert(us16, label: "simd_char_sat-us16", reference: simd.simd_char_sat as (US16) -> C16, subject: kvSimdImpl.simd_char_sat as (US16) -> C16)
        assert(us32, label: "simd_char_sat-us32", reference: simd.simd_char_sat as (US32) -> C32, subject: kvSimdImpl.simd_char_sat as (US32) -> C32)

        assert( i2 , label: "simd_char_sat-i2"  , reference: simd.simd_char_sat as ( I2 ) -> C2 , subject: kvSimdImpl.simd_char_sat as ( I2 ) -> C2 )
        assert( i3 , label: "simd_char_sat-i3"  , reference: simd.simd_char_sat as ( I3 ) -> C3 , subject: kvSimdImpl.simd_char_sat as ( I3 ) -> C3 )
        assert( i4 , label: "simd_char_sat-i4"  , reference: simd.simd_char_sat as ( I4 ) -> C4 , subject: kvSimdImpl.simd_char_sat as ( I4 ) -> C4 )
        assert( i8 , label: "simd_char_sat-i8"  , reference: simd.simd_char_sat as ( I8 ) -> C8 , subject: kvSimdImpl.simd_char_sat as ( I8 ) -> C8 )
        assert( i16, label: "simd_char_sat-i16" , reference: simd.simd_char_sat as ( I16) -> C16, subject: kvSimdImpl.simd_char_sat as ( I16) -> C16)
        assert(ui2 , label: "simd_char_sat-ui2" , reference: simd.simd_char_sat as (UI2 ) -> C2 , subject: kvSimdImpl.simd_char_sat as (UI2 ) -> C2 )
        assert(ui3 , label: "simd_char_sat-ui3" , reference: simd.simd_char_sat as (UI3 ) -> C3 , subject: kvSimdImpl.simd_char_sat as (UI3 ) -> C3 )
        assert(ui4 , label: "simd_char_sat-ui4" , reference: simd.simd_char_sat as (UI4 ) -> C4 , subject: kvSimdImpl.simd_char_sat as (UI4 ) -> C4 )
        assert(ui8 , label: "simd_char_sat-ui8" , reference: simd.simd_char_sat as (UI8 ) -> C8 , subject: kvSimdImpl.simd_char_sat as (UI8 ) -> C8 )
        assert(ui16, label: "simd_char_sat-ui16", reference: simd.simd_char_sat as (UI16) -> C16, subject: kvSimdImpl.simd_char_sat as (UI16) -> C16)

        assert( l2 , label: "simd_char_sat-l2"  , reference: simd.simd_char_sat as ( L2 ) -> C2 , subject: kvSimdImpl.simd_char_sat as ( L2 ) -> C2 )
        assert( l3 , label: "simd_char_sat-l3"  , reference: simd.simd_char_sat as ( L3 ) -> C3 , subject: kvSimdImpl.simd_char_sat as ( L3 ) -> C3 )
        assert( l4 , label: "simd_char_sat-l4"  , reference: simd.simd_char_sat as ( L4 ) -> C4 , subject: kvSimdImpl.simd_char_sat as ( L4 ) -> C4 )
        assert( l8 , label: "simd_char_sat-l8"  , reference: simd.simd_char_sat as ( L8 ) -> C8 , subject: kvSimdImpl.simd_char_sat as ( L8 ) -> C8 )
        assert(ul2 , label: "simd_char_sat-ul2" , reference: simd.simd_char_sat as (UL2 ) -> C2 , subject: kvSimdImpl.simd_char_sat as (UL2 ) -> C2 )
        assert(ul3 , label: "simd_char_sat-ul3" , reference: simd.simd_char_sat as (UL3 ) -> C3 , subject: kvSimdImpl.simd_char_sat as (UL3 ) -> C3 )
        assert(ul4 , label: "simd_char_sat-ul4" , reference: simd.simd_char_sat as (UL4 ) -> C4 , subject: kvSimdImpl.simd_char_sat as (UL4 ) -> C4 )
        assert(ul8 , label: "simd_char_sat-ul8" , reference: simd.simd_char_sat as (UL8 ) -> C8 , subject: kvSimdImpl.simd_char_sat as (UL8 ) -> C8 )

        assert( f2 , label: "simd_char_sat-f2"  , reference: simd.simd_char_sat as ( F2 ) -> C2 , subject: kvSimdImpl.simd_char_sat as ( F2 ) -> C2 )
        assert( f3 , label: "simd_char_sat-f3"  , reference: simd.simd_char_sat as ( F3 ) -> C3 , subject: kvSimdImpl.simd_char_sat as ( F3 ) -> C3 )
        assert( f4 , label: "simd_char_sat-f4"  , reference: simd.simd_char_sat as ( F4 ) -> C4 , subject: kvSimdImpl.simd_char_sat as ( F4 ) -> C4 )
        assert( f8 , label: "simd_char_sat-f8"  , reference: simd.simd_char_sat as ( F8 ) -> C8 , subject: kvSimdImpl.simd_char_sat as ( F8 ) -> C8 )
        assert( f16, label: "simd_char_sat-f16" , reference: simd.simd_char_sat as ( F16) -> C16, subject: kvSimdImpl.simd_char_sat as ( F16) -> C16)

        assert( d2 , label: "simd_char_sat-d2"  , reference: simd.simd_char_sat as ( D2 ) -> C2 , subject: kvSimdImpl.simd_char_sat as ( D2 ) -> C2 )
        assert( d3 , label: "simd_char_sat-d3"  , reference: simd.simd_char_sat as ( D3 ) -> C3 , subject: kvSimdImpl.simd_char_sat as ( D3 ) -> C3 )
        assert( d4 , label: "simd_char_sat-d4"  , reference: simd.simd_char_sat as ( D4 ) -> C4 , subject: kvSimdImpl.simd_char_sat as ( D4 ) -> C4 )
        assert( d8 , label: "simd_char_sat-d8"  , reference: simd.simd_char_sat as ( D8 ) -> C8 , subject: kvSimdImpl.simd_char_sat as ( D8 ) -> C8 )
    }



    // MARK: test_simd_uchar()

    func test_simd_uchar() {
        assert( c2 , label: "simd_uchar-c2"  , reference: simd.simd_uchar as ( C2 ) -> UC2 , subject: kvSimdImpl.simd_uchar as ( C2 ) -> UC2 )
        assert( c3 , label: "simd_uchar-c3"  , reference: simd.simd_uchar as ( C3 ) -> UC3 , subject: kvSimdImpl.simd_uchar as ( C3 ) -> UC3 )
        assert( c4 , label: "simd_uchar-c4"  , reference: simd.simd_uchar as ( C4 ) -> UC4 , subject: kvSimdImpl.simd_uchar as ( C4 ) -> UC4 )
        assert( c8 , label: "simd_uchar-c8"  , reference: simd.simd_uchar as ( C8 ) -> UC8 , subject: kvSimdImpl.simd_uchar as ( C8 ) -> UC8 )
        assert( c16, label: "simd_uchar-c16" , reference: simd.simd_uchar as ( C16) -> UC16, subject: kvSimdImpl.simd_uchar as ( C16) -> UC16)
        assert( c32, label: "simd_uchar-c32" , reference: simd.simd_uchar as ( C32) -> UC32, subject: kvSimdImpl.simd_uchar as ( C32) -> UC32)
        assert(uc2 , label: "simd_uchar-uc2" , reference: simd.simd_uchar as (UC2 ) -> UC2 , subject: kvSimdImpl.simd_uchar as (UC2 ) -> UC2 )
        assert(uc3 , label: "simd_uchar-uc3" , reference: simd.simd_uchar as (UC3 ) -> UC3 , subject: kvSimdImpl.simd_uchar as (UC3 ) -> UC3 )
        assert(uc4 , label: "simd_uchar-uc4" , reference: simd.simd_uchar as (UC4 ) -> UC4 , subject: kvSimdImpl.simd_uchar as (UC4 ) -> UC4 )
        assert(uc8 , label: "simd_uchar-uc8" , reference: simd.simd_uchar as (UC8 ) -> UC8 , subject: kvSimdImpl.simd_uchar as (UC8 ) -> UC8 )
        assert(uc16, label: "simd_uchar-uc16", reference: simd.simd_uchar as (UC16) -> UC16, subject: kvSimdImpl.simd_uchar as (UC16) -> UC16)
        assert(uc32, label: "simd_uchar-uc32", reference: simd.simd_uchar as (UC32) -> UC32, subject: kvSimdImpl.simd_uchar as (UC32) -> UC32)

        assert( s2 , label: "simd_uchar-s2"  , reference: simd.simd_uchar as ( S2 ) -> UC2 , subject: kvSimdImpl.simd_uchar as ( S2 ) -> UC2 )
        assert( s3 , label: "simd_uchar-s3"  , reference: simd.simd_uchar as ( S3 ) -> UC3 , subject: kvSimdImpl.simd_uchar as ( S3 ) -> UC3 )
        assert( s4 , label: "simd_uchar-s4"  , reference: simd.simd_uchar as ( S4 ) -> UC4 , subject: kvSimdImpl.simd_uchar as ( S4 ) -> UC4 )
        assert( s8 , label: "simd_uchar-s8"  , reference: simd.simd_uchar as ( S8 ) -> UC8 , subject: kvSimdImpl.simd_uchar as ( S8 ) -> UC8 )
        assert( s16, label: "simd_uchar-s16" , reference: simd.simd_uchar as ( S16) -> UC16, subject: kvSimdImpl.simd_uchar as ( S16) -> UC16)
        assert( s32, label: "simd_uchar-s32" , reference: simd.simd_uchar as ( S32) -> UC32, subject: kvSimdImpl.simd_uchar as ( S32) -> UC32)
        assert(us2 , label: "simd_uchar-us2" , reference: simd.simd_uchar as (US2 ) -> UC2 , subject: kvSimdImpl.simd_uchar as (US2 ) -> UC2 )
        assert(us3 , label: "simd_uchar-us3" , reference: simd.simd_uchar as (US3 ) -> UC3 , subject: kvSimdImpl.simd_uchar as (US3 ) -> UC3 )
        assert(us4 , label: "simd_uchar-us4" , reference: simd.simd_uchar as (US4 ) -> UC4 , subject: kvSimdImpl.simd_uchar as (US4 ) -> UC4 )
        assert(us8 , label: "simd_uchar-us8" , reference: simd.simd_uchar as (US8 ) -> UC8 , subject: kvSimdImpl.simd_uchar as (US8 ) -> UC8 )
        assert(us16, label: "simd_uchar-us16", reference: simd.simd_uchar as (US16) -> UC16, subject: kvSimdImpl.simd_uchar as (US16) -> UC16)
        assert(us32, label: "simd_uchar-us32", reference: simd.simd_uchar as (US32) -> UC32, subject: kvSimdImpl.simd_uchar as (US32) -> UC32)

        assert( i2 , label: "simd_uchar-i2"  , reference: simd.simd_uchar as ( I2 ) -> UC2 , subject: kvSimdImpl.simd_uchar as ( I2 ) -> UC2 )
        assert( i3 , label: "simd_uchar-i3"  , reference: simd.simd_uchar as ( I3 ) -> UC3 , subject: kvSimdImpl.simd_uchar as ( I3 ) -> UC3 )
        assert( i4 , label: "simd_uchar-i4"  , reference: simd.simd_uchar as ( I4 ) -> UC4 , subject: kvSimdImpl.simd_uchar as ( I4 ) -> UC4 )
        assert( i8 , label: "simd_uchar-i8"  , reference: simd.simd_uchar as ( I8 ) -> UC8 , subject: kvSimdImpl.simd_uchar as ( I8 ) -> UC8 )
        assert( i16, label: "simd_uchar-i16" , reference: simd.simd_uchar as ( I16) -> UC16, subject: kvSimdImpl.simd_uchar as ( I16) -> UC16)
        assert(ui2 , label: "simd_uchar-ui2" , reference: simd.simd_uchar as (UI2 ) -> UC2 , subject: kvSimdImpl.simd_uchar as (UI2 ) -> UC2 )
        assert(ui3 , label: "simd_uchar-ui3" , reference: simd.simd_uchar as (UI3 ) -> UC3 , subject: kvSimdImpl.simd_uchar as (UI3 ) -> UC3 )
        assert(ui4 , label: "simd_uchar-ui4" , reference: simd.simd_uchar as (UI4 ) -> UC4 , subject: kvSimdImpl.simd_uchar as (UI4 ) -> UC4 )
        assert(ui8 , label: "simd_uchar-ui8" , reference: simd.simd_uchar as (UI8 ) -> UC8 , subject: kvSimdImpl.simd_uchar as (UI8 ) -> UC8 )
        assert(ui16, label: "simd_uchar-ui16", reference: simd.simd_uchar as (UI16) -> UC16, subject: kvSimdImpl.simd_uchar as (UI16) -> UC16)

        assert( l2 , label: "simd_uchar-l2"  , reference: simd.simd_uchar as ( L2 ) -> UC2 , subject: kvSimdImpl.simd_uchar as ( L2 ) -> UC2 )
        assert( l3 , label: "simd_uchar-l3"  , reference: simd.simd_uchar as ( L3 ) -> UC3 , subject: kvSimdImpl.simd_uchar as ( L3 ) -> UC3 )
        assert( l4 , label: "simd_uchar-l4"  , reference: simd.simd_uchar as ( L4 ) -> UC4 , subject: kvSimdImpl.simd_uchar as ( L4 ) -> UC4 )
        assert( l8 , label: "simd_uchar-l8"  , reference: simd.simd_uchar as ( L8 ) -> UC8 , subject: kvSimdImpl.simd_uchar as ( L8 ) -> UC8 )
        assert(ul2 , label: "simd_uchar-ul2" , reference: simd.simd_uchar as (UL2 ) -> UC2 , subject: kvSimdImpl.simd_uchar as (UL2 ) -> UC2 )
        assert(ul3 , label: "simd_uchar-ul3" , reference: simd.simd_uchar as (UL3 ) -> UC3 , subject: kvSimdImpl.simd_uchar as (UL3 ) -> UC3 )
        assert(ul4 , label: "simd_uchar-ul4" , reference: simd.simd_uchar as (UL4 ) -> UC4 , subject: kvSimdImpl.simd_uchar as (UL4 ) -> UC4 )
        assert(ul8 , label: "simd_uchar-ul8" , reference: simd.simd_uchar as (UL8 ) -> UC8 , subject: kvSimdImpl.simd_uchar as (UL8 ) -> UC8 )

        assert( f2 , label: "simd_uchar-f2"  , reference: simd.simd_uchar as ( F2 ) -> UC2 , subject: kvSimdImpl.simd_uchar as ( F2 ) -> UC2 )
        assert( f3 , label: "simd_uchar-f3"  , reference: simd.simd_uchar as ( F3 ) -> UC3 , subject: kvSimdImpl.simd_uchar as ( F3 ) -> UC3 )
        assert( f4 , label: "simd_uchar-f4"  , reference: simd.simd_uchar as ( F4 ) -> UC4 , subject: kvSimdImpl.simd_uchar as ( F4 ) -> UC4 )
        assert( f8 , label: "simd_uchar-f8"  , reference: simd.simd_uchar as ( F8 ) -> UC8 , subject: kvSimdImpl.simd_uchar as ( F8 ) -> UC8 )
        assert( f16, label: "simd_uchar-f16" , reference: simd.simd_uchar as ( F16) -> UC16, subject: kvSimdImpl.simd_uchar as ( F16) -> UC16)

        assert( d2 , label: "simd_uchar-d2"  , reference: simd.simd_uchar as ( D2 ) -> UC2 , subject: kvSimdImpl.simd_uchar as ( D2 ) -> UC2 )
        assert( d3 , label: "simd_uchar-d3"  , reference: simd.simd_uchar as ( D3 ) -> UC3 , subject: kvSimdImpl.simd_uchar as ( D3 ) -> UC3 )
        assert( d4 , label: "simd_uchar-d4"  , reference: simd.simd_uchar as ( D4 ) -> UC4 , subject: kvSimdImpl.simd_uchar as ( D4 ) -> UC4 )
        assert( d8 , label: "simd_uchar-d8"  , reference: simd.simd_uchar as ( D8 ) -> UC8 , subject: kvSimdImpl.simd_uchar as ( D8 ) -> UC8 )
    }



    // MARK: test_simd_uchar_sat()

    func test_simd_uchar_sat() {
        assert( c2 , label: "simd_uchar_sat-c2"  , reference: simd.simd_uchar_sat as ( C2 ) -> UC2 , subject: kvSimdImpl.simd_uchar_sat as ( C2 ) -> UC2 )
        assert( c3 , label: "simd_uchar_sat-c3"  , reference: simd.simd_uchar_sat as ( C3 ) -> UC3 , subject: kvSimdImpl.simd_uchar_sat as ( C3 ) -> UC3 )
        assert( c4 , label: "simd_uchar_sat-c4"  , reference: simd.simd_uchar_sat as ( C4 ) -> UC4 , subject: kvSimdImpl.simd_uchar_sat as ( C4 ) -> UC4 )
        assert( c8 , label: "simd_uchar_sat-c8"  , reference: simd.simd_uchar_sat as ( C8 ) -> UC8 , subject: kvSimdImpl.simd_uchar_sat as ( C8 ) -> UC8 )
        assert( c16, label: "simd_uchar_sat-c16" , reference: simd.simd_uchar_sat as ( C16) -> UC16, subject: kvSimdImpl.simd_uchar_sat as ( C16) -> UC16)
        assert( c32, label: "simd_uchar_sat-c32" , reference: simd.simd_uchar_sat as ( C32) -> UC32, subject: kvSimdImpl.simd_uchar_sat as ( C32) -> UC32)
        assert(uc2 , label: "simd_uchar_sat-uc2" , reference: simd.simd_uchar_sat as (UC2 ) -> UC2 , subject: kvSimdImpl.simd_uchar_sat as (UC2 ) -> UC2 )
        assert(uc3 , label: "simd_uchar_sat-uc3" , reference: simd.simd_uchar_sat as (UC3 ) -> UC3 , subject: kvSimdImpl.simd_uchar_sat as (UC3 ) -> UC3 )
        assert(uc4 , label: "simd_uchar_sat-uc4" , reference: simd.simd_uchar_sat as (UC4 ) -> UC4 , subject: kvSimdImpl.simd_uchar_sat as (UC4 ) -> UC4 )
        assert(uc8 , label: "simd_uchar_sat-uc8" , reference: simd.simd_uchar_sat as (UC8 ) -> UC8 , subject: kvSimdImpl.simd_uchar_sat as (UC8 ) -> UC8 )
        assert(uc16, label: "simd_uchar_sat-uc16", reference: simd.simd_uchar_sat as (UC16) -> UC16, subject: kvSimdImpl.simd_uchar_sat as (UC16) -> UC16)
        assert(uc32, label: "simd_uchar_sat-uc32", reference: simd.simd_uchar_sat as (UC32) -> UC32, subject: kvSimdImpl.simd_uchar_sat as (UC32) -> UC32)

        assert( s2 , label: "simd_uchar_sat-s2"  , reference: simd.simd_uchar_sat as ( S2 ) -> UC2 , subject: kvSimdImpl.simd_uchar_sat as ( S2 ) -> UC2 )
        assert( s3 , label: "simd_uchar_sat-s3"  , reference: simd.simd_uchar_sat as ( S3 ) -> UC3 , subject: kvSimdImpl.simd_uchar_sat as ( S3 ) -> UC3 )
        assert( s4 , label: "simd_uchar_sat-s4"  , reference: simd.simd_uchar_sat as ( S4 ) -> UC4 , subject: kvSimdImpl.simd_uchar_sat as ( S4 ) -> UC4 )
        assert( s8 , label: "simd_uchar_sat-s8"  , reference: simd.simd_uchar_sat as ( S8 ) -> UC8 , subject: kvSimdImpl.simd_uchar_sat as ( S8 ) -> UC8 )
        assert( s16, label: "simd_uchar_sat-s16" , reference: simd.simd_uchar_sat as ( S16) -> UC16, subject: kvSimdImpl.simd_uchar_sat as ( S16) -> UC16)
        assert( s32, label: "simd_uchar_sat-s32" , reference: simd.simd_uchar_sat as ( S32) -> UC32, subject: kvSimdImpl.simd_uchar_sat as ( S32) -> UC32)
        assert(us2 , label: "simd_uchar_sat-us2" , reference: simd.simd_uchar_sat as (US2 ) -> UC2 , subject: kvSimdImpl.simd_uchar_sat as (US2 ) -> UC2 )
        assert(us3 , label: "simd_uchar_sat-us3" , reference: simd.simd_uchar_sat as (US3 ) -> UC3 , subject: kvSimdImpl.simd_uchar_sat as (US3 ) -> UC3 )
        assert(us4 , label: "simd_uchar_sat-us4" , reference: simd.simd_uchar_sat as (US4 ) -> UC4 , subject: kvSimdImpl.simd_uchar_sat as (US4 ) -> UC4 )
        assert(us8 , label: "simd_uchar_sat-us8" , reference: simd.simd_uchar_sat as (US8 ) -> UC8 , subject: kvSimdImpl.simd_uchar_sat as (US8 ) -> UC8 )
        assert(us16, label: "simd_uchar_sat-us16", reference: simd.simd_uchar_sat as (US16) -> UC16, subject: kvSimdImpl.simd_uchar_sat as (US16) -> UC16)
        assert(us32, label: "simd_uchar_sat-us32", reference: simd.simd_uchar_sat as (US32) -> UC32, subject: kvSimdImpl.simd_uchar_sat as (US32) -> UC32)

        assert( i2 , label: "simd_uchar_sat-i2"  , reference: simd.simd_uchar_sat as ( I2 ) -> UC2 , subject: kvSimdImpl.simd_uchar_sat as ( I2 ) -> UC2 )
        assert( i3 , label: "simd_uchar_sat-i3"  , reference: simd.simd_uchar_sat as ( I3 ) -> UC3 , subject: kvSimdImpl.simd_uchar_sat as ( I3 ) -> UC3 )
        assert( i4 , label: "simd_uchar_sat-i4"  , reference: simd.simd_uchar_sat as ( I4 ) -> UC4 , subject: kvSimdImpl.simd_uchar_sat as ( I4 ) -> UC4 )
        assert( i8 , label: "simd_uchar_sat-i8"  , reference: simd.simd_uchar_sat as ( I8 ) -> UC8 , subject: kvSimdImpl.simd_uchar_sat as ( I8 ) -> UC8 )
        assert( i16, label: "simd_uchar_sat-i16" , reference: simd.simd_uchar_sat as ( I16) -> UC16, subject: kvSimdImpl.simd_uchar_sat as ( I16) -> UC16)
        assert(ui2 , label: "simd_uchar_sat-ui2" , reference: simd.simd_uchar_sat as (UI2 ) -> UC2 , subject: kvSimdImpl.simd_uchar_sat as (UI2 ) -> UC2 )
        assert(ui3 , label: "simd_uchar_sat-ui3" , reference: simd.simd_uchar_sat as (UI3 ) -> UC3 , subject: kvSimdImpl.simd_uchar_sat as (UI3 ) -> UC3 )
        assert(ui4 , label: "simd_uchar_sat-ui4" , reference: simd.simd_uchar_sat as (UI4 ) -> UC4 , subject: kvSimdImpl.simd_uchar_sat as (UI4 ) -> UC4 )
        assert(ui8 , label: "simd_uchar_sat-ui8" , reference: simd.simd_uchar_sat as (UI8 ) -> UC8 , subject: kvSimdImpl.simd_uchar_sat as (UI8 ) -> UC8 )
        assert(ui16, label: "simd_uchar_sat-ui16", reference: simd.simd_uchar_sat as (UI16) -> UC16, subject: kvSimdImpl.simd_uchar_sat as (UI16) -> UC16)

        assert( l2 , label: "simd_uchar_sat-l2"  , reference: simd.simd_uchar_sat as ( L2 ) -> UC2 , subject: kvSimdImpl.simd_uchar_sat as ( L2 ) -> UC2 )
        assert( l3 , label: "simd_uchar_sat-l3"  , reference: simd.simd_uchar_sat as ( L3 ) -> UC3 , subject: kvSimdImpl.simd_uchar_sat as ( L3 ) -> UC3 )
        assert( l4 , label: "simd_uchar_sat-l4"  , reference: simd.simd_uchar_sat as ( L4 ) -> UC4 , subject: kvSimdImpl.simd_uchar_sat as ( L4 ) -> UC4 )
        assert( l8 , label: "simd_uchar_sat-l8"  , reference: simd.simd_uchar_sat as ( L8 ) -> UC8 , subject: kvSimdImpl.simd_uchar_sat as ( L8 ) -> UC8 )
        assert(ul2 , label: "simd_uchar_sat-ul2" , reference: simd.simd_uchar_sat as (UL2 ) -> UC2 , subject: kvSimdImpl.simd_uchar_sat as (UL2 ) -> UC2 )
        assert(ul3 , label: "simd_uchar_sat-ul3" , reference: simd.simd_uchar_sat as (UL3 ) -> UC3 , subject: kvSimdImpl.simd_uchar_sat as (UL3 ) -> UC3 )
        assert(ul4 , label: "simd_uchar_sat-ul4" , reference: simd.simd_uchar_sat as (UL4 ) -> UC4 , subject: kvSimdImpl.simd_uchar_sat as (UL4 ) -> UC4 )
        assert(ul8 , label: "simd_uchar_sat-ul8" , reference: simd.simd_uchar_sat as (UL8 ) -> UC8 , subject: kvSimdImpl.simd_uchar_sat as (UL8 ) -> UC8 )

        assert( f2 , label: "simd_uchar_sat-f2"  , reference: simd.simd_uchar_sat as ( F2 ) -> UC2 , subject: kvSimdImpl.simd_uchar_sat as ( F2 ) -> UC2 )
        assert( f3 , label: "simd_uchar_sat-f3"  , reference: simd.simd_uchar_sat as ( F3 ) -> UC3 , subject: kvSimdImpl.simd_uchar_sat as ( F3 ) -> UC3 )
        assert( f4 , label: "simd_uchar_sat-f4"  , reference: simd.simd_uchar_sat as ( F4 ) -> UC4 , subject: kvSimdImpl.simd_uchar_sat as ( F4 ) -> UC4 )
        assert( f8 , label: "simd_uchar_sat-f8"  , reference: simd.simd_uchar_sat as ( F8 ) -> UC8 , subject: kvSimdImpl.simd_uchar_sat as ( F8 ) -> UC8 )
        assert( f16, label: "simd_uchar_sat-f16" , reference: simd.simd_uchar_sat as ( F16) -> UC16, subject: kvSimdImpl.simd_uchar_sat as ( F16) -> UC16)

        assert( d2 , label: "simd_uchar_sat-d2"  , reference: simd.simd_uchar_sat as ( D2 ) -> UC2 , subject: kvSimdImpl.simd_uchar_sat as ( D2 ) -> UC2 )
        assert( d3 , label: "simd_uchar_sat-d3"  , reference: simd.simd_uchar_sat as ( D3 ) -> UC3 , subject: kvSimdImpl.simd_uchar_sat as ( D3 ) -> UC3 )
        assert( d4 , label: "simd_uchar_sat-d4"  , reference: simd.simd_uchar_sat as ( D4 ) -> UC4 , subject: kvSimdImpl.simd_uchar_sat as ( D4 ) -> UC4 )
        assert( d8 , label: "simd_uchar_sat-d8"  , reference: simd.simd_uchar_sat as ( D8 ) -> UC8 , subject: kvSimdImpl.simd_uchar_sat as ( D8 ) -> UC8 )
    }



    // MARK: test_simd_short()

    func test_simd_short() {
        assert( c2 , label: "simd_short-c2"  , reference: simd.simd_short as ( C2 ) -> S2 , subject: kvSimdImpl.simd_short as ( C2 ) -> S2 )
        assert( c3 , label: "simd_short-c3"  , reference: simd.simd_short as ( C3 ) -> S3 , subject: kvSimdImpl.simd_short as ( C3 ) -> S3 )
        assert( c4 , label: "simd_short-c4"  , reference: simd.simd_short as ( C4 ) -> S4 , subject: kvSimdImpl.simd_short as ( C4 ) -> S4 )
        assert( c8 , label: "simd_short-c8"  , reference: simd.simd_short as ( C8 ) -> S8 , subject: kvSimdImpl.simd_short as ( C8 ) -> S8 )
        assert( c16, label: "simd_short-c16" , reference: simd.simd_short as ( C16) -> S16, subject: kvSimdImpl.simd_short as ( C16) -> S16)
        assert( c32, label: "simd_short-c32" , reference: simd.simd_short as ( C32) -> S32, subject: kvSimdImpl.simd_short as ( C32) -> S32)
        assert(uc2 , label: "simd_short-uc2" , reference: simd.simd_short as (UC2 ) -> S2 , subject: kvSimdImpl.simd_short as (UC2 ) -> S2 )
        assert(uc3 , label: "simd_short-uc3" , reference: simd.simd_short as (UC3 ) -> S3 , subject: kvSimdImpl.simd_short as (UC3 ) -> S3 )
        assert(uc4 , label: "simd_short-uc4" , reference: simd.simd_short as (UC4 ) -> S4 , subject: kvSimdImpl.simd_short as (UC4 ) -> S4 )
        assert(uc8 , label: "simd_short-uc8" , reference: simd.simd_short as (UC8 ) -> S8 , subject: kvSimdImpl.simd_short as (UC8 ) -> S8 )
        assert(uc16, label: "simd_short-uc16", reference: simd.simd_short as (UC16) -> S16, subject: kvSimdImpl.simd_short as (UC16) -> S16)
        assert(uc32, label: "simd_short-uc32", reference: simd.simd_short as (UC32) -> S32, subject: kvSimdImpl.simd_short as (UC32) -> S32)

        assert( s2 , label: "simd_short-s2"  , reference: simd.simd_short as ( S2 ) -> S2 , subject: kvSimdImpl.simd_short as ( S2 ) -> S2 )
        assert( s3 , label: "simd_short-s3"  , reference: simd.simd_short as ( S3 ) -> S3 , subject: kvSimdImpl.simd_short as ( S3 ) -> S3 )
        assert( s4 , label: "simd_short-s4"  , reference: simd.simd_short as ( S4 ) -> S4 , subject: kvSimdImpl.simd_short as ( S4 ) -> S4 )
        assert( s8 , label: "simd_short-s8"  , reference: simd.simd_short as ( S8 ) -> S8 , subject: kvSimdImpl.simd_short as ( S8 ) -> S8 )
        assert( s16, label: "simd_short-s16" , reference: simd.simd_short as ( S16) -> S16, subject: kvSimdImpl.simd_short as ( S16) -> S16)
        assert( s32, label: "simd_short-s32" , reference: simd.simd_short as ( S32) -> S32, subject: kvSimdImpl.simd_short as ( S32) -> S32)
        assert(us2 , label: "simd_short-us2" , reference: simd.simd_short as (US2 ) -> S2 , subject: kvSimdImpl.simd_short as (US2 ) -> S2 )
        assert(us3 , label: "simd_short-us3" , reference: simd.simd_short as (US3 ) -> S3 , subject: kvSimdImpl.simd_short as (US3 ) -> S3 )
        assert(us4 , label: "simd_short-us4" , reference: simd.simd_short as (US4 ) -> S4 , subject: kvSimdImpl.simd_short as (US4 ) -> S4 )
        assert(us8 , label: "simd_short-us8" , reference: simd.simd_short as (US8 ) -> S8 , subject: kvSimdImpl.simd_short as (US8 ) -> S8 )
        assert(us16, label: "simd_short-us16", reference: simd.simd_short as (US16) -> S16, subject: kvSimdImpl.simd_short as (US16) -> S16)
        assert(us32, label: "simd_short-us32", reference: simd.simd_short as (US32) -> S32, subject: kvSimdImpl.simd_short as (US32) -> S32)

        assert( i2 , label: "simd_short-i2"  , reference: simd.simd_short as ( I2 ) -> S2 , subject: kvSimdImpl.simd_short as ( I2 ) -> S2 )
        assert( i3 , label: "simd_short-i3"  , reference: simd.simd_short as ( I3 ) -> S3 , subject: kvSimdImpl.simd_short as ( I3 ) -> S3 )
        assert( i4 , label: "simd_short-i4"  , reference: simd.simd_short as ( I4 ) -> S4 , subject: kvSimdImpl.simd_short as ( I4 ) -> S4 )
        assert( i8 , label: "simd_short-i8"  , reference: simd.simd_short as ( I8 ) -> S8 , subject: kvSimdImpl.simd_short as ( I8 ) -> S8 )
        assert( i16, label: "simd_short-i16" , reference: simd.simd_short as ( I16) -> S16, subject: kvSimdImpl.simd_short as ( I16) -> S16)
        assert(ui2 , label: "simd_short-ui2" , reference: simd.simd_short as (UI2 ) -> S2 , subject: kvSimdImpl.simd_short as (UI2 ) -> S2 )
        assert(ui3 , label: "simd_short-ui3" , reference: simd.simd_short as (UI3 ) -> S3 , subject: kvSimdImpl.simd_short as (UI3 ) -> S3 )
        assert(ui4 , label: "simd_short-ui4" , reference: simd.simd_short as (UI4 ) -> S4 , subject: kvSimdImpl.simd_short as (UI4 ) -> S4 )
        assert(ui8 , label: "simd_short-ui8" , reference: simd.simd_short as (UI8 ) -> S8 , subject: kvSimdImpl.simd_short as (UI8 ) -> S8 )
        assert(ui16, label: "simd_short-ui16", reference: simd.simd_short as (UI16) -> S16, subject: kvSimdImpl.simd_short as (UI16) -> S16)

        assert( l2 , label: "simd_short-l2"  , reference: simd.simd_short as ( L2 ) -> S2 , subject: kvSimdImpl.simd_short as ( L2 ) -> S2 )
        assert( l3 , label: "simd_short-l3"  , reference: simd.simd_short as ( L3 ) -> S3 , subject: kvSimdImpl.simd_short as ( L3 ) -> S3 )
        assert( l4 , label: "simd_short-l4"  , reference: simd.simd_short as ( L4 ) -> S4 , subject: kvSimdImpl.simd_short as ( L4 ) -> S4 )
        assert( l8 , label: "simd_short-l8"  , reference: simd.simd_short as ( L8 ) -> S8 , subject: kvSimdImpl.simd_short as ( L8 ) -> S8 )
        assert(ul2 , label: "simd_short-ul2" , reference: simd.simd_short as (UL2 ) -> S2 , subject: kvSimdImpl.simd_short as (UL2 ) -> S2 )
        assert(ul3 , label: "simd_short-ul3" , reference: simd.simd_short as (UL3 ) -> S3 , subject: kvSimdImpl.simd_short as (UL3 ) -> S3 )
        assert(ul4 , label: "simd_short-ul4" , reference: simd.simd_short as (UL4 ) -> S4 , subject: kvSimdImpl.simd_short as (UL4 ) -> S4 )
        assert(ul8 , label: "simd_short-ul8" , reference: simd.simd_short as (UL8 ) -> S8 , subject: kvSimdImpl.simd_short as (UL8 ) -> S8 )

        assert( f2 , label: "simd_short-f2"  , reference: simd.simd_short as ( F2 ) -> S2 , subject: kvSimdImpl.simd_short as ( F2 ) -> S2 )
        assert( f3 , label: "simd_short-f3"  , reference: simd.simd_short as ( F3 ) -> S3 , subject: kvSimdImpl.simd_short as ( F3 ) -> S3 )
        assert( f4 , label: "simd_short-f4"  , reference: simd.simd_short as ( F4 ) -> S4 , subject: kvSimdImpl.simd_short as ( F4 ) -> S4 )
        assert( f8 , label: "simd_short-f8"  , reference: simd.simd_short as ( F8 ) -> S8 , subject: kvSimdImpl.simd_short as ( F8 ) -> S8 )
        assert( f16, label: "simd_short-f16" , reference: simd.simd_short as ( F16) -> S16, subject: kvSimdImpl.simd_short as ( F16) -> S16)

        assert( d2 , label: "simd_short-d2"  , reference: simd.simd_short as ( D2 ) -> S2 , subject: kvSimdImpl.simd_short as ( D2 ) -> S2 )
        assert( d3 , label: "simd_short-d3"  , reference: simd.simd_short as ( D3 ) -> S3 , subject: kvSimdImpl.simd_short as ( D3 ) -> S3 )
        assert( d4 , label: "simd_short-d4"  , reference: simd.simd_short as ( D4 ) -> S4 , subject: kvSimdImpl.simd_short as ( D4 ) -> S4 )
        assert( d8 , label: "simd_short-d8"  , reference: simd.simd_short as ( D8 ) -> S8 , subject: kvSimdImpl.simd_short as ( D8 ) -> S8 )
    }



    // MARK: test_simd_short_sat()

    func test_simd_short_sat() {
        assert( c2 , label: "simd_short_sat-c2"  , reference: simd.simd_short_sat as ( C2 ) -> S2 , subject: kvSimdImpl.simd_short_sat as ( C2 ) -> S2 )
        assert( c3 , label: "simd_short_sat-c3"  , reference: simd.simd_short_sat as ( C3 ) -> S3 , subject: kvSimdImpl.simd_short_sat as ( C3 ) -> S3 )
        assert( c4 , label: "simd_short_sat-c4"  , reference: simd.simd_short_sat as ( C4 ) -> S4 , subject: kvSimdImpl.simd_short_sat as ( C4 ) -> S4 )
        assert( c8 , label: "simd_short_sat-c8"  , reference: simd.simd_short_sat as ( C8 ) -> S8 , subject: kvSimdImpl.simd_short_sat as ( C8 ) -> S8 )
        assert( c16, label: "simd_short_sat-c16" , reference: simd.simd_short_sat as ( C16) -> S16, subject: kvSimdImpl.simd_short_sat as ( C16) -> S16)
        assert( c32, label: "simd_short_sat-c32" , reference: simd.simd_short_sat as ( C32) -> S32, subject: kvSimdImpl.simd_short_sat as ( C32) -> S32)
        assert(uc2 , label: "simd_short_sat-uc2" , reference: simd.simd_short_sat as (UC2 ) -> S2 , subject: kvSimdImpl.simd_short_sat as (UC2 ) -> S2 )
        assert(uc3 , label: "simd_short_sat-uc3" , reference: simd.simd_short_sat as (UC3 ) -> S3 , subject: kvSimdImpl.simd_short_sat as (UC3 ) -> S3 )
        assert(uc4 , label: "simd_short_sat-uc4" , reference: simd.simd_short_sat as (UC4 ) -> S4 , subject: kvSimdImpl.simd_short_sat as (UC4 ) -> S4 )
        assert(uc8 , label: "simd_short_sat-uc8" , reference: simd.simd_short_sat as (UC8 ) -> S8 , subject: kvSimdImpl.simd_short_sat as (UC8 ) -> S8 )
        assert(uc16, label: "simd_short_sat-uc16", reference: simd.simd_short_sat as (UC16) -> S16, subject: kvSimdImpl.simd_short_sat as (UC16) -> S16)
        assert(uc32, label: "simd_short_sat-uc32", reference: simd.simd_short_sat as (UC32) -> S32, subject: kvSimdImpl.simd_short_sat as (UC32) -> S32)

        assert( s2 , label: "simd_short_sat-s2"  , reference: simd.simd_short_sat as ( S2 ) -> S2 , subject: kvSimdImpl.simd_short_sat as ( S2 ) -> S2 )
        assert( s3 , label: "simd_short_sat-s3"  , reference: simd.simd_short_sat as ( S3 ) -> S3 , subject: kvSimdImpl.simd_short_sat as ( S3 ) -> S3 )
        assert( s4 , label: "simd_short_sat-s4"  , reference: simd.simd_short_sat as ( S4 ) -> S4 , subject: kvSimdImpl.simd_short_sat as ( S4 ) -> S4 )
        assert( s8 , label: "simd_short_sat-s8"  , reference: simd.simd_short_sat as ( S8 ) -> S8 , subject: kvSimdImpl.simd_short_sat as ( S8 ) -> S8 )
        assert( s16, label: "simd_short_sat-s16" , reference: simd.simd_short_sat as ( S16) -> S16, subject: kvSimdImpl.simd_short_sat as ( S16) -> S16)
        assert( s32, label: "simd_short_sat-s32" , reference: simd.simd_short_sat as ( S32) -> S32, subject: kvSimdImpl.simd_short_sat as ( S32) -> S32)
        assert(us2 , label: "simd_short_sat-us2" , reference: simd.simd_short_sat as (US2 ) -> S2 , subject: kvSimdImpl.simd_short_sat as (US2 ) -> S2 )
        assert(us3 , label: "simd_short_sat-us3" , reference: simd.simd_short_sat as (US3 ) -> S3 , subject: kvSimdImpl.simd_short_sat as (US3 ) -> S3 )
        assert(us4 , label: "simd_short_sat-us4" , reference: simd.simd_short_sat as (US4 ) -> S4 , subject: kvSimdImpl.simd_short_sat as (US4 ) -> S4 )
        assert(us8 , label: "simd_short_sat-us8" , reference: simd.simd_short_sat as (US8 ) -> S8 , subject: kvSimdImpl.simd_short_sat as (US8 ) -> S8 )
        assert(us16, label: "simd_short_sat-us16", reference: simd.simd_short_sat as (US16) -> S16, subject: kvSimdImpl.simd_short_sat as (US16) -> S16)
        assert(us32, label: "simd_short_sat-us32", reference: simd.simd_short_sat as (US32) -> S32, subject: kvSimdImpl.simd_short_sat as (US32) -> S32)

        assert( i2 , label: "simd_short_sat-i2"  , reference: simd.simd_short_sat as ( I2 ) -> S2 , subject: kvSimdImpl.simd_short_sat as ( I2 ) -> S2 )
        assert( i3 , label: "simd_short_sat-i3"  , reference: simd.simd_short_sat as ( I3 ) -> S3 , subject: kvSimdImpl.simd_short_sat as ( I3 ) -> S3 )
        assert( i4 , label: "simd_short_sat-i4"  , reference: simd.simd_short_sat as ( I4 ) -> S4 , subject: kvSimdImpl.simd_short_sat as ( I4 ) -> S4 )
        assert( i8 , label: "simd_short_sat-i8"  , reference: simd.simd_short_sat as ( I8 ) -> S8 , subject: kvSimdImpl.simd_short_sat as ( I8 ) -> S8 )
        assert( i16, label: "simd_short_sat-i16" , reference: simd.simd_short_sat as ( I16) -> S16, subject: kvSimdImpl.simd_short_sat as ( I16) -> S16)
        assert(ui2 , label: "simd_short_sat-ui2" , reference: simd.simd_short_sat as (UI2 ) -> S2 , subject: kvSimdImpl.simd_short_sat as (UI2 ) -> S2 )
        assert(ui3 , label: "simd_short_sat-ui3" , reference: simd.simd_short_sat as (UI3 ) -> S3 , subject: kvSimdImpl.simd_short_sat as (UI3 ) -> S3 )
        assert(ui4 , label: "simd_short_sat-ui4" , reference: simd.simd_short_sat as (UI4 ) -> S4 , subject: kvSimdImpl.simd_short_sat as (UI4 ) -> S4 )
        assert(ui8 , label: "simd_short_sat-ui8" , reference: simd.simd_short_sat as (UI8 ) -> S8 , subject: kvSimdImpl.simd_short_sat as (UI8 ) -> S8 )
        assert(ui16, label: "simd_short_sat-ui16", reference: simd.simd_short_sat as (UI16) -> S16, subject: kvSimdImpl.simd_short_sat as (UI16) -> S16)

        assert( l2 , label: "simd_short_sat-l2"  , reference: simd.simd_short_sat as ( L2 ) -> S2 , subject: kvSimdImpl.simd_short_sat as ( L2 ) -> S2 )
        assert( l3 , label: "simd_short_sat-l3"  , reference: simd.simd_short_sat as ( L3 ) -> S3 , subject: kvSimdImpl.simd_short_sat as ( L3 ) -> S3 )
        assert( l4 , label: "simd_short_sat-l4"  , reference: simd.simd_short_sat as ( L4 ) -> S4 , subject: kvSimdImpl.simd_short_sat as ( L4 ) -> S4 )
        assert( l8 , label: "simd_short_sat-l8"  , reference: simd.simd_short_sat as ( L8 ) -> S8 , subject: kvSimdImpl.simd_short_sat as ( L8 ) -> S8 )
        assert(ul2 , label: "simd_short_sat-ul2" , reference: simd.simd_short_sat as (UL2 ) -> S2 , subject: kvSimdImpl.simd_short_sat as (UL2 ) -> S2 )
        assert(ul3 , label: "simd_short_sat-ul3" , reference: simd.simd_short_sat as (UL3 ) -> S3 , subject: kvSimdImpl.simd_short_sat as (UL3 ) -> S3 )
        assert(ul4 , label: "simd_short_sat-ul4" , reference: simd.simd_short_sat as (UL4 ) -> S4 , subject: kvSimdImpl.simd_short_sat as (UL4 ) -> S4 )
        assert(ul8 , label: "simd_short_sat-ul8" , reference: simd.simd_short_sat as (UL8 ) -> S8 , subject: kvSimdImpl.simd_short_sat as (UL8 ) -> S8 )

        assert( f2 , label: "simd_short_sat-f2"  , reference: simd.simd_short_sat as ( F2 ) -> S2 , subject: kvSimdImpl.simd_short_sat as ( F2 ) -> S2 )
        assert( f3 , label: "simd_short_sat-f3"  , reference: simd.simd_short_sat as ( F3 ) -> S3 , subject: kvSimdImpl.simd_short_sat as ( F3 ) -> S3 )
        assert( f4 , label: "simd_short_sat-f4"  , reference: simd.simd_short_sat as ( F4 ) -> S4 , subject: kvSimdImpl.simd_short_sat as ( F4 ) -> S4 )
        assert( f8 , label: "simd_short_sat-f8"  , reference: simd.simd_short_sat as ( F8 ) -> S8 , subject: kvSimdImpl.simd_short_sat as ( F8 ) -> S8 )
        assert( f16, label: "simd_short_sat-f16" , reference: simd.simd_short_sat as ( F16) -> S16, subject: kvSimdImpl.simd_short_sat as ( F16) -> S16)

        assert( d2 , label: "simd_short_sat-d2"  , reference: simd.simd_short_sat as ( D2 ) -> S2 , subject: kvSimdImpl.simd_short_sat as ( D2 ) -> S2 )
        assert( d3 , label: "simd_short_sat-d3"  , reference: simd.simd_short_sat as ( D3 ) -> S3 , subject: kvSimdImpl.simd_short_sat as ( D3 ) -> S3 )
        assert( d4 , label: "simd_short_sat-d4"  , reference: simd.simd_short_sat as ( D4 ) -> S4 , subject: kvSimdImpl.simd_short_sat as ( D4 ) -> S4 )
        assert( d8 , label: "simd_short_sat-d8"  , reference: simd.simd_short_sat as ( D8 ) -> S8 , subject: kvSimdImpl.simd_short_sat as ( D8 ) -> S8 )
    }



    // MARK: test_simd_ushort()

    func test_simd_ushort() {
        assert( c2 , label: "simd_ushort-c2"  , reference: simd.simd_ushort as ( C2 ) -> US2 , subject: kvSimdImpl.simd_ushort as ( C2 ) -> US2 )
        assert( c3 , label: "simd_ushort-c3"  , reference: simd.simd_ushort as ( C3 ) -> US3 , subject: kvSimdImpl.simd_ushort as ( C3 ) -> US3 )
        assert( c4 , label: "simd_ushort-c4"  , reference: simd.simd_ushort as ( C4 ) -> US4 , subject: kvSimdImpl.simd_ushort as ( C4 ) -> US4 )
        assert( c8 , label: "simd_ushort-c8"  , reference: simd.simd_ushort as ( C8 ) -> US8 , subject: kvSimdImpl.simd_ushort as ( C8 ) -> US8 )
        assert( c16, label: "simd_ushort-c16" , reference: simd.simd_ushort as ( C16) -> US16, subject: kvSimdImpl.simd_ushort as ( C16) -> US16)
        assert( c32, label: "simd_ushort-c32" , reference: simd.simd_ushort as ( C32) -> US32, subject: kvSimdImpl.simd_ushort as ( C32) -> US32)
        assert(uc2 , label: "simd_ushort-uc2" , reference: simd.simd_ushort as (UC2 ) -> US2 , subject: kvSimdImpl.simd_ushort as (UC2 ) -> US2 )
        assert(uc3 , label: "simd_ushort-uc3" , reference: simd.simd_ushort as (UC3 ) -> US3 , subject: kvSimdImpl.simd_ushort as (UC3 ) -> US3 )
        assert(uc4 , label: "simd_ushort-uc4" , reference: simd.simd_ushort as (UC4 ) -> US4 , subject: kvSimdImpl.simd_ushort as (UC4 ) -> US4 )
        assert(uc8 , label: "simd_ushort-uc8" , reference: simd.simd_ushort as (UC8 ) -> US8 , subject: kvSimdImpl.simd_ushort as (UC8 ) -> US8 )
        assert(uc16, label: "simd_ushort-uc16", reference: simd.simd_ushort as (UC16) -> US16, subject: kvSimdImpl.simd_ushort as (UC16) -> US16)
        assert(uc32, label: "simd_ushort-uc32", reference: simd.simd_ushort as (UC32) -> US32, subject: kvSimdImpl.simd_ushort as (UC32) -> US32)

        assert( s2 , label: "simd_ushort-s2"  , reference: simd.simd_ushort as ( S2 ) -> US2 , subject: kvSimdImpl.simd_ushort as ( S2 ) -> US2 )
        assert( s3 , label: "simd_ushort-s3"  , reference: simd.simd_ushort as ( S3 ) -> US3 , subject: kvSimdImpl.simd_ushort as ( S3 ) -> US3 )
        assert( s4 , label: "simd_ushort-s4"  , reference: simd.simd_ushort as ( S4 ) -> US4 , subject: kvSimdImpl.simd_ushort as ( S4 ) -> US4 )
        assert( s8 , label: "simd_ushort-s8"  , reference: simd.simd_ushort as ( S8 ) -> US8 , subject: kvSimdImpl.simd_ushort as ( S8 ) -> US8 )
        assert( s16, label: "simd_ushort-s16" , reference: simd.simd_ushort as ( S16) -> US16, subject: kvSimdImpl.simd_ushort as ( S16) -> US16)
        assert( s32, label: "simd_ushort-s32" , reference: simd.simd_ushort as ( S32) -> US32, subject: kvSimdImpl.simd_ushort as ( S32) -> US32)
        assert(us2 , label: "simd_ushort-us2" , reference: simd.simd_ushort as (US2 ) -> US2 , subject: kvSimdImpl.simd_ushort as (US2 ) -> US2 )
        assert(us3 , label: "simd_ushort-us3" , reference: simd.simd_ushort as (US3 ) -> US3 , subject: kvSimdImpl.simd_ushort as (US3 ) -> US3 )
        assert(us4 , label: "simd_ushort-us4" , reference: simd.simd_ushort as (US4 ) -> US4 , subject: kvSimdImpl.simd_ushort as (US4 ) -> US4 )
        assert(us8 , label: "simd_ushort-us8" , reference: simd.simd_ushort as (US8 ) -> US8 , subject: kvSimdImpl.simd_ushort as (US8 ) -> US8 )
        assert(us16, label: "simd_ushort-us16", reference: simd.simd_ushort as (US16) -> US16, subject: kvSimdImpl.simd_ushort as (US16) -> US16)
        assert(us32, label: "simd_ushort-us32", reference: simd.simd_ushort as (US32) -> US32, subject: kvSimdImpl.simd_ushort as (US32) -> US32)

        assert( i2 , label: "simd_ushort-i2"  , reference: simd.simd_ushort as ( I2 ) -> US2 , subject: kvSimdImpl.simd_ushort as ( I2 ) -> US2 )
        assert( i3 , label: "simd_ushort-i3"  , reference: simd.simd_ushort as ( I3 ) -> US3 , subject: kvSimdImpl.simd_ushort as ( I3 ) -> US3 )
        assert( i4 , label: "simd_ushort-i4"  , reference: simd.simd_ushort as ( I4 ) -> US4 , subject: kvSimdImpl.simd_ushort as ( I4 ) -> US4 )
        assert( i8 , label: "simd_ushort-i8"  , reference: simd.simd_ushort as ( I8 ) -> US8 , subject: kvSimdImpl.simd_ushort as ( I8 ) -> US8 )
        assert( i16, label: "simd_ushort-i16" , reference: simd.simd_ushort as ( I16) -> US16, subject: kvSimdImpl.simd_ushort as ( I16) -> US16)
        assert(ui2 , label: "simd_ushort-ui2" , reference: simd.simd_ushort as (UI2 ) -> US2 , subject: kvSimdImpl.simd_ushort as (UI2 ) -> US2 )
        assert(ui3 , label: "simd_ushort-ui3" , reference: simd.simd_ushort as (UI3 ) -> US3 , subject: kvSimdImpl.simd_ushort as (UI3 ) -> US3 )
        assert(ui4 , label: "simd_ushort-ui4" , reference: simd.simd_ushort as (UI4 ) -> US4 , subject: kvSimdImpl.simd_ushort as (UI4 ) -> US4 )
        assert(ui8 , label: "simd_ushort-ui8" , reference: simd.simd_ushort as (UI8 ) -> US8 , subject: kvSimdImpl.simd_ushort as (UI8 ) -> US8 )
        assert(ui16, label: "simd_ushort-ui16", reference: simd.simd_ushort as (UI16) -> US16, subject: kvSimdImpl.simd_ushort as (UI16) -> US16)

        assert( l2 , label: "simd_ushort-l2"  , reference: simd.simd_ushort as ( L2 ) -> US2 , subject: kvSimdImpl.simd_ushort as ( L2 ) -> US2 )
        assert( l3 , label: "simd_ushort-l3"  , reference: simd.simd_ushort as ( L3 ) -> US3 , subject: kvSimdImpl.simd_ushort as ( L3 ) -> US3 )
        assert( l4 , label: "simd_ushort-l4"  , reference: simd.simd_ushort as ( L4 ) -> US4 , subject: kvSimdImpl.simd_ushort as ( L4 ) -> US4 )
        assert( l8 , label: "simd_ushort-l8"  , reference: simd.simd_ushort as ( L8 ) -> US8 , subject: kvSimdImpl.simd_ushort as ( L8 ) -> US8 )
        assert(ul2 , label: "simd_ushort-ul2" , reference: simd.simd_ushort as (UL2 ) -> US2 , subject: kvSimdImpl.simd_ushort as (UL2 ) -> US2 )
        assert(ul3 , label: "simd_ushort-ul3" , reference: simd.simd_ushort as (UL3 ) -> US3 , subject: kvSimdImpl.simd_ushort as (UL3 ) -> US3 )
        assert(ul4 , label: "simd_ushort-ul4" , reference: simd.simd_ushort as (UL4 ) -> US4 , subject: kvSimdImpl.simd_ushort as (UL4 ) -> US4 )
        assert(ul8 , label: "simd_ushort-ul8" , reference: simd.simd_ushort as (UL8 ) -> US8 , subject: kvSimdImpl.simd_ushort as (UL8 ) -> US8 )

        assert( f2 , label: "simd_ushort-f2"  , reference: simd.simd_ushort as ( F2 ) -> US2 , subject: kvSimdImpl.simd_ushort as ( F2 ) -> US2 )
        assert( f3 , label: "simd_ushort-f3"  , reference: simd.simd_ushort as ( F3 ) -> US3 , subject: kvSimdImpl.simd_ushort as ( F3 ) -> US3 )
        assert( f4 , label: "simd_ushort-f4"  , reference: simd.simd_ushort as ( F4 ) -> US4 , subject: kvSimdImpl.simd_ushort as ( F4 ) -> US4 )
        assert( f8 , label: "simd_ushort-f8"  , reference: simd.simd_ushort as ( F8 ) -> US8 , subject: kvSimdImpl.simd_ushort as ( F8 ) -> US8 )
        assert( f16, label: "simd_ushort-f16" , reference: simd.simd_ushort as ( F16) -> US16, subject: kvSimdImpl.simd_ushort as ( F16) -> US16)

        assert( d2 , label: "simd_ushort-d2"  , reference: simd.simd_ushort as ( D2 ) -> US2 , subject: kvSimdImpl.simd_ushort as ( D2 ) -> US2 )
        assert( d3 , label: "simd_ushort-d3"  , reference: simd.simd_ushort as ( D3 ) -> US3 , subject: kvSimdImpl.simd_ushort as ( D3 ) -> US3 )
        assert( d4 , label: "simd_ushort-d4"  , reference: simd.simd_ushort as ( D4 ) -> US4 , subject: kvSimdImpl.simd_ushort as ( D4 ) -> US4 )
        assert( d8 , label: "simd_ushort-d8"  , reference: simd.simd_ushort as ( D8 ) -> US8 , subject: kvSimdImpl.simd_ushort as ( D8 ) -> US8 )
    }



    // MARK: test_simd_ushort_sat()

    func test_simd_ushort_sat() {
        assert( c2 , label: "simd_ushort_sat-c2"  , reference: simd.simd_ushort_sat as ( C2 ) -> US2 , subject: kvSimdImpl.simd_ushort_sat as ( C2 ) -> US2 )
        assert( c3 , label: "simd_ushort_sat-c3"  , reference: simd.simd_ushort_sat as ( C3 ) -> US3 , subject: kvSimdImpl.simd_ushort_sat as ( C3 ) -> US3 )
        assert( c4 , label: "simd_ushort_sat-c4"  , reference: simd.simd_ushort_sat as ( C4 ) -> US4 , subject: kvSimdImpl.simd_ushort_sat as ( C4 ) -> US4 )
        assert( c8 , label: "simd_ushort_sat-c8"  , reference: simd.simd_ushort_sat as ( C8 ) -> US8 , subject: kvSimdImpl.simd_ushort_sat as ( C8 ) -> US8 )
        assert( c16, label: "simd_ushort_sat-c16" , reference: simd.simd_ushort_sat as ( C16) -> US16, subject: kvSimdImpl.simd_ushort_sat as ( C16) -> US16)
        assert( c32, label: "simd_ushort_sat-c32" , reference: simd.simd_ushort_sat as ( C32) -> US32, subject: kvSimdImpl.simd_ushort_sat as ( C32) -> US32)
        assert(uc2 , label: "simd_ushort_sat-uc2" , reference: simd.simd_ushort_sat as (UC2 ) -> US2 , subject: kvSimdImpl.simd_ushort_sat as (UC2 ) -> US2 )
        assert(uc3 , label: "simd_ushort_sat-uc3" , reference: simd.simd_ushort_sat as (UC3 ) -> US3 , subject: kvSimdImpl.simd_ushort_sat as (UC3 ) -> US3 )
        assert(uc4 , label: "simd_ushort_sat-uc4" , reference: simd.simd_ushort_sat as (UC4 ) -> US4 , subject: kvSimdImpl.simd_ushort_sat as (UC4 ) -> US4 )
        assert(uc8 , label: "simd_ushort_sat-uc8" , reference: simd.simd_ushort_sat as (UC8 ) -> US8 , subject: kvSimdImpl.simd_ushort_sat as (UC8 ) -> US8 )
        assert(uc16, label: "simd_ushort_sat-uc16", reference: simd.simd_ushort_sat as (UC16) -> US16, subject: kvSimdImpl.simd_ushort_sat as (UC16) -> US16)
        assert(uc32, label: "simd_ushort_sat-uc32", reference: simd.simd_ushort_sat as (UC32) -> US32, subject: kvSimdImpl.simd_ushort_sat as (UC32) -> US32)

        assert( s2 , label: "simd_ushort_sat-s2"  , reference: simd.simd_ushort_sat as ( S2 ) -> US2 , subject: kvSimdImpl.simd_ushort_sat as ( S2 ) -> US2 )
        assert( s3 , label: "simd_ushort_sat-s3"  , reference: simd.simd_ushort_sat as ( S3 ) -> US3 , subject: kvSimdImpl.simd_ushort_sat as ( S3 ) -> US3 )
        assert( s4 , label: "simd_ushort_sat-s4"  , reference: simd.simd_ushort_sat as ( S4 ) -> US4 , subject: kvSimdImpl.simd_ushort_sat as ( S4 ) -> US4 )
        assert( s8 , label: "simd_ushort_sat-s8"  , reference: simd.simd_ushort_sat as ( S8 ) -> US8 , subject: kvSimdImpl.simd_ushort_sat as ( S8 ) -> US8 )
        assert( s16, label: "simd_ushort_sat-s16" , reference: simd.simd_ushort_sat as ( S16) -> US16, subject: kvSimdImpl.simd_ushort_sat as ( S16) -> US16)
        assert( s32, label: "simd_ushort_sat-s32" , reference: simd.simd_ushort_sat as ( S32) -> US32, subject: kvSimdImpl.simd_ushort_sat as ( S32) -> US32)
        assert(us2 , label: "simd_ushort_sat-us2" , reference: simd.simd_ushort_sat as (US2 ) -> US2 , subject: kvSimdImpl.simd_ushort_sat as (US2 ) -> US2 )
        assert(us3 , label: "simd_ushort_sat-us3" , reference: simd.simd_ushort_sat as (US3 ) -> US3 , subject: kvSimdImpl.simd_ushort_sat as (US3 ) -> US3 )
        assert(us4 , label: "simd_ushort_sat-us4" , reference: simd.simd_ushort_sat as (US4 ) -> US4 , subject: kvSimdImpl.simd_ushort_sat as (US4 ) -> US4 )
        assert(us8 , label: "simd_ushort_sat-us8" , reference: simd.simd_ushort_sat as (US8 ) -> US8 , subject: kvSimdImpl.simd_ushort_sat as (US8 ) -> US8 )
        assert(us16, label: "simd_ushort_sat-us16", reference: simd.simd_ushort_sat as (US16) -> US16, subject: kvSimdImpl.simd_ushort_sat as (US16) -> US16)
        assert(us32, label: "simd_ushort_sat-us32", reference: simd.simd_ushort_sat as (US32) -> US32, subject: kvSimdImpl.simd_ushort_sat as (US32) -> US32)

        assert( i2 , label: "simd_ushort_sat-i2"  , reference: simd.simd_ushort_sat as ( I2 ) -> US2 , subject: kvSimdImpl.simd_ushort_sat as ( I2 ) -> US2 )
        assert( i3 , label: "simd_ushort_sat-i3"  , reference: simd.simd_ushort_sat as ( I3 ) -> US3 , subject: kvSimdImpl.simd_ushort_sat as ( I3 ) -> US3 )
        assert( i4 , label: "simd_ushort_sat-i4"  , reference: simd.simd_ushort_sat as ( I4 ) -> US4 , subject: kvSimdImpl.simd_ushort_sat as ( I4 ) -> US4 )
        assert( i8 , label: "simd_ushort_sat-i8"  , reference: simd.simd_ushort_sat as ( I8 ) -> US8 , subject: kvSimdImpl.simd_ushort_sat as ( I8 ) -> US8 )
        assert( i16, label: "simd_ushort_sat-i16" , reference: simd.simd_ushort_sat as ( I16) -> US16, subject: kvSimdImpl.simd_ushort_sat as ( I16) -> US16)
        assert(ui2 , label: "simd_ushort_sat-ui2" , reference: simd.simd_ushort_sat as (UI2 ) -> US2 , subject: kvSimdImpl.simd_ushort_sat as (UI2 ) -> US2 )
        assert(ui3 , label: "simd_ushort_sat-ui3" , reference: simd.simd_ushort_sat as (UI3 ) -> US3 , subject: kvSimdImpl.simd_ushort_sat as (UI3 ) -> US3 )
        assert(ui4 , label: "simd_ushort_sat-ui4" , reference: simd.simd_ushort_sat as (UI4 ) -> US4 , subject: kvSimdImpl.simd_ushort_sat as (UI4 ) -> US4 )
        assert(ui8 , label: "simd_ushort_sat-ui8" , reference: simd.simd_ushort_sat as (UI8 ) -> US8 , subject: kvSimdImpl.simd_ushort_sat as (UI8 ) -> US8 )
        assert(ui16, label: "simd_ushort_sat-ui16", reference: simd.simd_ushort_sat as (UI16) -> US16, subject: kvSimdImpl.simd_ushort_sat as (UI16) -> US16)

        assert( l2 , label: "simd_ushort_sat-l2"  , reference: simd.simd_ushort_sat as ( L2 ) -> US2 , subject: kvSimdImpl.simd_ushort_sat as ( L2 ) -> US2 )
        assert( l3 , label: "simd_ushort_sat-l3"  , reference: simd.simd_ushort_sat as ( L3 ) -> US3 , subject: kvSimdImpl.simd_ushort_sat as ( L3 ) -> US3 )
        assert( l4 , label: "simd_ushort_sat-l4"  , reference: simd.simd_ushort_sat as ( L4 ) -> US4 , subject: kvSimdImpl.simd_ushort_sat as ( L4 ) -> US4 )
        assert( l8 , label: "simd_ushort_sat-l8"  , reference: simd.simd_ushort_sat as ( L8 ) -> US8 , subject: kvSimdImpl.simd_ushort_sat as ( L8 ) -> US8 )
        assert(ul2 , label: "simd_ushort_sat-ul2" , reference: simd.simd_ushort_sat as (UL2 ) -> US2 , subject: kvSimdImpl.simd_ushort_sat as (UL2 ) -> US2 )
        assert(ul3 , label: "simd_ushort_sat-ul3" , reference: simd.simd_ushort_sat as (UL3 ) -> US3 , subject: kvSimdImpl.simd_ushort_sat as (UL3 ) -> US3 )
        assert(ul4 , label: "simd_ushort_sat-ul4" , reference: simd.simd_ushort_sat as (UL4 ) -> US4 , subject: kvSimdImpl.simd_ushort_sat as (UL4 ) -> US4 )
        assert(ul8 , label: "simd_ushort_sat-ul8" , reference: simd.simd_ushort_sat as (UL8 ) -> US8 , subject: kvSimdImpl.simd_ushort_sat as (UL8 ) -> US8 )

        assert( f2 , label: "simd_ushort_sat-f2"  , reference: simd.simd_ushort_sat as ( F2 ) -> US2 , subject: kvSimdImpl.simd_ushort_sat as ( F2 ) -> US2 )
        assert( f3 , label: "simd_ushort_sat-f3"  , reference: simd.simd_ushort_sat as ( F3 ) -> US3 , subject: kvSimdImpl.simd_ushort_sat as ( F3 ) -> US3 )
        assert( f4 , label: "simd_ushort_sat-f4"  , reference: simd.simd_ushort_sat as ( F4 ) -> US4 , subject: kvSimdImpl.simd_ushort_sat as ( F4 ) -> US4 )
        assert( f8 , label: "simd_ushort_sat-f8"  , reference: simd.simd_ushort_sat as ( F8 ) -> US8 , subject: kvSimdImpl.simd_ushort_sat as ( F8 ) -> US8 )
        assert( f16, label: "simd_ushort_sat-f16" , reference: simd.simd_ushort_sat as ( F16) -> US16, subject: kvSimdImpl.simd_ushort_sat as ( F16) -> US16)

        assert( d2 , label: "simd_ushort_sat-d2"  , reference: simd.simd_ushort_sat as ( D2 ) -> US2 , subject: kvSimdImpl.simd_ushort_sat as ( D2 ) -> US2 )
        assert( d3 , label: "simd_ushort_sat-d3"  , reference: simd.simd_ushort_sat as ( D3 ) -> US3 , subject: kvSimdImpl.simd_ushort_sat as ( D3 ) -> US3 )
        assert( d4 , label: "simd_ushort_sat-d4"  , reference: simd.simd_ushort_sat as ( D4 ) -> US4 , subject: kvSimdImpl.simd_ushort_sat as ( D4 ) -> US4 )
        assert( d8 , label: "simd_ushort_sat-d8"  , reference: simd.simd_ushort_sat as ( D8 ) -> US8 , subject: kvSimdImpl.simd_ushort_sat as ( D8 ) -> US8 )
    }



    // MARK: test_simd_int()

    func test_simd_int() {
        assert( c2 , label: "simd_int-c2"  , reference: simd.simd_int as ( C2 ) -> I2 , subject: kvSimdImpl.simd_int as ( C2 ) -> I2 )
        assert( c3 , label: "simd_int-c3"  , reference: simd.simd_int as ( C3 ) -> I3 , subject: kvSimdImpl.simd_int as ( C3 ) -> I3 )
        assert( c4 , label: "simd_int-c4"  , reference: simd.simd_int as ( C4 ) -> I4 , subject: kvSimdImpl.simd_int as ( C4 ) -> I4 )
        assert( c8 , label: "simd_int-c8"  , reference: simd.simd_int as ( C8 ) -> I8 , subject: kvSimdImpl.simd_int as ( C8 ) -> I8 )
        assert( c16, label: "simd_int-c16" , reference: simd.simd_int as ( C16) -> I16, subject: kvSimdImpl.simd_int as ( C16) -> I16)
        assert(uc2 , label: "simd_int-uc2" , reference: simd.simd_int as (UC2 ) -> I2 , subject: kvSimdImpl.simd_int as (UC2 ) -> I2 )
        assert(uc3 , label: "simd_int-uc3" , reference: simd.simd_int as (UC3 ) -> I3 , subject: kvSimdImpl.simd_int as (UC3 ) -> I3 )
        assert(uc4 , label: "simd_int-uc4" , reference: simd.simd_int as (UC4 ) -> I4 , subject: kvSimdImpl.simd_int as (UC4 ) -> I4 )
        assert(uc8 , label: "simd_int-uc8" , reference: simd.simd_int as (UC8 ) -> I8 , subject: kvSimdImpl.simd_int as (UC8 ) -> I8 )
        assert(uc16, label: "simd_int-uc16", reference: simd.simd_int as (UC16) -> I16, subject: kvSimdImpl.simd_int as (UC16) -> I16)

        assert( s2 , label: "simd_int-s2"  , reference: simd.simd_int as ( S2 ) -> I2 , subject: kvSimdImpl.simd_int as ( S2 ) -> I2 )
        assert( s3 , label: "simd_int-s3"  , reference: simd.simd_int as ( S3 ) -> I3 , subject: kvSimdImpl.simd_int as ( S3 ) -> I3 )
        assert( s4 , label: "simd_int-s4"  , reference: simd.simd_int as ( S4 ) -> I4 , subject: kvSimdImpl.simd_int as ( S4 ) -> I4 )
        assert( s8 , label: "simd_int-s8"  , reference: simd.simd_int as ( S8 ) -> I8 , subject: kvSimdImpl.simd_int as ( S8 ) -> I8 )
        assert( s16, label: "simd_int-s16" , reference: simd.simd_int as ( S16) -> I16, subject: kvSimdImpl.simd_int as ( S16) -> I16)
        assert(us2 , label: "simd_int-us2" , reference: simd.simd_int as (US2 ) -> I2 , subject: kvSimdImpl.simd_int as (US2 ) -> I2 )
        assert(us3 , label: "simd_int-us3" , reference: simd.simd_int as (US3 ) -> I3 , subject: kvSimdImpl.simd_int as (US3 ) -> I3 )
        assert(us4 , label: "simd_int-us4" , reference: simd.simd_int as (US4 ) -> I4 , subject: kvSimdImpl.simd_int as (US4 ) -> I4 )
        assert(us8 , label: "simd_int-us8" , reference: simd.simd_int as (US8 ) -> I8 , subject: kvSimdImpl.simd_int as (US8 ) -> I8 )
        assert(us16, label: "simd_int-us16", reference: simd.simd_int as (US16) -> I16, subject: kvSimdImpl.simd_int as (US16) -> I16)

        assert( i2 , label: "simd_int-i2"  , reference: simd.simd_int as ( I2 ) -> I2 , subject: kvSimdImpl.simd_int as ( I2 ) -> I2 )
        assert( i3 , label: "simd_int-i3"  , reference: simd.simd_int as ( I3 ) -> I3 , subject: kvSimdImpl.simd_int as ( I3 ) -> I3 )
        assert( i4 , label: "simd_int-i4"  , reference: simd.simd_int as ( I4 ) -> I4 , subject: kvSimdImpl.simd_int as ( I4 ) -> I4 )
        assert( i8 , label: "simd_int-i8"  , reference: simd.simd_int as ( I8 ) -> I8 , subject: kvSimdImpl.simd_int as ( I8 ) -> I8 )
        assert( i16, label: "simd_int-i16" , reference: simd.simd_int as ( I16) -> I16, subject: kvSimdImpl.simd_int as ( I16) -> I16)
        assert(ui2 , label: "simd_int-ui2" , reference: simd.simd_int as (UI2 ) -> I2 , subject: kvSimdImpl.simd_int as (UI2 ) -> I2 )
        assert(ui3 , label: "simd_int-ui3" , reference: simd.simd_int as (UI3 ) -> I3 , subject: kvSimdImpl.simd_int as (UI3 ) -> I3 )
        assert(ui4 , label: "simd_int-ui4" , reference: simd.simd_int as (UI4 ) -> I4 , subject: kvSimdImpl.simd_int as (UI4 ) -> I4 )
        assert(ui8 , label: "simd_int-ui8" , reference: simd.simd_int as (UI8 ) -> I8 , subject: kvSimdImpl.simd_int as (UI8 ) -> I8 )
        assert(ui16, label: "simd_int-ui16", reference: simd.simd_int as (UI16) -> I16, subject: kvSimdImpl.simd_int as (UI16) -> I16)

        assert( l2 , label: "simd_int-l2"  , reference: simd.simd_int as ( L2 ) -> I2 , subject: kvSimdImpl.simd_int as ( L2 ) -> I2 )
        assert( l3 , label: "simd_int-l3"  , reference: simd.simd_int as ( L3 ) -> I3 , subject: kvSimdImpl.simd_int as ( L3 ) -> I3 )
        assert( l4 , label: "simd_int-l4"  , reference: simd.simd_int as ( L4 ) -> I4 , subject: kvSimdImpl.simd_int as ( L4 ) -> I4 )
        assert( l8 , label: "simd_int-l8"  , reference: simd.simd_int as ( L8 ) -> I8 , subject: kvSimdImpl.simd_int as ( L8 ) -> I8 )
        assert(ul2 , label: "simd_int-ul2" , reference: simd.simd_int as (UL2 ) -> I2 , subject: kvSimdImpl.simd_int as (UL2 ) -> I2 )
        assert(ul3 , label: "simd_int-ul3" , reference: simd.simd_int as (UL3 ) -> I3 , subject: kvSimdImpl.simd_int as (UL3 ) -> I3 )
        assert(ul4 , label: "simd_int-ul4" , reference: simd.simd_int as (UL4 ) -> I4 , subject: kvSimdImpl.simd_int as (UL4 ) -> I4 )
        assert(ul8 , label: "simd_int-ul8" , reference: simd.simd_int as (UL8 ) -> I8 , subject: kvSimdImpl.simd_int as (UL8 ) -> I8 )

        assert( f2 , label: "simd_int-f2"  , reference: simd.simd_int as ( F2 ) -> I2 , subject: kvSimdImpl.simd_int as ( F2 ) -> I2 )
        assert( f3 , label: "simd_int-f3"  , reference: simd.simd_int as ( F3 ) -> I3 , subject: kvSimdImpl.simd_int as ( F3 ) -> I3 )
        assert( f4 , label: "simd_int-f4"  , reference: simd.simd_int as ( F4 ) -> I4 , subject: kvSimdImpl.simd_int as ( F4 ) -> I4 )
        assert( f8 , label: "simd_int-f8"  , reference: simd.simd_int as ( F8 ) -> I8 , subject: kvSimdImpl.simd_int as ( F8 ) -> I8 )
        assert( f16, label: "simd_int-f16" , reference: simd.simd_int as ( F16) -> I16, subject: kvSimdImpl.simd_int as ( F16) -> I16)

        assert( d2 , label: "simd_int-d2"  , reference: simd.simd_int as ( D2 ) -> I2 , subject: kvSimdImpl.simd_int as ( D2 ) -> I2 )
        assert( d3 , label: "simd_int-d3"  , reference: simd.simd_int as ( D3 ) -> I3 , subject: kvSimdImpl.simd_int as ( D3 ) -> I3 )
        assert( d4 , label: "simd_int-d4"  , reference: simd.simd_int as ( D4 ) -> I4 , subject: kvSimdImpl.simd_int as ( D4 ) -> I4 )
        assert( d8 , label: "simd_int-d8"  , reference: simd.simd_int as ( D8 ) -> I8 , subject: kvSimdImpl.simd_int as ( D8 ) -> I8 )
    }



    // MARK: test_simd_int_sat()

    func test_simd_int_sat() {
        assert( c2 , label: "simd_int_sat-c2"  , reference: simd.simd_int_sat as ( C2 ) -> I2 , subject: kvSimdImpl.simd_int_sat as ( C2 ) -> I2 )
        assert( c3 , label: "simd_int_sat-c3"  , reference: simd.simd_int_sat as ( C3 ) -> I3 , subject: kvSimdImpl.simd_int_sat as ( C3 ) -> I3 )
        assert( c4 , label: "simd_int_sat-c4"  , reference: simd.simd_int_sat as ( C4 ) -> I4 , subject: kvSimdImpl.simd_int_sat as ( C4 ) -> I4 )
        assert( c8 , label: "simd_int_sat-c8"  , reference: simd.simd_int_sat as ( C8 ) -> I8 , subject: kvSimdImpl.simd_int_sat as ( C8 ) -> I8 )
        assert( c16, label: "simd_int_sat-c16" , reference: simd.simd_int_sat as ( C16) -> I16, subject: kvSimdImpl.simd_int_sat as ( C16) -> I16)
        assert(uc2 , label: "simd_int_sat-uc2" , reference: simd.simd_int_sat as (UC2 ) -> I2 , subject: kvSimdImpl.simd_int_sat as (UC2 ) -> I2 )
        assert(uc3 , label: "simd_int_sat-uc3" , reference: simd.simd_int_sat as (UC3 ) -> I3 , subject: kvSimdImpl.simd_int_sat as (UC3 ) -> I3 )
        assert(uc4 , label: "simd_int_sat-uc4" , reference: simd.simd_int_sat as (UC4 ) -> I4 , subject: kvSimdImpl.simd_int_sat as (UC4 ) -> I4 )
        assert(uc8 , label: "simd_int_sat-uc8" , reference: simd.simd_int_sat as (UC8 ) -> I8 , subject: kvSimdImpl.simd_int_sat as (UC8 ) -> I8 )
        assert(uc16, label: "simd_int_sat-uc16", reference: simd.simd_int_sat as (UC16) -> I16, subject: kvSimdImpl.simd_int_sat as (UC16) -> I16)

        assert( s2 , label: "simd_int_sat-s2"  , reference: simd.simd_int_sat as ( S2 ) -> I2 , subject: kvSimdImpl.simd_int_sat as ( S2 ) -> I2 )
        assert( s3 , label: "simd_int_sat-s3"  , reference: simd.simd_int_sat as ( S3 ) -> I3 , subject: kvSimdImpl.simd_int_sat as ( S3 ) -> I3 )
        assert( s4 , label: "simd_int_sat-s4"  , reference: simd.simd_int_sat as ( S4 ) -> I4 , subject: kvSimdImpl.simd_int_sat as ( S4 ) -> I4 )
        assert( s8 , label: "simd_int_sat-s8"  , reference: simd.simd_int_sat as ( S8 ) -> I8 , subject: kvSimdImpl.simd_int_sat as ( S8 ) -> I8 )
        assert( s16, label: "simd_int_sat-s16" , reference: simd.simd_int_sat as ( S16) -> I16, subject: kvSimdImpl.simd_int_sat as ( S16) -> I16)
        assert(us2 , label: "simd_int_sat-us2" , reference: simd.simd_int_sat as (US2 ) -> I2 , subject: kvSimdImpl.simd_int_sat as (US2 ) -> I2 )
        assert(us3 , label: "simd_int_sat-us3" , reference: simd.simd_int_sat as (US3 ) -> I3 , subject: kvSimdImpl.simd_int_sat as (US3 ) -> I3 )
        assert(us4 , label: "simd_int_sat-us4" , reference: simd.simd_int_sat as (US4 ) -> I4 , subject: kvSimdImpl.simd_int_sat as (US4 ) -> I4 )
        assert(us8 , label: "simd_int_sat-us8" , reference: simd.simd_int_sat as (US8 ) -> I8 , subject: kvSimdImpl.simd_int_sat as (US8 ) -> I8 )
        assert(us16, label: "simd_int_sat-us16", reference: simd.simd_int_sat as (US16) -> I16, subject: kvSimdImpl.simd_int_sat as (US16) -> I16)

        assert( i2 , label: "simd_int_sat-i2"  , reference: simd.simd_int_sat as ( I2 ) -> I2 , subject: kvSimdImpl.simd_int_sat as ( I2 ) -> I2 )
        assert( i3 , label: "simd_int_sat-i3"  , reference: simd.simd_int_sat as ( I3 ) -> I3 , subject: kvSimdImpl.simd_int_sat as ( I3 ) -> I3 )
        assert( i4 , label: "simd_int_sat-i4"  , reference: simd.simd_int_sat as ( I4 ) -> I4 , subject: kvSimdImpl.simd_int_sat as ( I4 ) -> I4 )
        assert( i8 , label: "simd_int_sat-i8"  , reference: simd.simd_int_sat as ( I8 ) -> I8 , subject: kvSimdImpl.simd_int_sat as ( I8 ) -> I8 )
        assert( i16, label: "simd_int_sat-i16" , reference: simd.simd_int_sat as ( I16) -> I16, subject: kvSimdImpl.simd_int_sat as ( I16) -> I16)
        assert(ui2 , label: "simd_int_sat-ui2" , reference: simd.simd_int_sat as (UI2 ) -> I2 , subject: kvSimdImpl.simd_int_sat as (UI2 ) -> I2 )
        assert(ui3 , label: "simd_int_sat-ui3" , reference: simd.simd_int_sat as (UI3 ) -> I3 , subject: kvSimdImpl.simd_int_sat as (UI3 ) -> I3 )
        assert(ui4 , label: "simd_int_sat-ui4" , reference: simd.simd_int_sat as (UI4 ) -> I4 , subject: kvSimdImpl.simd_int_sat as (UI4 ) -> I4 )
        assert(ui8 , label: "simd_int_sat-ui8" , reference: simd.simd_int_sat as (UI8 ) -> I8 , subject: kvSimdImpl.simd_int_sat as (UI8 ) -> I8 )
        assert(ui16, label: "simd_int_sat-ui16", reference: simd.simd_int_sat as (UI16) -> I16, subject: kvSimdImpl.simd_int_sat as (UI16) -> I16)

        assert( l2 , label: "simd_int_sat-l2"  , reference: simd.simd_int_sat as ( L2 ) -> I2 , subject: kvSimdImpl.simd_int_sat as ( L2 ) -> I2 )
        assert( l3 , label: "simd_int_sat-l3"  , reference: simd.simd_int_sat as ( L3 ) -> I3 , subject: kvSimdImpl.simd_int_sat as ( L3 ) -> I3 )
        assert( l4 , label: "simd_int_sat-l4"  , reference: simd.simd_int_sat as ( L4 ) -> I4 , subject: kvSimdImpl.simd_int_sat as ( L4 ) -> I4 )
        assert( l8 , label: "simd_int_sat-l8"  , reference: simd.simd_int_sat as ( L8 ) -> I8 , subject: kvSimdImpl.simd_int_sat as ( L8 ) -> I8 )
        assert(ul2 , label: "simd_int_sat-ul2" , reference: simd.simd_int_sat as (UL2 ) -> I2 , subject: kvSimdImpl.simd_int_sat as (UL2 ) -> I2 )
        assert(ul3 , label: "simd_int_sat-ul3" , reference: simd.simd_int_sat as (UL3 ) -> I3 , subject: kvSimdImpl.simd_int_sat as (UL3 ) -> I3 )
        assert(ul4 , label: "simd_int_sat-ul4" , reference: simd.simd_int_sat as (UL4 ) -> I4 , subject: kvSimdImpl.simd_int_sat as (UL4 ) -> I4 )
        assert(ul8 , label: "simd_int_sat-ul8" , reference: simd.simd_int_sat as (UL8 ) -> I8 , subject: kvSimdImpl.simd_int_sat as (UL8 ) -> I8 )

        assert( f2 , label: "simd_int_sat-f2"  , reference: simd.simd_int_sat as ( F2 ) -> I2 , subject: kvSimdImpl.simd_int_sat as ( F2 ) -> I2 )
        assert( f3 , label: "simd_int_sat-f3"  , reference: simd.simd_int_sat as ( F3 ) -> I3 , subject: kvSimdImpl.simd_int_sat as ( F3 ) -> I3 )
        assert( f4 , label: "simd_int_sat-f4"  , reference: simd.simd_int_sat as ( F4 ) -> I4 , subject: kvSimdImpl.simd_int_sat as ( F4 ) -> I4 )
        assert( f8 , label: "simd_int_sat-f8"  , reference: simd.simd_int_sat as ( F8 ) -> I8 , subject: kvSimdImpl.simd_int_sat as ( F8 ) -> I8 )
        assert( f16, label: "simd_int_sat-f16" , reference: simd.simd_int_sat as ( F16) -> I16, subject: kvSimdImpl.simd_int_sat as ( F16) -> I16)

        assert( d2 , label: "simd_int_sat-d2"  , reference: simd.simd_int_sat as ( D2 ) -> I2 , subject: kvSimdImpl.simd_int_sat as ( D2 ) -> I2 )
        assert( d3 , label: "simd_int_sat-d3"  , reference: simd.simd_int_sat as ( D3 ) -> I3 , subject: kvSimdImpl.simd_int_sat as ( D3 ) -> I3 )
        assert( d4 , label: "simd_int_sat-d4"  , reference: simd.simd_int_sat as ( D4 ) -> I4 , subject: kvSimdImpl.simd_int_sat as ( D4 ) -> I4 )
        assert( d8 , label: "simd_int_sat-d8"  , reference: simd.simd_int_sat as ( D8 ) -> I8 , subject: kvSimdImpl.simd_int_sat as ( D8 ) -> I8 )
    }



    // MARK: test_simd_int_rte()

    func test_simd_int_rte() {
        assert(f2 , label: "simd_int_rte-f2" , reference: simd.simd_int_rte as (F2 ) -> I2 , subject: kvSimdImpl.simd_int_rte as (F2 ) -> I2 )
        assert(f3 , label: "simd_int_rte-f3" , reference: simd.simd_int_rte as (F3 ) -> I3 , subject: kvSimdImpl.simd_int_rte as (F3 ) -> I3 )
        assert(f4 , label: "simd_int_rte-f4" , reference: simd.simd_int_rte as (F4 ) -> I4 , subject: kvSimdImpl.simd_int_rte as (F4 ) -> I4 )
        assert(f8 , label: "simd_int_rte-f8" , reference: simd.simd_int_rte as (F8 ) -> I8 , subject: kvSimdImpl.simd_int_rte as (F8 ) -> I8 )
        assert(f16, label: "simd_int_rte-f16", reference: simd.simd_int_rte as (F16) -> I16, subject: kvSimdImpl.simd_int_rte as (F16) -> I16)
    }



    // MARK: test_simd_uint()

    func test_simd_uint() {
        assert( c2 , label: "simd_uint-c2"  , reference: simd.simd_uint as ( C2 ) -> UI2 , subject: kvSimdImpl.simd_uint as ( C2 ) -> UI2 )
        assert( c3 , label: "simd_uint-c3"  , reference: simd.simd_uint as ( C3 ) -> UI3 , subject: kvSimdImpl.simd_uint as ( C3 ) -> UI3 )
        assert( c4 , label: "simd_uint-c4"  , reference: simd.simd_uint as ( C4 ) -> UI4 , subject: kvSimdImpl.simd_uint as ( C4 ) -> UI4 )
        assert( c8 , label: "simd_uint-c8"  , reference: simd.simd_uint as ( C8 ) -> UI8 , subject: kvSimdImpl.simd_uint as ( C8 ) -> UI8 )
        assert( c16, label: "simd_uint-c16" , reference: simd.simd_uint as ( C16) -> UI16, subject: kvSimdImpl.simd_uint as ( C16) -> UI16)
        assert(uc2 , label: "simd_uint-uc2" , reference: simd.simd_uint as (UC2 ) -> UI2 , subject: kvSimdImpl.simd_uint as (UC2 ) -> UI2 )
        assert(uc3 , label: "simd_uint-uc3" , reference: simd.simd_uint as (UC3 ) -> UI3 , subject: kvSimdImpl.simd_uint as (UC3 ) -> UI3 )
        assert(uc4 , label: "simd_uint-uc4" , reference: simd.simd_uint as (UC4 ) -> UI4 , subject: kvSimdImpl.simd_uint as (UC4 ) -> UI4 )
        assert(uc8 , label: "simd_uint-uc8" , reference: simd.simd_uint as (UC8 ) -> UI8 , subject: kvSimdImpl.simd_uint as (UC8 ) -> UI8 )
        assert(uc16, label: "simd_uint-uc16", reference: simd.simd_uint as (UC16) -> UI16, subject: kvSimdImpl.simd_uint as (UC16) -> UI16)

        assert( s2 , label: "simd_uint-s2"  , reference: simd.simd_uint as ( S2 ) -> UI2 , subject: kvSimdImpl.simd_uint as ( S2 ) -> UI2 )
        assert( s3 , label: "simd_uint-s3"  , reference: simd.simd_uint as ( S3 ) -> UI3 , subject: kvSimdImpl.simd_uint as ( S3 ) -> UI3 )
        assert( s4 , label: "simd_uint-s4"  , reference: simd.simd_uint as ( S4 ) -> UI4 , subject: kvSimdImpl.simd_uint as ( S4 ) -> UI4 )
        assert( s8 , label: "simd_uint-s8"  , reference: simd.simd_uint as ( S8 ) -> UI8 , subject: kvSimdImpl.simd_uint as ( S8 ) -> UI8 )
        assert( s16, label: "simd_uint-s16" , reference: simd.simd_uint as ( S16) -> UI16, subject: kvSimdImpl.simd_uint as ( S16) -> UI16)
        assert(us2 , label: "simd_uint-us2" , reference: simd.simd_uint as (US2 ) -> UI2 , subject: kvSimdImpl.simd_uint as (US2 ) -> UI2 )
        assert(us3 , label: "simd_uint-us3" , reference: simd.simd_uint as (US3 ) -> UI3 , subject: kvSimdImpl.simd_uint as (US3 ) -> UI3 )
        assert(us4 , label: "simd_uint-us4" , reference: simd.simd_uint as (US4 ) -> UI4 , subject: kvSimdImpl.simd_uint as (US4 ) -> UI4 )
        assert(us8 , label: "simd_uint-us8" , reference: simd.simd_uint as (US8 ) -> UI8 , subject: kvSimdImpl.simd_uint as (US8 ) -> UI8 )
        assert(us16, label: "simd_uint-us16", reference: simd.simd_uint as (US16) -> UI16, subject: kvSimdImpl.simd_uint as (US16) -> UI16)

        assert( i2 , label: "simd_uint-i2"  , reference: simd.simd_uint as ( I2 ) -> UI2 , subject: kvSimdImpl.simd_uint as ( I2 ) -> UI2 )
        assert( i3 , label: "simd_uint-i3"  , reference: simd.simd_uint as ( I3 ) -> UI3 , subject: kvSimdImpl.simd_uint as ( I3 ) -> UI3 )
        assert( i4 , label: "simd_uint-i4"  , reference: simd.simd_uint as ( I4 ) -> UI4 , subject: kvSimdImpl.simd_uint as ( I4 ) -> UI4 )
        assert( i8 , label: "simd_uint-i8"  , reference: simd.simd_uint as ( I8 ) -> UI8 , subject: kvSimdImpl.simd_uint as ( I8 ) -> UI8 )
        assert( i16, label: "simd_uint-i16" , reference: simd.simd_uint as ( I16) -> UI16, subject: kvSimdImpl.simd_uint as ( I16) -> UI16)
        assert(ui2 , label: "simd_uint-ui2" , reference: simd.simd_uint as (UI2 ) -> UI2 , subject: kvSimdImpl.simd_uint as (UI2 ) -> UI2 )
        assert(ui3 , label: "simd_uint-ui3" , reference: simd.simd_uint as (UI3 ) -> UI3 , subject: kvSimdImpl.simd_uint as (UI3 ) -> UI3 )
        assert(ui4 , label: "simd_uint-ui4" , reference: simd.simd_uint as (UI4 ) -> UI4 , subject: kvSimdImpl.simd_uint as (UI4 ) -> UI4 )
        assert(ui8 , label: "simd_uint-ui8" , reference: simd.simd_uint as (UI8 ) -> UI8 , subject: kvSimdImpl.simd_uint as (UI8 ) -> UI8 )
        assert(ui16, label: "simd_uint-ui16", reference: simd.simd_uint as (UI16) -> UI16, subject: kvSimdImpl.simd_uint as (UI16) -> UI16)

        assert( l2 , label: "simd_uint-l2"  , reference: simd.simd_uint as ( L2 ) -> UI2 , subject: kvSimdImpl.simd_uint as ( L2 ) -> UI2 )
        assert( l3 , label: "simd_uint-l3"  , reference: simd.simd_uint as ( L3 ) -> UI3 , subject: kvSimdImpl.simd_uint as ( L3 ) -> UI3 )
        assert( l4 , label: "simd_uint-l4"  , reference: simd.simd_uint as ( L4 ) -> UI4 , subject: kvSimdImpl.simd_uint as ( L4 ) -> UI4 )
        assert( l8 , label: "simd_uint-l8"  , reference: simd.simd_uint as ( L8 ) -> UI8 , subject: kvSimdImpl.simd_uint as ( L8 ) -> UI8 )
        assert(ul2 , label: "simd_uint-ul2" , reference: simd.simd_uint as (UL2 ) -> UI2 , subject: kvSimdImpl.simd_uint as (UL2 ) -> UI2 )
        assert(ul3 , label: "simd_uint-ul3" , reference: simd.simd_uint as (UL3 ) -> UI3 , subject: kvSimdImpl.simd_uint as (UL3 ) -> UI3 )
        assert(ul4 , label: "simd_uint-ul4" , reference: simd.simd_uint as (UL4 ) -> UI4 , subject: kvSimdImpl.simd_uint as (UL4 ) -> UI4 )
        assert(ul8 , label: "simd_uint-ul8" , reference: simd.simd_uint as (UL8 ) -> UI8 , subject: kvSimdImpl.simd_uint as (UL8 ) -> UI8 )

        assert( f2 , label: "simd_uint-f2"  , reference: simd.simd_uint as ( F2 ) -> UI2 , subject: kvSimdImpl.simd_uint as ( F2 ) -> UI2 )
        assert( f3 , label: "simd_uint-f3"  , reference: simd.simd_uint as ( F3 ) -> UI3 , subject: kvSimdImpl.simd_uint as ( F3 ) -> UI3 )
        assert( f4 , label: "simd_uint-f4"  , reference: simd.simd_uint as ( F4 ) -> UI4 , subject: kvSimdImpl.simd_uint as ( F4 ) -> UI4 )
        assert( f8 , label: "simd_uint-f8"  , reference: simd.simd_uint as ( F8 ) -> UI8 , subject: kvSimdImpl.simd_uint as ( F8 ) -> UI8 )
        assert( f16, label: "simd_uint-f16" , reference: simd.simd_uint as ( F16) -> UI16, subject: kvSimdImpl.simd_uint as ( F16) -> UI16)

        assert( d2 , label: "simd_uint-d2"  , reference: simd.simd_uint as ( D2 ) -> UI2 , subject: kvSimdImpl.simd_uint as ( D2 ) -> UI2 )
        assert( d3 , label: "simd_uint-d3"  , reference: simd.simd_uint as ( D3 ) -> UI3 , subject: kvSimdImpl.simd_uint as ( D3 ) -> UI3 )
        assert( d4 , label: "simd_uint-d4"  , reference: simd.simd_uint as ( D4 ) -> UI4 , subject: kvSimdImpl.simd_uint as ( D4 ) -> UI4 )
        assert( d8 , label: "simd_uint-d8"  , reference: simd.simd_uint as ( D8 ) -> UI8 , subject: kvSimdImpl.simd_uint as ( D8 ) -> UI8 )
    }



    // MARK: test_simd_uint_sat()

    func test_simd_uint_sat() {
        assert( c2 , label: "simd_uint_sat-c2"  , reference: simd.simd_uint_sat as ( C2 ) -> UI2 , subject: kvSimdImpl.simd_uint_sat as ( C2 ) -> UI2 )
        assert( c3 , label: "simd_uint_sat-c3"  , reference: simd.simd_uint_sat as ( C3 ) -> UI3 , subject: kvSimdImpl.simd_uint_sat as ( C3 ) -> UI3 )
        assert( c4 , label: "simd_uint_sat-c4"  , reference: simd.simd_uint_sat as ( C4 ) -> UI4 , subject: kvSimdImpl.simd_uint_sat as ( C4 ) -> UI4 )
        assert( c8 , label: "simd_uint_sat-c8"  , reference: simd.simd_uint_sat as ( C8 ) -> UI8 , subject: kvSimdImpl.simd_uint_sat as ( C8 ) -> UI8 )
        assert( c16, label: "simd_uint_sat-c16" , reference: simd.simd_uint_sat as ( C16) -> UI16, subject: kvSimdImpl.simd_uint_sat as ( C16) -> UI16)
        assert(uc2 , label: "simd_uint_sat-uc2" , reference: simd.simd_uint_sat as (UC2 ) -> UI2 , subject: kvSimdImpl.simd_uint_sat as (UC2 ) -> UI2 )
        assert(uc3 , label: "simd_uint_sat-uc3" , reference: simd.simd_uint_sat as (UC3 ) -> UI3 , subject: kvSimdImpl.simd_uint_sat as (UC3 ) -> UI3 )
        assert(uc4 , label: "simd_uint_sat-uc4" , reference: simd.simd_uint_sat as (UC4 ) -> UI4 , subject: kvSimdImpl.simd_uint_sat as (UC4 ) -> UI4 )
        assert(uc8 , label: "simd_uint_sat-uc8" , reference: simd.simd_uint_sat as (UC8 ) -> UI8 , subject: kvSimdImpl.simd_uint_sat as (UC8 ) -> UI8 )
        assert(uc16, label: "simd_uint_sat-uc16", reference: simd.simd_uint_sat as (UC16) -> UI16, subject: kvSimdImpl.simd_uint_sat as (UC16) -> UI16)

        assert( s2 , label: "simd_uint_sat-s2"  , reference: simd.simd_uint_sat as ( S2 ) -> UI2 , subject: kvSimdImpl.simd_uint_sat as ( S2 ) -> UI2 )
        assert( s3 , label: "simd_uint_sat-s3"  , reference: simd.simd_uint_sat as ( S3 ) -> UI3 , subject: kvSimdImpl.simd_uint_sat as ( S3 ) -> UI3 )
        assert( s4 , label: "simd_uint_sat-s4"  , reference: simd.simd_uint_sat as ( S4 ) -> UI4 , subject: kvSimdImpl.simd_uint_sat as ( S4 ) -> UI4 )
        assert( s8 , label: "simd_uint_sat-s8"  , reference: simd.simd_uint_sat as ( S8 ) -> UI8 , subject: kvSimdImpl.simd_uint_sat as ( S8 ) -> UI8 )
        assert( s16, label: "simd_uint_sat-s16" , reference: simd.simd_uint_sat as ( S16) -> UI16, subject: kvSimdImpl.simd_uint_sat as ( S16) -> UI16)
        assert(us2 , label: "simd_uint_sat-us2" , reference: simd.simd_uint_sat as (US2 ) -> UI2 , subject: kvSimdImpl.simd_uint_sat as (US2 ) -> UI2 )
        assert(us3 , label: "simd_uint_sat-us3" , reference: simd.simd_uint_sat as (US3 ) -> UI3 , subject: kvSimdImpl.simd_uint_sat as (US3 ) -> UI3 )
        assert(us4 , label: "simd_uint_sat-us4" , reference: simd.simd_uint_sat as (US4 ) -> UI4 , subject: kvSimdImpl.simd_uint_sat as (US4 ) -> UI4 )
        assert(us8 , label: "simd_uint_sat-us8" , reference: simd.simd_uint_sat as (US8 ) -> UI8 , subject: kvSimdImpl.simd_uint_sat as (US8 ) -> UI8 )
        assert(us16, label: "simd_uint_sat-us16", reference: simd.simd_uint_sat as (US16) -> UI16, subject: kvSimdImpl.simd_uint_sat as (US16) -> UI16)

        assert( i2 , label: "simd_uint_sat-i2"  , reference: simd.simd_uint_sat as ( I2 ) -> UI2 , subject: kvSimdImpl.simd_uint_sat as ( I2 ) -> UI2 )
        assert( i3 , label: "simd_uint_sat-i3"  , reference: simd.simd_uint_sat as ( I3 ) -> UI3 , subject: kvSimdImpl.simd_uint_sat as ( I3 ) -> UI3 )
        assert( i4 , label: "simd_uint_sat-i4"  , reference: simd.simd_uint_sat as ( I4 ) -> UI4 , subject: kvSimdImpl.simd_uint_sat as ( I4 ) -> UI4 )
        assert( i8 , label: "simd_uint_sat-i8"  , reference: simd.simd_uint_sat as ( I8 ) -> UI8 , subject: kvSimdImpl.simd_uint_sat as ( I8 ) -> UI8 )
        assert( i16, label: "simd_uint_sat-i16" , reference: simd.simd_uint_sat as ( I16) -> UI16, subject: kvSimdImpl.simd_uint_sat as ( I16) -> UI16)
        assert(ui2 , label: "simd_uint_sat-ui2" , reference: simd.simd_uint_sat as (UI2 ) -> UI2 , subject: kvSimdImpl.simd_uint_sat as (UI2 ) -> UI2 )
        assert(ui3 , label: "simd_uint_sat-ui3" , reference: simd.simd_uint_sat as (UI3 ) -> UI3 , subject: kvSimdImpl.simd_uint_sat as (UI3 ) -> UI3 )
        assert(ui4 , label: "simd_uint_sat-ui4" , reference: simd.simd_uint_sat as (UI4 ) -> UI4 , subject: kvSimdImpl.simd_uint_sat as (UI4 ) -> UI4 )
        assert(ui8 , label: "simd_uint_sat-ui8" , reference: simd.simd_uint_sat as (UI8 ) -> UI8 , subject: kvSimdImpl.simd_uint_sat as (UI8 ) -> UI8 )
        assert(ui16, label: "simd_uint_sat-ui16", reference: simd.simd_uint_sat as (UI16) -> UI16, subject: kvSimdImpl.simd_uint_sat as (UI16) -> UI16)

        assert( l2 , label: "simd_uint_sat-l2"  , reference: simd.simd_uint_sat as ( L2 ) -> UI2 , subject: kvSimdImpl.simd_uint_sat as ( L2 ) -> UI2 )
        assert( l3 , label: "simd_uint_sat-l3"  , reference: simd.simd_uint_sat as ( L3 ) -> UI3 , subject: kvSimdImpl.simd_uint_sat as ( L3 ) -> UI3 )
        assert( l4 , label: "simd_uint_sat-l4"  , reference: simd.simd_uint_sat as ( L4 ) -> UI4 , subject: kvSimdImpl.simd_uint_sat as ( L4 ) -> UI4 )
        assert( l8 , label: "simd_uint_sat-l8"  , reference: simd.simd_uint_sat as ( L8 ) -> UI8 , subject: kvSimdImpl.simd_uint_sat as ( L8 ) -> UI8 )
        assert(ul2 , label: "simd_uint_sat-ul2" , reference: simd.simd_uint_sat as (UL2 ) -> UI2 , subject: kvSimdImpl.simd_uint_sat as (UL2 ) -> UI2 )
        assert(ul3 , label: "simd_uint_sat-ul3" , reference: simd.simd_uint_sat as (UL3 ) -> UI3 , subject: kvSimdImpl.simd_uint_sat as (UL3 ) -> UI3 )
        assert(ul4 , label: "simd_uint_sat-ul4" , reference: simd.simd_uint_sat as (UL4 ) -> UI4 , subject: kvSimdImpl.simd_uint_sat as (UL4 ) -> UI4 )
        assert(ul8 , label: "simd_uint_sat-ul8" , reference: simd.simd_uint_sat as (UL8 ) -> UI8 , subject: kvSimdImpl.simd_uint_sat as (UL8 ) -> UI8 )

        assert( f2 , label: "simd_uint_sat-f2"  , reference: simd.simd_uint_sat as ( F2 ) -> UI2 , subject: kvSimdImpl.simd_uint_sat as ( F2 ) -> UI2 )
        assert( f3 , label: "simd_uint_sat-f3"  , reference: simd.simd_uint_sat as ( F3 ) -> UI3 , subject: kvSimdImpl.simd_uint_sat as ( F3 ) -> UI3 )
        assert( f4 , label: "simd_uint_sat-f4"  , reference: simd.simd_uint_sat as ( F4 ) -> UI4 , subject: kvSimdImpl.simd_uint_sat as ( F4 ) -> UI4 )
        assert( f8 , label: "simd_uint_sat-f8"  , reference: simd.simd_uint_sat as ( F8 ) -> UI8 , subject: kvSimdImpl.simd_uint_sat as ( F8 ) -> UI8 )
        assert( f16, label: "simd_uint_sat-f16" , reference: simd.simd_uint_sat as ( F16) -> UI16, subject: kvSimdImpl.simd_uint_sat as ( F16) -> UI16)

        assert( d2 , label: "simd_uint_sat-d2"  , reference: simd.simd_uint_sat as ( D2 ) -> UI2 , subject: kvSimdImpl.simd_uint_sat as ( D2 ) -> UI2 )
        assert( d3 , label: "simd_uint_sat-d3"  , reference: simd.simd_uint_sat as ( D3 ) -> UI3 , subject: kvSimdImpl.simd_uint_sat as ( D3 ) -> UI3 )
        assert( d4 , label: "simd_uint_sat-d4"  , reference: simd.simd_uint_sat as ( D4 ) -> UI4 , subject: kvSimdImpl.simd_uint_sat as ( D4 ) -> UI4 )
        assert( d8 , label: "simd_uint_sat-d8"  , reference: simd.simd_uint_sat as ( D8 ) -> UI8 , subject: kvSimdImpl.simd_uint_sat as ( D8 ) -> UI8 )
    }



    // MARK: test_simd_long()

    func test_simd_long() {
        assert( c2 , label: "simd_long-c2" , reference: simd.simd_long as ( C2) -> L2, subject: kvSimdImpl.simd_long as ( C2) -> L2)
        assert( c3 , label: "simd_long-c3" , reference: simd.simd_long as ( C3) -> L3, subject: kvSimdImpl.simd_long as ( C3) -> L3)
        assert( c4 , label: "simd_long-c4" , reference: simd.simd_long as ( C4) -> L4, subject: kvSimdImpl.simd_long as ( C4) -> L4)
        assert( c8 , label: "simd_long-c8" , reference: simd.simd_long as ( C8) -> L8, subject: kvSimdImpl.simd_long as ( C8) -> L8)
        assert(uc2 , label: "simd_long-uc2", reference: simd.simd_long as (UC2) -> L2, subject: kvSimdImpl.simd_long as (UC2) -> L2)
        assert(uc3 , label: "simd_long-uc3", reference: simd.simd_long as (UC3) -> L3, subject: kvSimdImpl.simd_long as (UC3) -> L3)
        assert(uc4 , label: "simd_long-uc4", reference: simd.simd_long as (UC4) -> L4, subject: kvSimdImpl.simd_long as (UC4) -> L4)
        assert(uc8 , label: "simd_long-uc8", reference: simd.simd_long as (UC8) -> L8, subject: kvSimdImpl.simd_long as (UC8) -> L8)

        assert( s2 , label: "simd_long-s2" , reference: simd.simd_long as ( S2) -> L2, subject: kvSimdImpl.simd_long as ( S2) -> L2)
        assert( s3 , label: "simd_long-s3" , reference: simd.simd_long as ( S3) -> L3, subject: kvSimdImpl.simd_long as ( S3) -> L3)
        assert( s4 , label: "simd_long-s4" , reference: simd.simd_long as ( S4) -> L4, subject: kvSimdImpl.simd_long as ( S4) -> L4)
        assert( s8 , label: "simd_long-s8" , reference: simd.simd_long as ( S8) -> L8, subject: kvSimdImpl.simd_long as ( S8) -> L8)
        assert(us2 , label: "simd_long-us2", reference: simd.simd_long as (US2) -> L2, subject: kvSimdImpl.simd_long as (US2) -> L2)
        assert(us3 , label: "simd_long-us3", reference: simd.simd_long as (US3) -> L3, subject: kvSimdImpl.simd_long as (US3) -> L3)
        assert(us4 , label: "simd_long-us4", reference: simd.simd_long as (US4) -> L4, subject: kvSimdImpl.simd_long as (US4) -> L4)
        assert(us8 , label: "simd_long-us8", reference: simd.simd_long as (US8) -> L8, subject: kvSimdImpl.simd_long as (US8) -> L8)

        assert( i2 , label: "simd_long-i2" , reference: simd.simd_long as ( I2) -> L2, subject: kvSimdImpl.simd_long as ( I2) -> L2)
        assert( i3 , label: "simd_long-i3" , reference: simd.simd_long as ( I3) -> L3, subject: kvSimdImpl.simd_long as ( I3) -> L3)
        assert( i4 , label: "simd_long-i4" , reference: simd.simd_long as ( I4) -> L4, subject: kvSimdImpl.simd_long as ( I4) -> L4)
        assert( i8 , label: "simd_long-i8" , reference: simd.simd_long as ( I8) -> L8, subject: kvSimdImpl.simd_long as ( I8) -> L8)
        assert(ui2 , label: "simd_long-ui2", reference: simd.simd_long as (UI2) -> L2, subject: kvSimdImpl.simd_long as (UI2) -> L2)
        assert(ui3 , label: "simd_long-ui3", reference: simd.simd_long as (UI3) -> L3, subject: kvSimdImpl.simd_long as (UI3) -> L3)
        assert(ui4 , label: "simd_long-ui4", reference: simd.simd_long as (UI4) -> L4, subject: kvSimdImpl.simd_long as (UI4) -> L4)
        assert(ui8 , label: "simd_long-ui8", reference: simd.simd_long as (UI8) -> L8, subject: kvSimdImpl.simd_long as (UI8) -> L8)

        assert( l2 , label: "simd_long-l2" , reference: simd.simd_long as ( L2) -> L2, subject: kvSimdImpl.simd_long as ( L2) -> L2)
        assert( l3 , label: "simd_long-l3" , reference: simd.simd_long as ( L3) -> L3, subject: kvSimdImpl.simd_long as ( L3) -> L3)
        assert( l4 , label: "simd_long-l4" , reference: simd.simd_long as ( L4) -> L4, subject: kvSimdImpl.simd_long as ( L4) -> L4)
        assert( l8 , label: "simd_long-l8" , reference: simd.simd_long as ( L8) -> L8, subject: kvSimdImpl.simd_long as ( L8) -> L8)
        assert(ul2 , label: "simd_long-ul2", reference: simd.simd_long as (UL2) -> L2, subject: kvSimdImpl.simd_long as (UL2) -> L2)
        assert(ul3 , label: "simd_long-ul3", reference: simd.simd_long as (UL3) -> L3, subject: kvSimdImpl.simd_long as (UL3) -> L3)
        assert(ul4 , label: "simd_long-ul4", reference: simd.simd_long as (UL4) -> L4, subject: kvSimdImpl.simd_long as (UL4) -> L4)
        assert(ul8 , label: "simd_long-ul8", reference: simd.simd_long as (UL8) -> L8, subject: kvSimdImpl.simd_long as (UL8) -> L8)

        assert( f2 , label: "simd_long-f2" , reference: simd.simd_long as ( F2) -> L2, subject: kvSimdImpl.simd_long as ( F2) -> L2)
        assert( f3 , label: "simd_long-f3" , reference: simd.simd_long as ( F3) -> L3, subject: kvSimdImpl.simd_long as ( F3) -> L3)
        assert( f4 , label: "simd_long-f4" , reference: simd.simd_long as ( F4) -> L4, subject: kvSimdImpl.simd_long as ( F4) -> L4)
        assert( f8 , label: "simd_long-f8" , reference: simd.simd_long as ( F8) -> L8, subject: kvSimdImpl.simd_long as ( F8) -> L8)

        assert( d2 , label: "simd_long-d2" , reference: simd.simd_long as ( D2) -> L2, subject: kvSimdImpl.simd_long as ( D2) -> L2)
        assert( d3 , label: "simd_long-d3" , reference: simd.simd_long as ( D3) -> L3, subject: kvSimdImpl.simd_long as ( D3) -> L3)
        assert( d4 , label: "simd_long-d4" , reference: simd.simd_long as ( D4) -> L4, subject: kvSimdImpl.simd_long as ( D4) -> L4)
        assert( d8 , label: "simd_long-d8" , reference: simd.simd_long as ( D8) -> L8, subject: kvSimdImpl.simd_long as ( D8) -> L8)
    }



    // MARK: test_simd_long_sat()

    func test_simd_long_sat() {
        assert( c2, label: "simd_long_sat-c2" , reference: simd.simd_long_sat as ( C2) -> L2, subject: kvSimdImpl.simd_long_sat as ( C2) -> L2)
        assert( c3, label: "simd_long_sat-c3" , reference: simd.simd_long_sat as ( C3) -> L3, subject: kvSimdImpl.simd_long_sat as ( C3) -> L3)
        assert( c4, label: "simd_long_sat-c4" , reference: simd.simd_long_sat as ( C4) -> L4, subject: kvSimdImpl.simd_long_sat as ( C4) -> L4)
        assert( c8, label: "simd_long_sat-c8" , reference: simd.simd_long_sat as ( C8) -> L8, subject: kvSimdImpl.simd_long_sat as ( C8) -> L8)
        assert(uc2, label: "simd_long_sat-uc2", reference: simd.simd_long_sat as (UC2) -> L2, subject: kvSimdImpl.simd_long_sat as (UC2) -> L2)
        assert(uc3, label: "simd_long_sat-uc3", reference: simd.simd_long_sat as (UC3) -> L3, subject: kvSimdImpl.simd_long_sat as (UC3) -> L3)
        assert(uc4, label: "simd_long_sat-uc4", reference: simd.simd_long_sat as (UC4) -> L4, subject: kvSimdImpl.simd_long_sat as (UC4) -> L4)
        assert(uc8, label: "simd_long_sat-uc8", reference: simd.simd_long_sat as (UC8) -> L8, subject: kvSimdImpl.simd_long_sat as (UC8) -> L8)

        assert( s2, label: "simd_long_sat-s2" , reference: simd.simd_long_sat as ( S2) -> L2, subject: kvSimdImpl.simd_long_sat as ( S2) -> L2)
        assert( s3, label: "simd_long_sat-s3" , reference: simd.simd_long_sat as ( S3) -> L3, subject: kvSimdImpl.simd_long_sat as ( S3) -> L3)
        assert( s4, label: "simd_long_sat-s4" , reference: simd.simd_long_sat as ( S4) -> L4, subject: kvSimdImpl.simd_long_sat as ( S4) -> L4)
        assert( s8, label: "simd_long_sat-s8" , reference: simd.simd_long_sat as ( S8) -> L8, subject: kvSimdImpl.simd_long_sat as ( S8) -> L8)
        assert(us2, label: "simd_long_sat-us2", reference: simd.simd_long_sat as (US2) -> L2, subject: kvSimdImpl.simd_long_sat as (US2) -> L2)
        assert(us3, label: "simd_long_sat-us3", reference: simd.simd_long_sat as (US3) -> L3, subject: kvSimdImpl.simd_long_sat as (US3) -> L3)
        assert(us4, label: "simd_long_sat-us4", reference: simd.simd_long_sat as (US4) -> L4, subject: kvSimdImpl.simd_long_sat as (US4) -> L4)
        assert(us8, label: "simd_long_sat-us8", reference: simd.simd_long_sat as (US8) -> L8, subject: kvSimdImpl.simd_long_sat as (US8) -> L8)

        assert( i2, label: "simd_long_sat-i2" , reference: simd.simd_long_sat as ( I2) -> L2, subject: kvSimdImpl.simd_long_sat as ( I2) -> L2)
        assert( i3, label: "simd_long_sat-i3" , reference: simd.simd_long_sat as ( I3) -> L3, subject: kvSimdImpl.simd_long_sat as ( I3) -> L3)
        assert( i4, label: "simd_long_sat-i4" , reference: simd.simd_long_sat as ( I4) -> L4, subject: kvSimdImpl.simd_long_sat as ( I4) -> L4)
        assert( i8, label: "simd_long_sat-i8" , reference: simd.simd_long_sat as ( I8) -> L8, subject: kvSimdImpl.simd_long_sat as ( I8) -> L8)
        assert(ui2, label: "simd_long_sat-ui2", reference: simd.simd_long_sat as (UI2) -> L2, subject: kvSimdImpl.simd_long_sat as (UI2) -> L2)
        assert(ui3, label: "simd_long_sat-ui3", reference: simd.simd_long_sat as (UI3) -> L3, subject: kvSimdImpl.simd_long_sat as (UI3) -> L3)
        assert(ui4, label: "simd_long_sat-ui4", reference: simd.simd_long_sat as (UI4) -> L4, subject: kvSimdImpl.simd_long_sat as (UI4) -> L4)
        assert(ui8, label: "simd_long_sat-ui8", reference: simd.simd_long_sat as (UI8) -> L8, subject: kvSimdImpl.simd_long_sat as (UI8) -> L8)

        assert( l2, label: "simd_long_sat-l2" , reference: simd.simd_long_sat as ( L2) -> L2, subject: kvSimdImpl.simd_long_sat as ( L2) -> L2)
        assert( l3, label: "simd_long_sat-l3" , reference: simd.simd_long_sat as ( L3) -> L3, subject: kvSimdImpl.simd_long_sat as ( L3) -> L3)
        assert( l4, label: "simd_long_sat-l4" , reference: simd.simd_long_sat as ( L4) -> L4, subject: kvSimdImpl.simd_long_sat as ( L4) -> L4)
        assert( l8, label: "simd_long_sat-l8" , reference: simd.simd_long_sat as ( L8) -> L8, subject: kvSimdImpl.simd_long_sat as ( L8) -> L8)
        assert(ul2, label: "simd_long_sat-ul2", reference: simd.simd_long_sat as (UL2) -> L2, subject: kvSimdImpl.simd_long_sat as (UL2) -> L2)
        assert(ul3, label: "simd_long_sat-ul3", reference: simd.simd_long_sat as (UL3) -> L3, subject: kvSimdImpl.simd_long_sat as (UL3) -> L3)
        assert(ul4, label: "simd_long_sat-ul4", reference: simd.simd_long_sat as (UL4) -> L4, subject: kvSimdImpl.simd_long_sat as (UL4) -> L4)
        assert(ul8, label: "simd_long_sat-ul8", reference: simd.simd_long_sat as (UL8) -> L8, subject: kvSimdImpl.simd_long_sat as (UL8) -> L8)

        assert( f2, label: "simd_long_sat-f2" , reference: simd.simd_long_sat as ( F2) -> L2, subject: kvSimdImpl.simd_long_sat as ( F2) -> L2)
        assert( f3, label: "simd_long_sat-f3" , reference: simd.simd_long_sat as ( F3) -> L3, subject: kvSimdImpl.simd_long_sat as ( F3) -> L3)
        assert( f4, label: "simd_long_sat-f4" , reference: simd.simd_long_sat as ( F4) -> L4, subject: kvSimdImpl.simd_long_sat as ( F4) -> L4)
        assert( f8, label: "simd_long_sat-f8" , reference: simd.simd_long_sat as ( F8) -> L8, subject: kvSimdImpl.simd_long_sat as ( F8) -> L8)

        assert( d2, label: "simd_long_sat-d2" , reference: simd.simd_long_sat as ( D2) -> L2, subject: kvSimdImpl.simd_long_sat as ( D2) -> L2)
        assert( d3, label: "simd_long_sat-d3" , reference: simd.simd_long_sat as ( D3) -> L3, subject: kvSimdImpl.simd_long_sat as ( D3) -> L3)
        assert( d4, label: "simd_long_sat-d4" , reference: simd.simd_long_sat as ( D4) -> L4, subject: kvSimdImpl.simd_long_sat as ( D4) -> L4)
        assert( d8, label: "simd_long_sat-d8" , reference: simd.simd_long_sat as ( D8) -> L8, subject: kvSimdImpl.simd_long_sat as ( D8) -> L8)
    }



    // MARK: test_simd_long_rte()

    func test_simd_long_rte() {
        assert(d2, label: "simd_long_rte-d2", reference: simd.simd_long_rte as (D2) -> L2, subject: kvSimdImpl.simd_long_rte as (D2) -> L2)
        assert(d3, label: "simd_long_rte-d3", reference: simd.simd_long_rte as (D3) -> L3, subject: kvSimdImpl.simd_long_rte as (D3) -> L3)
        assert(d4, label: "simd_long_rte-d4", reference: simd.simd_long_rte as (D4) -> L4, subject: kvSimdImpl.simd_long_rte as (D4) -> L4)
        assert(d8, label: "simd_long_rte-d8", reference: simd.simd_long_rte as (D8) -> L8, subject: kvSimdImpl.simd_long_rte as (D8) -> L8)
    }



    // MARK: test_simd_ulong()

    func test_simd_ulong() {
        assert( c2, label: "simd_ulong-c2" , reference: simd.simd_ulong as ( C2) -> UL2, subject: kvSimdImpl.simd_ulong as ( C2) -> UL2)
        assert( c3, label: "simd_ulong-c3" , reference: simd.simd_ulong as ( C3) -> UL3, subject: kvSimdImpl.simd_ulong as ( C3) -> UL3)
        assert( c4, label: "simd_ulong-c4" , reference: simd.simd_ulong as ( C4) -> UL4, subject: kvSimdImpl.simd_ulong as ( C4) -> UL4)
        assert( c8, label: "simd_ulong-c8" , reference: simd.simd_ulong as ( C8) -> UL8, subject: kvSimdImpl.simd_ulong as ( C8) -> UL8)
        assert(uc2, label: "simd_ulong-uc2", reference: simd.simd_ulong as (UC2) -> UL2, subject: kvSimdImpl.simd_ulong as (UC2) -> UL2)
        assert(uc3, label: "simd_ulong-uc3", reference: simd.simd_ulong as (UC3) -> UL3, subject: kvSimdImpl.simd_ulong as (UC3) -> UL3)
        assert(uc4, label: "simd_ulong-uc4", reference: simd.simd_ulong as (UC4) -> UL4, subject: kvSimdImpl.simd_ulong as (UC4) -> UL4)
        assert(uc8, label: "simd_ulong-uc8", reference: simd.simd_ulong as (UC8) -> UL8, subject: kvSimdImpl.simd_ulong as (UC8) -> UL8)

        assert( s2, label: "simd_ulong-s2" , reference: simd.simd_ulong as ( S2) -> UL2, subject: kvSimdImpl.simd_ulong as ( S2) -> UL2)
        assert( s3, label: "simd_ulong-s3" , reference: simd.simd_ulong as ( S3) -> UL3, subject: kvSimdImpl.simd_ulong as ( S3) -> UL3)
        assert( s4, label: "simd_ulong-s4" , reference: simd.simd_ulong as ( S4) -> UL4, subject: kvSimdImpl.simd_ulong as ( S4) -> UL4)
        assert( s8, label: "simd_ulong-s8" , reference: simd.simd_ulong as ( S8) -> UL8, subject: kvSimdImpl.simd_ulong as ( S8) -> UL8)
        assert(us2, label: "simd_ulong-us2", reference: simd.simd_ulong as (US2) -> UL2, subject: kvSimdImpl.simd_ulong as (US2) -> UL2)
        assert(us3, label: "simd_ulong-us3", reference: simd.simd_ulong as (US3) -> UL3, subject: kvSimdImpl.simd_ulong as (US3) -> UL3)
        assert(us4, label: "simd_ulong-us4", reference: simd.simd_ulong as (US4) -> UL4, subject: kvSimdImpl.simd_ulong as (US4) -> UL4)
        assert(us8, label: "simd_ulong-us8", reference: simd.simd_ulong as (US8) -> UL8, subject: kvSimdImpl.simd_ulong as (US8) -> UL8)

        assert( i2, label: "simd_ulong-i2" , reference: simd.simd_ulong as ( I2) -> UL2, subject: kvSimdImpl.simd_ulong as ( I2) -> UL2)
        assert( i3, label: "simd_ulong-i3" , reference: simd.simd_ulong as ( I3) -> UL3, subject: kvSimdImpl.simd_ulong as ( I3) -> UL3)
        assert( i4, label: "simd_ulong-i4" , reference: simd.simd_ulong as ( I4) -> UL4, subject: kvSimdImpl.simd_ulong as ( I4) -> UL4)
        assert( i8, label: "simd_ulong-i8" , reference: simd.simd_ulong as ( I8) -> UL8, subject: kvSimdImpl.simd_ulong as ( I8) -> UL8)
        assert(ui2, label: "simd_ulong-ui2", reference: simd.simd_ulong as (UI2) -> UL2, subject: kvSimdImpl.simd_ulong as (UI2) -> UL2)
        assert(ui3, label: "simd_ulong-ui3", reference: simd.simd_ulong as (UI3) -> UL3, subject: kvSimdImpl.simd_ulong as (UI3) -> UL3)
        assert(ui4, label: "simd_ulong-ui4", reference: simd.simd_ulong as (UI4) -> UL4, subject: kvSimdImpl.simd_ulong as (UI4) -> UL4)
        assert(ui8, label: "simd_ulong-ui8", reference: simd.simd_ulong as (UI8) -> UL8, subject: kvSimdImpl.simd_ulong as (UI8) -> UL8)

        assert( l2, label: "simd_ulong-l2" , reference: simd.simd_ulong as ( L2) -> UL2, subject: kvSimdImpl.simd_ulong as ( L2) -> UL2)
        assert( l3, label: "simd_ulong-l3" , reference: simd.simd_ulong as ( L3) -> UL3, subject: kvSimdImpl.simd_ulong as ( L3) -> UL3)
        assert( l4, label: "simd_ulong-l4" , reference: simd.simd_ulong as ( L4) -> UL4, subject: kvSimdImpl.simd_ulong as ( L4) -> UL4)
        assert( l8, label: "simd_ulong-l8" , reference: simd.simd_ulong as ( L8) -> UL8, subject: kvSimdImpl.simd_ulong as ( L8) -> UL8)
        assert(ul2, label: "simd_ulong-ul2", reference: simd.simd_ulong as (UL2) -> UL2, subject: kvSimdImpl.simd_ulong as (UL2) -> UL2)
        assert(ul3, label: "simd_ulong-ul3", reference: simd.simd_ulong as (UL3) -> UL3, subject: kvSimdImpl.simd_ulong as (UL3) -> UL3)
        assert(ul4, label: "simd_ulong-ul4", reference: simd.simd_ulong as (UL4) -> UL4, subject: kvSimdImpl.simd_ulong as (UL4) -> UL4)
        assert(ul8, label: "simd_ulong-ul8", reference: simd.simd_ulong as (UL8) -> UL8, subject: kvSimdImpl.simd_ulong as (UL8) -> UL8)

        assert( f2, label: "simd_ulong-f2" , reference: simd.simd_ulong as ( F2) -> UL2, subject: kvSimdImpl.simd_ulong as ( F2) -> UL2)
        assert( f3, label: "simd_ulong-f3" , reference: simd.simd_ulong as ( F3) -> UL3, subject: kvSimdImpl.simd_ulong as ( F3) -> UL3)
        assert( f4, label: "simd_ulong-f4" , reference: simd.simd_ulong as ( F4) -> UL4, subject: kvSimdImpl.simd_ulong as ( F4) -> UL4)
        assert( f8, label: "simd_ulong-f8" , reference: simd.simd_ulong as ( F8) -> UL8, subject: kvSimdImpl.simd_ulong as ( F8) -> UL8)

        assert( d2, label: "simd_ulong-d2" , reference: simd.simd_ulong as ( D2) -> UL2, subject: kvSimdImpl.simd_ulong as ( D2) -> UL2)
        assert( d3, label: "simd_ulong-d3" , reference: simd.simd_ulong as ( D3) -> UL3, subject: kvSimdImpl.simd_ulong as ( D3) -> UL3)
        assert( d4, label: "simd_ulong-d4" , reference: simd.simd_ulong as ( D4) -> UL4, subject: kvSimdImpl.simd_ulong as ( D4) -> UL4)
        assert( d8, label: "simd_ulong-d8" , reference: simd.simd_ulong as ( D8) -> UL8, subject: kvSimdImpl.simd_ulong as ( D8) -> UL8)
    }



    // MARK: test_simd_ulong_sat()

    func test_simd_ulong_sat() {
        assert( c2, label: "simd_ulong_sat-c2" , reference: simd.simd_ulong_sat as ( C2) -> UL2, subject: kvSimdImpl.simd_ulong_sat as ( C2) -> UL2)
        assert( c3, label: "simd_ulong_sat-c3" , reference: simd.simd_ulong_sat as ( C3) -> UL3, subject: kvSimdImpl.simd_ulong_sat as ( C3) -> UL3)
        assert( c4, label: "simd_ulong_sat-c4" , reference: simd.simd_ulong_sat as ( C4) -> UL4, subject: kvSimdImpl.simd_ulong_sat as ( C4) -> UL4)
        assert( c8, label: "simd_ulong_sat-c8" , reference: simd.simd_ulong_sat as ( C8) -> UL8, subject: kvSimdImpl.simd_ulong_sat as ( C8) -> UL8)
        assert(uc2, label: "simd_ulong_sat-uc2", reference: simd.simd_ulong_sat as (UC2) -> UL2, subject: kvSimdImpl.simd_ulong_sat as (UC2) -> UL2)
        assert(uc3, label: "simd_ulong_sat-uc3", reference: simd.simd_ulong_sat as (UC3) -> UL3, subject: kvSimdImpl.simd_ulong_sat as (UC3) -> UL3)
        assert(uc4, label: "simd_ulong_sat-uc4", reference: simd.simd_ulong_sat as (UC4) -> UL4, subject: kvSimdImpl.simd_ulong_sat as (UC4) -> UL4)
        assert(uc8, label: "simd_ulong_sat-uc8", reference: simd.simd_ulong_sat as (UC8) -> UL8, subject: kvSimdImpl.simd_ulong_sat as (UC8) -> UL8)

        assert( s2, label: "simd_ulong_sat-s2" , reference: simd.simd_ulong_sat as ( S2) -> UL2, subject: kvSimdImpl.simd_ulong_sat as ( S2) -> UL2)
        assert( s3, label: "simd_ulong_sat-s3" , reference: simd.simd_ulong_sat as ( S3) -> UL3, subject: kvSimdImpl.simd_ulong_sat as ( S3) -> UL3)
        assert( s4, label: "simd_ulong_sat-s4" , reference: simd.simd_ulong_sat as ( S4) -> UL4, subject: kvSimdImpl.simd_ulong_sat as ( S4) -> UL4)
        assert( s8, label: "simd_ulong_sat-s8" , reference: simd.simd_ulong_sat as ( S8) -> UL8, subject: kvSimdImpl.simd_ulong_sat as ( S8) -> UL8)
        assert(us2, label: "simd_ulong_sat-us2", reference: simd.simd_ulong_sat as (US2) -> UL2, subject: kvSimdImpl.simd_ulong_sat as (US2) -> UL2)
        assert(us3, label: "simd_ulong_sat-us3", reference: simd.simd_ulong_sat as (US3) -> UL3, subject: kvSimdImpl.simd_ulong_sat as (US3) -> UL3)
        assert(us4, label: "simd_ulong_sat-us4", reference: simd.simd_ulong_sat as (US4) -> UL4, subject: kvSimdImpl.simd_ulong_sat as (US4) -> UL4)
        assert(us8, label: "simd_ulong_sat-us8", reference: simd.simd_ulong_sat as (US8) -> UL8, subject: kvSimdImpl.simd_ulong_sat as (US8) -> UL8)

        assert( i2, label: "simd_ulong_sat-i2" , reference: simd.simd_ulong_sat as ( I2) -> UL2, subject: kvSimdImpl.simd_ulong_sat as ( I2) -> UL2)
        assert( i3, label: "simd_ulong_sat-i3" , reference: simd.simd_ulong_sat as ( I3) -> UL3, subject: kvSimdImpl.simd_ulong_sat as ( I3) -> UL3)
        assert( i4, label: "simd_ulong_sat-i4" , reference: simd.simd_ulong_sat as ( I4) -> UL4, subject: kvSimdImpl.simd_ulong_sat as ( I4) -> UL4)
        assert( i8, label: "simd_ulong_sat-i8" , reference: simd.simd_ulong_sat as ( I8) -> UL8, subject: kvSimdImpl.simd_ulong_sat as ( I8) -> UL8)
        assert(ui2, label: "simd_ulong_sat-ui2", reference: simd.simd_ulong_sat as (UI2) -> UL2, subject: kvSimdImpl.simd_ulong_sat as (UI2) -> UL2)
        assert(ui3, label: "simd_ulong_sat-ui3", reference: simd.simd_ulong_sat as (UI3) -> UL3, subject: kvSimdImpl.simd_ulong_sat as (UI3) -> UL3)
        assert(ui4, label: "simd_ulong_sat-ui4", reference: simd.simd_ulong_sat as (UI4) -> UL4, subject: kvSimdImpl.simd_ulong_sat as (UI4) -> UL4)
        assert(ui8, label: "simd_ulong_sat-ui8", reference: simd.simd_ulong_sat as (UI8) -> UL8, subject: kvSimdImpl.simd_ulong_sat as (UI8) -> UL8)

        assert( l2, label: "simd_ulong_sat-l2" , reference: simd.simd_ulong_sat as ( L2) -> UL2, subject: kvSimdImpl.simd_ulong_sat as ( L2) -> UL2)
        assert( l3, label: "simd_ulong_sat-l3" , reference: simd.simd_ulong_sat as ( L3) -> UL3, subject: kvSimdImpl.simd_ulong_sat as ( L3) -> UL3)
        assert( l4, label: "simd_ulong_sat-l4" , reference: simd.simd_ulong_sat as ( L4) -> UL4, subject: kvSimdImpl.simd_ulong_sat as ( L4) -> UL4)
        assert( l8, label: "simd_ulong_sat-l8" , reference: simd.simd_ulong_sat as ( L8) -> UL8, subject: kvSimdImpl.simd_ulong_sat as ( L8) -> UL8)
        assert(ul2, label: "simd_ulong_sat-ul2", reference: simd.simd_ulong_sat as (UL2) -> UL2, subject: kvSimdImpl.simd_ulong_sat as (UL2) -> UL2)
        assert(ul3, label: "simd_ulong_sat-ul3", reference: simd.simd_ulong_sat as (UL3) -> UL3, subject: kvSimdImpl.simd_ulong_sat as (UL3) -> UL3)
        assert(ul4, label: "simd_ulong_sat-ul4", reference: simd.simd_ulong_sat as (UL4) -> UL4, subject: kvSimdImpl.simd_ulong_sat as (UL4) -> UL4)
        assert(ul8, label: "simd_ulong_sat-ul8", reference: simd.simd_ulong_sat as (UL8) -> UL8, subject: kvSimdImpl.simd_ulong_sat as (UL8) -> UL8)

        assert( f2, label: "simd_ulong_sat-f2" , reference: simd.simd_ulong_sat as ( F2) -> UL2, subject: kvSimdImpl.simd_ulong_sat as ( F2) -> UL2)
        assert( f3, label: "simd_ulong_sat-f3" , reference: simd.simd_ulong_sat as ( F3) -> UL3, subject: kvSimdImpl.simd_ulong_sat as ( F3) -> UL3)
        assert( f4, label: "simd_ulong_sat-f4" , reference: simd.simd_ulong_sat as ( F4) -> UL4, subject: kvSimdImpl.simd_ulong_sat as ( F4) -> UL4)
        assert( f8, label: "simd_ulong_sat-f8" , reference: simd.simd_ulong_sat as ( F8) -> UL8, subject: kvSimdImpl.simd_ulong_sat as ( F8) -> UL8)

        assert( d2, label: "simd_ulong_sat-d2" , reference: simd.simd_ulong_sat as ( D2) -> UL2, subject: kvSimdImpl.simd_ulong_sat as ( D2) -> UL2)
        assert( d3, label: "simd_ulong_sat-d3" , reference: simd.simd_ulong_sat as ( D3) -> UL3, subject: kvSimdImpl.simd_ulong_sat as ( D3) -> UL3)
        assert( d4, label: "simd_ulong_sat-d4" , reference: simd.simd_ulong_sat as ( D4) -> UL4, subject: kvSimdImpl.simd_ulong_sat as ( D4) -> UL4)
        assert( d8, label: "simd_ulong_sat-d8" , reference: simd.simd_ulong_sat as ( D8) -> UL8, subject: kvSimdImpl.simd_ulong_sat as ( D8) -> UL8)
    }



    // MARK: test_simd_float()

    func test_simd_float() {
        assert( c2 , label: "simd_float-c2"  , reference: simd.simd_float as ( C2 ) -> F2 , subject: kvSimdImpl.simd_float as ( C2 ) -> F2 )
        assert( c3 , label: "simd_float-c3"  , reference: simd.simd_float as ( C3 ) -> F3 , subject: kvSimdImpl.simd_float as ( C3 ) -> F3 )
        assert( c4 , label: "simd_float-c4"  , reference: simd.simd_float as ( C4 ) -> F4 , subject: kvSimdImpl.simd_float as ( C4 ) -> F4 )
        assert( c8 , label: "simd_float-c8"  , reference: simd.simd_float as ( C8 ) -> F8 , subject: kvSimdImpl.simd_float as ( C8 ) -> F8 )
        assert( c16, label: "simd_float-c16" , reference: simd.simd_float as ( C16) -> F16, subject: kvSimdImpl.simd_float as ( C16) -> F16)
        assert(uc2 , label: "simd_float-uc2" , reference: simd.simd_float as (UC2 ) -> F2 , subject: kvSimdImpl.simd_float as (UC2 ) -> F2 )
        assert(uc3 , label: "simd_float-uc3" , reference: simd.simd_float as (UC3 ) -> F3 , subject: kvSimdImpl.simd_float as (UC3 ) -> F3 )
        assert(uc4 , label: "simd_float-uc4" , reference: simd.simd_float as (UC4 ) -> F4 , subject: kvSimdImpl.simd_float as (UC4 ) -> F4 )
        assert(uc8 , label: "simd_float-uc8" , reference: simd.simd_float as (UC8 ) -> F8 , subject: kvSimdImpl.simd_float as (UC8 ) -> F8 )
        assert(uc16, label: "simd_float-uc16", reference: simd.simd_float as (UC16) -> F16, subject: kvSimdImpl.simd_float as (UC16) -> F16)

        assert( s2 , label: "simd_float-s2"  , reference: simd.simd_float as ( S2 ) -> F2 , subject: kvSimdImpl.simd_float as ( S2 ) -> F2 )
        assert( s3 , label: "simd_float-s3"  , reference: simd.simd_float as ( S3 ) -> F3 , subject: kvSimdImpl.simd_float as ( S3 ) -> F3 )
        assert( s4 , label: "simd_float-s4"  , reference: simd.simd_float as ( S4 ) -> F4 , subject: kvSimdImpl.simd_float as ( S4 ) -> F4 )
        assert( s8 , label: "simd_float-s8"  , reference: simd.simd_float as ( S8 ) -> F8 , subject: kvSimdImpl.simd_float as ( S8 ) -> F8 )
        assert( s16, label: "simd_float-s16" , reference: simd.simd_float as ( S16) -> F16, subject: kvSimdImpl.simd_float as ( S16) -> F16)
        assert(us2 , label: "simd_float-us2" , reference: simd.simd_float as (US2 ) -> F2 , subject: kvSimdImpl.simd_float as (US2 ) -> F2 )
        assert(us3 , label: "simd_float-us3" , reference: simd.simd_float as (US3 ) -> F3 , subject: kvSimdImpl.simd_float as (US3 ) -> F3 )
        assert(us4 , label: "simd_float-us4" , reference: simd.simd_float as (US4 ) -> F4 , subject: kvSimdImpl.simd_float as (US4 ) -> F4 )
        assert(us8 , label: "simd_float-us8" , reference: simd.simd_float as (US8 ) -> F8 , subject: kvSimdImpl.simd_float as (US8 ) -> F8 )
        assert(us16, label: "simd_float-us16", reference: simd.simd_float as (US16) -> F16, subject: kvSimdImpl.simd_float as (US16) -> F16)

        assert( i2 , label: "simd_float-i2"  , reference: simd.simd_float as ( I2 ) -> F2 , subject: kvSimdImpl.simd_float as ( I2 ) -> F2 )
        assert( i3 , label: "simd_float-i3"  , reference: simd.simd_float as ( I3 ) -> F3 , subject: kvSimdImpl.simd_float as ( I3 ) -> F3 )
        assert( i4 , label: "simd_float-i4"  , reference: simd.simd_float as ( I4 ) -> F4 , subject: kvSimdImpl.simd_float as ( I4 ) -> F4 )
        assert( i8 , label: "simd_float-i8"  , reference: simd.simd_float as ( I8 ) -> F8 , subject: kvSimdImpl.simd_float as ( I8 ) -> F8 )
        assert( i16, label: "simd_float-i16" , reference: simd.simd_float as ( I16) -> F16, subject: kvSimdImpl.simd_float as ( I16) -> F16)
        assert(ui2 , label: "simd_float-ui2" , reference: simd.simd_float as (UI2 ) -> F2 , subject: kvSimdImpl.simd_float as (UI2 ) -> F2 )
        assert(ui3 , label: "simd_float-ui3" , reference: simd.simd_float as (UI3 ) -> F3 , subject: kvSimdImpl.simd_float as (UI3 ) -> F3 )
        assert(ui4 , label: "simd_float-ui4" , reference: simd.simd_float as (UI4 ) -> F4 , subject: kvSimdImpl.simd_float as (UI4 ) -> F4 )
        assert(ui8 , label: "simd_float-ui8" , reference: simd.simd_float as (UI8 ) -> F8 , subject: kvSimdImpl.simd_float as (UI8 ) -> F8 )
        assert(ui16, label: "simd_float-ui16", reference: simd.simd_float as (UI16) -> F16, subject: kvSimdImpl.simd_float as (UI16) -> F16)

        assert( l2 , label: "simd_float-l2"  , reference: simd.simd_float as ( L2 ) -> F2 , subject: kvSimdImpl.simd_float as ( L2 ) -> F2 )
        assert( l3 , label: "simd_float-l3"  , reference: simd.simd_float as ( L3 ) -> F3 , subject: kvSimdImpl.simd_float as ( L3 ) -> F3 )
        assert( l4 , label: "simd_float-l4"  , reference: simd.simd_float as ( L4 ) -> F4 , subject: kvSimdImpl.simd_float as ( L4 ) -> F4 )
        assert( l8 , label: "simd_float-l8"  , reference: simd.simd_float as ( L8 ) -> F8 , subject: kvSimdImpl.simd_float as ( L8 ) -> F8 )
        assert(ul2 , label: "simd_float-ul2" , reference: simd.simd_float as (UL2 ) -> F2 , subject: kvSimdImpl.simd_float as (UL2 ) -> F2 )
        assert(ul3 , label: "simd_float-ul3" , reference: simd.simd_float as (UL3 ) -> F3 , subject: kvSimdImpl.simd_float as (UL3 ) -> F3 )
        assert(ul4 , label: "simd_float-ul4" , reference: simd.simd_float as (UL4 ) -> F4 , subject: kvSimdImpl.simd_float as (UL4 ) -> F4 )
        assert(ul8 , label: "simd_float-ul8" , reference: simd.simd_float as (UL8 ) -> F8 , subject: kvSimdImpl.simd_float as (UL8 ) -> F8 )

        assert( f2 , label: "simd_float-f2"  , reference: simd.simd_float as ( F2 ) -> F2 , subject: kvSimdImpl.simd_float as ( F2 ) -> F2 )
        assert( f3 , label: "simd_float-f3"  , reference: simd.simd_float as ( F3 ) -> F3 , subject: kvSimdImpl.simd_float as ( F3 ) -> F3 )
        assert( f4 , label: "simd_float-f4"  , reference: simd.simd_float as ( F4 ) -> F4 , subject: kvSimdImpl.simd_float as ( F4 ) -> F4 )
        assert( f8 , label: "simd_float-f8"  , reference: simd.simd_float as ( F8 ) -> F8 , subject: kvSimdImpl.simd_float as ( F8 ) -> F8 )
        assert( f16, label: "simd_float-f16" , reference: simd.simd_float as ( F16) -> F16, subject: kvSimdImpl.simd_float as ( F16) -> F16)

        assert( d2 , label: "simd_float-d2"  , reference: simd.simd_float as ( D2 ) -> F2 , subject: kvSimdImpl.simd_float as ( D2 ) -> F2 )
        assert( d3 , label: "simd_float-d3"  , reference: simd.simd_float as ( D3 ) -> F3 , subject: kvSimdImpl.simd_float as ( D3 ) -> F3 )
        assert( d4 , label: "simd_float-d4"  , reference: simd.simd_float as ( D4 ) -> F4 , subject: kvSimdImpl.simd_float as ( D4 ) -> F4 )
        assert( d8 , label: "simd_float-d8"  , reference: simd.simd_float as ( D8 ) -> F8 , subject: kvSimdImpl.simd_float as ( D8 ) -> F8 )
    }



    // MARK: test_simd_double()

    func test_simd_double() {
        assert( c2, label: "simd_double-c2" , reference: simd.simd_double as ( C2) -> D2, subject: kvSimdImpl.simd_double as ( C2) -> D2)
        assert( c3, label: "simd_double-c3" , reference: simd.simd_double as ( C3) -> D3, subject: kvSimdImpl.simd_double as ( C3) -> D3)
        assert( c4, label: "simd_double-c4" , reference: simd.simd_double as ( C4) -> D4, subject: kvSimdImpl.simd_double as ( C4) -> D4)
        assert( c8, label: "simd_double-c8" , reference: simd.simd_double as ( C8) -> D8, subject: kvSimdImpl.simd_double as ( C8) -> D8)
        assert(uc2, label: "simd_double-uc2", reference: simd.simd_double as (UC2) -> D2, subject: kvSimdImpl.simd_double as (UC2) -> D2)
        assert(uc3, label: "simd_double-uc3", reference: simd.simd_double as (UC3) -> D3, subject: kvSimdImpl.simd_double as (UC3) -> D3)
        assert(uc4, label: "simd_double-uc4", reference: simd.simd_double as (UC4) -> D4, subject: kvSimdImpl.simd_double as (UC4) -> D4)
        assert(uc8, label: "simd_double-uc8", reference: simd.simd_double as (UC8) -> D8, subject: kvSimdImpl.simd_double as (UC8) -> D8)

        assert( s2, label: "simd_double-s2" , reference: simd.simd_double as ( S2) -> D2, subject: kvSimdImpl.simd_double as ( S2) -> D2)
        assert( s3, label: "simd_double-s3" , reference: simd.simd_double as ( S3) -> D3, subject: kvSimdImpl.simd_double as ( S3) -> D3)
        assert( s4, label: "simd_double-s4" , reference: simd.simd_double as ( S4) -> D4, subject: kvSimdImpl.simd_double as ( S4) -> D4)
        assert( s8, label: "simd_double-s8" , reference: simd.simd_double as ( S8) -> D8, subject: kvSimdImpl.simd_double as ( S8) -> D8)
        assert(us2, label: "simd_double-us2", reference: simd.simd_double as (US2) -> D2, subject: kvSimdImpl.simd_double as (US2) -> D2)
        assert(us3, label: "simd_double-us3", reference: simd.simd_double as (US3) -> D3, subject: kvSimdImpl.simd_double as (US3) -> D3)
        assert(us4, label: "simd_double-us4", reference: simd.simd_double as (US4) -> D4, subject: kvSimdImpl.simd_double as (US4) -> D4)
        assert(us8, label: "simd_double-us8", reference: simd.simd_double as (US8) -> D8, subject: kvSimdImpl.simd_double as (US8) -> D8)

        assert( i2, label: "simd_double-i2" , reference: simd.simd_double as ( I2) -> D2, subject: kvSimdImpl.simd_double as ( I2) -> D2)
        assert( i3, label: "simd_double-i3" , reference: simd.simd_double as ( I3) -> D3, subject: kvSimdImpl.simd_double as ( I3) -> D3)
        assert( i4, label: "simd_double-i4" , reference: simd.simd_double as ( I4) -> D4, subject: kvSimdImpl.simd_double as ( I4) -> D4)
        assert( i8, label: "simd_double-i8" , reference: simd.simd_double as ( I8) -> D8, subject: kvSimdImpl.simd_double as ( I8) -> D8)
        assert(ui2, label: "simd_double-ui2", reference: simd.simd_double as (UI2) -> D2, subject: kvSimdImpl.simd_double as (UI2) -> D2)
        assert(ui3, label: "simd_double-ui3", reference: simd.simd_double as (UI3) -> D3, subject: kvSimdImpl.simd_double as (UI3) -> D3)
        assert(ui4, label: "simd_double-ui4", reference: simd.simd_double as (UI4) -> D4, subject: kvSimdImpl.simd_double as (UI4) -> D4)
        assert(ui8, label: "simd_double-ui8", reference: simd.simd_double as (UI8) -> D8, subject: kvSimdImpl.simd_double as (UI8) -> D8)

        assert( l2, label: "simd_double-l2" , reference: simd.simd_double as ( L2) -> D2, subject: kvSimdImpl.simd_double as ( L2) -> D2)
        assert( l3, label: "simd_double-l3" , reference: simd.simd_double as ( L3) -> D3, subject: kvSimdImpl.simd_double as ( L3) -> D3)
        assert( l4, label: "simd_double-l4" , reference: simd.simd_double as ( L4) -> D4, subject: kvSimdImpl.simd_double as ( L4) -> D4)
        assert( l8, label: "simd_double-l8" , reference: simd.simd_double as ( L8) -> D8, subject: kvSimdImpl.simd_double as ( L8) -> D8)
        assert(ul2, label: "simd_double-ul2", reference: simd.simd_double as (UL2) -> D2, subject: kvSimdImpl.simd_double as (UL2) -> D2)
        assert(ul3, label: "simd_double-ul3", reference: simd.simd_double as (UL3) -> D3, subject: kvSimdImpl.simd_double as (UL3) -> D3)
        assert(ul4, label: "simd_double-ul4", reference: simd.simd_double as (UL4) -> D4, subject: kvSimdImpl.simd_double as (UL4) -> D4)
        assert(ul8, label: "simd_double-ul8", reference: simd.simd_double as (UL8) -> D8, subject: kvSimdImpl.simd_double as (UL8) -> D8)

        assert( f2, label: "simd_double-f2" , reference: simd.simd_double as ( F2) -> D2, subject: kvSimdImpl.simd_double as ( F2) -> D2)
        assert( f3, label: "simd_double-f3" , reference: simd.simd_double as ( F3) -> D3, subject: kvSimdImpl.simd_double as ( F3) -> D3)
        assert( f4, label: "simd_double-f4" , reference: simd.simd_double as ( F4) -> D4, subject: kvSimdImpl.simd_double as ( F4) -> D4)
        assert( f8, label: "simd_double-f8" , reference: simd.simd_double as ( F8) -> D8, subject: kvSimdImpl.simd_double as ( F8) -> D8)

        assert( d2, label: "simd_double-d2" , reference: simd.simd_double as ( D2) -> D2, subject: kvSimdImpl.simd_double as ( D2) -> D2)
        assert( d3, label: "simd_double-d3" , reference: simd.simd_double as ( D3) -> D3, subject: kvSimdImpl.simd_double as ( D3) -> D3)
        assert( d4, label: "simd_double-d4" , reference: simd.simd_double as ( D4) -> D4, subject: kvSimdImpl.simd_double as ( D4) -> D4)
        assert( d8, label: "simd_double-d8" , reference: simd.simd_double as ( D8) -> D8, subject: kvSimdImpl.simd_double as ( D8) -> D8)
    }



    // MARK: Auxiliaries

    private let c2 =  C2 (1, -1)
    private let c3 =  C3 (1, -1, .max)
    private let c4 =  C4 (1, -1, .max, .min)
    private let c8 =  C8 (1, -1, .max, .min, 64, -64, 6, -7)
    private let c16 = C16(1, -1, .max, .min, 64, -64, 6, -7, 8, -9, 10, -11, 12, -13, 14, -15)
    private let c32 = C32(1, -1, .max, .min, 64, -64, 6, -7, 8, -9, 10, -11, 12, -13, 14, -15, 16, -17, 18, -19, 20, -21, 22, -23, 24, -25, 26, -27, 28, -29, 30, -31)

    private let uc2 =  UC2 (.min, .max)
    private let uc3 =  UC3 (.min, .max, 128)
    private let uc4 =  UC4 (.min, .max, 128, 127)
    private let uc8 =  UC8 (.min, .max, 128, 127, 4, 5, 6, 7)
    private let uc16 = UC16(.min, .max, 128, 127, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15)
    private let uc32 = UC32(.min, .max, 128, 127, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31)

    private let s2 =  S2 (1, -1)
    private let s3 =  S3 (1, -1, .max)
    private let s4 =  S4 (1, -1, .max, .min)
    private let s8 =  S8 (1, -1, .max, .min, 127, 128, -128, -129)
    private let s16 = S16(1, -1, .max, .min, 127, 128, -128, -129, 8, -9, 10, -11, 12, -13, 14, -15)
    private let s32 = S32(1, -1, .max, .min, 127, 128, -128, -129, 8, -9, 10, -11, 12, -13, 14, -15, 16, -17, 18, -19, 20, -21, 22, -23, 24, -25, 26, -27, 28, -29, 30, -31)

    private let us2 =  US2 (.min, .max)
    private let us3 =  US3 (.min, .max, 128)
    private let us4 =  US4 (.min, .max, 128, 127)
    private let us8 =  US8 (.min, .max, 128, 127, 255, 256, 6, 7)
    private let us16 = US16(.min, .max, 128, 127, 255, 256, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15)
    private let us32 = US32(.min, .max, 128, 127, 255, 256, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31)

    private let i2 =  I2 (1, -1)
    private let i3 =  I3 (1, -1, .max)
    private let i4 =  I4 (1, -1, .max, .min)
    private let i8 =  I8 (1, -1, .max, .min, 127, 128, -128, -129)
    private let i16 = I16(1, -1, .max, .min, 127, 128, -128, -129, 0xFFFF, 0x10000, 10, -11, 12, -13, 14, -15)

    private let ui2 =  UI2 (.min, .max)
    private let ui3 =  UI3 (.min, .max, 128)
    private let ui4 =  UI4 (.min, .max, 128, 127)
    private let ui8 =  UI8 (.min, .max, 128, 127, 255, 256, 0xFFFF, 0x10000)
    private let ui16 = UI16(.min, .max, 128, 127, 255, 256, 0xFFFF, 0x10000, 8, 9, 10, 11, 12, 13, 14, 15)

    private let l2 =  L2(1, -1)
    private let l3 =  L3(1, -1, .max)
    private let l4 =  L4(1, -1, .max, .min)
    private let l8 =  L8(1, -1, .max, .min, 0xFFFF, 0x10000, -128, -129)

    private let ul2 =  UL2(.min, .max)
    private let ul3 =  UL3(.min, .max, 128)
    private let ul4 =  UL4(.min, .max, 128, 127)
    private let ul8 =  UL8(.min, .max, 128, 127, 255, 256, 0xFFFF, 0x10000)

    private let f2 =  F2 (0.5, 1.5)
    private let f3 =  F3 (0.5, 1.5, .greatestFiniteMagnitude)
    private let f4 =  F4 (0.5, 1.5, .greatestFiniteMagnitude, 3.9)
    private let f8 =  F8 (0.5, 1.5, .greatestFiniteMagnitude, 3.9, -0.5, -1.5, -2.1, -3.9)
    private let f16 = F16(0.5, 1.5, .greatestFiniteMagnitude, 3.9, -0.5, -1.5, -2.1, -3.9, 8.0, 9.0, 10.0, 11.0, 12.0, 13.0, 14.0, 15.0)

    private let d2 = D2(0.5, 1.5)
    private let d3 = D3(0.5, 1.5, .greatestFiniteMagnitude)
    private let d4 = D4(0.5, 1.5, .greatestFiniteMagnitude, 3.9)
    private let d8 = D8(0.5, 1.5, .greatestFiniteMagnitude, 3.9, -0.5, -1.5, -2.1, -3.9)



    private func assert<T, R>(_ input: T, label: String, reference: (T) -> R, subject: (T) -> R) where R : Equatable {
        XCTAssertEqual(subject(input), reference(input), "\(label) for \(input) argument")
    }
    
}
