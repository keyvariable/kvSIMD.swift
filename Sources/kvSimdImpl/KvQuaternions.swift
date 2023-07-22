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
//  KvQuaternions.swift
//  kvSimdImpl
//
//  Created by Svyatoslav Popov on 02.08.2023.
//

import Foundation



// MARK: - simd_quatf

/// A `Float`-element quaternion.
///
/// It's represented as a 4-element vector where first three elements are a vector (imaginary) part, fourth element is a scalar (real) part.
public struct simd_quatf : Equatable, CustomDebugStringConvertible {

    /// A 4-element vector representation of a quaternion where first three elements are a vector (imaginary) part, fourth element is a scalar (real) part.
    public var vector: simd_float4



    /// Initializes a zero quaternion.
    @inlinable
    public init() { vector = .zero }


    /// A memberwise initializer.
    @inlinable
    public init(vector: simd_float4) { self.vector = vector }


    /// Componentwise initializer.
    ///
    /// - Parameter ix: The x-component of the vector (imaginary) part of quaternion.
    /// - Parameter iy: The y-component of the vector (imaginary) part of quaternion.
    /// - Parameter iz: The z-component of the vector (imaginary) part of quaternion.
    /// - Parameter r: The scalar (real) par of quaternion.
    @inlinable
    public init(ix: Float, iy: Float, iz: Float, r: Float) { self.vector = .init(ix, iy, iz, r) }


    /// Initializes a quaternion from scalar (real) and vector (imaginary) parts.
    @inlinable
    public init(real: Float, imag: SIMD3<Float>) { self.vector = .init(imag, real) }


    /// A rotation quaternion by *angle* about unit vector *axis* .
    @inlinable
    public init(angle: Float, axis: SIMD3<Float>) {
        let halfAngle = 0.5 * angle
        let sine = sin(halfAngle), cosine = cos(halfAngle)

        vector = .init(axis * sine, cosine)
    }


    /// A rotation quaternion from unit vector *from* onto unit vector *to*.
    @inlinable
    public init(from: SIMD3<Float>, to: SIMD3<Float>) {
        let cosine = dot(from, to)

        if cosine >= 1.0 - Float.ulpOfOne {
            vector = .init(.zero, 1)
        }
        else if cosine <= -1.0 + Float.ulpOfOne {
            // - Note: The vector below is orthogonal to `from`.
            vector = .init(normalize(simd_float3(from.y - from.z, from.z - from.x, from.x - from.y)), 0.0)
        }
        else {
            let halfCosine = sqrt(0.5 * (1.0 + cosine))
            vector = .init(cross(from, to) / (2.0 * halfCosine), halfCosine)
        }
    }


    /// A quaternion from the elements of a rotation matrix.
    @inline(__always)
    @usableFromInline
    internal init(col1 r11: Float, _ r21: Float, _ r31: Float, col2 r12: Float, _ r22: Float, _ r32: Float, col3 r13: Float, _ r23: Float, _ r33: Float) {
        let trace = r11 + r22 + r33

        switch trace > Float.ulpOfOne {
        case true:      // No division by zero.
            let r = sqrt(trace + 1.0)
            let s = 0.5 / r

            vector = .init((r32 - r23) * s,
                           (r13 - r31) * s,
                           (r21 - r12) * s,
                           0.5 * r)

        case false:     // Selection of the largest diagonal entry.

            func R11Case() -> simd_float4 {
                let r = sqrt(1.0 + r11 - r22 - r33)
                let s = 0.5 / r

                return .init(0.5 * r,
                             (r12 + r21) * s,
                             (r31 + r13) * s,
                             (r32 - r23) * s)
            }

            func R22Case() -> simd_float4 {
                let r = sqrt(1.0 + r22 - r33 - r11)
                let s = 0.5 / r

                return .init((r21 + r12) * s,
                             0.5 * r,
                             (r32 + r23) * s,
                             (r13 - r31) * s)
            }

            func R33Case() -> simd_float4 {
                let r = sqrt(1.0 + r33 - r11 - r22)
                let s = 0.5 / r

                return .init((r31 + r13) * s,
                             (r32 + r23) * s,
                             0.5 * r,
                             (r21 - r12) * s)
            }

            vector = (r11 > r22
                      ? (r11 > r33 ? R11Case() : R33Case())
                      : (r22 > r33 ? R22Case() : R33Case()))
        }
    }


