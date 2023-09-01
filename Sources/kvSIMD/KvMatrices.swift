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
//  KvMatrices.swift
//  kvSIMD
//
//  Created by Svyatoslav Popov on 02.08.2023.
//


// MARK: - simd_float2x2

/// A matrix with 2 rows and 2 columns.
public struct simd_float2x2 : Equatable, CustomDebugStringConvertible {

    public var columns: (simd_float2, simd_float2)



    /// Initializes a zero matrix.
    @inlinable
    public init() { columns = (.zero, .zero) }


    /// Columnwise initializer.
    @inlinable
    public init(columns: (simd_float2, simd_float2)) { self.columns = columns }


    /// Initialzes a matrix having *scalar* on main diagonal and zeros elsewhere.
    @inlinable
    public init(_ scalar: Float) {
        columns = (.init(scalar, 0.0),
                   .init(0.0, scalar))
    }


    /// Initialzes a matrix having given main *diagonal* and zeros elsewhere.
    @inlinable
    public init(diagonal: SIMD2<Float>) {
        columns = (.init(diagonal.x, 0.0),
                   .init(0.0, diagonal.y))
    }


    /// Columnwise initializer.
    @inlinable
    public init(_ columns: [SIMD2<Float>]) { self.columns = (columns[0], columns[1]) }


    /// Rowwise initializer.
    @inlinable
    public init(rows: [SIMD2<Float>]) {
        columns = (.init(rows[0].x, rows[1].x),
                   .init(rows[0].y, rows[1].y))
    }


    /// Columnwise initializer.
    @inlinable
    public init(_ col0: SIMD2<Float>, _ col1: SIMD2<Float>) { self.columns = (col0, col1) }



    // MARK: : Equatable

    @inlinable
    public static func ==(lhs: simd_float2x2, rhs: simd_float2x2) -> Bool { lhs.columns == rhs.columns }



    // MARK: : CustomDebugStringConvertible

    @inlinable
    public var debugDescription: String { "simd_float2x2([[\(columns.0.x), \(columns.0.y)], [\(columns.1.x), \(columns.1.y)]])" }



    // MARK: Subscripts

    /// - Returns: The receiver's column at given index.
    @inlinable
    public subscript(column: Int) -> SIMD2<Float> {
        get {
            switch column {
            case 0:
                return columns.0
            case 1:
                return columns.1
            default:
                preconditionFailure("Failed to get column [\(column)] from \(Self.self). Index is out of range")
            }
        }
        set {
            switch column {
            case 0:
                columns.0 = newValue
            case 1:
                columns.1 = newValue
            default:
                preconditionFailure("Failed to set column [\(column)] in \(Self.self). Index is out of range")
            }
        }
    }


    /// - Returns: The receiver's element at given *column* and *row* indices.
    @inlinable
    public subscript(column: Int, row: Int) -> Float {
        get {
            switch column {
            case 0:
                return columns.0[row]
            case 1:
                return columns.1[row]
            default:
                preconditionFailure("Failed to get element [\(column), \(row)] from \(Self.self). An index is out of range")
            }
        }
        set {
            switch column {
            case 0:
                columns.0[row] = newValue
            case 1:
                columns.1[row] = newValue
            default:
                preconditionFailure("Failed to set element [\(column), \(row)] in \(Self.self). An index is out of range")
            }
        }
    }



    // MARK: Operations

    /// Transpose of the receiver.
    @inlinable
    public var transpose: float2x2 {
        .init(.init(columns.0.x, columns.1.x),
              .init(columns.0.y, columns.1.y))
    }

    /// Inverse of the receiver. The resulting matrix is undefined when the inverse doesn't exist.
    @available(macOS 10.10, iOS 8.0, tvOS 10.0, watchOS 3.0, *)
    @inlinable
    public var inverse: simd_float2x2 {
        var m = simd_float2x2(.init( columns.1.y, -columns.0.y),
                              .init(-columns.1.x,  columns.0.x))
        m *= 1.0 / determinant
        return m
    }

    /// Determinant of the receiver.
    @inlinable
    public var determinant: Float { columns.0.x * columns.1.y - columns.0.y * columns.1.x }



    // MARK: Operators

    /// - Returns: Negated matrix.
    @inlinable
    public static prefix func -(rhs: simd_float2x2) -> simd_float2x2 { .init(-rhs.columns.0, -rhs.columns.1) }


    /// - Returns: Sum of given matrices.
    @inlinable
    public static func +(lhs: simd_float2x2, rhs: simd_float2x2) -> simd_float2x2 {
        .init(lhs.columns.0 + rhs.columns.0,
              lhs.columns.1 + rhs.columns.1)
    }


    /// - Returns: Subtraction of given matrices.
    @inlinable
    public static func -(lhs: simd_float2x2, rhs: simd_float2x2) -> simd_float2x2 {
        .init(lhs.columns.0 - rhs.columns.0,
              lhs.columns.1 - rhs.columns.1)
    }


    /// Adds *rhs* to *lhs* in place.
    @inlinable
    public static func +=(lhs: inout simd_float2x2, rhs: simd_float2x2) {
        lhs.columns.0 += rhs.columns.0
        lhs.columns.1 += rhs.columns.1
    }


    /// Subtracts *rhs* from *lhs* in place.
    @inlinable
    public static func -=(lhs: inout simd_float2x2, rhs: simd_float2x2) {
        lhs.columns.0 -= rhs.columns.0
        lhs.columns.1 -= rhs.columns.1
    }


    /// - Returns: Scaled *rhs* by *lhs*.
    @inlinable
    public static func *(lhs: Float, rhs: simd_float2x2) -> simd_float2x2 { .init(lhs * rhs.columns.0, lhs * rhs.columns.1) }


    /// - Returns: Scaled *lhs* by *rhs*.
    @inlinable
    public static func *(lhs: simd_float2x2, rhs: Float) -> simd_float2x2 { .init(rhs * lhs.columns.0, rhs * lhs.columns.1) }


    /// Scales *lhs* by *rhs* in place.
    @inlinable
    public static func *=(lhs: inout simd_float2x2, rhs: Float) {
        lhs.columns.0 *= rhs
        lhs.columns.1 *= rhs
    }


    /// - Returns: Product of *lhs* matrix and *rhs* vector as a single column matrix.
    @inlinable
    public static func *(lhs: simd_float2x2, rhs: SIMD2<Float>) -> SIMD2<Float> {
        .init(lhs.columns.0.x * rhs.x + lhs.columns.1.x * rhs.y,
              lhs.columns.0.y * rhs.x + lhs.columns.1.y * rhs.y)
    }


    /// - Returns: Product of *lhs* vector as a single row matrix and *rhs* matrix.
    @inlinable
    public static func *(lhs: SIMD2<Float>, rhs: simd_float2x2) -> SIMD2<Float> {
        .init(dot(lhs, rhs.columns.0),
              dot(lhs, rhs.columns.1))
    }


    /// - Returns: Product of *lhs* and *rhs* matrices.
    @inlinable
    public static func *(lhs: simd_float2x2, rhs: float2x2) -> float2x2 {
        .init(lhs * rhs.columns.0, lhs * rhs.columns.1)
    }


    /// - Returns: Product of *lhs* and *rhs* matrices.
    @inlinable
    public static func *(lhs: simd_float2x2, rhs: float3x2) -> float3x2 {
        .init(lhs * rhs.columns.0, lhs * rhs.columns.1, lhs * rhs.columns.2)
    }


    /// - Returns: Product of *lhs* and *rhs* matrices.
    @inlinable
    public static func *(lhs: simd_float2x2, rhs: float4x2) -> float4x2 {
        .init(lhs * rhs.columns.0, lhs * rhs.columns.1, lhs * rhs.columns.2, lhs * rhs.columns.3)
    }


    /// Multiplies *lhs* by *rhs* matrix in place.
    @inlinable
    public static func *=(lhs: inout simd_float2x2, rhs: float2x2) { lhs = lhs * rhs }

}



// MARK: - simd_float3x2

/// A matrix with 2 rows and 3 columns.
public struct simd_float3x2 : Equatable, CustomDebugStringConvertible {

    public var columns: (simd_float2, simd_float2, simd_float2)



    /// Initializes a zero matrix.
    @inlinable
    public init() { columns = (.zero, .zero, .zero) }


    /// Columnwise initializer.
    @inlinable
    public init(columns: (simd_float2, simd_float2, simd_float2)) { self.columns = columns }


    /// Initialize matrix to have `scalar` on main diagonal, zeros elsewhere.
    @inlinable
    public init(_ scalar: Float) {
        columns = (.init(scalar, 0.0),
                   .init(0.0, scalar),
                   .zero)
    }


    /// Initialzes a matrix having given main *diagonal* and zeros elsewhere.
    @inlinable
    public init(diagonal: SIMD2<Float>) {
        columns = (.init(diagonal.x, 0.0),
                   .init(0.0, diagonal.y),
                   .zero)
    }


    /// Columnwise initializer.
    @inlinable
    public init(_ columns: [SIMD2<Float>]) { self.columns = (columns[0], columns[1], columns[2]) }


    /// Rowwise initializer.
    @inlinable
    public init(rows: [SIMD3<Float>]) {
        columns = (.init(rows[0].x, rows[1].x),
                   .init(rows[0].y, rows[1].y),
                   .init(rows[0].z, rows[1].z))
    }


    /// Columnwise initializer.
    @inlinable
    public init(_ col0: SIMD2<Float>, _ col1: SIMD2<Float>, _ col2: SIMD2<Float>) { self.columns = (col0, col1, col2) }



    // MARK: : Equatable

    @inlinable
    public static func ==(lhs: simd_float3x2, rhs: simd_float3x2) -> Bool { lhs.columns == rhs.columns }



    // MARK: : CustomDebugStringConvertible

    @inlinable
    public var debugDescription: String { "simd_float3x2([[\(columns.0.x), \(columns.0.y)], [\(columns.1.x), \(columns.1.y)], [\(columns.2.x), \(columns.2.y)]])" }



    // MARK: Subscripts

    /// - Returns: The receiver's column at given index.
    @inlinable
    public subscript(column: Int) -> SIMD2<Float> {
        get {
            switch column {
            case 0:
                return columns.0
            case 1:
                return columns.1
            case 2:
                return columns.2
            default:
                preconditionFailure("Failed to get column [\(column)] from \(Self.self). Index is out of range")
            }
        }
        set {
            switch column {
            case 0:
                columns.0 = newValue
            case 1:
                columns.1 = newValue
            case 2:
                columns.2 = newValue
            default:
                preconditionFailure("Failed to set column [\(column)] in \(Self.self). Index is out of range")
            }
        }
    }


    /// - Returns: The receiver's element at given *column* and *row* indices.
    @inlinable
    public subscript(column: Int, row: Int) -> Float {
        get {
            switch column {
            case 0:
                return columns.0[row]
            case 1:
                return columns.1[row]
            case 2:
                return columns.2[row]
            default:
                preconditionFailure("Failed to get element [\(column), \(row)] from \(Self.self). An index is out of range")
            }
        }
        set {
            switch column {
            case 0:
                columns.0[row] = newValue
            case 1:
                columns.1[row] = newValue
            case 2:
                columns.2[row] = newValue
            default:
                preconditionFailure("Failed to set element [\(column), \(row)] in \(Self.self). An index is out of range")
            }
        }
    }



    // MARK: Operations

    /// Transpose of the receiver.
    @inlinable
    public var transpose: float2x3 {
        .init(.init(columns.0.x, columns.1.x, columns.2.x),
              .init(columns.0.y, columns.1.y, columns.2.y))
    }



    // MARK: Operators

    /// - Returns: Negated matrix.
    @inlinable
    public static prefix func -(rhs: simd_float3x2) -> simd_float3x2 { .init(-rhs.columns.0, -rhs.columns.1, -rhs.columns.2) }


    /// - Returns: Sum of given matrices.
    @inlinable
    public static func +(lhs: simd_float3x2, rhs: simd_float3x2) -> simd_float3x2 {
        .init(lhs.columns.0 + rhs.columns.0,
              lhs.columns.1 + rhs.columns.1,
              lhs.columns.2 + rhs.columns.2)
    }


    /// - Returns: Subtraction of given matrices.
    @inlinable
    public static func -(lhs: simd_float3x2, rhs: simd_float3x2) -> simd_float3x2 {
        .init(lhs.columns.0 - rhs.columns.0,
              lhs.columns.1 - rhs.columns.1,
              lhs.columns.2 - rhs.columns.2)
    }


    /// Adds *rhs* to *lhs* in place.
    @inlinable
    public static func +=(lhs: inout simd_float3x2, rhs: simd_float3x2) {
        lhs.columns.0 += rhs.columns.0
        lhs.columns.1 += rhs.columns.1
        lhs.columns.2 += rhs.columns.2
    }


    /// Subtracts *rhs* from *lhs* in place.
    @inlinable
    public static func -=(lhs: inout simd_float3x2, rhs: simd_float3x2) {
        lhs.columns.0 -= rhs.columns.0
        lhs.columns.1 -= rhs.columns.1
        lhs.columns.2 -= rhs.columns.2
    }


    /// - Returns: Scaled *rhs* by *lhs*.
    @inlinable
    public static func *(lhs: Float, rhs: simd_float3x2) -> simd_float3x2 { .init(lhs * rhs.columns.0, lhs * rhs.columns.1, lhs * rhs.columns.2) }


    /// - Returns: Scaled *lhs* by *rhs*.
    @inlinable
    public static func *(lhs: simd_float3x2, rhs: Float) -> simd_float3x2 { .init(rhs * lhs.columns.0, rhs * lhs.columns.1, rhs * lhs.columns.2) }


    /// Scales *lhs* by *rhs* in place.
    @inlinable
    public static func *=(lhs: inout simd_float3x2, rhs: Float) {
        lhs.columns.0 *= rhs
        lhs.columns.1 *= rhs
        lhs.columns.2 *= rhs
    }


    /// - Returns: Product of *lhs* matrix and *rhs* vector as a single column matrix.
    @inlinable
    public static func *(lhs: simd_float3x2, rhs: SIMD3<Float>) -> SIMD2<Float> {
        .init(lhs.columns.0.x * rhs.x + lhs.columns.1.x * rhs.y + lhs.columns.2.x * rhs.z,
              lhs.columns.0.y * rhs.x + lhs.columns.1.y * rhs.y + lhs.columns.2.y * rhs.z)
    }


    /// - Returns: Product of *lhs* vector as a single row matrix and *rhs* matrix.
    @inlinable
    public static func *(lhs: SIMD2<Float>, rhs: simd_float3x2) -> SIMD3<Float> {
        .init(dot(lhs, rhs.columns.0),
              dot(lhs, rhs.columns.1),
              dot(lhs, rhs.columns.2))
    }


    /// - Returns: Product of *lhs* and *rhs* matrices.
    @inlinable
    public static func *(lhs: simd_float3x2, rhs: float2x3) -> float2x2 {
        .init(lhs * rhs.columns.0, lhs * rhs.columns.1)
    }


    /// - Returns: Product of *lhs* and *rhs* matrices.
    @inlinable
    public static func *(lhs: simd_float3x2, rhs: float3x3) -> float3x2 {
        .init(lhs * rhs.columns.0, lhs * rhs.columns.1, lhs * rhs.columns.2)
    }


    /// - Returns: Product of *lhs* and *rhs* matrices.
    @inlinable
    public static func *(lhs: simd_float3x2, rhs: float4x3) -> float4x2 {
        .init(lhs * rhs.columns.0, lhs * rhs.columns.1, lhs * rhs.columns.2, lhs * rhs.columns.3)
    }


    /// Multiplies *lhs* by *rhs* matrix in place.
    @inlinable
    public static func *=(lhs: inout simd_float3x2, rhs: float3x3) { lhs = lhs * rhs }

}



// MARK: - simd_float4x2

/// A matrix with 2 rows and 4 columns.
public struct simd_float4x2 : Equatable, CustomDebugStringConvertible {

    public var columns: (simd_float2, simd_float2, simd_float2, simd_float2)



    /// Initializes a zero matrix.
    @inlinable
    public init() { columns = (.zero, .zero, .zero, .zero) }


    /// Columnwise initializer.
    @inlinable
    public init(columns: (simd_float2, simd_float2, simd_float2, simd_float2)) { self.columns = columns }


    /// Initialzes a matrix having *scalar* on main diagonal and zeros elsewhere.
    @inlinable
    public init(_ scalar: Float) {
        columns = (.init(scalar, 0.0),
                   .init(0.0, scalar),
                   .zero,
                   .zero)
    }


    /// Initialzes a matrix having given main *diagonal* and zeros elsewhere.
    @inlinable
    public init(diagonal: SIMD2<Float>) {
        columns = (.init(diagonal.x, 0.0),
                   .init(0.0, diagonal.y),
                   .zero,
                   .zero)
    }


    /// Columnwise initializer.
    @inlinable
    public init(_ columns: [SIMD2<Float>]) { self.columns = (columns[0], columns[1], columns[2], columns[3]) }


    /// Rowwise initializer.
    @inlinable
    public init(rows: [SIMD4<Float>]) {
        columns = (.init(rows[0].x, rows[1].x),
                   .init(rows[0].y, rows[1].y),
                   .init(rows[0].z, rows[1].z),
                   .init(rows[0].w, rows[1].w))
    }


    /// Columnwise initializer.
    @inlinable
    public init(_ col0: SIMD2<Float>, _ col1: SIMD2<Float>, _ col2: SIMD2<Float>, _ col3: SIMD2<Float>) { self.columns = (col0, col1, col2, col3) }



    // MARK: : Equatable

    @inlinable
    public static func ==(lhs: simd_float4x2, rhs: simd_float4x2) -> Bool { lhs.columns == rhs.columns }



    // MARK: : CustomDebugStringConvertible

    @inlinable
    public var debugDescription: String { "simd_float4x2([[\(columns.0.x), \(columns.0.y)], [\(columns.1.x), \(columns.1.y)], [\(columns.2.x), \(columns.2.y)], [\(columns.3.x), \(columns.3.y)]])" }



    // MARK: Subscripts

    /// - Returns: The receiver's column at given index.
    @inlinable
    public subscript(column: Int) -> SIMD2<Float> {
        get {
            switch column {
            case 0:
                return columns.0
            case 1:
                return columns.1
            case 2:
                return columns.2
            case 3:
                return columns.3
            default:
                preconditionFailure("Failed to get column [\(column)] from \(Self.self). Index is out of range")
            }
        }
        set {
            switch column {
            case 0:
                columns.0 = newValue
            case 1:
                columns.1 = newValue
            case 2:
                columns.2 = newValue
            case 3:
                columns.3 = newValue
            default:
                preconditionFailure("Failed to set column [\(column)] in \(Self.self). Index is out of range")
            }
        }
    }


    /// - Returns: The receiver's element at given *column* and *row* indices.
    @inlinable
    public subscript(column: Int, row: Int) -> Float {
        get {
            switch column {
            case 0:
                return columns.0[row]
            case 1:
                return columns.1[row]
            case 2:
                return columns.2[row]
            case 3:
                return columns.3[row]
            default:
                preconditionFailure("Failed to get element [\(column), \(row)] from \(Self.self). An index is out of range")
            }
        }
        set {
            switch column {
            case 0:
                columns.0[row] = newValue
            case 1:
                columns.1[row] = newValue
            case 2:
                columns.2[row] = newValue
            case 3:
                columns.3[row] = newValue
            default:
                preconditionFailure("Failed to set element [\(column), \(row)] in \(Self.self). An index is out of range")
            }
        }
    }



    // MARK: Operations

    /// Transpose of the receiver.
    @inlinable
    public var transpose: float2x4 {
        .init(.init(columns.0.x, columns.1.x, columns.2.x, columns.3.x),
              .init(columns.0.y, columns.1.y, columns.2.y, columns.3.y))
    }



    // MARK: Operators

    /// - Returns: Negated matrix.
    @inlinable
    public static prefix func -(rhs: simd_float4x2) -> simd_float4x2 { .init(-rhs.columns.0, -rhs.columns.1, -rhs.columns.2, -rhs.columns.3) }


    /// - Returns: Sum of given matrices.
    @inlinable
    public static func +(lhs: simd_float4x2, rhs: simd_float4x2) -> simd_float4x2 {
        .init(lhs.columns.0 + rhs.columns.0,
              lhs.columns.1 + rhs.columns.1,
              lhs.columns.2 + rhs.columns.2,
              lhs.columns.3 + rhs.columns.3)
    }


    /// - Returns: Subtraction of given matrices.
    @inlinable
    public static func -(lhs: simd_float4x2, rhs: simd_float4x2) -> simd_float4x2 {
        .init(lhs.columns.0 - rhs.columns.0,
              lhs.columns.1 - rhs.columns.1,
              lhs.columns.2 - rhs.columns.2,
              lhs.columns.3 - rhs.columns.3)
    }


    /// Adds *rhs* to *lhs* in place.
    @inlinable
    public static func +=(lhs: inout simd_float4x2, rhs: simd_float4x2) {
        lhs.columns.0 += rhs.columns.0
        lhs.columns.1 += rhs.columns.1
        lhs.columns.2 += rhs.columns.2
        lhs.columns.3 += rhs.columns.3
    }


    /// Subtracts *rhs* from *lhs* in place.
    @inlinable
    public static func -=(lhs: inout simd_float4x2, rhs: simd_float4x2) {
        lhs.columns.0 -= rhs.columns.0
        lhs.columns.1 -= rhs.columns.1
        lhs.columns.2 -= rhs.columns.2
        lhs.columns.3 -= rhs.columns.3
    }


    /// - Returns: Scaled *rhs* by *lhs*.
    @inlinable
    public static func *(lhs: Float, rhs: simd_float4x2) -> simd_float4x2 { .init(lhs * rhs.columns.0, lhs * rhs.columns.1, lhs * rhs.columns.2, lhs * rhs.columns.3) }


