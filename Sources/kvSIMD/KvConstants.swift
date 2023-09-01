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
//  KvConstants.swift
//  kvSIMD
//
//  Created by Svyatoslav Popov on 27.08.2023.
//

/// Identity matrix.
@available(macOS 10.10, *)
public let matrix_identity_float2x2: simd_float2x2 = .init(1.0)

/// Identity matrix.
@available(macOS 10.10, *)
public let matrix_identity_float3x3: simd_float3x3 = .init(1.0)

/// Identity matrix.
@available(macOS 10.10, *)
public let matrix_identity_float4x4: simd_float4x4 = .init(1.0)

/// Identity matrix.
@available(macOS 10.10, *)
public let matrix_identity_double2x2: simd_double2x2 = .init(1.0)

/// Identity matrix.
@available(macOS 10.10, *)
public let matrix_identity_double3x3: simd_double3x3 = .init(1.0)

/// Identity matrix.
@available(macOS 10.10, *)
public let matrix_identity_double4x4: simd_double4x4 = .init(1.0)