    /// A quaternion from a rotation matrix.
    @inlinable
    public init(_ rotationMatrix: simd_float3x3) { self.init(col1: rotationMatrix[0].x, rotationMatrix[0].y, rotationMatrix[0].z,
                                                             col2: rotationMatrix[1].x, rotationMatrix[1].y, rotationMatrix[1].z,
                                                             col3: rotationMatrix[2].x, rotationMatrix[2].y, rotationMatrix[2].z) }


    /// A quaternion from a rotation matrix.
    @inlinable
    public init(_ rotationMatrix: simd_float4x4) { self.init(col1: rotationMatrix[0].x, rotationMatrix[0].y, rotationMatrix[0].z,
                                                             col2: rotationMatrix[1].x, rotationMatrix[1].y, rotationMatrix[1].z,
                                                             col3: rotationMatrix[2].x, rotationMatrix[2].y, rotationMatrix[2].z) }



    // MARK: : Equatable

    @inlinable
    public static func == (lhs: simd_quatf, rhs: simd_quatf) -> Bool { lhs.vector == rhs.vector }



    // MARK: : CustomDebugStringConvertible

    @inlinable
    public var debugDescription: String { "simd_quatf(real: \(real), imag: \(imag))" }



    // MARK: Operations

    /// The scalar (real) part of the receiver.
    @inlinable
    public var real: Float { vector.w }

    /// The vector (imaginary) part of the receiver.
    @inlinable
    public var imag: SIMD3<Float> { simd_make_float3(vector) }

    /// The angle of the rotation when the receiver is a unit quaternion.
    @inlinable
    public var angle: Float { 2.0 * acos(vector.w / length) }

    /// The axis of the rotation when the receiver is a unit quaternion. It is the normalized vector (imaginary) part.
    @inlinable
    public var axis: SIMD3<Float> { normalize(imag) }

    /// The conjugate of the receiver.
    @inlinable
    public var conjugate: simd_quatf { .init(vector: simd_float4(-vector.x, -vector.y, -vector.z, vector.w)) }

    /// The inverse of the receiver.
    @inlinable
    public var inverse: simd_quatf { .init(vector: simd_float4(-vector.x, -vector.y, -vector.z, vector.w) / length_squared(vector)) }

    /// The receiver devided by it's length.
    @inlinable
    public var normalized: simd_quatf { .init(vector: normalize(vector)) }

    /// The length of the receiver.
    @inlinable
    public var length: Float { kvSimdImpl.length(vector) }


    /// - Returns: The result of rotation of given *vector* by the receiver.
    ///
    /// - Note: It's assumed that the receiver is a unit quaternion.
    @inlinable
    public func act(_ vector: SIMD3<Float>) -> SIMD3<Float> {
        let xyz = imag, w = real
        // 2 * w * w - 1 = w * w - xyz.dot(xyz) for unit quaternions.
        return (2.0 as Float) * ((dot(xyz, vector) * xyz) as SIMD3<Float> + (w * cross(xyz, vector)) as SIMD3<Float> + ((w * w - (0.5) as Float) * vector) as SIMD3<Float>)
    }



    // MARK: Operators

    /// - Returns: Componentwise addition of given quaternions.
    @inlinable
    public static func +(lhs: simd_quatf, rhs: simd_quatf) -> simd_quatf { .init(vector: lhs.vector + rhs.vector) }


    /// Stores result of the componentwise addition into *lhs*.
    @inlinable
    public static func +=(lhs: inout simd_quatf, rhs: simd_quatf) { lhs.vector += rhs.vector }


    /// - Returns: Componentwise subtraction of given quaternions.
    @inlinable
    public static func -(lhs: simd_quatf, rhs: simd_quatf) -> simd_quatf { .init(vector: lhs.vector - rhs.vector) }


    /// Stores result of the componentwise subtraction into *lhs*.
    @inlinable
    public static func -=(lhs: inout simd_quatf, rhs: simd_quatf) { lhs.vector -= rhs.vector }


    /// - Returns: A quaternion having the negated vector represention.
    @inlinable
    public static prefix func -(rhs: simd_quatf) -> simd_quatf { .init(vector: -rhs.vector) }


    /// - Returns: Composition of two quaternions.
    @inlinable
    public static func *(lhs: simd_quatf, rhs: simd_quatf) -> simd_quatf {
        let lv = lhs.imag, lw = lhs.real, rv = rhs.imag, rw = rhs.real

        return .init(real: lw * rw - dot(lv, rv), imag: cross(lv, rv) + lw * rv + rw * lv)
    }