    /// - Returns: Scaled *lhs* by *rhs*.
    @inlinable
    public static func *(lhs: simd_float4x2, rhs: Float) -> simd_float4x2 { .init(rhs * lhs.columns.0, rhs * lhs.columns.1, rhs * lhs.columns.2, rhs * lhs.columns.3) }


    /// Scales *lhs* by *rhs* in place.
    @inlinable
    public static func *=(lhs: inout simd_float4x2, rhs: Float) {
        lhs.columns.0 *= rhs
        lhs.columns.1 *= rhs
        lhs.columns.2 *= rhs
        lhs.columns.3 *= rhs
    }


    /// - Returns: Product of *lhs* matrix and *rhs* vector as a single column matrix.
    @inlinable
    public static func *(lhs: simd_float4x2, rhs: SIMD4<Float>) -> SIMD2<Float> {
        .init(lhs.columns.0.x * rhs.x + lhs.columns.1.x * rhs.y + lhs.columns.2.x * rhs.z + lhs.columns.3.x * rhs.w,
              lhs.columns.0.y * rhs.x + lhs.columns.1.y * rhs.y + lhs.columns.2.y * rhs.z + lhs.columns.3.y * rhs.w)
    }


    /// - Returns: Product of *lhs* vector as a single row matrix and *rhs* matrix.
    @inlinable
    public static func *(lhs: SIMD2<Float>, rhs: simd_float4x2) -> SIMD4<Float> {
        .init(dot(lhs, rhs.columns.0),
              dot(lhs, rhs.columns.1),
              dot(lhs, rhs.columns.2),
              dot(lhs, rhs.columns.3))
    }


    /// - Returns: Product of *lhs* and *rhs* matrices.
    @inlinable
    public static func *(lhs: simd_float4x2, rhs: float2x4) -> float2x2 {
        .init(lhs * rhs.columns.0, lhs * rhs.columns.1)
    }


    /// - Returns: Product of *lhs* and *rhs* matrices.
    @inlinable
    public static func *(lhs: simd_float4x2, rhs: float3x4) -> float3x2 {
        .init(lhs * rhs.columns.0, lhs * rhs.columns.1, lhs * rhs.columns.2)
    }


    /// - Returns: Product of *lhs* and *rhs* matrices.
    @inlinable
    public static func *(lhs: simd_float4x2, rhs: float4x4) -> float4x2 {
        .init(lhs * rhs.columns.0, lhs * rhs.columns.1, lhs * rhs.columns.2, lhs * rhs.columns.3)
    }


    /// Multiplies *lhs* by *rhs* matrix in place.
    @inlinable
    public static func *=(lhs: inout simd_float4x2, rhs: float4x4) { lhs = lhs * rhs }

}



// MARK: - simd_float2x3

/// A matrix with 3 rows and 2 columns.
public struct simd_float2x3 : Equatable, CustomDebugStringConvertible {

    public var columns: (simd_float3, simd_float3)



    /// Initializes a zero matrix.
    @inlinable
    public init() { columns = (.zero, .zero) }


    /// Columnwise initializer.
    @inlinable
    public init(columns: (simd_float3, simd_float3)) { self.columns = columns }


    /// Initialzes a matrix having *scalar* on main diagonal and zeros elsewhere.
    @inlinable
    public init(_ scalar: Float) {
        columns = (.init(scalar, 0.0, 0.0),
                   .init(0.0, scalar, 0.0))
    }


    /// Initialzes a matrix having given main *diagonal* and zeros elsewhere.
    @inlinable
    public init(diagonal: SIMD2<Float>) {
        columns = (.init(diagonal.x, 0.0, 0.0),
                   .init(0.0, diagonal.y, 0.0))
    }


    /// Columnwise initializer.
    @inlinable
    public init(_ columns: [SIMD3<Float>]) { self.columns = (columns[0], columns[1]) }


    /// Rowwise initializer.
    @inlinable
    public init(rows: [SIMD2<Float>]) {
        columns = (.init(rows[0].x, rows[1].x, rows[2].x),
                   .init(rows[0].y, rows[1].y, rows[2].y))
    }


    /// Columnwise initializer.
    @inlinable
    public init(_ col0: SIMD3<Float>, _ col1: SIMD3<Float>) { self.columns = (col0, col1) }



    // MARK: : Equatable

    @inlinable
    public static func ==(lhs: simd_float2x3, rhs: simd_float2x3) -> Bool { lhs.columns == rhs.columns }



    // MARK: : CustomDebugStringConvertible

    @inlinable
    public var debugDescription: String { "simd_float2x3([[\(columns.0.x), \(columns.0.y), \(columns.0.z)], [\(columns.1.x), \(columns.1.y), \(columns.1.z)]])" }



    // MARK: Subscripts

    /// - Returns: The receiver's column at given index.
    @inlinable
    public subscript(column: Int) -> SIMD3<Float> {
        get {
            switch column {
            case 0:
                return columns.0
            case 1:
                return columns.1
            default:
                preconditionFailure("Failed to get column [\(column)] from \(Self.self). Index is out of range")
            }
        }
        set {
            switch column {
            case 0:
                columns.0 = newValue
            case 1:
                columns.1 = newValue
            default:
                preconditionFailure("Failed to set column [\(column)] in \(Self.self). Index is out of range")
            }
        }
    }


    /// - Returns: The receiver's element at given *column* and *row* indices.
    @inlinable
    public subscript(column: Int, row: Int) -> Float {
        get {
            switch column {
            case 0:
                return columns.0[row]
            case 1:
                return columns.1[row]
            default:
                preconditionFailure("Failed to get element [\(column), \(row)] from \(Self.self). An index is out of range")
            }
        }
        set {
            switch column {
            case 0:
                columns.0[row] = newValue
            case 1:
                columns.1[row] = newValue
            default:
                preconditionFailure("Failed to set element [\(column), \(row)] in \(Self.self). An index is out of range")
            }
        }
    }



    // MARK: Operations

    /// Transpose of the receiver.
    @inlinable
    public var transpose: float3x2 {
        .init(.init(columns.0.x, columns.1.x),
              .init(columns.0.y, columns.1.y),
              .init(columns.0.z, columns.1.z))
    }



    // MARK: Operators

    /// - Returns: Negated matrix.
    @inlinable
    public static prefix func -(rhs: simd_float2x3) -> simd_float2x3 { .init(-rhs.columns.0, -rhs.columns.1) }


    /// - Returns: Sum of given matrices.
    @inlinable
    public static func +(lhs: simd_float2x3, rhs: simd_float2x3) -> simd_float2x3 {
        .init(lhs.columns.0 + rhs.columns.0,
              lhs.columns.1 + rhs.columns.1)
    }


    /// - Returns: Subtraction of given matrices.
    @inlinable
    public static func -(lhs: simd_float2x3, rhs: simd_float2x3) -> simd_float2x3 {
        .init(lhs.columns.0 - rhs.columns.0,
              lhs.columns.1 - rhs.columns.1)
    }


    /// Adds *rhs* to *lhs* in place.
    @inlinable
    public static func +=(lhs: inout simd_float2x3, rhs: simd_float2x3) {
        lhs.columns.0 += rhs.columns.0
        lhs.columns.1 += rhs.columns.1
    }


    /// Subtracts *rhs* from *lhs* in place.
    @inlinable
    public static func -=(lhs: inout simd_float2x3, rhs: simd_float2x3) {
        lhs.columns.0 -= rhs.columns.0
        lhs.columns.1 -= rhs.columns.1
    }


    /// - Returns: Scaled *rhs* by *lhs*.
    @inlinable
    public static func *(lhs: Float, rhs: simd_float2x3) -> simd_float2x3 { .init(lhs * rhs.columns.0, lhs * rhs.columns.1) }


    /// - Returns: Scaled *lhs* by *rhs*.
    @inlinable
    public static func *(lhs: simd_float2x3, rhs: Float) -> simd_float2x3 { .init(rhs * lhs.columns.0, rhs * lhs.columns.1) }


    /// Scales *lhs* by *rhs* in place.
    @inlinable
    public static func *=(lhs: inout simd_float2x3, rhs: Float) {
        lhs.columns.0 *= rhs
        lhs.columns.1 *= rhs
    }


    /// - Returns: Product of *lhs* matrix and *rhs* vector as a single column matrix.
    @inlinable
    public static func *(lhs: simd_float2x3, rhs: SIMD2<Float>) -> SIMD3<Float> {
        .init(lhs.columns.0.x * rhs.x + lhs.columns.1.x * rhs.y,
              lhs.columns.0.y * rhs.x + lhs.columns.1.y * rhs.y,
              lhs.columns.0.z * rhs.x + lhs.columns.1.z * rhs.y)
    }


    /// - Returns: Product of *lhs* vector as a single row matrix and *rhs* matrix.
    @inlinable
    public static func *(lhs: SIMD3<Float>, rhs: simd_float2x3) -> SIMD2<Float> {
        .init(dot(lhs, rhs.columns.0),
              dot(lhs, rhs.columns.1))
    }


    /// - Returns: Product of *lhs* and *rhs* matrices.
    @inlinable
    public static func *(lhs: simd_float2x3, rhs: float2x2) -> float2x3 {
        .init(lhs * rhs.columns.0, lhs * rhs.columns.1)
    }


    /// - Returns: Product of *lhs* and *rhs* matrices.
    @inlinable
    public static func *(lhs: simd_float2x3, rhs: float3x2) -> float3x3 {
        .init(lhs * rhs.columns.0, lhs * rhs.columns.1, lhs * rhs.columns.2)
    }


    /// - Returns: Product of *lhs* and *rhs* matrices.
    @inlinable
    public static func *(lhs: simd_float2x3, rhs: float4x2) -> float4x3 {
        .init(lhs * rhs.columns.0, lhs * rhs.columns.1, lhs * rhs.columns.2, lhs * rhs.columns.3)
    }


    /// Multiplies *lhs* by *rhs* matrix in place.
    @inlinable
    public static func *=(lhs: inout simd_float2x3, rhs: float2x2) { lhs = lhs * rhs }

}



// MARK: - simd_float3x3

/// A matrix with 3 rows and 3 columns.
public struct simd_float3x3 : Equatable, CustomDebugStringConvertible {

    public var columns: (simd_float3, simd_float3, simd_float3)



    /// Initializes a zero matrix.
    @inlinable
    public init() { columns = (.zero, .zero, .zero) }


    /// Columnwise initializer.
    @inlinable
    public init(columns: (simd_float3, simd_float3, simd_float3)) { self.columns = columns }


    /// Initialzes a matrix having *scalar* on main diagonal and zeros elsewhere.
    @inlinable
    public init(_ scalar: Float) {
        columns = (.init(scalar, 0.0, 0.0),
                   .init(0.0, scalar, 0.0),
                   .init(0.0, 0.0, scalar))
    }


    /// Initialzes a matrix having given main *diagonal* and zeros elsewhere.
    @inlinable
    public init(diagonal: SIMD3<Float>) {
        columns = (.init(diagonal.x, 0.0, 0.0),
                   .init(0.0, diagonal.y, 0.0),
                   .init(0.0, 0.0, diagonal.z))
    }


    /// Columnwise initializer.
    @inlinable
    public init(_ columns: [SIMD3<Float>]) { self.columns = (columns[0], columns[1], columns[2]) }


    /// Rowwise initializer.
    @inlinable
    public init(rows: [SIMD3<Float>]) {
        columns = (.init(rows[0].x, rows[1].x, rows[2].x),
                   .init(rows[0].y, rows[1].y, rows[2].y),
                   .init(rows[0].z, rows[1].z, rows[2].z))
    }


    /// Columnwise initializer.
    @inlinable
    public init(_ col0: SIMD3<Float>, _ col1: SIMD3<Float>, _ col2: SIMD3<Float>) { self.columns = (col0, col1, col2) }


    /// Initializes a rotation matrix by given *quaternion*.
    @inlinable
    public init(_ quaternion: simd_quatf) {
        columns = (.init(1.0 - 2.0 * (quaternion.vector.y * quaternion.vector.y + quaternion.vector.z * quaternion.vector.z),
                               2.0 * (quaternion.vector.x * quaternion.vector.y + quaternion.vector.z * quaternion.vector.w),
                               2.0 * (quaternion.vector.x * quaternion.vector.z - quaternion.vector.y * quaternion.vector.w)),
                   .init(      2.0 * (quaternion.vector.x * quaternion.vector.y - quaternion.vector.z * quaternion.vector.w),
                         1.0 - 2.0 * (quaternion.vector.x * quaternion.vector.x + quaternion.vector.z * quaternion.vector.z),
                               2.0 * (quaternion.vector.y * quaternion.vector.z + quaternion.vector.x * quaternion.vector.w)),
                   .init(      2.0 * (quaternion.vector.x * quaternion.vector.z + quaternion.vector.y * quaternion.vector.w),
                               2.0 * (quaternion.vector.y * quaternion.vector.z - quaternion.vector.x * quaternion.vector.w),
                         1.0 - 2.0 * (quaternion.vector.x * quaternion.vector.x + quaternion.vector.y * quaternion.vector.y)))
    }



    // MARK: : Equatable

    @inlinable
    public static func ==(lhs: simd_float3x3, rhs: simd_float3x3) -> Bool { lhs.columns == rhs.columns }



    // MARK: : CustomDebugStringConvertible

    @inlinable
    public var debugDescription: String { "simd_float3x3([[\(columns.0.x), \(columns.0.y), \(columns.0.z)], [\(columns.1.x), \(columns.1.y), \(columns.1.z)], [\(columns.2.x), \(columns.2.y), \(columns.2.z)]])" }



    // MARK: Subscripts

    /// - Returns: The receiver's column at given index.
    @inlinable
    public subscript(column: Int) -> SIMD3<Float> {
        get {
            switch column {
            case 0:
                return columns.0
            case 1:
                return columns.1
            case 2:
                return columns.2
            default:
                preconditionFailure("Failed to get column [\(column)] from \(Self.self). Index is out of range")
            }
        }
        set {
            switch column {
            case 0:
                columns.0 = newValue
            case 1:
                columns.1 = newValue
            case 2:
                columns.2 = newValue
            default:
                preconditionFailure("Failed to set column [\(column)] in \(Self.self). Index is out of range")
            }
        }
    }


    /// - Returns: The receiver's element at given *column* and *row* indices.
    @inlinable
    public subscript(column: Int, row: Int) -> Float {
        get {
            switch column {
            case 0:
                return columns.0[row]
            case 1:
                return columns.1[row]
            case 2:
                return columns.2[row]
            default:
                preconditionFailure("Failed to get element [\(column), \(row)] from \(Self.self). An index is out of range")
            }
        }
        set {
            switch column {
            case 0:
                columns.0[row] = newValue
            case 1:
                columns.1[row] = newValue
            case 2:
                columns.2[row] = newValue
            default:
                preconditionFailure("Failed to set element [\(column), \(row)] in \(Self.self). An index is out of range")
            }
        }
    }



    // MARK: Operations

    /// Transpose of the receiver.
    @inlinable
    public var transpose: float3x3 {
        .init(.init(columns.0.x, columns.1.x, columns.2.x),
              .init(columns.0.y, columns.1.y, columns.2.y),
              .init(columns.0.z, columns.1.z, columns.2.z))
    }

    /// Inverse of the receiver. The resulting matrix is undefined when the inverse doesn't exist.
    @available(macOS 10.10, iOS 8.0, tvOS 10.0, watchOS 3.0, *)
    @inlinable
    public var inverse: simd_float3x3 {
        let col0 = simd_float3(columns.1.y * columns.2.z - columns.1.z * columns.2.y,
                               columns.1.z * columns.2.x - columns.0.y * columns.2.z,
                               columns.0.y * columns.2.y - columns.1.y * columns.2.x)

        let col1 = simd_float3(columns.2.x * columns.2.y - columns.1.x * columns.2.z,
                               columns.0.x * columns.2.z - columns.2.x * columns.2.x,
                               columns.1.x * columns.2.x - columns.0.x * columns.2.y)

        let col2 = simd_float3(columns.1.x * columns.1.z - columns.2.x * columns.1.y,
                               columns.2.x * columns.0.y - columns.0.x * columns.1.z,
                               columns.0.x * columns.1.y - columns.1.x * columns.0.y)

        let determinant⁻¹ = 1.0 / (columns.0.x * col0.x + columns.1.x * col0.y + columns.2.x * col0.z)

        return simd_float3x3(determinant⁻¹ * col0,
                             determinant⁻¹ * col1,
                             determinant⁻¹ * col2)
    }

    /// Determinant of the receiver.
    @inlinable
    public var determinant: Float {
        simd_reduce_add(columns.0 * ((KvShiftLeft1(columns.1) * KvShiftLeft2(columns.2)) as simd_float3 -
                                     (KvShiftLeft2(columns.1) * KvShiftLeft1(columns.2)) as simd_float3))
    }



    // MARK: Operators

    /// - Returns: Negated matrix.
    @inlinable
    public static prefix func -(rhs: simd_float3x3) -> simd_float3x3 { .init(-rhs.columns.0, -rhs.columns.1, -rhs.columns.2) }


    /// - Returns: Sum of given matrices.
    @inlinable
    public static func +(lhs: simd_float3x3, rhs: simd_float3x3) -> simd_float3x3 {
        .init(lhs.columns.0 + rhs.columns.0,
              lhs.columns.1 + rhs.columns.1,
              lhs.columns.2 + rhs.columns.2)
    }


    /// - Returns: Subtraction of given matrices.
    @inlinable
    public static func -(lhs: simd_float3x3, rhs: simd_float3x3) -> simd_float3x3 {
        .init(lhs.columns.0 - rhs.columns.0,
              lhs.columns.1 - rhs.columns.1,
              lhs.columns.2 - rhs.columns.2)
    }


    /// Adds *rhs* to *lhs* in place.
    @inlinable
    public static func +=(lhs: inout simd_float3x3, rhs: simd_float3x3) {
        lhs.columns.0 += rhs.columns.0
        lhs.columns.1 += rhs.columns.1
        lhs.columns.2 += rhs.columns.2
    }


    /// Subtracts *rhs* from *lhs* in place.
    @inlinable
    public static func -=(lhs: inout simd_float3x3, rhs: simd_float3x3) {
        lhs.columns.0 -= rhs.columns.0
        lhs.columns.1 -= rhs.columns.1
        lhs.columns.2 -= rhs.columns.2
    }


    /// - Returns: Scaled *rhs* by *lhs*.
    @inlinable
    public static func *(lhs: Float, rhs: simd_float3x3) -> simd_float3x3 { .init(lhs * rhs.columns.0, lhs * rhs.columns.1, lhs * rhs.columns.2) }


    /// - Returns: Scaled *lhs* by *rhs*.
    @inlinable
    public static func *(lhs: simd_float3x3, rhs: Float) -> simd_float3x3 { .init(rhs * lhs.columns.0, rhs * lhs.columns.1, rhs * lhs.columns.2) }


    /// Scales *lhs* by *rhs* in place.
    @inlinable
    public static func *=(lhs: inout simd_float3x3, rhs: Float) {
        lhs.columns.0 *= rhs
        lhs.columns.1 *= rhs
        lhs.columns.2 *= rhs
    }


    /// - Returns: Product of *lhs* matrix and *rhs* vector as a single column matrix.
    @inlinable
    public static func *(lhs: simd_float3x3, rhs: SIMD3<Float>) -> SIMD3<Float> {
        .init(lhs.columns.0.x * rhs.x + lhs.columns.1.x * rhs.y + lhs.columns.2.x * rhs.z,
              lhs.columns.0.y * rhs.x + lhs.columns.1.y * rhs.y + lhs.columns.2.y * rhs.z,
              lhs.columns.0.z * rhs.x + lhs.columns.1.z * rhs.y + lhs.columns.2.z * rhs.z)
    }


    /// - Returns: Product of *lhs* vector as a single row matrix and *rhs* matrix.
    @inlinable
    public static func *(lhs: SIMD3<Float>, rhs: simd_float3x3) -> SIMD3<Float> {
        .init(dot(lhs, rhs.columns.0),
              dot(lhs, rhs.columns.1),
              dot(lhs, rhs.columns.2))
    }


    /// - Returns: Product of *lhs* and *rhs* matrices.
    @inlinable
    public static func *(lhs: simd_float3x3, rhs: float2x3) -> float2x3 {
        .init(lhs * rhs.columns.0, lhs * rhs.columns.1)
    }


    /// - Returns: Product of *lhs* and *rhs* matrices.
    @inlinable
    public static func *(lhs: simd_float3x3, rhs: float3x3) -> float3x3 {
        .init(lhs * rhs.columns.0, lhs * rhs.columns.1, lhs * rhs.columns.2)
    }


    /// - Returns: Product of *lhs* and *rhs* matrices.
    @inlinable
    public static func *(lhs: simd_float3x3, rhs: float4x3) -> float4x3 {
        .init(lhs * rhs.columns.0, lhs * rhs.columns.1, lhs * rhs.columns.2, lhs * rhs.columns.3)
    }


    /// Multiplies *lhs* by *rhs* matrix in place.
    @inlinable
    public static func *=(lhs: inout simd_float3x3, rhs: float3x3) { lhs = lhs * rhs }

}



// MARK: - simd_float4x3

/// A matrix with 3 rows and 4 columns.
public struct simd_float4x3 : Equatable, CustomDebugStringConvertible {

    public var columns: (simd_float3, simd_float3, simd_float3, simd_float3)



    /// Initializes a zero matrix.
    @inlinable
    public init() { columns = (.zero, .zero, .zero, .zero) }


    /// Columnwise initializer.
    @inlinable
    public init(columns: (simd_float3, simd_float3, simd_float3, simd_float3)) { self.columns = columns }


