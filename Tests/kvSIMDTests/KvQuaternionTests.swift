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
//  KvQuaternionTests.swift
//  kvSIMDTests
//
//  Created by Svyatoslav Popov on 03.08.2023.
//

import XCTest

@testable import kvSIMD

import simd



final class KvQuaternionTests : XCTestCase {

    // MARK: testInitAngleAxis()

    func testInitAngleAxis() {
        (0..<100).forEach { _ in
            assertEqual(RandomAngleAxisF(), QF.init(angle:axis:), simd.simd_quatf.init(angle:axis:), IsEqualQ(_:_:))
            assertEqual(RandomAngleAxisD(), QD.init(angle:axis:), simd.simd_quatd.init(angle:axis:), IsEqualQ(_:_:))
        }
    }



    // MARK: testInitFromTo()

    func testInitFromTo() {
        (0..<1000).forEach { _ in
            assertEqual((RandomUnitF3(), RandomUnitF3()), QF.init(from:to:), simd.simd_quatf.init(from:to:), { IsEqualQ($0, $1, eps: .explicit(1e-1)) })
            assertEqual((RandomUnitD3(), RandomUnitD3()), QD.init(from:to:), simd.simd_quatd.init(from:to:), { IsEqualQ($0, $1, eps: .explicit(1e-10)) })
        }
    }



    // MARK: testInitFromMatrix()

    func testInitFromMatrix() {
        (0..<100).forEach { _ in
            assertEqual(RandomInputQF(), { QF.init(F3x3($0.subject)) }, { simd.simd_quatf(simd.float3x3($0.reference)) }, IsEqualQ(_:_:))
            assertEqual(RandomInputQF(), { QF.init(F4x4($0.subject)) }, { simd.simd_quatf(simd.float4x4($0.reference)) }, IsEqualQ(_:_:))

            assertEqual(RandomInputQD(), { QD.init(D3x3($0.subject)) }, { simd.simd_quatd(simd.double3x3($0.reference)) }, IsEqualQ(_:_:))
            assertEqual(RandomInputQD(), { QD.init(D4x4($0.subject)) }, { simd.simd_quatd(simd.double4x4($0.reference)) }, IsEqualQ(_:_:))
        }
    }



    // MARK: testRealImag()

    func testRealImag() {
        do {
            let i1 = F3(1.0, 2.0, 3.0), r1 = 4.0 as Float
            let i2 = F3(5.0, 6.0, 7.0), r2 = 8.0 as Float

            var q = QF(real: r1, imag: i1)
            XCTAssertEqual(q.real, r1)
            XCTAssertEqual(q.imag, i1)

            q.real = r2
            XCTAssertEqual(q.real, r2)

            q.imag = i2
            XCTAssertEqual(q.imag, i2)
        }
        do {
            let i1 = D3(1.0, 2.0, 3.0), r1 = 4.0 as Double
            let i2 = D3(5.0, 6.0, 7.0), r2 = 8.0 as Double

            var q = QD(real: r1, imag: i1)
            XCTAssertEqual(q.real, r1)
            XCTAssertEqual(q.imag, i1)

            q.real = r2
            XCTAssertEqual(q.real, r2)

            q.imag = i2
            XCTAssertEqual(q.imag, i2)
        }
    }



    // MARK: testAngle()

    func testAngle() {
        (0..<1000).forEach { _ in
            assertEqual(RandomInputQF(), { $0.subject.angle }, { $0.reference.angle }, { IsEqual($0, $1, eps: .explicit(1e-3)) })
            assertEqual(RandomInputQD(), { $0.subject.angle }, { $0.reference.angle }, { IsEqual($0, $1, eps: .explicit(1e-10)) })
        }
    }



    // MARK: testAxis()

    func testAxis() {
        (0..<100).forEach { _ in
            assertEqual(RandomInputQF(), { $0.subject.axis }, { $0.reference.axis }, IsEqual(_:_:))
            assertEqual(RandomInputQD(), { $0.subject.axis }, { $0.reference.axis }, IsEqual(_:_:))
        }
    }



    // MARK: testConjugate()

    func testConjugate() {
        (0..<100).forEach { _ in
            assertEqual(RandomInputQF(), { $0.subject.conjugate }, { $0.reference.conjugate }, IsEqualQ(_:_:))
            assertEqual(RandomInputQD(), { $0.subject.conjugate }, { $0.reference.conjugate }, IsEqualQ(_:_:))
        }
    }



    // MARK: testInverse()

    func testInverse() {
        (0..<100).forEach { _ in
            assertEqual(RandomInputQF(), { $0.subject.inverse }, { $0.reference.inverse }, IsEqualQ(_:_:))
            assertEqual(RandomInputQD(), { $0.subject.inverse }, { $0.reference.inverse }, IsEqualQ(_:_:))
        }
    }



    // MARK: testAct()

    func testAct() {
        (0..<100).forEach { _ in
            assertEqual((RandomInputQF(), RandomUnitF3()), { $0.0.subject.act($0.1) }, { $0.0.reference.act($0.1) }, IsEqual(_:_:))
            assertEqual((RandomInputQD(), RandomUnitD3()), { $0.0.subject.act($0.1) }, { $0.0.reference.act($0.1) }, IsEqual(_:_:))
        }
    }



    // MARK: testArithmetic()