    /// - Returns: Componentwise scale.
    @inlinable
    public static func *(lhs: Float, rhs: simd_quatf) -> simd_quatf { .init(vector: lhs * rhs.vector) }


    /// - Returns: Componentwise scale.
    @inlinable
    public static func *(lhs: simd_quatf, rhs: Float) -> simd_quatf { .init(vector: lhs.vector * rhs) }


    /// Stores composition of given quaternions into *lhs*.
    @inlinable
    public static func *=(lhs: inout simd_quatf, rhs: simd_quatf) {
        let lv = lhs.imag, lw = lhs.real, rv = rhs.imag, rw = rhs.real
        let dot = dot(lv, rv)

        lhs.vector = .init(cross(lv, rv) + lw * rv + rw * lv, lw * rw - dot)
    }


    /// Scales elements of *lhs* by *rhs*.
    @inlinable
    public static func *=(lhs: inout simd_quatf, rhs: Float) { lhs.vector *= rhs }


    /// - Returns: Composition of *lhs* and inverse *rhs* quaternions.
    @inlinable
    public static func /(lhs: simd_quatf, rhs: simd_quatf) -> simd_quatf {
        let lv = lhs.imag, lw = lhs.real, rv = rhs.imag, rw = rhs.real

        return .init(real: lw * rw + dot(lv, rv), imag: rw * lv - cross(lv, rv) - lw * rv)
    }


    /// - Returns: Componentwise division.
    @inlinable
    public static func /(lhs: simd_quatf, rhs: Float) -> simd_quatf { .init(vector: lhs.vector / rhs) }


    /// Stores composition of *lhs* and inverse *rhs* quaternions into *lhs*.
    @inlinable
    public static func /=(lhs: inout simd_quatf, rhs: simd_quatf) {
        let lv = lhs.imag, lw = lhs.real, rv = rhs.imag, rw = rhs.real
        let dot = dot(lv, rv)

        lhs.vector = .init(rw * lv - cross(lv, rv) - lw * rv, lw * rw + dot)
    }


    /// Divides elements of *lhs* by *rhs*.
    @inlinable
    public static func /=(lhs: inout simd_quatf, rhs: Float) { lhs.vector /= rhs }

}



// MARK: - simd_quatd

/// A `Double`-element quaternion.
///
/// It's represented as a 4-element vector where first three elements are a vector (imaginary) part, fourth element is a scalar (real) part.
public struct simd_quatd : Equatable, CustomDebugStringConvertible {

    /// A 4-element vector representation of a quaternion where first three elements are a vector (imaginary) part, fourth element is a scalar (real) part.
    public var vector: simd_double4



    /// Initializes a zero quaternion.
    @inlinable
    public init() { vector = .zero }

    /// A memberwise initializer.
    @inlinable
    public init(vector: simd_double4) { self.vector = vector }


    /// Componentwise initializer.
    ///
    /// - Parameter ix: The x-component of the vector (imaginary) part of quaternion.
    /// - Parameter iy: The y-component of the vector (imaginary) part of quaternion.
    /// - Parameter iz: The z-component of the vector (imaginary) part of quaternion.
    /// - Parameter r: The scalar (real) par of quaternion.
    @inlinable
    public init(ix: Double, iy: Double, iz: Double, r: Double) { self.vector = .init(ix, iy, iz, r) }


    /// Initializes a quaternion from scalar (real) and vector (imaginary) parts.
    @inlinable
    public init(real: Double, imag: SIMD3<Double>) { self.vector = .init(imag, real) }


    /// A rotation quaternion by *angle* about unit vector *axis* .
    @inlinable
    public init(angle: Double, axis: SIMD3<Double>) {
        let halfAngle = 0.5 * angle
        let sine = sin(halfAngle), cosine = cos(halfAngle)

        vector = .init(axis * sine, cosine)
    }


    /// A rotation quaternion from unit vector *from* onto unit vector *to*.
    @inlinable
    public init(from: SIMD3<Double>, to: SIMD3<Double>) {
        let cosine = dot(from, to)

        if cosine >= 1.0 - Double.ulpOfOne {
            vector = .init(.zero, 1)
        }
        else if cosine <= -1.0 + Double.ulpOfOne {
            // - Note: The vector below is orthogonal to `from`.
            vector = .init(normalize(simd_double3(from.y - from.z, from.z - from.x, from.x - from.y)), 0.0)
        }
        else {
            let halfCosine = sqrt(0.5 * (1.0 + cosine))
            vector = .init(cross(from, to) / (2.0 * halfCosine), halfCosine)
        }
    }