    /// Initialzes a matrix having *scalar* on main diagonal and zeros elsewhere.
    @inlinable
    public init(_ scalar: Float) {
        columns = (.init(scalar, 0.0, 0.0),
                   .init(0.0, scalar, 0.0),
                   .init(0.0, 0.0, scalar),
                   .zero)
    }


    /// Initialzes a matrix having given main *diagonal* and zeros elsewhere.
    @inlinable
    public init(diagonal: SIMD3<Float>) {
        columns = (.init(diagonal.x, 0.0, 0.0),
                   .init(0.0, diagonal.y, 0.0),
                   .init(0.0, 0.0, diagonal.z),
                   .zero)
    }


    /// Columnwise initializer.
    @inlinable
    public init(_ columns: [SIMD3<Float>]) { self.columns = (columns[0], columns[1], columns[2], columns[3]) }


    /// Rowwise initializer.
    @inlinable
    public init(rows: [SIMD4<Float>]) {
        columns = (.init(rows[0].x, rows[1].x, rows[2].x),
                   .init(rows[0].y, rows[1].y, rows[2].y),
                   .init(rows[0].z, rows[1].z, rows[2].z),
                   .init(rows[0].w, rows[1].w, rows[2].w))
    }


    /// Columnwise initializer.
    @inlinable
    public init(_ col0: SIMD3<Float>, _ col1: SIMD3<Float>, _ col2: SIMD3<Float>, _ col3: SIMD3<Float>) { self.columns = (col0, col1, col2, col3) }



    // MARK: : Equatable

    @inlinable
    public static func ==(lhs: simd_float4x3, rhs: simd_float4x3) -> Bool { lhs.columns == rhs.columns }



    // MARK: : CustomDebugStringConvertible

    @inlinable
    public var debugDescription: String { "simd_float4x3([[\(columns.0.x), \(columns.0.y), \(columns.0.z)], [\(columns.1.x), \(columns.1.y), \(columns.1.z)], [\(columns.2.x), \(columns.2.y), \(columns.2.z)], [\(columns.3.x), \(columns.3.y), \(columns.3.z)]])" }



    // MARK: Subscripts

    /// - Returns: The receiver's column at given index.
    @inlinable
    public subscript(column: Int) -> SIMD3<Float> {
        get {
            switch column {
            case 0:
                return columns.0
            case 1:
                return columns.1
            case 2:
                return columns.2
            case 3:
                return columns.3
            default:
                preconditionFailure("Failed to get column [\(column)] from \(Self.self). Index is out of range")
            }
        }
        set {
            switch column {
            case 0:
                columns.0 = newValue
            case 1:
                columns.1 = newValue
            case 2:
                columns.2 = newValue
            case 3:
                columns.3 = newValue
            default:
                preconditionFailure("Failed to set column [\(column)] in \(Self.self). Index is out of range")
            }
        }
    }


    /// - Returns: The receiver's element at given *column* and *row* indices.
    @inlinable
    public subscript(column: Int, row: Int) -> Float {
        get {
            switch column {
            case 0:
                return columns.0[row]
            case 1:
                return columns.1[row]
            case 2:
                return columns.2[row]
            case 3:
                return columns.3[row]
            default:
                preconditionFailure("Failed to get element [\(column), \(row)] from \(Self.self). An index is out of range")
            }
        }
        set {
            switch column {
            case 0:
                columns.0[row] = newValue
            case 1:
                columns.1[row] = newValue
            case 2:
                columns.2[row] = newValue
            case 3:
                columns.3[row] = newValue
            default:
                preconditionFailure("Failed to set element [\(column), \(row)] in \(Self.self). An index is out of range")
            }
        }
    }



    // MARK: Operations

    /// Transpose of the receiver.
    @inlinable
    public var transpose: float3x4 {
        .init(.init(columns.0.x, columns.1.x, columns.2.x, columns.3.x),
              .init(columns.0.y, columns.1.y, columns.2.y, columns.3.y),
              .init(columns.0.z, columns.1.z, columns.2.z, columns.3.z))
    }



    // MARK: Operators

    /// - Returns: Negated matrix.
    @inlinable
    public static prefix func -(rhs: simd_float4x3) -> simd_float4x3 { .init(-rhs.columns.0, -rhs.columns.1, -rhs.columns.2, -rhs.columns.3) }


    /// - Returns: Sum of given matrices.
    @inlinable
    public static func +(lhs: simd_float4x3, rhs: simd_float4x3) -> simd_float4x3 {
        .init(lhs.columns.0 + rhs.columns.0,
              lhs.columns.1 + rhs.columns.1,
              lhs.columns.2 + rhs.columns.2,
              lhs.columns.3 + rhs.columns.3)
    }


    /// - Returns: Subtraction of given matrices.
    @inlinable
    public static func -(lhs: simd_float4x3, rhs: simd_float4x3) -> simd_float4x3 {
        .init(lhs.columns.0 - rhs.columns.0,
              lhs.columns.1 - rhs.columns.1,
              lhs.columns.2 - rhs.columns.2,
              lhs.columns.3 - rhs.columns.3)
    }


    /// Adds *rhs* to *lhs* in place.
    @inlinable
    public static func +=(lhs: inout simd_float4x3, rhs: simd_float4x3) {
        lhs.columns.0 += rhs.columns.0
        lhs.columns.1 += rhs.columns.1
        lhs.columns.2 += rhs.columns.2
        lhs.columns.3 += rhs.columns.3
    }


    /// Subtracts *rhs* from *lhs* in place.
    @inlinable
    public static func -=(lhs: inout simd_float4x3, rhs: simd_float4x3) {
        lhs.columns.0 -= rhs.columns.0
        lhs.columns.1 -= rhs.columns.1
        lhs.columns.2 -= rhs.columns.2
        lhs.columns.3 -= rhs.columns.3
    }


    /// - Returns: Scaled *rhs* by *lhs*.
    @inlinable
    public static func *(lhs: Float, rhs: simd_float4x3) -> simd_float4x3 { .init(lhs * rhs.columns.0, lhs * rhs.columns.1, lhs * rhs.columns.2, lhs * rhs.columns.3) }


    /// - Returns: Scaled *lhs* by *rhs*.
    @inlinable
    public static func *(lhs: simd_float4x3, rhs: Float) -> simd_float4x3 { .init(rhs * lhs.columns.0, rhs * lhs.columns.1, rhs * lhs.columns.2, rhs * lhs.columns.3) }


    /// Scales *lhs* by *rhs* in place.
    @inlinable
    public static func *=(lhs: inout simd_float4x3, rhs: Float) {
        lhs.columns.0 *= rhs
        lhs.columns.1 *= rhs
        lhs.columns.2 *= rhs
        lhs.columns.3 *= rhs
    }


    /// - Returns: Product of *lhs* matrix and *rhs* vector as a single column matrix.
    @inlinable
    public static func *(lhs: simd_float4x3, rhs: SIMD4<Float>) -> SIMD3<Float> {
        .init(lhs.columns.0.x * rhs.x + lhs.columns.1.x * rhs.y + lhs.columns.2.x * rhs.z + lhs.columns.3.x * rhs.w,
              lhs.columns.0.y * rhs.x + lhs.columns.1.y * rhs.y + lhs.columns.2.y * rhs.z + lhs.columns.3.y * rhs.w,
              lhs.columns.0.z * rhs.x + lhs.columns.1.z * rhs.y + lhs.columns.2.z * rhs.z + lhs.columns.3.z * rhs.w)
    }


    /// - Returns: Product of *lhs* vector as a single row matrix and *rhs* matrix.
    @inlinable
    public static func *(lhs: SIMD3<Float>, rhs: simd_float4x3) -> SIMD4<Float> {
        .init(dot(lhs, rhs.columns.0),
              dot(lhs, rhs.columns.1),
              dot(lhs, rhs.columns.2),
              dot(lhs, rhs.columns.3))
    }


    /// - Returns: Product of *lhs* and *rhs* matrices.
    @inlinable
    public static func *(lhs: simd_float4x3, rhs: float2x4) -> float2x3 {
        .init(lhs * rhs.columns.0, lhs * rhs.columns.1)
    }


    /// - Returns: Product of *lhs* and *rhs* matrices.
    @inlinable
    public static func *(lhs: simd_float4x3, rhs: float3x4) -> float3x3 {
        .init(lhs * rhs.columns.0, lhs * rhs.columns.1, lhs * rhs.columns.2)
    }


    /// - Returns: Product of *lhs* and *rhs* matrices.
    @inlinable
    public static func *(lhs: simd_float4x3, rhs: float4x4) -> float4x3 {
        .init(lhs * rhs.columns.0, lhs * rhs.columns.1, lhs * rhs.columns.2, lhs * rhs.columns.3)
    }


    /// Multiplies *lhs* by *rhs* matrix in place.
    @inlinable
    public static func *=(lhs: inout simd_float4x3, rhs: float4x4) { lhs = lhs * rhs }

}



// MARK: - simd_float2x4

/// A matrix with 4 rows and 2 columns.
public struct simd_float2x4 : Equatable, CustomDebugStringConvertible {

    public var columns: (simd_float4, simd_float4)



    /// Initializes a zero matrix.
    @inlinable
    public init() { columns = (.zero, .zero) }


    /// Columnwise initializer.
    @inlinable
    public init(columns: (simd_float4, simd_float4)) { self.columns = columns }


    /// Initialzes a matrix having *scalar* on main diagonal and zeros elsewhere.
    @inlinable
    public init(_ scalar: Float) {
        columns = (.init(scalar, 0.0, 0.0, 0.0),
                   .init(0.0, scalar, 0.0, 0.0))
    }


    /// Initialzes a matrix having given main *diagonal* and zeros elsewhere.
    @inlinable
    public init(diagonal: SIMD2<Float>) {
        columns = (.init(diagonal.x, 0.0, 0.0, 0.0),
                   .init(0.0, diagonal.y, 0.0, 0.0))
    }


    /// Columnwise initializer.
    @inlinable
    public init(_ columns: [SIMD4<Float>]) { self.columns = (columns[0], columns[1]) }


    /// Rowwise initializer.
    @inlinable
    public init(rows: [SIMD2<Float>]) {
        columns = (.init(rows[0].x, rows[1].x, rows[2].x, rows[3].x),
                   .init(rows[0].y, rows[1].y, rows[2].y, rows[3].y))
    }


    /// Columnwise initializer.
    @inlinable
    public init(_ col0: SIMD4<Float>, _ col1: SIMD4<Float>) { self.columns = (col0, col1) }



    // MARK: : Equatable

    @inlinable
    public static func ==(lhs: simd_float2x4, rhs: simd_float2x4) -> Bool { lhs.columns == rhs.columns }



    // MARK: : CustomDebugStringConvertible

    @inlinable
    public var debugDescription: String { "simd_float2x4([[\(columns.0.x), \(columns.0.y), \(columns.0.z), \(columns.0.w)], [\(columns.1.x), \(columns.1.y), \(columns.1.z), \(columns.1.w)]])" }



    // MARK: Subscripts

    /// - Returns: The receiver's column at given index.
    @inlinable
    public subscript(column: Int) -> SIMD4<Float> {
        get {
            switch column {
            case 0:
                return columns.0
            case 1:
                return columns.1
            default:
                preconditionFailure("Failed to get column [\(column)] from \(Self.self). Index is out of range")
            }
        }
        set {
            switch column {
            case 0:
                columns.0 = newValue
            case 1:
                columns.1 = newValue
            default:
                preconditionFailure("Failed to set column [\(column)] in \(Self.self). Index is out of range")
            }
        }
    }


    /// - Returns: The receiver's element at given *column* and *row* indices.
    @inlinable
    public subscript(column: Int, row: Int) -> Float {
        get {
            switch column {
            case 0:
                return columns.0[row]
            case 1:
                return columns.1[row]
            default:
                preconditionFailure("Failed to get element [\(column), \(row)] from \(Self.self). An index is out of range")
            }
        }
        set {
            switch column {
            case 0:
                columns.0[row] = newValue
            case 1:
                columns.1[row] = newValue
            default:
                preconditionFailure("Failed to set element [\(column), \(row)] in \(Self.self). An index is out of range")
            }
        }
    }



    // MARK: Operations

    /// Transpose of the receiver.
    @inlinable
    public var transpose: float4x2 {
        .init(.init(columns.0.x, columns.1.x),
              .init(columns.0.y, columns.1.y),
              .init(columns.0.z, columns.1.z),
              .init(columns.0.w, columns.1.w))
    }



    // MARK: Operators

    /// - Returns: Negated matrix.
    @inlinable
    public static prefix func -(rhs: simd_float2x4) -> simd_float2x4 { .init(-rhs.columns.0, -rhs.columns.1) }


    /// - Returns: Sum of given matrices.
    @inlinable
    public static func +(lhs: simd_float2x4, rhs: simd_float2x4) -> simd_float2x4 {
        .init(lhs.columns.0 + rhs.columns.0,
              lhs.columns.1 + rhs.columns.1)
    }


    /// - Returns: Subtraction of given matrices.
    @inlinable
    public static func -(lhs: simd_float2x4, rhs: simd_float2x4) -> simd_float2x4 {
        .init(lhs.columns.0 - rhs.columns.0,
              lhs.columns.1 - rhs.columns.1)
    }


    /// Adds *rhs* to *lhs* in place.
    @inlinable
    public static func +=(lhs: inout simd_float2x4, rhs: simd_float2x4) {
        lhs.columns.0 += rhs.columns.0
        lhs.columns.1 += rhs.columns.1
    }


    /// Subtracts *rhs* from *lhs* in place.
    @inlinable
    public static func -=(lhs: inout simd_float2x4, rhs: simd_float2x4) {
        lhs.columns.0 -= rhs.columns.0
        lhs.columns.1 -= rhs.columns.1
    }


    /// - Returns: Scaled *rhs* by *lhs*.
    @inlinable
    public static func *(lhs: Float, rhs: simd_float2x4) -> simd_float2x4 { .init(lhs * rhs.columns.0, lhs * rhs.columns.1) }


    /// - Returns: Scaled *lhs* by *rhs*.
    @inlinable
    public static func *(lhs: simd_float2x4, rhs: Float) -> simd_float2x4 { .init(rhs * lhs.columns.0, rhs * lhs.columns.1) }


    /// Scales *lhs* by *rhs* in place.
    @inlinable
    public static func *=(lhs: inout simd_float2x4, rhs: Float) {
        lhs.columns.0 *= rhs
        lhs.columns.1 *= rhs
    }


    /// - Returns: Product of *lhs* matrix and *rhs* vector as a single column matrix.
    @inlinable
    public static func *(lhs: simd_float2x4, rhs: SIMD2<Float>) -> SIMD4<Float> {
        .init(lhs.columns.0.x * rhs.x + lhs.columns.1.x * rhs.y,
              lhs.columns.0.y * rhs.x + lhs.columns.1.y * rhs.y,
              lhs.columns.0.z * rhs.x + lhs.columns.1.z * rhs.y,
              lhs.columns.0.w * rhs.x + lhs.columns.1.w * rhs.y)
    }


    /// - Returns: Product of *lhs* vector as a single row matrix and *rhs* matrix.
    @inlinable
    public static func *(lhs: SIMD4<Float>, rhs: simd_float2x4) -> SIMD2<Float> {
        .init(dot(lhs, rhs.columns.0),
              dot(lhs, rhs.columns.1))
    }


    /// - Returns: Product of *lhs* and *rhs* matrices.
    @inlinable
    public static func *(lhs: simd_float2x4, rhs: float2x2) -> float2x4 {
        .init(lhs * rhs.columns.0, lhs * rhs.columns.1)
    }


    /// - Returns: Product of *lhs* and *rhs* matrices.
    @inlinable
    public static func *(lhs: simd_float2x4, rhs: float3x2) -> float3x4 {
        .init(lhs * rhs.columns.0, lhs * rhs.columns.1, lhs * rhs.columns.2)
    }


    /// - Returns: Product of *lhs* and *rhs* matrices.
    @inlinable
    public static func *(lhs: simd_float2x4, rhs: float4x2) -> float4x4 {
        .init(lhs * rhs.columns.0, lhs * rhs.columns.1, lhs * rhs.columns.2, lhs * rhs.columns.3)
    }


    /// Multiplies *lhs* by *rhs* matrix in place.
    @inlinable
    public static func *=(lhs: inout simd_float2x4, rhs: float2x2) { lhs = lhs * rhs }

}



// MARK: - simd_float3x4

/// A matrix with 4 rows and 3 columns.
public struct simd_float3x4 : Equatable, CustomDebugStringConvertible {

    public var columns: (simd_float4, simd_float4, simd_float4)



    /// Initializes a zero matrix.
    @inlinable
    public init() { columns = (.zero, .zero, .zero) }


    /// Columnwise initializer.
    @inlinable
    public init(columns: (simd_float4, simd_float4, simd_float4)) { self.columns = columns }


    /// Initialzes a matrix having *scalar* on main diagonal and zeros elsewhere.
    @inlinable
    public init(_ scalar: Float) {
        columns = (.init(scalar, 0.0, 0.0, 0.0),
                   .init(0.0, scalar, 0.0, 0.0),
                   .init(0.0, 0.0, scalar, 0.0))
    }


    /// Initialzes a matrix having given main *diagonal* and zeros elsewhere.
    @inlinable
    public init(diagonal: SIMD3<Float>) {
        columns = (.init(diagonal.x, 0.0, 0.0, 0.0),
                   .init(0.0, diagonal.y, 0.0, 0.0),
                   .init(0.0, 0.0, diagonal.z, 0.0))
    }


    /// Columnwise initializer.
    @inlinable
    public init(_ columns: [SIMD4<Float>]) { self.columns = (columns[0], columns[1], columns[2]) }


    /// Rowwise initializer.
    @inlinable
    public init(rows: [SIMD3<Float>]) {
        columns = (.init(rows[0].x, rows[1].x, rows[2].x, rows[3].x),
                   .init(rows[0].y, rows[1].y, rows[2].y, rows[3].y),
                   .init(rows[0].z, rows[1].z, rows[2].z, rows[3].z))
    }


    /// Columnwise initializer.
    @inlinable
    public init(_ col0: SIMD4<Float>, _ col1: SIMD4<Float>, _ col2: SIMD4<Float>) { self.columns = (col0, col1, col2) }



    // MARK: : Equatable

    @inlinable
    public static func ==(lhs: simd_float3x4, rhs: simd_float3x4) -> Bool { lhs.columns == rhs.columns }



    // MARK: : CustomDebugStringConvertible

    @inlinable
    public var debugDescription: String { "simd_float3x4([[\(columns.0.x), \(columns.0.y), \(columns.0.z), \(columns.0.w)], [\(columns.1.x), \(columns.1.y), \(columns.1.z), \(columns.1.w)], [\(columns.2.x), \(columns.2.y), \(columns.2.z), \(columns.2.w)]])" }



    // MARK: Subscripts

    /// - Returns: The receiver's column at given index.
    @inlinable
    public subscript(column: Int) -> SIMD4<Float> {
        get {
            switch column {
            case 0:
                return columns.0
            case 1:
                return columns.1
            case 2:
                return columns.2
            default:
                preconditionFailure("Failed to get column [\(column)] from \(Self.self). Index is out of range")
            }
        }
        set {
            switch column {
            case 0:
                columns.0 = newValue
            case 1:
                columns.1 = newValue
            case 2:
                columns.2 = newValue
            default:
                preconditionFailure("Failed to set column [\(column)] in \(Self.self). Index is out of range")
            }
        }
    }


    /// - Returns: The receiver's element at given *column* and *row* indices.
    @inlinable
    public subscript(column: Int, row: Int) -> Float {
        get {
            switch column {
            case 0:
                return columns.0[row]
            case 1:
                return columns.1[row]
            case 2:
                return columns.2[row]
            default:
                preconditionFailure("Failed to get element [\(column), \(row)] from \(Self.self). An index is out of range")
            }
        }
        set {
            switch column {
            case 0:
                columns.0[row] = newValue
            case 1:
                columns.1[row] = newValue
            case 2:
                columns.2[row] = newValue
            default:
                preconditionFailure("Failed to set element [\(column), \(row)] in \(Self.self). An index is out of range")
            }
        }
    }



    // MARK: Operations

    /// Transpose of the receiver.
    @inlinable
    public var transpose: float4x3 {
        .init(.init(columns.0.x, columns.1.x, columns.2.x),
              .init(columns.0.y, columns.1.y, columns.2.y),
              .init(columns.0.z, columns.1.z, columns.2.z),
              .init(columns.0.w, columns.1.w, columns.2.w))
    }



    // MARK: Operators

    /// - Returns: Negated matrix.
    @inlinable
    public static prefix func -(rhs: simd_float3x4) -> simd_float3x4 { .init(-rhs.columns.0, -rhs.columns.1, -rhs.columns.2) }


    /// - Returns: Sum of given matrices.
    @inlinable
    public static func +(lhs: simd_float3x4, rhs: simd_float3x4) -> simd_float3x4 {
        .init(lhs.columns.0 + rhs.columns.0,
              lhs.columns.1 + rhs.columns.1,
              lhs.columns.2 + rhs.columns.2)
    }


    /// - Returns: Subtraction of given matrices.
    @inlinable
    public static func -(lhs: simd_float3x4, rhs: simd_float3x4) -> simd_float3x4 {
        .init(lhs.columns.0 - rhs.columns.0,
              lhs.columns.1 - rhs.columns.1,
              lhs.columns.2 - rhs.columns.2)
    }


    /// Adds *rhs* to *lhs* in place.
    @inlinable
    public static func +=(lhs: inout simd_float3x4, rhs: simd_float3x4) {
        lhs.columns.0 += rhs.columns.0
        lhs.columns.1 += rhs.columns.1
        lhs.columns.2 += rhs.columns.2
    }