    func testArithmetic() {

        func RunFloat() {
            typealias Scalar = Float

            let scalar = Scalar.random(in: 0.5 ... 2.0)

            let l1 = QF(angle: .random(in: 0 ..< (2.0 * Scalar.pi)), axis: RandomUnitF3())
            let r1 = QF(angle: .random(in: 0 ..< (2.0 * Scalar.pi)), axis: RandomUnitF3())

            let l2 = simd.simd_quatf(vector: l1.vector), r2 = simd.simd_quatf(vector: r1.vector)

            XCTAssertTrue(IsEqualQ(-r1, -r2), "\(-r1) quaternion is not equal to expected \(-r2) negated quaternion of \(r1)")
            
            assertEqual(l1 + r1, l2 + r2, "\(l1) + \(r1)")
            assertEqual(l1 - r1, l2 - r2, "\(l1) - \(r1)")
            assertEqual(l1 * r1, l2 * r2, "\(l1) * \(r1)")
            assertEqual(l1 / r1, l2 / r2, "\(l1) / \(r1)")

            func AssertQ(_ resultBlock: (inout QF, QF) -> Void,
                         _ expectedBlock: (inout simd.simd_quatf, simd.simd_quatf) -> Void)
            {
                var result = l1
                resultBlock(&result, r1)
                var expected = l2
                expectedBlock(&expected, r2)
                XCTAssertTrue(IsEqualQ(result, expected))
            }

            AssertQ(+=, +=)
            AssertQ(-=, -=)
            AssertQ(*=, *=)
            AssertQ(/=, /=)

            assertEqual(l1 * scalar, l2 * scalar, "\(l1) * \(scalar)")
            assertEqual(scalar * r1, scalar * r2, "\(scalar) * \(r1)")
            assertEqual(l1 / scalar, l2 / scalar, "\(l1) / \(scalar)")

            func AssertS(_ resultBlock: (inout QF, Scalar) -> Void,
                         _ expectedBlock: (inout simd.simd_quatf, Scalar) -> Void)
            {
                var result = l1
                resultBlock(&result, scalar)
                var expected = l2
                expectedBlock(&expected, scalar)
                XCTAssertTrue(IsEqualQ(result, expected))
            }

            AssertS(*=, *=)
            AssertS(/=, /=)
        }

        func RunDouble() {
            typealias Scalar = Double

            let scalar = Scalar.random(in: 0.5 ... 2.0)

            let l1 = QD(angle: .random(in: 0 ..< (2.0 * Scalar.pi)), axis: RandomUnitD3())
            let r1 = QD(angle: .random(in: 0 ..< (2.0 * Scalar.pi)), axis: RandomUnitD3())

            let l2 = simd.simd_quatd(vector: l1.vector), r2 = simd.simd_quatd(vector: r1.vector)

            XCTAssertTrue(IsEqualQ(-r1, -r2), "\(-r1) quaternion is not equal to expected \(-r2) negated quaternion of \(r1)")

            assertEqual(l1 + r1, l2 + r2, "\(l1) + \(r1)")
            assertEqual(l1 - r1, l2 - r2, "\(l1) - \(r1)")
            assertEqual(l1 * r1, l2 * r2, "\(l1) * \(r1)")
            assertEqual(l1 / r1, l2 / r2, "\(l1) / \(r1)")

            func AssertQ(_ resultBlock: (inout QD, QD) -> Void,
                         _ expectedBlock: (inout simd.simd_quatd, simd.simd_quatd) -> Void)
            {
                var result = l1
                resultBlock(&result, r1)
                var expected = l2
                expectedBlock(&expected, r2)
                XCTAssertTrue(IsEqualQ(result, expected))
            }

            AssertQ(+=, +=)
            AssertQ(-=, -=)
            AssertQ(*=, *=)
            AssertQ(/=, /=)

            assertEqual(l1 * scalar, l2 * scalar, "\(l1) * \(scalar)")
            assertEqual(scalar * r1, scalar * r2, "\(scalar) * \(r1)")
            assertEqual(l1 / scalar, l2 / scalar, "\(l1) / \(scalar)")

            func AssertS(_ resultBlock: (inout QD, Scalar) -> Void,
                         _ expectedBlock: (inout simd.simd_quatd, Scalar) -> Void)
            {
                var result = l1
                resultBlock(&result, scalar)
                var expected = l2
                expectedBlock(&expected, scalar)
                XCTAssertTrue(IsEqualQ(result, expected))
            }

            AssertS(*=, *=)
            AssertS(/=, /=)
        }

        (0..<100).forEach { _ in
            RunFloat()
            RunDouble()
        }
    }



    // MARK: Auxiliaries

    private func assertEqual<I, L, R>(_ input: I, _ lFabric: (I) -> L, _ rFabric: (I) -> R, _ validator: (L, R) -> Bool) {
        let lhs = lFabric(input)
        let rhs = rFabric(input)
        XCTAssertTrue(validator(lhs, rhs), "\(lhs) is not equal to \(rhs) for \(input) input")
    }

    private func assertEqual(_ subject: QF, _ expected: simd.simd_quatf, _ message: @autoclosure () -> String = "") {
        XCTAssertTrue(IsEqualQ(subject, expected), "\(subject) quaternion is not equal to expected \(expected)\(!message().isEmpty ? ". " + message() : "")")
    }

    private func assertEqual(_ subject: QD, _ expected: simd.simd_quatd, _ message: @autoclosure () -> String = "") {
        XCTAssertTrue(IsEqualQ(subject, expected), "\(subject) quaternion is not equal to expected \(expected)\(!message().isEmpty ? ". " + message() : "")")
    }


}