    /// A quaternion from the elements of a rotation matrix.
    @inline(__always)
    @usableFromInline
    internal init(col1 r11: Double, _ r21: Double, _ r31: Double, col2 r12: Double, _ r22: Double, _ r32: Double, col3 r13: Double, _ r23: Double, _ r33: Double) {
        let trace = r11 + r22 + r33

        switch trace > Double.ulpOfOne {
        case true:      // No division by zero.
            let r = sqrt(trace + 1.0)
            let s = 0.5 / r

            vector = .init((r32 - r23) * s,
                           (r13 - r31) * s,
                           (r21 - r12) * s,
                           0.5 * r)

        case false:     // Selection of the largest diagonal entry.

            func R11Case() -> simd_double4 {
                let r = sqrt(1.0 + r11 - r22 - r33)
                let s = 0.5 / r

                return .init(0.5 * r,
                             (r12 + r21) * s,
                             (r31 + r13) * s,
                             (r32 - r23) * s)
            }

            func R22Case() -> simd_double4 {
                let r = sqrt(1.0 + r22 - r33 - r11)
                let s = 0.5 / r

                return .init((r21 + r12) * s,
                             0.5 * r,
                             (r32 + r23) * s,
                             (r13 - r31) * s)
            }

            func R33Case() -> simd_double4 {
                let r = sqrt(1.0 + r33 - r11 - r22)
                let s = 0.5 / r

                return .init((r31 + r13) * s,
                             (r32 + r23) * s,
                             0.5 * r,
                             (r21 - r12) * s)
            }

            vector = (r11 > r22
                      ? (r11 > r33 ? R11Case() : R33Case())
                      : (r22 > r33 ? R22Case() : R33Case()))
        }
    }


    /// A quaternion from a rotation matrix.
    @inlinable
    public init(_ rotationMatrix: simd_double3x3) { self.init(col1: rotationMatrix[0].x, rotationMatrix[0].y, rotationMatrix[0].z,
                                                              col2: rotationMatrix[1].x, rotationMatrix[1].y, rotationMatrix[1].z,
                                                              col3: rotationMatrix[2].x, rotationMatrix[2].y, rotationMatrix[2].z) }


    /// A quaternion from a rotation matrix.
    @inlinable
    public init(_ rotationMatrix: simd_double4x4) { self.init(col1: rotationMatrix[0].x, rotationMatrix[0].y, rotationMatrix[0].z,
                                                              col2: rotationMatrix[1].x, rotationMatrix[1].y, rotationMatrix[1].z,
                                                              col3: rotationMatrix[2].x, rotationMatrix[2].y, rotationMatrix[2].z) }



    // MARK: : Equatable

    @inlinable
    public static func == (lhs: simd_quatd, rhs: simd_quatd) -> Bool { lhs.vector == rhs.vector }



    // MARK: : CustomDebugStringConvertible

    @inlinable
    public var debugDescription: String { "simd_quatd(real: \(real), imag: \(imag))" }



    // MARK: Operations

    /// The scalar (real) part of the receiver.
    @inlinable
    public var real: Double { vector.w }

    /// The vector (imaginary) part of the receiver.
    @inlinable
    public var imag: SIMD3<Double> { simd_make_double3(vector) }

    /// The angle of the rotation when the receiver is a unit quaternion.
    @inlinable
    public var angle: Double { 2.0 * acos(vector.w / length) }

    /// The axis of the rotation when the receiver is a unit quaternion. It is the normalized vector (imaginary) part.
    @inlinable
    public var axis: SIMD3<Double> { normalize(imag) }

    /// The conjugate of the receiver.
    @inlinable
    public var conjugate: simd_quatd { .init(vector: simd_double4(-vector.x, -vector.y, -vector.z, vector.w)) }

    /// The inverse of the receiver.
    @inlinable
    public var inverse: simd_quatd { .init(vector: simd_double4(-vector.x, -vector.y, -vector.z, vector.w) / length_squared(vector)) }

    /// The receiver devided by it's length.
    @inlinable
    public var normalized: simd_quatd { .init(vector: normalize(vector)) }