    /// Subtracts *rhs* from *lhs* in place.
    @inlinable
    public static func -=(lhs: inout simd_float3x4, rhs: simd_float3x4) {
        lhs.columns.0 -= rhs.columns.0
        lhs.columns.1 -= rhs.columns.1
        lhs.columns.2 -= rhs.columns.2
    }


    /// - Returns: Scaled *rhs* by *lhs*.
    @inlinable
    public static func *(lhs: Float, rhs: simd_float3x4) -> simd_float3x4 { .init(lhs * rhs.columns.0, lhs * rhs.columns.1, lhs * rhs.columns.2) }


    /// - Returns: Scaled *lhs* by *rhs*.
    @inlinable
    public static func *(lhs: simd_float3x4, rhs: Float) -> simd_float3x4 { .init(rhs * lhs.columns.0, rhs * lhs.columns.1, rhs * lhs.columns.2) }


    /// Scales *lhs* by *rhs* in place.
    @inlinable
    public static func *=(lhs: inout simd_float3x4, rhs: Float) {
        lhs.columns.0 *= rhs
        lhs.columns.1 *= rhs
        lhs.columns.2 *= rhs
    }


    /// - Returns: Product of *lhs* matrix and *rhs* vector as a single column matrix.
    @inlinable
    public static func *(lhs: simd_float3x4, rhs: SIMD3<Float>) -> SIMD4<Float> {
        .init(lhs.columns.0.x * rhs.x + lhs.columns.1.x * rhs.y + lhs.columns.2.x * rhs.z,
              lhs.columns.0.y * rhs.x + lhs.columns.1.y * rhs.y + lhs.columns.2.y * rhs.z,
              lhs.columns.0.z * rhs.x + lhs.columns.1.z * rhs.y + lhs.columns.2.z * rhs.z,
              lhs.columns.0.w * rhs.x + lhs.columns.1.w * rhs.y + lhs.columns.2.w * rhs.z)
    }


    /// - Returns: Product of *lhs* vector as a single row matrix and *rhs* matrix.
    @inlinable
    public static func *(lhs: SIMD4<Float>, rhs: simd_float3x4) -> SIMD3<Float> {
        .init(dot(lhs, rhs.columns.0),
              dot(lhs, rhs.columns.1),
              dot(lhs, rhs.columns.2))
    }


    /// - Returns: Product of *lhs* and *rhs* matrices.
    @inlinable
    public static func *(lhs: simd_float3x4, rhs: float2x3) -> float2x4 {
        .init(lhs * rhs.columns.0, lhs * rhs.columns.1)
    }


    /// - Returns: Product of *lhs* and *rhs* matrices.
    @inlinable
    public static func *(lhs: simd_float3x4, rhs: float3x3) -> float3x4 {
        .init(lhs * rhs.columns.0, lhs * rhs.columns.1, lhs * rhs.columns.2)
    }


    /// - Returns: Product of *lhs* and *rhs* matrices.
    @inlinable
    public static func *(lhs: simd_float3x4, rhs: float4x3) -> float4x4 {
        .init(lhs * rhs.columns.0, lhs * rhs.columns.1, lhs * rhs.columns.2, lhs * rhs.columns.3)
    }


    /// Multiplies *lhs* by *rhs* matrix in place.
    @inlinable
    public static func *=(lhs: inout simd_float3x4, rhs: float3x3) { lhs = lhs * rhs }

}



// MARK: - simd_float4x4

/// A matrix with 4 rows and 4 columns.
public struct simd_float4x4 : Equatable, CustomDebugStringConvertible {

    public var columns: (simd_float4, simd_float4, simd_float4, simd_float4)



    /// Initializes a zero matrix.
    @inlinable
    public init() { columns = (.zero, .zero, .zero, .zero) }


    /// Columnwise initializer.
    @inlinable
    public init(columns: (simd_float4, simd_float4, simd_float4, simd_float4)) { self.columns = columns }


    /// Initialzes a matrix having *scalar* on main diagonal and zeros elsewhere.
    @inlinable
    public init(_ scalar: Float) {
        columns = (.init(scalar, 0.0, 0.0, 0.0),
                   .init(0.0, scalar, 0.0, 0.0),
                   .init(0.0, 0.0, scalar, 0.0),
                   .init(0.0, 0.0, 0.0, scalar))
    }


    /// Initialzes a matrix having given main *diagonal* and zeros elsewhere.
    @inlinable
    public init(diagonal: SIMD4<Float>) {
        columns = (.init(diagonal.x, 0.0, 0.0, 0.0),
                   .init(0.0, diagonal.y, 0.0, 0.0),
                   .init(0.0, 0.0, diagonal.z, 0.0),
                   .init(0.0, 0.0, 0.0, diagonal.w))
    }


    /// Columnwise initializer.
    @inlinable
    public init(_ columns: [SIMD4<Float>]) { self.columns = (columns[0], columns[1], columns[2], columns[3]) }


    /// Rowwise initializer.
    @inlinable
    public init(rows: [SIMD4<Float>]) {
        columns = (.init(rows[0].x, rows[1].x, rows[2].x, rows[3].x),
                   .init(rows[0].y, rows[1].y, rows[2].y, rows[3].y),
                   .init(rows[0].z, rows[1].z, rows[2].z, rows[3].z),
                   .init(rows[0].w, rows[1].w, rows[2].w, rows[3].w))
    }


    /// Columnwise initializer.
    @inlinable
    public init(_ col0: SIMD4<Float>, _ col1: SIMD4<Float>, _ col2: SIMD4<Float>, _ col3: SIMD4<Float>) { self.columns = (col0, col1, col2, col3) }


    /// Initializes a rotation matrix by given *quaternion*.
    @inlinable
    public init(_ quaternion: simd_quatf) {
        columns = (.init(1.0 - 2.0 * (quaternion.vector.y * quaternion.vector.y + quaternion.vector.z * quaternion.vector.z),
                               2.0 * (quaternion.vector.x * quaternion.vector.y + quaternion.vector.z * quaternion.vector.w),
                               2.0 * (quaternion.vector.x * quaternion.vector.z - quaternion.vector.y * quaternion.vector.w),
                         0.0),
                   .init(      2.0 * (quaternion.vector.x * quaternion.vector.y - quaternion.vector.z * quaternion.vector.w),
                         1.0 - 2.0 * (quaternion.vector.x * quaternion.vector.x + quaternion.vector.z * quaternion.vector.z),
                               2.0 * (quaternion.vector.y * quaternion.vector.z + quaternion.vector.x * quaternion.vector.w),
                         0.0),
                   .init(      2.0 * (quaternion.vector.x * quaternion.vector.z + quaternion.vector.y * quaternion.vector.w),
                               2.0 * (quaternion.vector.y * quaternion.vector.z - quaternion.vector.x * quaternion.vector.w),
                         1.0 - 2.0 * (quaternion.vector.x * quaternion.vector.x + quaternion.vector.y * quaternion.vector.y),
                         0.0),
                   [ 0.0, 0.0, 0.0, 1.0 ])
    }



    // MARK: : Equatable

    @inlinable
    public static func ==(lhs: simd_float4x4, rhs: simd_float4x4) -> Bool { lhs.columns == rhs.columns }



    // MARK: : CustomDebugStringConvertible

    @inlinable
    public var debugDescription: String { "simd_float4x4([[\(columns.0.x), \(columns.0.y), \(columns.0.z), \(columns.0.w)], [\(columns.1.x), \(columns.1.y), \(columns.1.z), \(columns.1.w)], [\(columns.2.x), \(columns.2.y), \(columns.2.z), \(columns.2.w)], [\(columns.3.x), \(columns.3.y), \(columns.3.z), \(columns.3.w)]])" }



    // MARK: Subscripts

    /// - Returns: The receiver's column at given index.
    @inlinable
    public subscript(column: Int) -> SIMD4<Float> {
        get {
            switch column {
            case 0:
                return columns.0
            case 1:
                return columns.1
            case 2:
                return columns.2
            case 3:
                return columns.3
            default:
                preconditionFailure("Failed to get column [\(column)] from \(Self.self). Index is out of range")
            }
        }
        set {
            switch column {
            case 0:
                columns.0 = newValue
            case 1:
                columns.1 = newValue
            case 2:
                columns.2 = newValue
            case 3:
                columns.3 = newValue
            default:
                preconditionFailure("Failed to set column [\(column)] in \(Self.self). Index is out of range")
            }
        }
    }


    /// - Returns: The receiver's element at given *column* and *row* indices.
    @inlinable
    public subscript(column: Int, row: Int) -> Float {
        get {
            switch column {
            case 0:
                return columns.0[row]
            case 1:
                return columns.1[row]
            case 2:
                return columns.2[row]
            case 3:
                return columns.3[row]
            default:
                preconditionFailure("Failed to get element [\(column), \(row)] from \(Self.self). An index is out of range")
            }
        }
        set {
            switch column {
            case 0:
                columns.0[row] = newValue
            case 1:
                columns.1[row] = newValue
            case 2:
                columns.2[row] = newValue
            case 3:
                columns.3[row] = newValue
            default:
                preconditionFailure("Failed to set element [\(column), \(row)] in \(Self.self). An index is out of range")
            }
        }
    }



    // MARK: Operations

    /// Transpose of the receiver.
    @inlinable
    public var transpose: float4x4 {
        .init(.init(columns.0.x, columns.1.x, columns.2.x, columns.3.x),
              .init(columns.0.y, columns.1.y, columns.2.y, columns.3.y),
              .init(columns.0.z, columns.1.z, columns.2.z, columns.3.z),
              .init(columns.0.w, columns.1.w, columns.2.w, columns.3.w))
    }

    /// Column at index 0 of the inverse matrix scaled by the determinant.
    @inline(__always)
    @usableFromInline
    internal var inverseColumn0: simd_float4 {
        .init(columns.2.y * columns.3.z * columns.1.w - columns.3.y * columns.2.z * columns.1.w + columns.3.y * columns.1.z * columns.2.w - columns.1.y * columns.3.z * columns.2.w - columns.2.y * columns.1.z * columns.3.w + columns.1.y * columns.2.z * columns.3.w,
              columns.3.y * columns.2.z * columns.0.w - columns.2.y * columns.3.z * columns.0.w - columns.3.y * columns.0.z * columns.2.w + columns.0.y * columns.3.z * columns.2.w + columns.2.y * columns.0.z * columns.3.w - columns.0.y * columns.2.z * columns.3.w,
              columns.1.y * columns.3.z * columns.0.w - columns.3.y * columns.1.z * columns.0.w + columns.3.y * columns.0.z * columns.1.w - columns.0.y * columns.3.z * columns.1.w - columns.1.y * columns.0.z * columns.3.w + columns.0.y * columns.1.z * columns.3.w,
              columns.2.y * columns.1.z * columns.0.w - columns.1.y * columns.2.z * columns.0.w - columns.2.y * columns.0.z * columns.1.w + columns.0.y * columns.2.z * columns.1.w + columns.1.y * columns.0.z * columns.2.w - columns.0.y * columns.1.z * columns.2.w)
    }
    /// Column at index 1 of the inverse matrix scaled by the determinant.
    @inline(__always)
    @usableFromInline
    internal var inverseColumn1: simd_float4 {
        .init(columns.3.x * columns.2.z * columns.1.w - columns.2.x * columns.3.z * columns.1.w - columns.3.x * columns.1.z * columns.2.w + columns.1.x * columns.3.z * columns.2.w + columns.2.x * columns.1.z * columns.3.w - columns.1.x * columns.2.z * columns.3.w,
              columns.2.x * columns.3.z * columns.0.w - columns.3.x * columns.2.z * columns.0.w + columns.3.x * columns.0.z * columns.2.w - columns.0.x * columns.3.z * columns.2.w - columns.2.x * columns.0.z * columns.3.w + columns.0.x * columns.2.z * columns.3.w,
              columns.3.x * columns.1.z * columns.0.w - columns.1.x * columns.3.z * columns.0.w - columns.3.x * columns.0.z * columns.1.w + columns.0.x * columns.3.z * columns.1.w + columns.1.x * columns.0.z * columns.3.w - columns.0.x * columns.1.z * columns.3.w,
              columns.1.x * columns.2.z * columns.0.w - columns.2.x * columns.1.z * columns.0.w + columns.2.x * columns.0.z * columns.1.w - columns.0.x * columns.2.z * columns.1.w - columns.1.x * columns.0.z * columns.2.w + columns.0.x * columns.1.z * columns.2.w)
    }
    /// Column at index 2 of the inverse matrix scaled by the determinant.
    @inline(__always)
    @usableFromInline
    internal var inverseColumn2: simd_float4 {
        .init(columns.2.x * columns.3.y * columns.1.w - columns.3.x * columns.2.y * columns.1.w + columns.3.x * columns.1.y * columns.2.w - columns.1.x * columns.3.y * columns.2.w - columns.2.x * columns.1.y * columns.3.w + columns.1.x * columns.2.y * columns.3.w,
              columns.3.x * columns.2.y * columns.0.w - columns.2.x * columns.3.y * columns.0.w - columns.3.x * columns.0.y * columns.2.w + columns.0.x * columns.3.y * columns.2.w + columns.2.x * columns.0.y * columns.3.w - columns.0.x * columns.2.y * columns.3.w,
              columns.1.x * columns.3.y * columns.0.w - columns.3.x * columns.1.y * columns.0.w + columns.3.x * columns.0.y * columns.1.w - columns.0.x * columns.3.y * columns.1.w - columns.1.x * columns.0.y * columns.3.w + columns.0.x * columns.1.y * columns.3.w,
              columns.2.x * columns.1.y * columns.0.w - columns.1.x * columns.2.y * columns.0.w - columns.2.x * columns.0.y * columns.1.w + columns.0.x * columns.2.y * columns.1.w + columns.1.x * columns.0.y * columns.2.w - columns.0.x * columns.1.y * columns.2.w)
    }
    /// Column at index 3 of the inverse matrix scaled by the determinant.
    @inline(__always)
    @usableFromInline
    internal var inverseColumn3: simd_float4 {
        .init(columns.3.x * columns.2.y * columns.1.z - columns.2.x * columns.3.y * columns.1.z - columns.3.x * columns.1.y * columns.2.z + columns.1.x * columns.3.y * columns.2.z + columns.2.x * columns.1.y * columns.3.z - columns.1.x * columns.2.y * columns.3.z,
              columns.2.x * columns.3.y * columns.0.z - columns.3.x * columns.2.y * columns.0.z + columns.3.x * columns.0.y * columns.2.z - columns.0.x * columns.3.y * columns.2.z - columns.2.x * columns.0.y * columns.3.z + columns.0.x * columns.2.y * columns.3.z,
              columns.3.x * columns.1.y * columns.0.z - columns.1.x * columns.3.y * columns.0.z - columns.3.x * columns.0.y * columns.1.z + columns.0.x * columns.3.y * columns.1.z + columns.1.x * columns.0.y * columns.3.z - columns.0.x * columns.1.y * columns.3.z,
              columns.1.x * columns.2.y * columns.0.z - columns.2.x * columns.1.y * columns.0.z + columns.2.x * columns.0.y * columns.1.z - columns.0.x * columns.2.y * columns.1.z - columns.1.x * columns.0.y * columns.2.z + columns.0.x * columns.1.y * columns.2.z)
    }

    /// Inverse of the receiver. The resulting matrix is undefined when the inverse doesn't exist.
    @available(macOS 10.10, iOS 8.0, tvOS 10.0, watchOS 3.0, *)
    @inlinable
    public var inverse: simd_float4x4 {
        var m = simd_float4x4(inverseColumn0, inverseColumn1, inverseColumn2, inverseColumn3)
        m *= (1.0 as Float) / (columns.0.x * m.columns.0.x + columns.1.x * m.columns.0.y + columns.2.x * m.columns.0.z + columns.3.x * m.columns.0.w)
        return m
    }

    /// Determinant of the receiver.
    @inlinable
    public var determinant: Float {
        let c: simd_float4 = columns.0 * ((KvShiftLeft1(columns.1) * ((KvShiftLeft2(columns.2) * KvShiftLeft3(columns.3)) as simd_float4 - (KvShiftLeft3(columns.2) * KvShiftLeft2(columns.3)) as simd_float4)) as simd_float4 +
                                          (KvShiftLeft2(columns.1) * ((KvShiftLeft3(columns.2) * KvShiftLeft1(columns.3)) as simd_float4 - (KvShiftLeft1(columns.2) * KvShiftLeft3(columns.3)) as simd_float4)) as simd_float4 +
                                          (KvShiftLeft3(columns.1) * ((KvShiftLeft1(columns.2) * KvShiftLeft2(columns.3)) as simd_float4 - (KvShiftLeft2(columns.2) * KvShiftLeft1(columns.3)) as simd_float4)) as simd_float4)
        return simd_reduce_add(c.evenHalf - c.oddHalf)
    }



    // MARK: Operators

    /// - Returns: Negated matrix.
    @inlinable
    public static prefix func -(rhs: simd_float4x4) -> simd_float4x4 { .init(-rhs.columns.0, -rhs.columns.1, -rhs.columns.2, -rhs.columns.3) }


    /// - Returns: Sum of given matrices.
    @inlinable
    public static func +(lhs: simd_float4x4, rhs: simd_float4x4) -> simd_float4x4 {
        .init(lhs.columns.0 + rhs.columns.0,
              lhs.columns.1 + rhs.columns.1,
              lhs.columns.2 + rhs.columns.2,
              lhs.columns.3 + rhs.columns.3)
    }


    /// - Returns: Subtraction of given matrices.
    @inlinable
    public static func -(lhs: simd_float4x4, rhs: simd_float4x4) -> simd_float4x4 {
        .init(lhs.columns.0 - rhs.columns.0,
              lhs.columns.1 - rhs.columns.1,
              lhs.columns.2 - rhs.columns.2,
              lhs.columns.3 - rhs.columns.3)
    }


    /// Adds *rhs* to *lhs* in place.
    @inlinable
    public static func +=(lhs: inout simd_float4x4, rhs: simd_float4x4) {
        lhs.columns.0 += rhs.columns.0
        lhs.columns.1 += rhs.columns.1
        lhs.columns.2 += rhs.columns.2
        lhs.columns.3 += rhs.columns.3
    }


    /// Subtracts *rhs* from *lhs* in place.
    @inlinable
    public static func -=(lhs: inout simd_float4x4, rhs: simd_float4x4) {
        lhs.columns.0 -= rhs.columns.0
        lhs.columns.1 -= rhs.columns.1
        lhs.columns.2 -= rhs.columns.2
        lhs.columns.3 -= rhs.columns.3
    }


    /// - Returns: Scaled *rhs* by *lhs*.
    @inlinable
    public static func *(lhs: Float, rhs: simd_float4x4) -> simd_float4x4 { .init(lhs * rhs.columns.0, lhs * rhs.columns.1, lhs * rhs.columns.2, lhs * rhs.columns.3) }


    /// - Returns: Scaled *lhs* by *rhs*.
    @inlinable
    public static func *(lhs: simd_float4x4, rhs: Float) -> simd_float4x4 { .init(rhs * lhs.columns.0, rhs * lhs.columns.1, rhs * lhs.columns.2, rhs * lhs.columns.3) }


    /// Scales *lhs* by *rhs* in place.
    @inlinable
    public static func *=(lhs: inout simd_float4x4, rhs: Float) {
        lhs.columns.0 *= rhs
        lhs.columns.1 *= rhs
        lhs.columns.2 *= rhs
        lhs.columns.3 *= rhs
    }


    /// - Returns: Product of *lhs* matrix and *rhs* vector as a single column matrix.
    @inlinable
    public static func *(lhs: simd_float4x4, rhs: SIMD4<Float>) -> SIMD4<Float> {
        .init(lhs.columns.0.x * rhs.x + lhs.columns.1.x * rhs.y + lhs.columns.2.x * rhs.z + lhs.columns.3.x * rhs.w,
              lhs.columns.0.y * rhs.x + lhs.columns.1.y * rhs.y + lhs.columns.2.y * rhs.z + lhs.columns.3.y * rhs.w,
              lhs.columns.0.z * rhs.x + lhs.columns.1.z * rhs.y + lhs.columns.2.z * rhs.z + lhs.columns.3.z * rhs.w,
              lhs.columns.0.w * rhs.x + lhs.columns.1.w * rhs.y + lhs.columns.2.w * rhs.z + lhs.columns.3.w * rhs.w)
    }


    /// - Returns: Product of *lhs* vector as a single row matrix and *rhs* matrix.
    @inlinable
    public static func *(lhs: SIMD4<Float>, rhs: simd_float4x4) -> SIMD4<Float> {
        .init(dot(lhs, rhs.columns.0),
              dot(lhs, rhs.columns.1),
              dot(lhs, rhs.columns.2),
              dot(lhs, rhs.columns.3))
    }


    /// - Returns: Product of *lhs* and *rhs* matrices.
    @inlinable
    public static func *(lhs: simd_float4x4, rhs: float2x4) -> float2x4 {
        .init(lhs * rhs.columns.0, lhs * rhs.columns.1)
    }


    /// - Returns: Product of *lhs* and *rhs* matrices.
    @inlinable
    public static func *(lhs: simd_float4x4, rhs: float3x4) -> float3x4 {
        .init(lhs * rhs.columns.0, lhs * rhs.columns.1, lhs * rhs.columns.2)
    }


    /// - Returns: Product of *lhs* and *rhs* matrices.
    @inlinable
    public static func *(lhs: simd_float4x4, rhs: float4x4) -> float4x4 {
        .init(lhs * rhs.columns.0, lhs * rhs.columns.1, lhs * rhs.columns.2, lhs * rhs.columns.3)
    }


    /// Multiplies *lhs* by *rhs* matrix in place.
    @inlinable
    public static func *=(lhs: inout simd_float4x4, rhs: float4x4) { lhs = lhs * rhs }

}



// MARK: - simd_double2x2

/// A matrix with 2 rows and 2 columns.
public struct simd_double2x2 : Equatable, CustomDebugStringConvertible {

    public var columns: (simd_double2, simd_double2)



    /// Initializes a zero matrix.
    @inlinable
    public init() { columns = (.zero, .zero) }


    /// Columnwise initializer.
    @inlinable
    public init(columns: (simd_double2, simd_double2)) { self.columns = columns }


    /// Initialzes a matrix having *scalar* on main diagonal and zeros elsewhere.
    @inlinable
    public init(_ scalar: Double) {
        columns = (.init(scalar, 0.0),
                   .init(0.0, scalar))
    }


    /// Initialzes a matrix having given main *diagonal* and zeros elsewhere.
    @inlinable
    public init(diagonal: SIMD2<Double>) {
        columns = (.init(diagonal.x, 0.0),
                   .init(0.0, diagonal.y))
    }


    /// Columnwise initializer.
    @inlinable
    public init(_ columns: [SIMD2<Double>]) { self.columns = (columns[0], columns[1]) }


    /// Rowwise initializer.
    @inlinable
    public init(rows: [SIMD2<Double>]) {
        columns = (.init(rows[0].x, rows[1].x),
                   .init(rows[0].y, rows[1].y))
    }


    /// Columnwise initializer.
    @inlinable
    public init(_ col0: SIMD2<Double>, _ col1: SIMD2<Double>) { self.columns = (col0, col1) }



    // MARK: : Equatable

    @inlinable
    public static func ==(lhs: simd_double2x2, rhs: simd_double2x2) -> Bool { lhs.columns == rhs.columns }



    // MARK: : CustomDebugStringConvertible

    @inlinable
    public var debugDescription: String { "simd_double2x2([[\(columns.0.x), \(columns.0.y)], [\(columns.1.x), \(columns.1.y)]])" }



    // MARK: Subscripts

    /// - Returns: The receiver's column at given index.
    @inlinable
    public subscript(column: Int) -> SIMD2<Double> {
        get {
            switch column {
            case 0:
                return columns.0
            case 1:
                return columns.1
            default:
                preconditionFailure("Failed to get column [\(column)] from \(Self.self). Index is out of range")
            }
        }
        set {
            switch column {
            case 0:
                columns.0 = newValue
            case 1:
                columns.1 = newValue
            default:
                preconditionFailure("Failed to set column [\(column)] in \(Self.self). Index is out of range")
            }
        }
    }


    /// - Returns: The receiver's element at given *column* and *row* indices.
    @inlinable
    public subscript(column: Int, row: Int) -> Double {
        get {
            switch column {
            case 0:
                return columns.0[row]
            case 1:
                return columns.1[row]
            default:
                preconditionFailure("Failed to get element [\(column), \(row)] from \(Self.self). An index is out of range")
            }
        }
        set {
            switch column {
            case 0:
                columns.0[row] = newValue
            case 1:
                columns.1[row] = newValue
            default:
                preconditionFailure("Failed to set element [\(column), \(row)] in \(Self.self). An index is out of range")
            }
        }
    }



    // MARK: Operations

    /// Transpose of the receiver.
    @inlinable
    public var transpose: double2x2 {
        .init(.init(columns.0.x, columns.1.x),
              .init(columns.0.y, columns.1.y))
    }

    /// Inverse of the receiver. The resulting matrix is undefined when the inverse doesn't exist.
    @available(macOS 10.10, iOS 8.0, tvOS 10.0, watchOS 3.0, *)
    @inlinable
    public var inverse: simd_double2x2 {
        var m = simd_double2x2(.init( columns.1.y, -columns.0.y),
                               .init(-columns.1.x,  columns.0.x))
        m *= 1.0 / determinant
        return m
    }

    /// Determinant of the receiver.
    @inlinable
    public var determinant: Double { columns.0.x * columns.1.y - columns.0.y * columns.1.x }



    // MARK: Operators

    /// - Returns: Negated matrix.
    @inlinable
    public static prefix func -(rhs: simd_double2x2) -> simd_double2x2 { .init(-rhs.columns.0, -rhs.columns.1) }


    /// - Returns: Sum of given matrices.
    @inlinable
    public static func +(lhs: simd_double2x2, rhs: simd_double2x2) -> simd_double2x2 {
        .init(lhs.columns.0 + rhs.columns.0,
              lhs.columns.1 + rhs.columns.1)
    }


    /// - Returns: Subtraction of given matrices.
    @inlinable
    public static func -(lhs: simd_double2x2, rhs: simd_double2x2) -> simd_double2x2 {
        .init(lhs.columns.0 - rhs.columns.0,
              lhs.columns.1 - rhs.columns.1)
    }


    /// Adds *rhs* to *lhs* in place.
    @inlinable
    public static func +=(lhs: inout simd_double2x2, rhs: simd_double2x2) {
        lhs.columns.0 += rhs.columns.0
        lhs.columns.1 += rhs.columns.1
    }


    /// Subtracts *rhs* from *lhs* in place.
    @inlinable
    public static func -=(lhs: inout simd_double2x2, rhs: simd_double2x2) {
        lhs.columns.0 -= rhs.columns.0
        lhs.columns.1 -= rhs.columns.1
    }


    /// - Returns: Scaled *rhs* by *lhs*.
    @inlinable
    public static func *(lhs: Double, rhs: simd_double2x2) -> simd_double2x2 { .init(lhs * rhs.columns.0, lhs * rhs.columns.1) }


    /// - Returns: Scaled *lhs* by *rhs*.
    @inlinable
    public static func *(lhs: simd_double2x2, rhs: Double) -> simd_double2x2 { .init(rhs * lhs.columns.0, rhs * lhs.columns.1) }


    /// Scales *lhs* by *rhs* in place.
    @inlinable
    public static func *=(lhs: inout simd_double2x2, rhs: Double) {
        lhs.columns.0 *= rhs
        lhs.columns.1 *= rhs
    }


    /// - Returns: Product of *lhs* matrix and *rhs* vector as a single column matrix.
    @inlinable
    public static func *(lhs: simd_double2x2, rhs: SIMD2<Double>) -> SIMD2<Double> {
        .init(lhs.columns.0.x * rhs.x + lhs.columns.1.x * rhs.y,
              lhs.columns.0.y * rhs.x + lhs.columns.1.y * rhs.y)
    }


    /// - Returns: Product of *lhs* vector as a single row matrix and *rhs* matrix.
    @inlinable
    public static func *(lhs: SIMD2<Double>, rhs: simd_double2x2) -> SIMD2<Double> {
        .init(dot(lhs, rhs.columns.0),
              dot(lhs, rhs.columns.1))
    }


    /// - Returns: Product of *lhs* and *rhs* matrices.
    @inlinable
    public static func *(lhs: simd_double2x2, rhs: double2x2) -> double2x2 {
        .init(lhs * rhs.columns.0, lhs * rhs.columns.1)
    }


    /// - Returns: Product of *lhs* and *rhs* matrices.
    @inlinable
    public static func *(lhs: simd_double2x2, rhs: double3x2) -> double3x2 {
        .init(lhs * rhs.columns.0, lhs * rhs.columns.1, lhs * rhs.columns.2)
    }


    /// - Returns: Product of *lhs* and *rhs* matrices.
    @inlinable
    public static func *(lhs: simd_double2x2, rhs: double4x2) -> double4x2 {
        .init(lhs * rhs.columns.0, lhs * rhs.columns.1, lhs * rhs.columns.2, lhs * rhs.columns.3)
    }


    /// Multiplies *lhs* by *rhs* matrix in place.
    @inlinable
    public static func *=(lhs: inout simd_double2x2, rhs: double2x2) { lhs = lhs * rhs }

}



// MARK: - simd_double3x2

/// A matrix with 2 rows and 3 columns.
public struct simd_double3x2 : Equatable, CustomDebugStringConvertible {

    public var columns: (simd_double2, simd_double2, simd_double2)



    /// Initializes a zero matrix.
    @inlinable
    public init() { columns = (.zero, .zero, .zero) }


    /// Columnwise initializer.
    @inlinable
    public init(columns: (simd_double2, simd_double2, simd_double2)) { self.columns = columns }


    /// Initialzes a matrix having *scalar* on main diagonal and zeros elsewhere.
    @inlinable
    public init(_ scalar: Double) {
        columns = (.init(scalar, 0.0),
                   .init(0.0, scalar),
                   .zero)
    }


    /// Initialzes a matrix having given main *diagonal* and zeros elsewhere.
    @inlinable
    public init(diagonal: SIMD2<Double>) {
        columns = (.init(diagonal.x, 0.0),
                   .init(0.0, diagonal.y),
                   .zero)
    }


    /// Columnwise initializer.
    @inlinable
    public init(_ columns: [SIMD2<Double>]) { self.columns = (columns[0], columns[1], columns[2]) }


    /// Rowwise initializer.
    @inlinable
    public init(rows: [SIMD3<Double>]) {
        columns = (.init(rows[0].x, rows[1].x),
                   .init(rows[0].y, rows[1].y),
                   .init(rows[0].z, rows[1].z))
    }


    /// Columnwise initializer.
    @inlinable
    public init(_ col0: SIMD2<Double>, _ col1: SIMD2<Double>, _ col2: SIMD2<Double>) { self.columns = (col0, col1, col2) }



    // MARK: : Equatable

    @inlinable
    public static func ==(lhs: simd_double3x2, rhs: simd_double3x2) -> Bool { lhs.columns == rhs.columns }



    // MARK: : CustomDebugStringConvertible

    @inlinable
    public var debugDescription: String { "simd_double3x2([[\(columns.0.x), \(columns.0.y)], [\(columns.1.x), \(columns.1.y)], [\(columns.2.x), \(columns.2.y)]])" }



    // MARK: Subscripts

    /// - Returns: The receiver's column at given index.
    @inlinable
    public subscript(column: Int) -> SIMD2<Double> {
        get {
            switch column {
            case 0:
                return columns.0
            case 1:
                return columns.1
            case 2:
                return columns.2
            default:
                preconditionFailure("Failed to get column [\(column)] from \(Self.self). Index is out of range")
            }
        }
        set {
            switch column {
            case 0:
                columns.0 = newValue
            case 1:
                columns.1 = newValue
            case 2:
                columns.2 = newValue
            default:
                preconditionFailure("Failed to set column [\(column)] in \(Self.self). Index is out of range")
            }
        }
    }


    /// - Returns: The receiver's element at given *column* and *row* indices.
    @inlinable
    public subscript(column: Int, row: Int) -> Double {
        get {
            switch column {
            case 0:
                return columns.0[row]
            case 1:
                return columns.1[row]
            case 2:
                return columns.2[row]
            default:
                preconditionFailure("Failed to get element [\(column), \(row)] from \(Self.self). An index is out of range")
            }
        }
        set {
            switch column {
            case 0:
                columns.0[row] = newValue
            case 1:
                columns.1[row] = newValue
            case 2:
                columns.2[row] = newValue
            default:
                preconditionFailure("Failed to set element [\(column), \(row)] in \(Self.self). An index is out of range")
            }
        }
    }



    // MARK: Operations

    /// Transpose of the receiver.
    @inlinable
    public var transpose: double2x3 {
        .init(.init(columns.0.x, columns.1.x, columns.2.x),
              .init(columns.0.y, columns.1.y, columns.2.y))
    }



    // MARK: Operators

    /// - Returns: Negated matrix.
    @inlinable
    public static prefix func -(rhs: simd_double3x2) -> simd_double3x2 { .init(-rhs.columns.0, -rhs.columns.1, -rhs.columns.2) }


    /// - Returns: Sum of given matrices.
    @inlinable
    public static func +(lhs: simd_double3x2, rhs: simd_double3x2) -> simd_double3x2 {
        .init(lhs.columns.0 + rhs.columns.0,
              lhs.columns.1 + rhs.columns.1,
              lhs.columns.2 + rhs.columns.2)
    }


    /// - Returns: Subtraction of given matrices.
    @inlinable
    public static func -(lhs: simd_double3x2, rhs: simd_double3x2) -> simd_double3x2 {
        .init(lhs.columns.0 - rhs.columns.0,
              lhs.columns.1 - rhs.columns.1,
              lhs.columns.2 - rhs.columns.2)
    }


    /// Adds *rhs* to *lhs* in place.
    @inlinable
    public static func +=(lhs: inout simd_double3x2, rhs: simd_double3x2) {
        lhs.columns.0 += rhs.columns.0
        lhs.columns.1 += rhs.columns.1
        lhs.columns.2 += rhs.columns.2
    }


    /// Subtracts *rhs* from *lhs* in place.
    @inlinable
    public static func -=(lhs: inout simd_double3x2, rhs: simd_double3x2) {
        lhs.columns.0 -= rhs.columns.0
        lhs.columns.1 -= rhs.columns.1
        lhs.columns.2 -= rhs.columns.2
    }


    /// - Returns: Scaled *rhs* by *lhs*.
    @inlinable
    public static func *(lhs: Double, rhs: simd_double3x2) -> simd_double3x2 { .init(lhs * rhs.columns.0, lhs * rhs.columns.1, lhs * rhs.columns.2) }


    /// - Returns: Scaled *lhs* by *rhs*.
    @inlinable
    public static func *(lhs: simd_double3x2, rhs: Double) -> simd_double3x2 { .init(rhs * lhs.columns.0, rhs * lhs.columns.1, rhs * lhs.columns.2) }


    /// Scales *lhs* by *rhs* in place.
    @inlinable
    public static func *=(lhs: inout simd_double3x2, rhs: Double) {
        lhs.columns.0 *= rhs
        lhs.columns.1 *= rhs
        lhs.columns.2 *= rhs
    }


    /// - Returns: Product of *lhs* matrix and *rhs* vector as a single column matrix.
    @inlinable
    public static func *(lhs: simd_double3x2, rhs: SIMD3<Double>) -> SIMD2<Double> {
        .init(lhs.columns.0.x * rhs.x + lhs.columns.1.x * rhs.y + lhs.columns.2.x * rhs.z,
              lhs.columns.0.y * rhs.x + lhs.columns.1.y * rhs.y + lhs.columns.2.y * rhs.z)
    }


    /// - Returns: Product of *lhs* vector as a single row matrix and *rhs* matrix.
    @inlinable
    public static func *(lhs: SIMD2<Double>, rhs: simd_double3x2) -> SIMD3<Double> {
        .init(dot(lhs, rhs.columns.0),
              dot(lhs, rhs.columns.1),
              dot(lhs, rhs.columns.2))
    }


    /// - Returns: Product of *lhs* and *rhs* matrices.
    @inlinable
    public static func *(lhs: simd_double3x2, rhs: double2x3) -> double2x2 {
        .init(lhs * rhs.columns.0, lhs * rhs.columns.1)
    }


    /// - Returns: Product of *lhs* and *rhs* matrices.
    @inlinable
    public static func *(lhs: simd_double3x2, rhs: double3x3) -> double3x2 {
        .init(lhs * rhs.columns.0, lhs * rhs.columns.1, lhs * rhs.columns.2)
    }


    /// - Returns: Product of *lhs* and *rhs* matrices.
    @inlinable
    public static func *(lhs: simd_double3x2, rhs: double4x3) -> double4x2 {
        .init(lhs * rhs.columns.0, lhs * rhs.columns.1, lhs * rhs.columns.2, lhs * rhs.columns.3)
    }


    /// Multiplies *lhs* by *rhs* matrix in place.
    @inlinable
    public static func *=(lhs: inout simd_double3x2, rhs: double3x3) { lhs = lhs * rhs }

}



// MARK: - simd_double4x2

/// A matrix with 2 rows and 4 columns.
public struct simd_double4x2 : Equatable, CustomDebugStringConvertible {

    public var columns: (simd_double2, simd_double2, simd_double2, simd_double2)



    /// Initializes a zero matrix.
    @inlinable
    public init() { columns = (.zero, .zero, .zero, .zero) }


    /// Columnwise initializer.
    @inlinable
    public init(columns: (simd_double2, simd_double2, simd_double2, simd_double2)) { self.columns = columns }


    /// Initialzes a matrix having *scalar* on main diagonal and zeros elsewhere.
    @inlinable
    public init(_ scalar: Double) {
        columns = (.init(scalar, 0.0),
                   .init(0.0, scalar),
                   .zero,
                   .zero)
    }


    /// Initialzes a matrix having given main *diagonal* and zeros elsewhere.
    @inlinable
    public init(diagonal: SIMD2<Double>) {
        columns = (.init(diagonal.x, 0.0),
                   .init(0.0, diagonal.y),
                   .zero,
                   .zero)
    }


    /// Columnwise initializer.
    @inlinable
    public init(_ columns: [SIMD2<Double>]) { self.columns = (columns[0], columns[1], columns[2], columns[3]) }


    /// Rowwise initializer.
    @inlinable
    public init(rows: [SIMD4<Double>]) {
        columns = (.init(rows[0].x, rows[1].x),
                   .init(rows[0].y, rows[1].y),
                   .init(rows[0].z, rows[1].z),
                   .init(rows[0].w, rows[1].w))
    }


    /// Columnwise initializer.
    @inlinable
    public init(_ col0: SIMD2<Double>, _ col1: SIMD2<Double>, _ col2: SIMD2<Double>, _ col3: SIMD2<Double>) { self.columns = (col0, col1, col2, col3) }



    // MARK: : Equatable

    @inlinable
    public static func ==(lhs: simd_double4x2, rhs: simd_double4x2) -> Bool { lhs.columns == rhs.columns }



    // MARK: : CustomDebugStringConvertible

    @inlinable
    public var debugDescription: String { "simd_double4x2([[\(columns.0.x), \(columns.0.y)], [\(columns.1.x), \(columns.1.y)], [\(columns.2.x), \(columns.2.y)], [\(columns.3.x), \(columns.3.y)]])" }



    // MARK: Subscripts

    /// - Returns: The receiver's column at given index.
    @inlinable
    public subscript(column: Int) -> SIMD2<Double> {
        get {
            switch column {
            case 0:
                return columns.0
            case 1:
                return columns.1
            case 2:
                return columns.2
            case 3:
                return columns.3
            default:
                preconditionFailure("Failed to get column [\(column)] from \(Self.self). Index is out of range")
            }
        }
        set {
            switch column {
            case 0:
                columns.0 = newValue
            case 1:
                columns.1 = newValue
            case 2:
                columns.2 = newValue
            case 3:
                columns.3 = newValue
            default:
                preconditionFailure("Failed to set column [\(column)] in \(Self.self). Index is out of range")
            }
        }
    }


    /// - Returns: The receiver's element at given *column* and *row* indices.
    @inlinable
    public subscript(column: Int, row: Int) -> Double {
        get {
            switch column {
            case 0:
                return columns.0[row]
            case 1:
                return columns.1[row]
            case 2:
                return columns.2[row]
            case 3:
                return columns.3[row]
            default:
                preconditionFailure("Failed to get element [\(column), \(row)] from \(Self.self). An index is out of range")
            }
        }
        set {
            switch column {
            case 0:
                columns.0[row] = newValue
            case 1:
                columns.1[row] = newValue
            case 2:
                columns.2[row] = newValue
            case 3:
                columns.3[row] = newValue
            default:
                preconditionFailure("Failed to set element [\(column), \(row)] in \(Self.self). An index is out of range")
            }
        }
    }



    // MARK: Operations

    /// Transpose of the receiver.
    @inlinable
    public var transpose: double2x4 {
        .init(.init(columns.0.x, columns.1.x, columns.2.x, columns.3.x),
              .init(columns.0.y, columns.1.y, columns.2.y, columns.3.y))
    }



    // MARK: Operators

    /// - Returns: Negated matrix.
    @inlinable
    public static prefix func -(rhs: simd_double4x2) -> simd_double4x2 { .init(-rhs.columns.0, -rhs.columns.1, -rhs.columns.2, -rhs.columns.3) }


    /// - Returns: Sum of given matrices.
    @inlinable
    public static func +(lhs: simd_double4x2, rhs: simd_double4x2) -> simd_double4x2 {
        .init(lhs.columns.0 + rhs.columns.0,
              lhs.columns.1 + rhs.columns.1,
              lhs.columns.2 + rhs.columns.2,
              lhs.columns.3 + rhs.columns.3)
    }


    /// - Returns: Subtraction of given matrices.
    @inlinable
    public static func -(lhs: simd_double4x2, rhs: simd_double4x2) -> simd_double4x2 {
        .init(lhs.columns.0 - rhs.columns.0,
              lhs.columns.1 - rhs.columns.1,
              lhs.columns.2 - rhs.columns.2,
              lhs.columns.3 - rhs.columns.3)
    }


    /// Adds *rhs* to *lhs* in place.
    @inlinable
    public static func +=(lhs: inout simd_double4x2, rhs: simd_double4x2) {
        lhs.columns.0 += rhs.columns.0
        lhs.columns.1 += rhs.columns.1
        lhs.columns.2 += rhs.columns.2
        lhs.columns.3 += rhs.columns.3
    }


    /// Subtracts *rhs* from *lhs* in place.
    @inlinable
    public static func -=(lhs: inout simd_double4x2, rhs: simd_double4x2) {
        lhs.columns.0 -= rhs.columns.0
        lhs.columns.1 -= rhs.columns.1
        lhs.columns.2 -= rhs.columns.2
        lhs.columns.3 -= rhs.columns.3
    }


    /// - Returns: Scaled *rhs* by *lhs*.
    @inlinable
    public static func *(lhs: Double, rhs: simd_double4x2) -> simd_double4x2 { .init(lhs * rhs.columns.0, lhs * rhs.columns.1, lhs * rhs.columns.2, lhs * rhs.columns.3) }