    /// The length of the receiver.
    @inlinable
    public var length: Double { kvSimdImpl.length(vector) }


    /// - Returns: The result of rotation of given *vector* by the receiver.
    ///
    /// - Note: It's assumed that the receiver is a unit quaternion.
    @inlinable
    public func act(_ vector: SIMD3<Double>) -> SIMD3<Double> {
        let xyz = imag, w = real
        // 2 * w * w - 1 = w * w - xyz.dot(xyz) for unit quaternions.
        return (2.0 as Double) * ((dot(xyz, vector) * xyz) as SIMD3<Double> + (w * cross(xyz, vector)) as SIMD3<Double> + ((w * w - (0.5 as Double)) * vector) as SIMD3<Double>)
    }



    // MARK: Operators

    /// - Returns: Componentwise addition of given quaternions.
    @inlinable
    public static func +(lhs: simd_quatd, rhs: simd_quatd) -> simd_quatd { .init(vector: lhs.vector + rhs.vector) }


    /// Stores result of the componentwise addition into *lhs*.
    @inlinable
    public static func +=(lhs: inout simd_quatd, rhs: simd_quatd) { lhs.vector += rhs.vector }


    /// - Returns: Componentwise subtraction of given quaternions.
    @inlinable
    public static func -(lhs: simd_quatd, rhs: simd_quatd) -> simd_quatd { .init(vector: lhs.vector - rhs.vector) }


    /// Stores result of the componentwise subtraction into *lhs*.
    @inlinable
    public static func -=(lhs: inout simd_quatd, rhs: simd_quatd) { lhs.vector -= rhs.vector }


    /// - Returns: A quaternion having the negated vector represention.
    @inlinable
    public static prefix func -(rhs: simd_quatd) -> simd_quatd { .init(vector: -rhs.vector) }


    /// - Returns: Composition of two quaternions.
    @inlinable
    public static func *(lhs: simd_quatd, rhs: simd_quatd) -> simd_quatd {
        let lv = lhs.imag, lw = lhs.real, rv = rhs.imag, rw = rhs.real

        return .init(real: lw * rw - dot(lv, rv), imag: cross(lv, rv) + lw * rv + rw * lv)
    }


    /// - Returns: Componentwise scale.
    @inlinable
    public static func *(lhs: Double, rhs: simd_quatd) -> simd_quatd { .init(vector: lhs * rhs.vector) }


    /// - Returns: Componentwise scale.
    @inlinable
    public static func *(lhs: simd_quatd, rhs: Double) -> simd_quatd { .init(vector: lhs.vector * rhs) }


    /// Stores composition of given quaternions into *lhs*.
    @inlinable
    public static func *=(lhs: inout simd_quatd, rhs: simd_quatd) {
        let lv = lhs.imag, lw = lhs.real, rv = rhs.imag, rw = rhs.real
        let dot = dot(lv, rv)

        lhs.vector = .init(cross(lv, rv) + lw * rv + rw * lv, lw * rw - dot)
    }


    /// Scales elements of *lhs* by *rhs*.
    @inlinable
    public static func *=(lhs: inout simd_quatd, rhs: Double) { lhs.vector *= rhs }


    /// - Returns: Composition of *lhs* and inverse *rhs* quaternions.
    @inlinable
    public static func /(lhs: simd_quatd, rhs: simd_quatd) -> simd_quatd {
        let lv = lhs.imag, lw = lhs.real, rv = rhs.imag, rw = rhs.real

        return .init(real: lw * rw + dot(lv, rv), imag: rw * lv - cross(lv, rv) - lw * rv)
    }


    /// - Returns: Componentwise division.
    @inlinable
    public static func /(lhs: simd_quatd, rhs: Double) -> simd_quatd { .init(vector: lhs.vector / rhs) }


    /// Stores composition of *lhs* and inverse *rhs* quaternions into *lhs*.
    @inlinable
    public static func /=(lhs: inout simd_quatd, rhs: simd_quatd) {
        let lv = lhs.imag, lw = lhs.real, rv = rhs.imag, rw = rhs.real
        let dot = dot(lv, rv)

        lhs.vector = .init(rw * lv - cross(lv, rv) - lw * rv, lw * rw + dot)
    }


    /// Divides elements of *lhs* by *rhs*.
    @inlinable
    public static func /=(lhs: inout simd_quatd, rhs: Double) { lhs.vector /= rhs }

}