    /// - Returns: Scaled *lhs* by *rhs*.
    @inlinable
    public static func *(lhs: simd_double4x2, rhs: Double) -> simd_double4x2 { .init(rhs * lhs.columns.0, rhs * lhs.columns.1, rhs * lhs.columns.2, rhs * lhs.columns.3) }


    /// Scales *lhs* by *rhs* in place.
    @inlinable
    public static func *=(lhs: inout simd_double4x2, rhs: Double) {
        lhs.columns.0 *= rhs
        lhs.columns.1 *= rhs
        lhs.columns.2 *= rhs
        lhs.columns.3 *= rhs
    }


    /// - Returns: Product of *lhs* matrix and *rhs* vector as a single column matrix.
    @inlinable
    public static func *(lhs: simd_double4x2, rhs: SIMD4<Double>) -> SIMD2<Double> {
        .init(lhs.columns.0.x * rhs.x + lhs.columns.1.x * rhs.y + lhs.columns.2.x * rhs.z + lhs.columns.3.x * rhs.w,
              lhs.columns.0.y * rhs.x + lhs.columns.1.y * rhs.y + lhs.columns.2.y * rhs.z + lhs.columns.3.y * rhs.w)
    }


    /// - Returns: Product of *lhs* vector as a single row matrix and *rhs* matrix.
    @inlinable
    public static func *(lhs: SIMD2<Double>, rhs: simd_double4x2) -> SIMD4<Double> {
        .init(dot(lhs, rhs.columns.0),
              dot(lhs, rhs.columns.1),
              dot(lhs, rhs.columns.2),
              dot(lhs, rhs.columns.3))
    }


    /// - Returns: Product of *lhs* and *rhs* matrices.
    @inlinable
    public static func *(lhs: simd_double4x2, rhs: double2x4) -> double2x2 {
        .init(lhs * rhs.columns.0, lhs * rhs.columns.1)
    }


    /// - Returns: Product of *lhs* and *rhs* matrices.
    @inlinable
    public static func *(lhs: simd_double4x2, rhs: double3x4) -> double3x2 {
        .init(lhs * rhs.columns.0, lhs * rhs.columns.1, lhs * rhs.columns.2)
    }


    /// - Returns: Product of *lhs* and *rhs* matrices.
    @inlinable
    public static func *(lhs: simd_double4x2, rhs: double4x4) -> double4x2 {
        .init(lhs * rhs.columns.0, lhs * rhs.columns.1, lhs * rhs.columns.2, lhs * rhs.columns.3)
    }


    /// Multiplies *lhs* by *rhs* matrix in place.
    @inlinable
    public static func *=(lhs: inout simd_double4x2, rhs: double4x4) { lhs = lhs * rhs }

}



// MARK: - simd_double2x3

/// A matrix with 3 rows and 2 columns.
public struct simd_double2x3 : Equatable, CustomDebugStringConvertible {

    public var columns: (simd_double3, simd_double3)



    /// Initializes a zero matrix.
    @inlinable
    public init() { columns = (.zero, .zero) }


    /// Columnwise initializer.
    @inlinable
    public init(columns: (simd_double3, simd_double3)) { self.columns = columns }


    /// Initialzes a matrix having *scalar* on main diagonal and zeros elsewhere.
    @inlinable
    public init(_ scalar: Double) {
        columns = (.init(scalar, 0.0, 0.0),
                   .init(0.0, scalar, 0.0))
    }


    /// Initialzes a matrix having given main *diagonal* and zeros elsewhere.
    @inlinable
    public init(diagonal: SIMD2<Double>) {
        columns = (.init(diagonal.x, 0.0, 0.0),
                   .init(0.0, diagonal.y, 0.0))
    }


    /// Columnwise initializer.
    @inlinable
    public init(_ columns: [SIMD3<Double>]) { self.columns = (columns[0], columns[1]) }


    /// Rowwise initializer.
    @inlinable
    public init(rows: [SIMD2<Double>]) {
        columns = (.init(rows[0].x, rows[1].x, rows[2].x),
                   .init(rows[0].y, rows[1].y, rows[2].y))
    }


    /// Columnwise initializer.
    @inlinable
    public init(_ col0: SIMD3<Double>, _ col1: SIMD3<Double>) { self.columns = (col0, col1) }



    // MARK: : Equatable

    @inlinable
    public static func ==(lhs: simd_double2x3, rhs: simd_double2x3) -> Bool { lhs.columns == rhs.columns }



    // MARK: : CustomDebugStringConvertible

    @inlinable
    public var debugDescription: String { "simd_double2x3([[\(columns.0.x), \(columns.0.y), \(columns.0.z)], [\(columns.1.x), \(columns.1.y), \(columns.1.z)]])" }



    // MARK: Subscripts

    /// - Returns: The receiver's column at given index.
    @inlinable
    public subscript(column: Int) -> SIMD3<Double> {
        get {
            switch column {
            case 0:
                return columns.0
            case 1:
                return columns.1
            default:
                preconditionFailure("Failed to get column [\(column)] from \(Self.self). Index is out of range")
            }
        }
        set {
            switch column {
            case 0:
                columns.0 = newValue
            case 1:
                columns.1 = newValue
            default:
                preconditionFailure("Failed to set column [\(column)] in \(Self.self). Index is out of range")
            }
        }
    }


    /// - Returns: The receiver's element at given *column* and *row* indices.
    @inlinable
    public subscript(column: Int, row: Int) -> Double {
        get {
            switch column {
            case 0:
                return columns.0[row]
            case 1:
                return columns.1[row]
            default:
                preconditionFailure("Failed to get element [\(column), \(row)] from \(Self.self). An index is out of range")
            }
        }
        set {
            switch column {
            case 0:
                columns.0[row] = newValue
            case 1:
                columns.1[row] = newValue
            default:
                preconditionFailure("Failed to set element [\(column), \(row)] in \(Self.self). An index is out of range")
            }
        }
    }



    // MARK: Operations

    /// Transpose of the receiver.
    @inlinable
    public var transpose: double3x2 {
        .init(.init(columns.0.x, columns.1.x),
              .init(columns.0.y, columns.1.y),
              .init(columns.0.z, columns.1.z))
    }



    // MARK: Operators

    /// - Returns: Negated matrix.
    @inlinable
    public static prefix func -(rhs: simd_double2x3) -> simd_double2x3 { .init(-rhs.columns.0, -rhs.columns.1) }


    /// - Returns: Sum of given matrices.
    @inlinable
    public static func +(lhs: simd_double2x3, rhs: simd_double2x3) -> simd_double2x3 {
        .init(lhs.columns.0 + rhs.columns.0,
              lhs.columns.1 + rhs.columns.1)
    }


    /// - Returns: Subtraction of given matrices.
    @inlinable
    public static func -(lhs: simd_double2x3, rhs: simd_double2x3) -> simd_double2x3 {
        .init(lhs.columns.0 - rhs.columns.0,
              lhs.columns.1 - rhs.columns.1)
    }


    /// Adds *rhs* to *lhs* in place.
    @inlinable
    public static func +=(lhs: inout simd_double2x3, rhs: simd_double2x3) {
        lhs.columns.0 += rhs.columns.0
        lhs.columns.1 += rhs.columns.1
    }


    /// Subtracts *rhs* from *lhs* in place.
    @inlinable
    public static func -=(lhs: inout simd_double2x3, rhs: simd_double2x3) {
        lhs.columns.0 -= rhs.columns.0
        lhs.columns.1 -= rhs.columns.1
    }


    /// - Returns: Scaled *rhs* by *lhs*.
    @inlinable
    public static func *(lhs: Double, rhs: simd_double2x3) -> simd_double2x3 { .init(lhs * rhs.columns.0, lhs * rhs.columns.1) }


    /// - Returns: Scaled *lhs* by *rhs*.
    @inlinable
    public static func *(lhs: simd_double2x3, rhs: Double) -> simd_double2x3 { .init(rhs * lhs.columns.0, rhs * lhs.columns.1) }


    /// Scales *lhs* by *rhs* in place.
    @inlinable
    public static func *=(lhs: inout simd_double2x3, rhs: Double) {
        lhs.columns.0 *= rhs
        lhs.columns.1 *= rhs
    }


    /// - Returns: Product of *lhs* matrix and *rhs* vector as a single column matrix.
    @inlinable
    public static func *(lhs: simd_double2x3, rhs: SIMD2<Double>) -> SIMD3<Double> {
        .init(lhs.columns.0.x * rhs.x + lhs.columns.1.x * rhs.y,
              lhs.columns.0.y * rhs.x + lhs.columns.1.y * rhs.y,
              lhs.columns.0.z * rhs.x + lhs.columns.1.z * rhs.y)
    }


    /// - Returns: Product of *lhs* vector as a single row matrix and *rhs* matrix.
    @inlinable
    public static func *(lhs: SIMD3<Double>, rhs: simd_double2x3) -> SIMD2<Double> {
        .init(dot(lhs, rhs.columns.0),
              dot(lhs, rhs.columns.1))
    }


    /// - Returns: Product of *lhs* and *rhs* matrices.
    @inlinable
    public static func *(lhs: simd_double2x3, rhs: double2x2) -> double2x3 {
        .init(lhs * rhs.columns.0, lhs * rhs.columns.1)
    }


    /// - Returns: Product of *lhs* and *rhs* matrices.
    @inlinable
    public static func *(lhs: simd_double2x3, rhs: double3x2) -> double3x3 {
        .init(lhs * rhs.columns.0, lhs * rhs.columns.1, lhs * rhs.columns.2)
    }


    /// - Returns: Product of *lhs* and *rhs* matrices.
    @inlinable
    public static func *(lhs: simd_double2x3, rhs: double4x2) -> double4x3 {
        .init(lhs * rhs.columns.0, lhs * rhs.columns.1, lhs * rhs.columns.2, lhs * rhs.columns.3)
    }


    /// Multiplies *lhs* by *rhs* matrix in place.
    @inlinable
    public static func *=(lhs: inout simd_double2x3, rhs: double2x2) { lhs = lhs * rhs }

}



// MARK: - simd_double3x3

/// A matrix with 3 rows and 3 columns.
public struct simd_double3x3 : Equatable, CustomDebugStringConvertible {

    public var columns: (simd_double3, simd_double3, simd_double3)



    /// Initializes a zero matrix.
    @inlinable
    public init() { columns = (.zero, .zero, .zero) }


    /// Columnwise initializer.
    @inlinable
    public init(columns: (simd_double3, simd_double3, simd_double3)) { self.columns = columns }


    /// Initialzes a matrix having *scalar* on main diagonal and zeros elsewhere.
    @inlinable
    public init(_ scalar: Double) {
        columns = (.init(scalar, 0.0, 0.0),
                   .init(0.0, scalar, 0.0),
                   .init(0.0, 0.0, scalar))
    }


    /// Initialzes a matrix having given main *diagonal* and zeros elsewhere.
    @inlinable
    public init(diagonal: SIMD3<Double>) {
        columns = (.init(diagonal.x, 0.0, 0.0),
                   .init(0.0, diagonal.y, 0.0),
                   .init(0.0, 0.0, diagonal.z))
    }


    /// Columnwise initializer.
    @inlinable
    public init(_ columns: [SIMD3<Double>]) { self.columns = (columns[0], columns[1], columns[2]) }


    /// Rowwise initializer.
    @inlinable
    public init(rows: [SIMD3<Double>]) {
        columns = (.init(rows[0].x, rows[1].x, rows[2].x),
                   .init(rows[0].y, rows[1].y, rows[2].y),
                   .init(rows[0].z, rows[1].z, rows[2].z))
    }


    /// Columnwise initializer.
    @inlinable
    public init(_ col0: SIMD3<Double>, _ col1: SIMD3<Double>, _ col2: SIMD3<Double>) { self.columns = (col0, col1, col2) }


    /// Initializes a rotation matrix by given *quaternion*.
    @inlinable
    public init(_ quaternion: simd_quatd) {
        columns = (.init(1.0 - 2.0 * (quaternion.vector.y * quaternion.vector.y + quaternion.vector.z * quaternion.vector.z),
                               2.0 * (quaternion.vector.x * quaternion.vector.y + quaternion.vector.z * quaternion.vector.w),
                               2.0 * (quaternion.vector.x * quaternion.vector.z - quaternion.vector.y * quaternion.vector.w)),
                   .init(      2.0 * (quaternion.vector.x * quaternion.vector.y - quaternion.vector.z * quaternion.vector.w),
                         1.0 - 2.0 * (quaternion.vector.x * quaternion.vector.x + quaternion.vector.z * quaternion.vector.z),
                               2.0 * (quaternion.vector.y * quaternion.vector.z + quaternion.vector.x * quaternion.vector.w)),
                   .init(      2.0 * (quaternion.vector.x * quaternion.vector.z + quaternion.vector.y * quaternion.vector.w),
                               2.0 * (quaternion.vector.y * quaternion.vector.z - quaternion.vector.x * quaternion.vector.w),
                         1.0 - 2.0 * (quaternion.vector.x * quaternion.vector.x + quaternion.vector.y * quaternion.vector.y)))
    }



    // MARK: : Equatable

    @inlinable
    public static func ==(lhs: simd_double3x3, rhs: simd_double3x3) -> Bool { lhs.columns == rhs.columns }



    // MARK: : CustomDebugStringConvertible

    @inlinable
    public var debugDescription: String { "simd_double3x3([[\(columns.0.x), \(columns.0.y), \(columns.0.z)], [\(columns.1.x), \(columns.1.y), \(columns.1.z)], [\(columns.2.x), \(columns.2.y), \(columns.2.z)]])" }



    // MARK: Subscripts

    /// - Returns: The receiver's column at given index.
    @inlinable
    public subscript(column: Int) -> SIMD3<Double> {
        get {
            switch column {
            case 0:
                return columns.0
            case 1:
                return columns.1
            case 2:
                return columns.2
            default:
                preconditionFailure("Failed to get column [\(column)] from \(Self.self). Index is out of range")
            }
        }
        set {
            switch column {
            case 0:
                columns.0 = newValue
            case 1:
                columns.1 = newValue
            case 2:
                columns.2 = newValue
            default:
                preconditionFailure("Failed to set column [\(column)] in \(Self.self). Index is out of range")
            }
        }
    }


    /// - Returns: The receiver's element at given *column* and *row* indices.
    @inlinable
    public subscript(column: Int, row: Int) -> Double {
        get {
            switch column {
            case 0:
                return columns.0[row]
            case 1:
                return columns.1[row]
            case 2:
                return columns.2[row]
            default:
                preconditionFailure("Failed to get element [\(column), \(row)] from \(Self.self). An index is out of range")
            }
        }
        set {
            switch column {
            case 0:
                columns.0[row] = newValue
            case 1:
                columns.1[row] = newValue
            case 2:
                columns.2[row] = newValue
            default:
                preconditionFailure("Failed to set element [\(column), \(row)] in \(Self.self). An index is out of range")
            }
        }
    }



    // MARK: Operations

    /// Transpose of the receiver.
    @inlinable
    public var transpose: double3x3 {
        .init(.init(columns.0.x, columns.1.x, columns.2.x),
              .init(columns.0.y, columns.1.y, columns.2.y),
              .init(columns.0.z, columns.1.z, columns.2.z))
    }

    /// Inverse of the receiver. The resulting matrix is undefined when the inverse doesn't exist.
    @available(macOS 10.10, iOS 8.0, tvOS 10.0, watchOS 3.0, *)
    @inlinable
    public var inverse: simd_double3x3 {
        let col0 = simd_double3(columns.1.y * columns.2.z - columns.1.z * columns.2.y,
                                columns.1.z * columns.2.x - columns.0.y * columns.2.z,
                                columns.0.y * columns.2.y - columns.1.y * columns.2.x)

        let col1 = simd_double3(columns.2.x * columns.2.y - columns.1.x * columns.2.z,
                                columns.0.x * columns.2.z - columns.2.x * columns.2.x,
                                columns.1.x * columns.2.x - columns.0.x * columns.2.y)

        let col2 = simd_double3(columns.1.x * columns.1.z - columns.2.x * columns.1.y,
                                columns.2.x * columns.0.y - columns.0.x * columns.1.z,
                                columns.0.x * columns.1.y - columns.1.x * columns.0.y)

        let determinant⁻¹ = 1.0 / (columns.0.x * col0.x + columns.1.x * col0.y + columns.2.x * col0.z)

        return simd_double3x3(determinant⁻¹ * col0,
                              determinant⁻¹ * col1,
                              determinant⁻¹ * col2)
    }

    /// Determinant of the receiver.
    @inlinable
    public var determinant: Double {
        simd_reduce_add(columns.0 * ((KvShiftLeft1(columns.1) * KvShiftLeft2(columns.2)) as simd_double3 -
                                     (KvShiftLeft2(columns.1) * KvShiftLeft1(columns.2)) as simd_double3))
    }



    // MARK: Operators

    /// - Returns: Negated matrix.
    @inlinable
    public static prefix func -(rhs: simd_double3x3) -> simd_double3x3 { .init(-rhs.columns.0, -rhs.columns.1, -rhs.columns.2) }


    /// - Returns: Sum of given matrices.
    @inlinable
    public static func +(lhs: simd_double3x3, rhs: simd_double3x3) -> simd_double3x3 {
        .init(lhs.columns.0 + rhs.columns.0,
              lhs.columns.1 + rhs.columns.1,
              lhs.columns.2 + rhs.columns.2)
    }


    /// - Returns: Subtraction of given matrices.
    @inlinable
    public static func -(lhs: simd_double3x3, rhs: simd_double3x3) -> simd_double3x3 {
        .init(lhs.columns.0 - rhs.columns.0,
              lhs.columns.1 - rhs.columns.1,
              lhs.columns.2 - rhs.columns.2)
    }


    /// Adds *rhs* to *lhs* in place.
    @inlinable
    public static func +=(lhs: inout simd_double3x3, rhs: simd_double3x3) {
        lhs.columns.0 += rhs.columns.0
        lhs.columns.1 += rhs.columns.1
        lhs.columns.2 += rhs.columns.2
    }


    /// Subtracts *rhs* from *lhs* in place.
    @inlinable
    public static func -=(lhs: inout simd_double3x3, rhs: simd_double3x3) {
        lhs.columns.0 -= rhs.columns.0
        lhs.columns.1 -= rhs.columns.1
        lhs.columns.2 -= rhs.columns.2
    }


    /// - Returns: Scaled *rhs* by *lhs*.
    @inlinable
    public static func *(lhs: Double, rhs: simd_double3x3) -> simd_double3x3 { .init(lhs * rhs.columns.0, lhs * rhs.columns.1, lhs * rhs.columns.2) }


    /// - Returns: Scaled *lhs* by *rhs*.
    @inlinable
    public static func *(lhs: simd_double3x3, rhs: Double) -> simd_double3x3 { .init(rhs * lhs.columns.0, rhs * lhs.columns.1, rhs * lhs.columns.2) }


    /// Scales *lhs* by *rhs* in place.
    @inlinable
    public static func *=(lhs: inout simd_double3x3, rhs: Double) {
        lhs.columns.0 *= rhs
        lhs.columns.1 *= rhs
        lhs.columns.2 *= rhs
    }


    /// - Returns: Product of *lhs* matrix and *rhs* vector as a single column matrix.
    @inlinable
    public static func *(lhs: simd_double3x3, rhs: SIMD3<Double>) -> SIMD3<Double> {
        .init(lhs.columns.0.x * rhs.x + lhs.columns.1.x * rhs.y + lhs.columns.2.x * rhs.z,
              lhs.columns.0.y * rhs.x + lhs.columns.1.y * rhs.y + lhs.columns.2.y * rhs.z,
              lhs.columns.0.z * rhs.x + lhs.columns.1.z * rhs.y + lhs.columns.2.z * rhs.z)
    }


    /// - Returns: Product of *lhs* vector as a single row matrix and *rhs* matrix.
    @inlinable
    public static func *(lhs: SIMD3<Double>, rhs: simd_double3x3) -> SIMD3<Double> {
        .init(dot(lhs, rhs.columns.0),
              dot(lhs, rhs.columns.1),
              dot(lhs, rhs.columns.2))
    }


    /// - Returns: Product of *lhs* and *rhs* matrices.
    @inlinable
    public static func *(lhs: simd_double3x3, rhs: double2x3) -> double2x3 {
        .init(lhs * rhs.columns.0, lhs * rhs.columns.1)
    }


    /// - Returns: Product of *lhs* and *rhs* matrices.
    @inlinable
    public static func *(lhs: simd_double3x3, rhs: double3x3) -> double3x3 {
        .init(lhs * rhs.columns.0, lhs * rhs.columns.1, lhs * rhs.columns.2)
    }


    /// - Returns: Product of *lhs* and *rhs* matrices.
    @inlinable
    public static func *(lhs: simd_double3x3, rhs: double4x3) -> double4x3 {
        .init(lhs * rhs.columns.0, lhs * rhs.columns.1, lhs * rhs.columns.2, lhs * rhs.columns.3)
    }


    /// Multiplies *lhs* by *rhs* matrix in place.
    @inlinable
    public static func *=(lhs: inout simd_double3x3, rhs: double3x3) { lhs = lhs * rhs }

}



// MARK: - simd_double4x3

/// A matrix with 3 rows and 4 columns.
public struct simd_double4x3 : Equatable, CustomDebugStringConvertible {

    public var columns: (simd_double3, simd_double3, simd_double3, simd_double3)



    /// Initializes a zero matrix.
    @inlinable
    public init() { columns = (.zero, .zero, .zero, .zero) }


    /// Columnwise initializer.
    @inlinable
    public init(columns: (simd_double3, simd_double3, simd_double3, simd_double3)) { self.columns = columns }


    /// Initialzes a matrix having *scalar* on main diagonal and zeros elsewhere.
    @inlinable
    public init(_ scalar: Double) {
        columns = (.init(scalar, 0.0, 0.0),
                   .init(0.0, scalar, 0.0),
                   .init(0.0, 0.0, scalar),
                   .zero)
    }


    /// Initialzes a matrix having given main *diagonal* and zeros elsewhere.
    @inlinable
    public init(diagonal: SIMD3<Double>) {
        columns = (.init(diagonal.x, 0.0, 0.0),
                   .init(0.0, diagonal.y, 0.0),
                   .init(0.0, 0.0, diagonal.z),
                   .zero)
    }


    /// Columnwise initializer.
    @inlinable
    public init(_ columns: [SIMD3<Double>]) { self.columns = (columns[0], columns[1], columns[2], columns[3]) }


    /// Rowwise initializer.
    @inlinable
    public init(rows: [SIMD4<Double>]) {
        columns = (.init(rows[0].x, rows[1].x, rows[2].x),
                   .init(rows[0].y, rows[1].y, rows[2].y),
                   .init(rows[0].z, rows[1].z, rows[2].z),
                   .init(rows[0].w, rows[1].w, rows[2].w))
    }


    /// Columnwise initializer.
    @inlinable
    public init(_ col0: SIMD3<Double>, _ col1: SIMD3<Double>, _ col2: SIMD3<Double>, _ col3: SIMD3<Double>) { self.columns = (col0, col1, col2, col3) }



    // MARK: : Equatable

    @inlinable
    public static func ==(lhs: simd_double4x3, rhs: simd_double4x3) -> Bool { lhs.columns == rhs.columns }



    // MARK: : CustomDebugStringConvertible

    @inlinable
    public var debugDescription: String { "simd_double4x3([[\(columns.0.x), \(columns.0.y), \(columns.0.z)], [\(columns.1.x), \(columns.1.y), \(columns.1.z)], [\(columns.2.x), \(columns.2.y), \(columns.2.z)], [\(columns.3.x), \(columns.3.y), \(columns.3.z))]])" }



    // MARK: Subscripts

    /// - Returns: The receiver's column at given index.
    @inlinable
    public subscript(column: Int) -> SIMD3<Double> {
        get {
            switch column {
            case 0:
                return columns.0
            case 1:
                return columns.1
            case 2:
                return columns.2
            case 3:
                return columns.3
            default:
                preconditionFailure("Failed to get column [\(column)] from \(Self.self). Index is out of range")
            }
        }
        set {
            switch column {
            case 0:
                columns.0 = newValue
            case 1:
                columns.1 = newValue
            case 2:
                columns.2 = newValue
            case 3:
                columns.3 = newValue
            default:
                preconditionFailure("Failed to set column [\(column)] in \(Self.self). Index is out of range")
            }
        }
    }


    /// - Returns: The receiver's element at given *column* and *row* indices.
    @inlinable
    public subscript(column: Int, row: Int) -> Double {
        get {
            switch column {
            case 0:
                return columns.0[row]
            case 1:
                return columns.1[row]
            case 2:
                return columns.2[row]
            case 3:
                return columns.3[row]
            default:
                preconditionFailure("Failed to get element [\(column), \(row)] from \(Self.self)(Self.self). An index is out of range")
            }
        }
        set {
            switch column {
            case 0:
                columns.0[row] = newValue
            case 1:
                columns.1[row] = newValue
            case 2:
                columns.2[row] = newValue
            case 3:
                columns.3[row] = newValue
            default:
                preconditionFailure("Failed to set element [\(column), \(row)] in \(Self.self). An index is out of range")
            }
        }
    }



    // MARK: Operations

    /// Transpose of the receiver.
    @inlinable
    public var transpose: double3x4 {
        .init(.init(columns.0.x, columns.1.x, columns.2.x, columns.3.x),
              .init(columns.0.y, columns.1.y, columns.2.y, columns.3.y),
              .init(columns.0.z, columns.1.z, columns.2.z, columns.3.z))
    }



    // MARK: Operators

    /// - Returns: Negated matrix.
    @inlinable
    public static prefix func -(rhs: simd_double4x3) -> simd_double4x3 { .init(-rhs.columns.0, -rhs.columns.1, -rhs.columns.2, -rhs.columns.3) }


    /// - Returns: Sum of given matrices.
    @inlinable
    public static func +(lhs: simd_double4x3, rhs: simd_double4x3) -> simd_double4x3 {
        .init(lhs.columns.0 + rhs.columns.0,
              lhs.columns.1 + rhs.columns.1,
              lhs.columns.2 + rhs.columns.2,
              lhs.columns.3 + rhs.columns.3)
    }


    /// - Returns: Subtraction of given matrices.
    @inlinable
    public static func -(lhs: simd_double4x3, rhs: simd_double4x3) -> simd_double4x3 {
        .init(lhs.columns.0 - rhs.columns.0,
              lhs.columns.1 - rhs.columns.1,
              lhs.columns.2 - rhs.columns.2,
              lhs.columns.3 - rhs.columns.3)
    }


    /// Adds *rhs* to *lhs* in place.
    @inlinable
    public static func +=(lhs: inout simd_double4x3, rhs: simd_double4x3) {
        lhs.columns.0 += rhs.columns.0
        lhs.columns.1 += rhs.columns.1
        lhs.columns.2 += rhs.columns.2
        lhs.columns.3 += rhs.columns.3
    }


    /// Subtracts *rhs* from *lhs* in place.
    @inlinable
    public static func -=(lhs: inout simd_double4x3, rhs: simd_double4x3) {
        lhs.columns.0 -= rhs.columns.0
        lhs.columns.1 -= rhs.columns.1
        lhs.columns.2 -= rhs.columns.2
        lhs.columns.3 -= rhs.columns.3
    }


    /// - Returns: Scaled *rhs* by *lhs*.
    @inlinable
    public static func *(lhs: Double, rhs: simd_double4x3) -> simd_double4x3 { .init(lhs * rhs.columns.0, lhs * rhs.columns.1, lhs * rhs.columns.2, lhs * rhs.columns.3) }


    /// - Returns: Scaled *lhs* by *rhs*.
    @inlinable
    public static func *(lhs: simd_double4x3, rhs: Double) -> simd_double4x3 { .init(rhs * lhs.columns.0, rhs * lhs.columns.1, rhs * lhs.columns.2, rhs * lhs.columns.3) }


    /// Scales *lhs* by *rhs* in place.
    @inlinable
    public static func *=(lhs: inout simd_double4x3, rhs: Double) {
        lhs.columns.0 *= rhs
        lhs.columns.1 *= rhs
        lhs.columns.2 *= rhs
        lhs.columns.3 *= rhs
    }


    /// - Returns: Product of *lhs* matrix and *rhs* vector as a single column matrix.
    @inlinable
    public static func *(lhs: simd_double4x3, rhs: SIMD4<Double>) -> SIMD3<Double> {
        .init(lhs.columns.0.x * rhs.x + lhs.columns.1.x * rhs.y + lhs.columns.2.x * rhs.z + lhs.columns.3.x * rhs.w,
              lhs.columns.0.y * rhs.x + lhs.columns.1.y * rhs.y + lhs.columns.2.y * rhs.z + lhs.columns.3.y * rhs.w,
              lhs.columns.0.z * rhs.x + lhs.columns.1.z * rhs.y + lhs.columns.2.z * rhs.z + lhs.columns.3.z * rhs.w)
    }


    /// - Returns: Product of *lhs* vector as a single row matrix and *rhs* matrix.
    @inlinable
    public static func *(lhs: SIMD3<Double>, rhs: simd_double4x3) -> SIMD4<Double> {
        .init(dot(lhs, rhs.columns.0),
              dot(lhs, rhs.columns.1),
              dot(lhs, rhs.columns.2),
              dot(lhs, rhs.columns.3))
    }


    /// - Returns: Product of *lhs* and *rhs* matrices.
    @inlinable
    public static func *(lhs: simd_double4x3, rhs: double2x4) -> double2x3 {
        .init(lhs * rhs.columns.0, lhs * rhs.columns.1)
    }


    /// - Returns: Product of *lhs* and *rhs* matrices.
    @inlinable
    public static func *(lhs: simd_double4x3, rhs: double3x4) -> double3x3 {
        .init(lhs * rhs.columns.0, lhs * rhs.columns.1, lhs * rhs.columns.2)
    }


    /// - Returns: Product of *lhs* and *rhs* matrices.
    @inlinable
    public static func *(lhs: simd_double4x3, rhs: double4x4) -> double4x3 {
        .init(lhs * rhs.columns.0, lhs * rhs.columns.1, lhs * rhs.columns.2, lhs * rhs.columns.3)
    }


    /// Multiplies *lhs* by *rhs* matrix in place.
    @inlinable
    public static func *=(lhs: inout simd_double4x3, rhs: double4x4) { lhs = lhs * rhs }

}



// MARK: - simd_double2x4

/// A matrix with 4 rows and 2 columns.
public struct simd_double2x4 : Equatable, CustomDebugStringConvertible {

    public var columns: (simd_double4, simd_double4)



    /// Initializes a zero matrix.
    @inlinable
    public init() { columns = (.zero, .zero) }


    /// Columnwise initializer.
    @inlinable
    public init(columns: (simd_double4, simd_double4)) { self.columns = columns }


    /// Initialzes a matrix having *scalar* on main diagonal and zeros elsewhere.
    @inlinable
    public init(_ scalar: Double) {
        columns = (.init(scalar, 0.0, 0.0, 0.0),
                   .init(0.0, scalar, 0.0, 0.0))
    }


    /// Initialzes a matrix having given main *diagonal* and zeros elsewhere.
    @inlinable
    public init(diagonal: SIMD2<Double>) {
        columns = (.init(diagonal.x, 0.0, 0.0, 0.0),
                   .init(0.0, diagonal.y, 0.0, 0.0))
    }


    /// Columnwise initializer.
    @inlinable
    public init(_ columns: [SIMD4<Double>]) { self.columns = (columns[0], columns[1]) }


    /// Rowwise initializer.
    @inlinable
    public init(rows: [SIMD2<Double>]) {
        columns = (.init(rows[0].x, rows[1].x, rows[2].x, rows[3].x),
                   .init(rows[0].y, rows[1].y, rows[2].y, rows[3].y))
    }


    /// Columnwise initializer.
    @inlinable
    public init(_ col0: SIMD4<Double>, _ col1: SIMD4<Double>) { self.columns = (col0, col1) }



    // MARK: : Equatable

    @inlinable
    public static func ==(lhs: simd_double2x4, rhs: simd_double2x4) -> Bool { lhs.columns == rhs.columns }



    // MARK: : CustomDebugStringConvertible

    @inlinable
    public var debugDescription: String { "simd_double2x4([[\(columns.0.x), \(columns.0.y), \(columns.0.z), \(columns.0.w)], [\(columns.1.x), \(columns.1.y), \(columns.1.z), \(columns.1.w)]])" }



    // MARK: Subscripts

    /// - Returns: The receiver's column at given index.
    @inlinable
    public subscript(column: Int) -> SIMD4<Double> {
        get {
            switch column {
            case 0:
                return columns.0
            case 1:
                return columns.1
            default:
                preconditionFailure("Failed to get column [\(column)] from \(Self.self). Index is out of range")
            }
        }
        set {
            switch column {
            case 0:
                columns.0 = newValue
            case 1:
                columns.1 = newValue
            default:
                preconditionFailure("Failed to set column [\(column)] in \(Self.self). Index is out of range")
            }
        }
    }


    /// - Returns: The receiver's element at given *column* and *row* indices.
    @inlinable
    public subscript(column: Int, row: Int) -> Double {
        get {
            switch column {
            case 0:
                return columns.0[row]
            case 1:
                return columns.1[row]
            default:
                preconditionFailure("Failed to get element [\(column), \(row)] from \(Self.self). An index is out of range")
            }
        }
        set {
            switch column {
            case 0:
                columns.0[row] = newValue
            case 1:
                columns.1[row] = newValue
            default:
                preconditionFailure("Failed to set element [\(column), \(row)] in \(Self.self). An index is out of range")
            }
        }
    }



    // MARK: Operations

    /// Transpose of the receiver.
    @inlinable
    public var transpose: double4x2 {
        .init(.init(columns.0.x, columns.1.x),
              .init(columns.0.y, columns.1.y),
              .init(columns.0.z, columns.1.z),
              .init(columns.0.w, columns.1.w))
    }



    // MARK: Operators

    /// - Returns: Negated matrix.
    @inlinable
    public static prefix func -(rhs: simd_double2x4) -> simd_double2x4 { .init(-rhs.columns.0, -rhs.columns.1) }


    /// - Returns: Sum of given matrices.
    @inlinable
    public static func +(lhs: simd_double2x4, rhs: simd_double2x4) -> simd_double2x4 {
        .init(lhs.columns.0 + rhs.columns.0,
              lhs.columns.1 + rhs.columns.1)
    }


    /// - Returns: Subtraction of given matrices.
    @inlinable
    public static func -(lhs: simd_double2x4, rhs: simd_double2x4) -> simd_double2x4 {
        .init(lhs.columns.0 - rhs.columns.0,
              lhs.columns.1 - rhs.columns.1)
    }


    /// Adds *rhs* to *lhs* in place.
    @inlinable
    public static func +=(lhs: inout simd_double2x4, rhs: simd_double2x4) {
        lhs.columns.0 += rhs.columns.0
        lhs.columns.1 += rhs.columns.1
    }


    /// Subtracts *rhs* from *lhs* in place.
    @inlinable
    public static func -=(lhs: inout simd_double2x4, rhs: simd_double2x4) {
        lhs.columns.0 -= rhs.columns.0
        lhs.columns.1 -= rhs.columns.1
    }


    /// - Returns: Scaled *rhs* by *lhs*.
    @inlinable
    public static func *(lhs: Double, rhs: simd_double2x4) -> simd_double2x4 { .init(lhs * rhs.columns.0, lhs * rhs.columns.1) }


    /// - Returns: Scaled *lhs* by *rhs*.
    @inlinable
    public static func *(lhs: simd_double2x4, rhs: Double) -> simd_double2x4 { .init(rhs * lhs.columns.0, rhs * lhs.columns.1) }


    /// Scales *lhs* by *rhs* in place.
    @inlinable
    public static func *=(lhs: inout simd_double2x4, rhs: Double) {
        lhs.columns.0 *= rhs
        lhs.columns.1 *= rhs
    }


    /// - Returns: Product of *lhs* matrix and *rhs* vector as a single column matrix.
    @inlinable
    public static func *(lhs: simd_double2x4, rhs: SIMD2<Double>) -> SIMD4<Double> {
        .init(lhs.columns.0.x * rhs.x + lhs.columns.1.x * rhs.y,
              lhs.columns.0.y * rhs.x + lhs.columns.1.y * rhs.y,
              lhs.columns.0.z * rhs.x + lhs.columns.1.z * rhs.y,
              lhs.columns.0.w * rhs.x + lhs.columns.1.w * rhs.y)
    }


    /// - Returns: Product of *lhs* vector as a single row matrix and *rhs* matrix.
    @inlinable
    public static func *(lhs: SIMD4<Double>, rhs: simd_double2x4) -> SIMD2<Double> {
        .init(dot(lhs, rhs.columns.0),
              dot(lhs, rhs.columns.1))
    }


    /// - Returns: Product of *lhs* and *rhs* matrices.
    @inlinable
    public static func *(lhs: simd_double2x4, rhs: double2x2) -> double2x4 {
        .init(lhs * rhs.columns.0, lhs * rhs.columns.1)
    }


    /// - Returns: Product of *lhs* and *rhs* matrices.
    @inlinable
    public static func *(lhs: simd_double2x4, rhs: double3x2) -> double3x4 {
        .init(lhs * rhs.columns.0, lhs * rhs.columns.1, lhs * rhs.columns.2)
    }


    /// - Returns: Product of *lhs* and *rhs* matrices.
    @inlinable
    public static func *(lhs: simd_double2x4, rhs: double4x2) -> double4x4 {
        .init(lhs * rhs.columns.0, lhs * rhs.columns.1, lhs * rhs.columns.2, lhs * rhs.columns.3)
    }


    /// Multiplies *lhs* by *rhs* matrix in place.
    @inlinable
    public static func *=(lhs: inout simd_double2x4, rhs: double2x2) { lhs = lhs * rhs }

}



// MARK: - simd_double3x4

/// A matrix with 4 rows and 3 columns.
public struct simd_double3x4 : Equatable, CustomDebugStringConvertible {

    public var columns: (simd_double4, simd_double4, simd_double4)



    /// Initializes a zero matrix.
    @inlinable
    public init() { columns = (.zero, .zero, .zero) }


    /// Columnwise initializer.
    @inlinable
    public init(columns: (simd_double4, simd_double4, simd_double4)) { self.columns = columns }


    /// Initialzes a matrix having *scalar* on main diagonal and zeros elsewhere.
    @inlinable
    public init(_ scalar: Double) {
        columns = (.init(scalar, 0.0, 0.0, 0.0),
                   .init(0.0, scalar, 0.0, 0.0),
                   .init(0.0, 0.0, scalar, 0.0))
    }


    /// Initialzes a matrix having given main *diagonal* and zeros elsewhere.
    @inlinable
    public init(diagonal: SIMD3<Double>) {
        columns = (.init(diagonal.x, 0.0, 0.0, 0.0),
                   .init(0.0, diagonal.y, 0.0, 0.0),
                   .init(0.0, 0.0, diagonal.z, 0.0))
    }


    /// Columnwise initializer.
    @inlinable
    public init(_ columns: [SIMD4<Double>]) { self.columns = (columns[0], columns[1], columns[2]) }


    /// Rowwise initializer.
    @inlinable
    public init(rows: [SIMD3<Double>]) {
        columns = (.init(rows[0].x, rows[1].x, rows[2].x, rows[3].x),
                   .init(rows[0].y, rows[1].y, rows[2].y, rows[3].y),
                   .init(rows[0].z, rows[1].z, rows[2].z, rows[3].z))
    }


    /// Columnwise initializer.
    @inlinable
    public init(_ col0: SIMD4<Double>, _ col1: SIMD4<Double>, _ col2: SIMD4<Double>) { self.columns = (col0, col1, col2) }



    // MARK: : Equatable

    @inlinable
    public static func ==(lhs: simd_double3x4, rhs: simd_double3x4) -> Bool { lhs.columns == rhs.columns }



    // MARK: : CustomDebugStringConvertible

    @inlinable
    public var debugDescription: String { "simd_double3x4([[\(columns.0.x), \(columns.0.y), \(columns.0.z), \(columns.0.w)], [\(columns.1.x), \(columns.1.y), \(columns.1.z), \(columns.1.w)], [\(columns.2.x), \(columns.2.y), \(columns.2.z), \(columns.2.w)]])" }



    // MARK: Subscripts

    /// - Returns: The receiver's column at given index.
    @inlinable
    public subscript(column: Int) -> SIMD4<Double> {
        get {
            switch column {
            case 0:
                return columns.0
            case 1:
                return columns.1
            case 2:
                return columns.2
            default:
                preconditionFailure("Failed to get column [\(column)] from \(Self.self). Index is out of range")
            }
        }
        set {
            switch column {
            case 0:
                columns.0 = newValue
            case 1:
                columns.1 = newValue
            case 2:
                columns.2 = newValue
            default:
                preconditionFailure("Failed to set column [\(column)] in \(Self.self). Index is out of range")
            }
        }
    }


    /// - Returns: The receiver's element at given *column* and *row* indices.
    @inlinable
    public subscript(column: Int, row: Int) -> Double {
        get {
            switch column {
            case 0:
                return columns.0[row]
            case 1:
                return columns.1[row]
            case 2:
                return columns.2[row]
            default:
                preconditionFailure("Failed to get element [\(column), \(row)] from \(Self.self). An index is out of range")
            }
        }
        set {
            switch column {
            case 0:
                columns.0[row] = newValue
            case 1:
                columns.1[row] = newValue
            case 2:
                columns.2[row] = newValue
            default:
                preconditionFailure("Failed to set element [\(column), \(row)] in \(Self.self). An index is out of range")
            }
        }
    }



    // MARK: Operations

    /// Transpose of the receiver.
    @inlinable
    public var transpose: double4x3 {
        .init(.init(columns.0.x, columns.1.x, columns.2.x),
              .init(columns.0.y, columns.1.y, columns.2.y),
              .init(columns.0.z, columns.1.z, columns.2.z),
              .init(columns.0.w, columns.1.w, columns.2.w))
    }



    // MARK: Operators

    /// - Returns: Negated matrix.
    @inlinable
    public static prefix func -(rhs: simd_double3x4) -> simd_double3x4 { .init(-rhs.columns.0, -rhs.columns.1, -rhs.columns.2) }


    /// - Returns: Sum of given matrices.
    @inlinable
    public static func +(lhs: simd_double3x4, rhs: simd_double3x4) -> simd_double3x4 {
        .init(lhs.columns.0 + rhs.columns.0,
              lhs.columns.1 + rhs.columns.1,
              lhs.columns.2 + rhs.columns.2)
    }


    /// - Returns: Subtraction of given matrices.
    @inlinable
    public static func -(lhs: simd_double3x4, rhs: simd_double3x4) -> simd_double3x4 {
        .init(lhs.columns.0 - rhs.columns.0,
              lhs.columns.1 - rhs.columns.1,
              lhs.columns.2 - rhs.columns.2)
    }


    /// Adds *rhs* to *lhs* in place.
    @inlinable
    public static func +=(lhs: inout simd_double3x4, rhs: simd_double3x4) {
        lhs.columns.0 += rhs.columns.0
        lhs.columns.1 += rhs.columns.1
        lhs.columns.2 += rhs.columns.2
    }


    /// Subtracts *rhs* from *lhs* in place.
    @inlinable
    public static func -=(lhs: inout simd_double3x4, rhs: simd_double3x4) {
        lhs.columns.0 -= rhs.columns.0
        lhs.columns.1 -= rhs.columns.1
        lhs.columns.2 -= rhs.columns.2
    }


    /// - Returns: Scaled *rhs* by *lhs*.
    @inlinable
    public static func *(lhs: Double, rhs: simd_double3x4) -> simd_double3x4 { .init(lhs * rhs.columns.0, lhs * rhs.columns.1, lhs * rhs.columns.2) }


    /// - Returns: Scaled *lhs* by *rhs*.
    @inlinable
    public static func *(lhs: simd_double3x4, rhs: Double) -> simd_double3x4 { .init(rhs * lhs.columns.0, rhs * lhs.columns.1, rhs * lhs.columns.2) }


    /// Scales *lhs* by *rhs* in place.
    @inlinable
    public static func *=(lhs: inout simd_double3x4, rhs: Double) {
        lhs.columns.0 *= rhs
        lhs.columns.1 *= rhs
        lhs.columns.2 *= rhs
    }


    /// - Returns: Product of *lhs* matrix and *rhs* vector as a single column matrix.
    @inlinable
    public static func *(lhs: simd_double3x4, rhs: SIMD3<Double>) -> SIMD4<Double> {
        .init(lhs.columns.0.x * rhs.x + lhs.columns.1.x * rhs.y + lhs.columns.2.x * rhs.z,
              lhs.columns.0.y * rhs.x + lhs.columns.1.y * rhs.y + lhs.columns.2.y * rhs.z,
              lhs.columns.0.z * rhs.x + lhs.columns.1.z * rhs.y + lhs.columns.2.z * rhs.z,
              lhs.columns.0.w * rhs.x + lhs.columns.1.w * rhs.y + lhs.columns.2.w * rhs.z)
    }


    /// - Returns: Product of *lhs* vector as a single row matrix and *rhs* matrix.
    @inlinable
    public static func *(lhs: SIMD4<Double>, rhs: simd_double3x4) -> SIMD3<Double> {
        .init(dot(lhs, rhs.columns.0),
              dot(lhs, rhs.columns.1),
              dot(lhs, rhs.columns.2))
    }


    /// - Returns: Product of *lhs* and *rhs* matrices.
    @inlinable
    public static func *(lhs: simd_double3x4, rhs: double2x3) -> double2x4 {
        .init(lhs * rhs.columns.0, lhs * rhs.columns.1)
    }


    /// - Returns: Product of *lhs* and *rhs* matrices.
    @inlinable
    public static func *(lhs: simd_double3x4, rhs: double3x3) -> double3x4 {
        .init(lhs * rhs.columns.0, lhs * rhs.columns.1, lhs * rhs.columns.2)
    }


    /// - Returns: Product of *lhs* and *rhs* matrices.
    @inlinable
    public static func *(lhs: simd_double3x4, rhs: double4x3) -> double4x4 {
        .init(lhs * rhs.columns.0, lhs * rhs.columns.1, lhs * rhs.columns.2, lhs * rhs.columns.3)
    }


    /// Multiplies *lhs* by *rhs* matrix in place.
    @inlinable
    public static func *=(lhs: inout simd_double3x4, rhs: double3x3) { lhs = lhs * rhs }

}



// MARK: - simd_double4x4

/// A matrix with 4 rows and 4 columns.
public struct simd_double4x4 : Equatable, CustomDebugStringConvertible {

    public var columns: (simd_double4, simd_double4, simd_double4, simd_double4)



    /// Initializes a zero matrix.
    @inlinable
    public init() { columns = (.zero, .zero, .zero, .zero) }


    /// Columnwise initializer.
    @inlinable
    public init(columns: (simd_double4, simd_double4, simd_double4, simd_double4)) { self.columns = columns }


    /// Initialzes a matrix having *scalar* on main diagonal and zeros elsewhere.
    @inlinable
    public init(_ scalar: Double) {
        columns = (.init(scalar, 0.0, 0.0, 0.0),
                   .init(0.0, scalar, 0.0, 0.0),
                   .init(0.0, 0.0, scalar, 0.0),
                   .init(0.0, 0.0, 0.0, scalar))
    }


    /// Initialzes a matrix having given main *diagonal* and zeros elsewhere.
    @inlinable
    public init(diagonal: SIMD4<Double>) {
        columns = (.init(diagonal.x, 0.0, 0.0, 0.0),
                   .init(0.0, diagonal.y, 0.0, 0.0),
                   .init(0.0, 0.0, diagonal.z, 0.0),
                   .init(0.0, 0.0, 0.0, diagonal.w))
    }


    /// Columnwise initializer.
    @inlinable
    public init(_ columns: [SIMD4<Double>]) { self.columns = (columns[0], columns[1], columns[2], columns[3]) }


    /// Rowwise initializer.
    @inlinable
    public init(rows: [SIMD4<Double>]) {
        columns = (.init(rows[0].x, rows[1].x, rows[2].x, rows[3].x),
                   .init(rows[0].y, rows[1].y, rows[2].y, rows[3].y),
                   .init(rows[0].z, rows[1].z, rows[2].z, rows[3].z),
                   .init(rows[0].w, rows[1].w, rows[2].w, rows[3].w))
    }


    /// Columnwise initializer.
    @inlinable
    public init(_ col0: SIMD4<Double>, _ col1: SIMD4<Double>, _ col2: SIMD4<Double>, _ col3: SIMD4<Double>) { self.columns = (col0, col1, col2, col3) }


    /// Initializes a rotation matrix by given *quaternion*.
    @inlinable
    public init(_ quaternion: simd_quatd) {
        columns = (.init(1.0 - 2.0 * (quaternion.vector.y * quaternion.vector.y + quaternion.vector.z * quaternion.vector.z),
                               2.0 * (quaternion.vector.x * quaternion.vector.y + quaternion.vector.z * quaternion.vector.w),
                               2.0 * (quaternion.vector.x * quaternion.vector.z - quaternion.vector.y * quaternion.vector.w),
                         0.0),
                   .init(      2.0 * (quaternion.vector.x * quaternion.vector.y - quaternion.vector.z * quaternion.vector.w),
                         1.0 - 2.0 * (quaternion.vector.x * quaternion.vector.x + quaternion.vector.z * quaternion.vector.z),
                               2.0 * (quaternion.vector.y * quaternion.vector.z + quaternion.vector.x * quaternion.vector.w),
                         0.0),
                   .init(      2.0 * (quaternion.vector.x * quaternion.vector.z + quaternion.vector.y * quaternion.vector.w),
                               2.0 * (quaternion.vector.y * quaternion.vector.z - quaternion.vector.x * quaternion.vector.w),
                         1.0 - 2.0 * (quaternion.vector.x * quaternion.vector.x + quaternion.vector.y * quaternion.vector.y),
                         0.0),
                   [ 0.0, 0.0, 0.0, 1.0 ])
    }



    // MARK: : Equatable

    @inlinable
    public static func ==(lhs: simd_double4x4, rhs: simd_double4x4) -> Bool { lhs.columns == rhs.columns }



    // MARK: : CustomDebugStringConvertible

    @inlinable
    public var debugDescription: String { "simd_double4x4([[\(columns.0.x), \(columns.0.y), \(columns.0.z), \(columns.0.w)], [\(columns.1.x), \(columns.1.y), \(columns.1.z), \(columns.1.w)], [\(columns.2.x), \(columns.2.y), \(columns.2.z), \(columns.2.w)], [\(columns.3.x), \(columns.3.y), \(columns.3.z), \(columns.3.w)]])" }



    // MARK: Subscripts

    /// - Returns: The receiver's column at given index.
    @inlinable
    public subscript(column: Int) -> SIMD4<Double> {
        get {
            switch column {
            case 0:
                return columns.0
            case 1:
                return columns.1
            case 2:
                return columns.2
            case 3:
                return columns.3
            default:
                preconditionFailure("Failed to get column [\(column)] from \(Self.self). Index is out of range")
            }
        }
        set {
            switch column {
            case 0:
                columns.0 = newValue
            case 1:
                columns.1 = newValue
            case 2:
                columns.2 = newValue
            case 3:
                columns.3 = newValue
            default:
                preconditionFailure("Failed to set column [\(column)] in \(Self.self). Index is out of range")
            }
        }
    }


    /// - Returns: The receiver's element at given *column* and *row* indices.
    @inlinable
    public subscript(column: Int, row: Int) -> Double {
        get {
            switch column {
            case 0:
                return columns.0[row]
            case 1:
                return columns.1[row]
            case 2:
                return columns.2[row]
            case 3:
                return columns.3[row]
            default:
                preconditionFailure("Failed to get element [\(column), \(row)] from \(Self.self). An index is out of range")
            }
        }
        set {
            switch column {
            case 0:
                columns.0[row] = newValue
            case 1:
                columns.1[row] = newValue
            case 2:
                columns.2[row] = newValue
            case 3:
                columns.3[row] = newValue
            default:
                preconditionFailure("Failed to set element [\(column), \(row)] in \(Self.self). An index is out of range")
            }
        }
    }



    // MARK: Operations

    /// Transpose of the receiver.
    @inlinable
    public var transpose: double4x4 {
        .init(.init(columns.0.x, columns.1.x, columns.2.x, columns.3.x),
              .init(columns.0.y, columns.1.y, columns.2.y, columns.3.y),
              .init(columns.0.z, columns.1.z, columns.2.z, columns.3.z),
              .init(columns.0.w, columns.1.w, columns.2.w, columns.3.w))
    }

    /// Column at index 0 of the inverse matrix scaled by the determinant.
    @inline(__always)
    @usableFromInline
    internal var inverseColumn0: simd_double4 {
        .init(columns.2.y * columns.3.z * columns.1.w - columns.3.y * columns.2.z * columns.1.w + columns.3.y * columns.1.z * columns.2.w - columns.1.y * columns.3.z * columns.2.w - columns.2.y * columns.1.z * columns.3.w + columns.1.y * columns.2.z * columns.3.w,
              columns.3.y * columns.2.z * columns.0.w - columns.2.y * columns.3.z * columns.0.w - columns.3.y * columns.0.z * columns.2.w + columns.0.y * columns.3.z * columns.2.w + columns.2.y * columns.0.z * columns.3.w - columns.0.y * columns.2.z * columns.3.w,
              columns.1.y * columns.3.z * columns.0.w - columns.3.y * columns.1.z * columns.0.w + columns.3.y * columns.0.z * columns.1.w - columns.0.y * columns.3.z * columns.1.w - columns.1.y * columns.0.z * columns.3.w + columns.0.y * columns.1.z * columns.3.w,
              columns.2.y * columns.1.z * columns.0.w - columns.1.y * columns.2.z * columns.0.w - columns.2.y * columns.0.z * columns.1.w + columns.0.y * columns.2.z * columns.1.w + columns.1.y * columns.0.z * columns.2.w - columns.0.y * columns.1.z * columns.2.w)
    }
    /// Column at index 1 of the inverse matrix scaled by the determinant.
    @inline(__always)
    @usableFromInline
    internal var inverseColumn1: simd_double4 {
        .init(columns.3.x * columns.2.z * columns.1.w - columns.2.x * columns.3.z * columns.1.w - columns.3.x * columns.1.z * columns.2.w + columns.1.x * columns.3.z * columns.2.w + columns.2.x * columns.1.z * columns.3.w - columns.1.x * columns.2.z * columns.3.w,
              columns.2.x * columns.3.z * columns.0.w - columns.3.x * columns.2.z * columns.0.w + columns.3.x * columns.0.z * columns.2.w - columns.0.x * columns.3.z * columns.2.w - columns.2.x * columns.0.z * columns.3.w + columns.0.x * columns.2.z * columns.3.w,
              columns.3.x * columns.1.z * columns.0.w - columns.1.x * columns.3.z * columns.0.w - columns.3.x * columns.0.z * columns.1.w + columns.0.x * columns.3.z * columns.1.w + columns.1.x * columns.0.z * columns.3.w - columns.0.x * columns.1.z * columns.3.w,
              columns.1.x * columns.2.z * columns.0.w - columns.2.x * columns.1.z * columns.0.w + columns.2.x * columns.0.z * columns.1.w - columns.0.x * columns.2.z * columns.1.w - columns.1.x * columns.0.z * columns.2.w + columns.0.x * columns.1.z * columns.2.w)
    }
    /// Column at index 2 of the inverse matrix scaled by the determinant.
    @inline(__always)
    @usableFromInline
    internal var inverseColumn2: simd_double4 {
        .init(columns.2.x * columns.3.y * columns.1.w - columns.3.x * columns.2.y * columns.1.w + columns.3.x * columns.1.y * columns.2.w - columns.1.x * columns.3.y * columns.2.w - columns.2.x * columns.1.y * columns.3.w + columns.1.x * columns.2.y * columns.3.w,
              columns.3.x * columns.2.y * columns.0.w - columns.2.x * columns.3.y * columns.0.w - columns.3.x * columns.0.y * columns.2.w + columns.0.x * columns.3.y * columns.2.w + columns.2.x * columns.0.y * columns.3.w - columns.0.x * columns.2.y * columns.3.w,
              columns.1.x * columns.3.y * columns.0.w - columns.3.x * columns.1.y * columns.0.w + columns.3.x * columns.0.y * columns.1.w - columns.0.x * columns.3.y * columns.1.w - columns.1.x * columns.0.y * columns.3.w + columns.0.x * columns.1.y * columns.3.w,
              columns.2.x * columns.1.y * columns.0.w - columns.1.x * columns.2.y * columns.0.w - columns.2.x * columns.0.y * columns.1.w + columns.0.x * columns.2.y * columns.1.w + columns.1.x * columns.0.y * columns.2.w - columns.0.x * columns.1.y * columns.2.w)
    }
    /// Column at index 3 of the inverse matrix scaled by the determinant.
    @inline(__always)
    @usableFromInline
    internal var inverseColumn3: simd_double4 {
        .init(columns.3.x * columns.2.y * columns.1.z - columns.2.x * columns.3.y * columns.1.z - columns.3.x * columns.1.y * columns.2.z + columns.1.x * columns.3.y * columns.2.z + columns.2.x * columns.1.y * columns.3.z - columns.1.x * columns.2.y * columns.3.z,
              columns.2.x * columns.3.y * columns.0.z - columns.3.x * columns.2.y * columns.0.z + columns.3.x * columns.0.y * columns.2.z - columns.0.x * columns.3.y * columns.2.z - columns.2.x * columns.0.y * columns.3.z + columns.0.x * columns.2.y * columns.3.z,
              columns.3.x * columns.1.y * columns.0.z - columns.1.x * columns.3.y * columns.0.z - columns.3.x * columns.0.y * columns.1.z + columns.0.x * columns.3.y * columns.1.z + columns.1.x * columns.0.y * columns.3.z - columns.0.x * columns.1.y * columns.3.z,
              columns.1.x * columns.2.y * columns.0.z - columns.2.x * columns.1.y * columns.0.z + columns.2.x * columns.0.y * columns.1.z - columns.0.x * columns.2.y * columns.1.z - columns.1.x * columns.0.y * columns.2.z + columns.0.x * columns.1.y * columns.2.z)
    }

    /// Inverse of the receiver. The resulting matrix is undefined when the inverse doesn't exist.
    @available(macOS 10.10, iOS 8.0, tvOS 10.0, watchOS 3.0, *)
    @inlinable
    public var inverse: simd_double4x4 {
        var m = simd_double4x4(inverseColumn0, inverseColumn1, inverseColumn2, inverseColumn3)
        m *= (1.0 as Double) / (columns.0.x * m.columns.0.x + columns.1.x * m.columns.0.y + columns.2.x * m.columns.0.z + columns.3.x * m.columns.0.w)
        return m
    }

    /// Determinant of the receiver.
    @inlinable
    public var determinant: Double {
        let c: simd_double4 = columns.0 * ((KvShiftLeft1(columns.1) * ((KvShiftLeft2(columns.2) * KvShiftLeft3(columns.3)) as simd_double4 - (KvShiftLeft3(columns.2) * KvShiftLeft2(columns.3)) as simd_double4)) as simd_double4 +
                                           (KvShiftLeft2(columns.1) * ((KvShiftLeft3(columns.2) * KvShiftLeft1(columns.3)) as simd_double4 - (KvShiftLeft1(columns.2) * KvShiftLeft3(columns.3)) as simd_double4)) as simd_double4 +
                                           (KvShiftLeft3(columns.1) * ((KvShiftLeft1(columns.2) * KvShiftLeft2(columns.3)) as simd_double4 - (KvShiftLeft2(columns.2) * KvShiftLeft1(columns.3)) as simd_double4)) as simd_double4)
        return simd_reduce_add(c.evenHalf - c.oddHalf)
    }



    // MARK: Operators

    /// - Returns: Negated matrix.
    @inlinable
    public static prefix func -(rhs: simd_double4x4) -> simd_double4x4 { .init(-rhs.columns.0, -rhs.columns.1, -rhs.columns.2, -rhs.columns.3) }


    /// - Returns: Sum of given matrices.
    @inlinable
    public static func +(lhs: simd_double4x4, rhs: simd_double4x4) -> simd_double4x4 {
        .init(lhs.columns.0 + rhs.columns.0,
              lhs.columns.1 + rhs.columns.1,
              lhs.columns.2 + rhs.columns.2,
              lhs.columns.3 + rhs.columns.3)
    }


    /// - Returns: Subtraction of given matrices.
    @inlinable
    public static func -(lhs: simd_double4x4, rhs: simd_double4x4) -> simd_double4x4 {
        .init(lhs.columns.0 - rhs.columns.0,
              lhs.columns.1 - rhs.columns.1,
              lhs.columns.2 - rhs.columns.2,
              lhs.columns.3 - rhs.columns.3)
    }


    /// Adds *rhs* to *lhs* in place.
    @inlinable
    public static func +=(lhs: inout simd_double4x4, rhs: simd_double4x4) {
        lhs.columns.0 += rhs.columns.0
        lhs.columns.1 += rhs.columns.1
        lhs.columns.2 += rhs.columns.2
        lhs.columns.3 += rhs.columns.3
    }


    /// Subtracts *rhs* from *lhs* in place.
    @inlinable
    public static func -=(lhs: inout simd_double4x4, rhs: simd_double4x4) {
        lhs.columns.0 -= rhs.columns.0
        lhs.columns.1 -= rhs.columns.1
        lhs.columns.2 -= rhs.columns.2
        lhs.columns.3 -= rhs.columns.3
    }


    /// - Returns: Scaled *rhs* by *lhs*.
    @inlinable
    public static func *(lhs: Double, rhs: simd_double4x4) -> simd_double4x4 { .init(lhs * rhs.columns.0, lhs * rhs.columns.1, lhs * rhs.columns.2, lhs * rhs.columns.3) }


    /// - Returns: Scaled *lhs* by *rhs*.
    @inlinable
    public static func *(lhs: simd_double4x4, rhs: Double) -> simd_double4x4 { .init(rhs * lhs.columns.0, rhs * lhs.columns.1, rhs * lhs.columns.2, rhs * lhs.columns.3) }


    /// Scales *lhs* by *rhs* in place.
    @inlinable
    public static func *=(lhs: inout simd_double4x4, rhs: Double) {
        lhs.columns.0 *= rhs
        lhs.columns.1 *= rhs
        lhs.columns.2 *= rhs
        lhs.columns.3 *= rhs
    }


    /// - Returns: Product of *lhs* matrix and *rhs* vector as a single column matrix.
    @inlinable
    public static func *(lhs: simd_double4x4, rhs: SIMD4<Double>) -> SIMD4<Double> {
        .init(lhs.columns.0.x * rhs.x + lhs.columns.1.x * rhs.y + lhs.columns.2.x * rhs.z + lhs.columns.3.x * rhs.w,
              lhs.columns.0.y * rhs.x + lhs.columns.1.y * rhs.y + lhs.columns.2.y * rhs.z + lhs.columns.3.y * rhs.w,
              lhs.columns.0.z * rhs.x + lhs.columns.1.z * rhs.y + lhs.columns.2.z * rhs.z + lhs.columns.3.z * rhs.w,
              lhs.columns.0.w * rhs.x + lhs.columns.1.w * rhs.y + lhs.columns.2.w * rhs.z + lhs.columns.3.w * rhs.w)
    }


    /// - Returns: Product of *lhs* vector as a single row matrix and *rhs* matrix.
    @inlinable
    public static func *(lhs: SIMD4<Double>, rhs: simd_double4x4) -> SIMD4<Double> {
        .init(dot(lhs, rhs.columns.0),
              dot(lhs, rhs.columns.1),
              dot(lhs, rhs.columns.2),
              dot(lhs, rhs.columns.3))
    }


    /// - Returns: Product of *lhs* and *rhs* matrices.
    @inlinable
    public static func *(lhs: simd_double4x4, rhs: double2x4) -> double2x4 {
        .init(lhs * rhs.columns.0, lhs * rhs.columns.1)
    }


    /// - Returns: Product of *lhs* and *rhs* matrices.
    @inlinable
    public static func *(lhs: simd_double4x4, rhs: double3x4) -> double3x4 {
        .init(lhs * rhs.columns.0, lhs * rhs.columns.1, lhs * rhs.columns.2)
    }


    /// - Returns: Product of *lhs* and *rhs* matrices.
    @inlinable
    public static func *(lhs: simd_double4x4, rhs: double4x4) -> double4x4 {
        .init(lhs * rhs.columns.0, lhs * rhs.columns.1, lhs * rhs.columns.2, lhs * rhs.columns.3)
    }


    /// Multiplies *lhs* by *rhs* matrix in place.
    @inlinable
    public static func *=(lhs: inout simd_double4x4, rhs: double4x4) { lhs = lhs * rhs }

}
