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
//  KvBenchmarkApp.swift
//  kvSIMDBenchmark
//
//  Created by Svyatoslav Popov on 23.07.2023.
//

import Foundation

import kvSimdImpl

import simd



@main
struct KvBenchmarkApp {

    // MARK: Main

    static func main() {
        // Optional collection of test labels to execute. It it's non-nil then only tests having given labels are executed.
        let labelFilter: Set<String>? = nil

        let benchmark = KvBenchmark()

        do {

            func Run(label: String, block: (KvBenchmark.RunContext) -> Void) {
                guard labelFilter?.contains(label) != false else { return }
                benchmark.run(label: label, block: block)
            }


            let input = Input()

            Run(label: "abs") { context in
                context.run(.i2, for: input.i2[], reference: simd.abs as (I2) -> I2, subject: kvSimdImpl.abs as (I2) -> I2)
                context.run(.i3, for: input.i3[], reference: simd.abs as (I3) -> I3, subject: kvSimdImpl.abs as (I3) -> I3)
                context.run(.i4, for: input.i4[], reference: simd.abs as (I4) -> I4, subject: kvSimdImpl.abs as (I4) -> I4)
                context.run(.f2, for: input.f2[], reference: simd.abs as (F2) -> F2, subject: kvSimdImpl.abs as (F2) -> F2)
                context.run(.f3, for: input.f3[], reference: simd.abs as (F3) -> F3, subject: kvSimdImpl.abs as (F3) -> F3)
                context.run(.f4, for: input.f4[], reference: simd.abs as (F4) -> F4, subject: kvSimdImpl.abs as (F4) -> F4)
                context.run(.d2, for: input.d2[], reference: simd.abs as (D2) -> D2, subject: kvSimdImpl.abs as (D2) -> D2)
                context.run(.d3, for: input.d3[], reference: simd.abs as (D3) -> D3, subject: kvSimdImpl.abs as (D3) -> D3)
                context.run(.d4, for: input.d4[], reference: simd.abs as (D4) -> D4, subject: kvSimdImpl.abs as (D4) -> D4)
            }

            if #available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *) {
                Run(label: "acos") { context in
                    context.run(.f2 , for: input.f2 [.sin], reference: simd.acos as (F2 ) -> F2 , subject: kvSimdImpl.acos as (F2 ) -> F2 )
                    context.run(.f3 , for: input.f3 [.sin], reference: simd.acos as (F3 ) -> F3 , subject: kvSimdImpl.acos as (F3 ) -> F3 )
                    context.run(.f4 , for: input.f4 [.sin], reference: simd.acos as (F4 ) -> F4 , subject: kvSimdImpl.acos as (F4 ) -> F4 )
                    context.run(.f8 , for: input.f8 [.sin], reference: simd.acos as (F8 ) -> F8 , subject: kvSimdImpl.acos as (F8 ) -> F8 )
                    context.run(.f16, for: input.f16[.sin], reference: simd.acos as (F16) -> F16, subject: kvSimdImpl.acos as (F16) -> F16)
                    context.run(.d2 , for: input.d2 [.sin], reference: simd.acos as (D2 ) -> D2 , subject: kvSimdImpl.acos as (D2 ) -> D2 )
                    context.run(.d3 , for: input.d3 [.sin], reference: simd.acos as (D3 ) -> D3 , subject: kvSimdImpl.acos as (D3 ) -> D3 )
                    context.run(.d4 , for: input.d4 [.sin], reference: simd.acos as (D4 ) -> D4 , subject: kvSimdImpl.acos as (D4 ) -> D4 )
                    context.run(.d8 , for: input.d8 [.sin], reference: simd.acos as (D8 ) -> D8 , subject: kvSimdImpl.acos as (D8 ) -> D8 )
                }
                Run(label: "acosh") { context in
                    context.run(.f2 , for: input.f2 [.cosh], reference: simd.acosh as (F2 ) -> F2 , subject: kvSimdImpl.acosh as (F2 ) -> F2 )
                    context.run(.f3 , for: input.f3 [.cosh], reference: simd.acosh as (F3 ) -> F3 , subject: kvSimdImpl.acosh as (F3 ) -> F3 )
                    context.run(.f4 , for: input.f4 [.cosh], reference: simd.acosh as (F4 ) -> F4 , subject: kvSimdImpl.acosh as (F4 ) -> F4 )
                    context.run(.f8 , for: input.f8 [.cosh], reference: simd.acosh as (F8 ) -> F8 , subject: kvSimdImpl.acosh as (F8 ) -> F8 )
                    context.run(.f16, for: input.f16[.cosh], reference: simd.acosh as (F16) -> F16, subject: kvSimdImpl.acosh as (F16) -> F16)
                    context.run(.d2 , for: input.d2 [.cosh], reference: simd.acosh as (D2 ) -> D2 , subject: kvSimdImpl.acosh as (D2 ) -> D2 )
                    context.run(.d3 , for: input.d3 [.cosh], reference: simd.acosh as (D3 ) -> D3 , subject: kvSimdImpl.acosh as (D3 ) -> D3 )
                    context.run(.d4 , for: input.d4 [.cosh], reference: simd.acosh as (D4 ) -> D4 , subject: kvSimdImpl.acosh as (D4 ) -> D4 )
                    context.run(.d8 , for: input.d8 [.cosh], reference: simd.acosh as (D8 ) -> D8 , subject: kvSimdImpl.acosh as (D8 ) -> D8 )
                }
                Run(label: "asin") { context in
                    context.run(.f2 , for: input.f2 [.sin], reference: simd.asin as (F2 ) -> F2 , subject: kvSimdImpl.asin as (F2 ) -> F2 )
                    context.run(.f3 , for: input.f3 [.sin], reference: simd.asin as (F3 ) -> F3 , subject: kvSimdImpl.asin as (F3 ) -> F3 )
                    context.run(.f4 , for: input.f4 [.sin], reference: simd.asin as (F4 ) -> F4 , subject: kvSimdImpl.asin as (F4 ) -> F4 )
                    context.run(.f8 , for: input.f8 [.sin], reference: simd.asin as (F8 ) -> F8 , subject: kvSimdImpl.asin as (F8 ) -> F8 )
                    context.run(.f16, for: input.f16[.sin], reference: simd.asin as (F16) -> F16, subject: kvSimdImpl.asin as (F16) -> F16)
                    context.run(.d2 , for: input.d2 [.sin], reference: simd.asin as (D2 ) -> D2 , subject: kvSimdImpl.asin as (D2 ) -> D2 )
                    context.run(.d3 , for: input.d3 [.sin], reference: simd.asin as (D3 ) -> D3 , subject: kvSimdImpl.asin as (D3 ) -> D3 )
                    context.run(.d4 , for: input.d4 [.sin], reference: simd.asin as (D4 ) -> D4 , subject: kvSimdImpl.asin as (D4 ) -> D4 )
                    context.run(.d8 , for: input.d8 [.sin], reference: simd.asin as (D8 ) -> D8 , subject: kvSimdImpl.asin as (D8 ) -> D8 )
                }
                Run(label: "asinh") { context in
                    context.run(.f2 , for: input.f2 [], reference: simd.asinh as (F2 ) -> F2 , subject: kvSimdImpl.asinh as (F2 ) -> F2 )
                    context.run(.f3 , for: input.f3 [], reference: simd.asinh as (F3 ) -> F3 , subject: kvSimdImpl.asinh as (F3 ) -> F3 )
                    context.run(.f4 , for: input.f4 [], reference: simd.asinh as (F4 ) -> F4 , subject: kvSimdImpl.asinh as (F4 ) -> F4 )
                    context.run(.f8 , for: input.f8 [], reference: simd.asinh as (F8 ) -> F8 , subject: kvSimdImpl.asinh as (F8 ) -> F8 )
                    context.run(.f16, for: input.f16[], reference: simd.asinh as (F16) -> F16, subject: kvSimdImpl.asinh as (F16) -> F16)
                    context.run(.d2 , for: input.d2 [], reference: simd.asinh as (D2 ) -> D2 , subject: kvSimdImpl.asinh as (D2 ) -> D2 )
                    context.run(.d3 , for: input.d3 [], reference: simd.asinh as (D3 ) -> D3 , subject: kvSimdImpl.asinh as (D3 ) -> D3 )
                    context.run(.d4 , for: input.d4 [], reference: simd.asinh as (D4 ) -> D4 , subject: kvSimdImpl.asinh as (D4 ) -> D4 )
                    context.run(.d8 , for: input.d8 [], reference: simd.asinh as (D8 ) -> D8 , subject: kvSimdImpl.asinh as (D8 ) -> D8 )
                }
                Run(label: "atan") { context in
                    context.run(.f2 , for: input.f2 [], reference: simd.atan as (F2 ) -> F2 , subject: kvSimdImpl.atan as (F2 ) -> F2 )
                    context.run(.f3 , for: input.f3 [], reference: simd.atan as (F3 ) -> F3 , subject: kvSimdImpl.atan as (F3 ) -> F3 )
                    context.run(.f4 , for: input.f4 [], reference: simd.atan as (F4 ) -> F4 , subject: kvSimdImpl.atan as (F4 ) -> F4 )
                    context.run(.f8 , for: input.f8 [], reference: simd.atan as (F8 ) -> F8 , subject: kvSimdImpl.atan as (F8 ) -> F8 )
                    context.run(.f16, for: input.f16[], reference: simd.atan as (F16) -> F16, subject: kvSimdImpl.atan as (F16) -> F16)
                    context.run(.d2 , for: input.d2 [], reference: simd.atan as (D2 ) -> D2 , subject: kvSimdImpl.atan as (D2 ) -> D2 )
                    context.run(.d3 , for: input.d3 [], reference: simd.atan as (D3 ) -> D3 , subject: kvSimdImpl.atan as (D3 ) -> D3 )
                    context.run(.d4 , for: input.d4 [], reference: simd.atan as (D4 ) -> D4 , subject: kvSimdImpl.atan as (D4 ) -> D4 )
                    context.run(.d8 , for: input.d8 [], reference: simd.atan as (D8 ) -> D8 , subject: kvSimdImpl.atan as (D8 ) -> D8 )
                }
                Run(label: "atan2") { context in
                    context.run(.f2 , .f2 , for: input.f2f2  [], reference: simd.atan2 as (F2 , F2 ) -> F2 , subject: kvSimdImpl.atan2 as (F2 , F2 ) -> F2 )
                    context.run(.f3 , .f3 , for: input.f3f3  [], reference: simd.atan2 as (F3 , F3 ) -> F3 , subject: kvSimdImpl.atan2 as (F3 , F3 ) -> F3 )
                    context.run(.f4 , .f4 , for: input.f4f4  [], reference: simd.atan2 as (F4 , F4 ) -> F4 , subject: kvSimdImpl.atan2 as (F4 , F4 ) -> F4 )
                    context.run(.f8 , .f8 , for: input.f8f8  [], reference: simd.atan2 as (F8 , F8 ) -> F8 , subject: kvSimdImpl.atan2 as (F8 , F8 ) -> F8 )
                    context.run(.f16, .f16, for: input.f16f16[], reference: simd.atan2 as (F16, F16) -> F16, subject: kvSimdImpl.atan2 as (F16, F16) -> F16)
                    context.run(.d2 , .d2 , for: input.d2d2  [], reference: simd.atan2 as (D2 , D2 ) -> D2 , subject: kvSimdImpl.atan2 as (D2 , D2 ) -> D2 )
                    context.run(.d3 , .d3 , for: input.d3d3  [], reference: simd.atan2 as (D3 , D3 ) -> D3 , subject: kvSimdImpl.atan2 as (D3 , D3 ) -> D3 )
                    context.run(.d4 , .d4 , for: input.d4d4  [], reference: simd.atan2 as (D4 , D4 ) -> D4 , subject: kvSimdImpl.atan2 as (D4 , D4 ) -> D4 )
                    context.run(.d8 , .d8 , for: input.d8d8  [], reference: simd.atan2 as (D8 , D8 ) -> D8 , subject: kvSimdImpl.atan2 as (D8 , D8 ) -> D8 )
                }
                Run(label: "atanh") { context in
                    context.run(.f2 , for: input.f2 [.tanh], reference: simd.atanh as (F2 ) -> F2 , subject: kvSimdImpl.atanh as (F2 ) -> F2 )
                    context.run(.f3 , for: input.f3 [.tanh], reference: simd.atanh as (F3 ) -> F3 , subject: kvSimdImpl.atanh as (F3 ) -> F3 )
                    context.run(.f4 , for: input.f4 [.tanh], reference: simd.atanh as (F4 ) -> F4 , subject: kvSimdImpl.atanh as (F4 ) -> F4 )
                    context.run(.f8 , for: input.f8 [.tanh], reference: simd.atanh as (F8 ) -> F8 , subject: kvSimdImpl.atanh as (F8 ) -> F8 )
                    context.run(.f16, for: input.f16[.tanh], reference: simd.atanh as (F16) -> F16, subject: kvSimdImpl.atanh as (F16) -> F16)
                    context.run(.d2 , for: input.d2 [.tanh], reference: simd.atanh as (D2 ) -> D2 , subject: kvSimdImpl.atanh as (D2 ) -> D2 )
                    context.run(.d3 , for: input.d3 [.tanh], reference: simd.atanh as (D3 ) -> D3 , subject: kvSimdImpl.atanh as (D3 ) -> D3 )
                    context.run(.d4 , for: input.d4 [.tanh], reference: simd.atanh as (D4 ) -> D4 , subject: kvSimdImpl.atanh as (D4 ) -> D4 )
                    context.run(.d8 , for: input.d8 [.tanh], reference: simd.atanh as (D8 ) -> D8 , subject: kvSimdImpl.atanh as (D8 ) -> D8 )
                }
                Run(label: "cbrt") { context in
                    context.run(.f2 , for: input.f2 [], reference: simd.cbrt as (F2 ) -> F2 , subject: kvSimdImpl.cbrt as (F2 ) -> F2 )
                    context.run(.f3 , for: input.f3 [], reference: simd.cbrt as (F3 ) -> F3 , subject: kvSimdImpl.cbrt as (F3 ) -> F3 )
                    context.run(.f4 , for: input.f4 [], reference: simd.cbrt as (F4 ) -> F4 , subject: kvSimdImpl.cbrt as (F4 ) -> F4 )
                    context.run(.f8 , for: input.f8 [], reference: simd.cbrt as (F8 ) -> F8 , subject: kvSimdImpl.cbrt as (F8 ) -> F8 )
                    context.run(.f16, for: input.f16[], reference: simd.cbrt as (F16) -> F16, subject: kvSimdImpl.cbrt as (F16) -> F16)
                    context.run(.d2 , for: input.d2 [], reference: simd.cbrt as (D2 ) -> D2 , subject: kvSimdImpl.cbrt as (D2 ) -> D2 )
                    context.run(.d3 , for: input.d3 [], reference: simd.cbrt as (D3 ) -> D3 , subject: kvSimdImpl.cbrt as (D3 ) -> D3 )
                    context.run(.d4 , for: input.d4 [], reference: simd.cbrt as (D4 ) -> D4 , subject: kvSimdImpl.cbrt as (D4 ) -> D4 )
                    context.run(.d8 , for: input.d8 [], reference: simd.cbrt as (D8 ) -> D8 , subject: kvSimdImpl.cbrt as (D8 ) -> D8 )
                }
            }

            Run(label: "ceil") { context in
                context.run(.f2, for: input.f2[], reference: simd.ceil as (F2) -> F2, subject: kvSimdImpl.ceil as (F2) -> F2)
                context.run(.f3, for: input.f3[], reference: simd.ceil as (F3) -> F3, subject: kvSimdImpl.ceil as (F3) -> F3)
                context.run(.f4, for: input.f4[], reference: simd.ceil as (F4) -> F4, subject: kvSimdImpl.ceil as (F4) -> F4)
                context.run(.d2, for: input.d2[], reference: simd.ceil as (D2) -> D2, subject: kvSimdImpl.ceil as (D2) -> D2)
                context.run(.d3, for: input.d3[], reference: simd.ceil as (D3) -> D3, subject: kvSimdImpl.ceil as (D3) -> D3)
                context.run(.d4, for: input.d4[], reference: simd.ceil as (D4) -> D4, subject: kvSimdImpl.ceil as (D4) -> D4)
            }
            Run(label: "clamp") { context in
                context.run(.i2, .i2, .i2, for: input.i2i2i2[], reference: simd.clamp as (I2, I2, I2) -> I2, subject: kvSimdImpl.clamp as (I2, I2, I2) -> I2)
                context.run(.i2, .i1, .i1, for: input.i2i1i1[], reference: simd.clamp as (I2, I1, I1) -> I2, subject: kvSimdImpl.clamp as (I2, I1, I1) -> I2)
                context.run(.i3, .i3, .i3, for: input.i3i3i3[], reference: simd.clamp as (I3, I3, I3) -> I3, subject: kvSimdImpl.clamp as (I3, I3, I3) -> I3)
                context.run(.i3, .i1, .i1, for: input.i3i1i1[], reference: simd.clamp as (I3, I1, I1) -> I3, subject: kvSimdImpl.clamp as (I3, I1, I1) -> I3)
                context.run(.i4, .i4, .i4, for: input.i4i4i4[], reference: simd.clamp as (I4, I4, I4) -> I4, subject: kvSimdImpl.clamp as (I4, I4, I4) -> I4)
                context.run(.i4, .i1, .i1, for: input.i4i1i1[], reference: simd.clamp as (I4, I1, I1) -> I4, subject: kvSimdImpl.clamp as (I4, I1, I1) -> I4)
                context.run(.u2, .u2, .u2, for: input.u2u2u2[], reference: simd.clamp as (U2, U2, U2) -> U2, subject: kvSimdImpl.clamp as (U2, U2, U2) -> U2)
                context.run(.u2, .u1, .u1, for: input.u2u1u1[], reference: simd.clamp as (U2, U1, U1) -> U2, subject: kvSimdImpl.clamp as (U2, U1, U1) -> U2)
                context.run(.u3, .u3, .u3, for: input.u3u3u3[], reference: simd.clamp as (U3, U3, U3) -> U3, subject: kvSimdImpl.clamp as (U3, U3, U3) -> U3)
                context.run(.u3, .u1, .u1, for: input.u3u1u1[], reference: simd.clamp as (U3, U1, U1) -> U3, subject: kvSimdImpl.clamp as (U3, U1, U1) -> U3)
                context.run(.u4, .u4, .u4, for: input.u4u4u4[], reference: simd.clamp as (U4, U4, U4) -> U4, subject: kvSimdImpl.clamp as (U4, U4, U4) -> U4)
                context.run(.u4, .u1, .u1, for: input.u4u1u1[], reference: simd.clamp as (U4, U1, U1) -> U4, subject: kvSimdImpl.clamp as (U4, U1, U1) -> U4)
                context.run(.f2, .f2, .f2, for: input.f2f2f2[], reference: simd.clamp as (F2, F2, F2) -> F2, subject: kvSimdImpl.clamp as (F2, F2, F2) -> F2)
                context.run(.f2, .f1, .f1, for: input.f2f1f1[], reference: simd.clamp as (F2, F1, F1) -> F2, subject: kvSimdImpl.clamp as (F2, F1, F1) -> F2)
                context.run(.f3, .f3, .f3, for: input.f3f3f3[], reference: simd.clamp as (F3, F3, F3) -> F3, subject: kvSimdImpl.clamp as (F3, F3, F3) -> F3)
                context.run(.f3, .f1, .f1, for: input.f3f1f1[], reference: simd.clamp as (F3, F1, F1) -> F3, subject: kvSimdImpl.clamp as (F3, F1, F1) -> F3)
                context.run(.f4, .f4, .f4, for: input.f4f4f4[], reference: simd.clamp as (F4, F4, F4) -> F4, subject: kvSimdImpl.clamp as (F4, F4, F4) -> F4)
                context.run(.f4, .f1, .f1, for: input.f4f1f1[], reference: simd.clamp as (F4, F1, F1) -> F4, subject: kvSimdImpl.clamp as (F4, F1, F1) -> F4)
                context.run(.d2, .d2, .d2, for: input.d2d2d2[], reference: simd.clamp as (D2, D2, D2) -> D2, subject: kvSimdImpl.clamp as (D2, D2, D2) -> D2)
                context.run(.d2, .d1, .d1, for: input.d2d1d1[], reference: simd.clamp as (D2, D1, D1) -> D2, subject: kvSimdImpl.clamp as (D2, D1, D1) -> D2)
                context.run(.d3, .d3, .d3, for: input.d3d3d3[], reference: simd.clamp as (D3, D3, D3) -> D3, subject: kvSimdImpl.clamp as (D3, D3, D3) -> D3)
                context.run(.d3, .d1, .d1, for: input.d3d1d1[], reference: simd.clamp as (D3, D1, D1) -> D3, subject: kvSimdImpl.clamp as (D3, D1, D1) -> D3)
                context.run(.d4, .d4, .d4, for: input.d4d4d4[], reference: simd.clamp as (D4, D4, D4) -> D4, subject: kvSimdImpl.clamp as (D4, D4, D4) -> D4)
                context.run(.d4, .d1, .d1, for: input.d4d1d1[], reference: simd.clamp as (D4, D1, D1) -> D4, subject: kvSimdImpl.clamp as (D4, D1, D1) -> D4)
            }

            if #available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *) {
                Run(label: "cos") { context in
                    context.run(.f2 , for: input.f2 [], reference: simd.cos as (F2 ) -> F2 , subject: kvSimdImpl.cos as (F2 ) -> F2 )
                    context.run(.f3 , for: input.f3 [], reference: simd.cos as (F3 ) -> F3 , subject: kvSimdImpl.cos as (F3 ) -> F3 )
                    context.run(.f4 , for: input.f4 [], reference: simd.cos as (F4 ) -> F4 , subject: kvSimdImpl.cos as (F4 ) -> F4 )
                    context.run(.f8 , for: input.f8 [], reference: simd.cos as (F8 ) -> F8 , subject: kvSimdImpl.cos as (F8 ) -> F8 )
                    context.run(.f16, for: input.f16[], reference: simd.cos as (F16) -> F16, subject: kvSimdImpl.cos as (F16) -> F16)
                    context.run(.d2 , for: input.d2 [], reference: simd.cos as (D2 ) -> D2 , subject: kvSimdImpl.cos as (D2 ) -> D2 )
                    context.run(.d3 , for: input.d3 [], reference: simd.cos as (D3 ) -> D3 , subject: kvSimdImpl.cos as (D3 ) -> D3 )
                    context.run(.d4 , for: input.d4 [], reference: simd.cos as (D4 ) -> D4 , subject: kvSimdImpl.cos as (D4 ) -> D4 )
                    context.run(.d8 , for: input.d8 [], reference: simd.cos as (D8 ) -> D8 , subject: kvSimdImpl.cos as (D8 ) -> D8 )
                }
                Run(label: "cosh") { context in
                    context.run(.f2 , for: input.f2 [], reference: simd.cosh as (F2 ) -> F2 , subject: kvSimdImpl.cosh as (F2 ) -> F2 )
                    context.run(.f3 , for: input.f3 [], reference: simd.cosh as (F3 ) -> F3 , subject: kvSimdImpl.cosh as (F3 ) -> F3 )
                    context.run(.f4 , for: input.f4 [], reference: simd.cosh as (F4 ) -> F4 , subject: kvSimdImpl.cosh as (F4 ) -> F4 )
                    context.run(.f8 , for: input.f8 [], reference: simd.cosh as (F8 ) -> F8 , subject: kvSimdImpl.cosh as (F8 ) -> F8 )
                    context.run(.f16, for: input.f16[], reference: simd.cosh as (F16) -> F16, subject: kvSimdImpl.cosh as (F16) -> F16)
                    context.run(.d2 , for: input.d2 [], reference: simd.cosh as (D2 ) -> D2 , subject: kvSimdImpl.cosh as (D2 ) -> D2 )
                    context.run(.d3 , for: input.d3 [], reference: simd.cosh as (D3 ) -> D3 , subject: kvSimdImpl.cosh as (D3 ) -> D3 )
                    context.run(.d4 , for: input.d4 [], reference: simd.cosh as (D4 ) -> D4 , subject: kvSimdImpl.cosh as (D4 ) -> D4 )
                    context.run(.d8 , for: input.d8 [], reference: simd.cosh as (D8 ) -> D8 , subject: kvSimdImpl.cosh as (D8 ) -> D8 )
                }
                Run(label: "cospi") { context in
                    context.run(.f2 , for: input.f2 [], reference: simd.cospi as (F2 ) -> F2 , subject: kvSimdImpl.cospi as (F2 ) -> F2 )
                    context.run(.f3 , for: input.f3 [], reference: simd.cospi as (F3 ) -> F3 , subject: kvSimdImpl.cospi as (F3 ) -> F3 )
                    context.run(.f4 , for: input.f4 [], reference: simd.cospi as (F4 ) -> F4 , subject: kvSimdImpl.cospi as (F4 ) -> F4 )
                    context.run(.f8 , for: input.f8 [], reference: simd.cospi as (F8 ) -> F8 , subject: kvSimdImpl.cospi as (F8 ) -> F8 )
                    context.run(.f16, for: input.f16[], reference: simd.cospi as (F16) -> F16, subject: kvSimdImpl.cospi as (F16) -> F16)
                    context.run(.d2 , for: input.d2 [], reference: simd.cospi as (D2 ) -> D2 , subject: kvSimdImpl.cospi as (D2 ) -> D2 )
                    context.run(.d3 , for: input.d3 [], reference: simd.cospi as (D3 ) -> D3 , subject: kvSimdImpl.cospi as (D3 ) -> D3 )
                    context.run(.d4 , for: input.d4 [], reference: simd.cospi as (D4 ) -> D4 , subject: kvSimdImpl.cospi as (D4 ) -> D4 )
                    context.run(.d8 , for: input.d8 [], reference: simd.cospi as (D8 ) -> D8 , subject: kvSimdImpl.cospi as (D8 ) -> D8 )
                }
            }

            Run(label: "cross") { context in
                context.run(.f2, .f2, for: input.f2f2[], reference: simd.cross as (F2, F2) -> F3, subject: kvSimdImpl.cross as (F2, F2) -> F3)
                context.run(.f3, .f3, for: input.f3f3[], reference: simd.cross as (F3, F3) -> F3, subject: kvSimdImpl.cross as (F3, F3) -> F3)
                context.run(.d2, .d2, for: input.d2d2[], reference: simd.cross as (D2, D2) -> D3, subject: kvSimdImpl.cross as (D2, D2) -> D3)
                context.run(.d3, .d3, for: input.d3d3[], reference: simd.cross as (D3, D3) -> D3, subject: kvSimdImpl.cross as (D3, D3) -> D3)
            }
            Run(label: "distance") { context in
                context.run(.f2, .f2, for: input.f2f2[], reference: simd.distance as (F2, F2) -> F1, subject: kvSimdImpl.distance as (F2, F2) -> F1)
                context.run(.f3, .f3, for: input.f3f3[], reference: simd.distance as (F3, F3) -> F1, subject: kvSimdImpl.distance as (F3, F3) -> F1)
                context.run(.f4, .f4, for: input.f4f4[], reference: simd.distance as (F4, F4) -> F1, subject: kvSimdImpl.distance as (F4, F4) -> F1)
                context.run(.d2, .d2, for: input.d2d2[], reference: simd.distance as (D2, D2) -> D1, subject: kvSimdImpl.distance as (D2, D2) -> D1)
                context.run(.d3, .d3, for: input.d3d3[], reference: simd.distance as (D3, D3) -> D1, subject: kvSimdImpl.distance as (D3, D3) -> D1)
                context.run(.d4, .d4, for: input.d4d4[], reference: simd.distance as (D4, D4) -> D1, subject: kvSimdImpl.distance as (D4, D4) -> D1)
            }
            Run(label: "distance_squared") { context in
                context.run(.f2, .f2, for: input.f2f2[], reference: simd.distance_squared as (F2, F2) -> F1, subject: kvSimdImpl.distance_squared as (F2, F2) -> F1)
                context.run(.f3, .f3, for: input.f3f3[], reference: simd.distance_squared as (F3, F3) -> F1, subject: kvSimdImpl.distance_squared as (F3, F3) -> F1)
                context.run(.f4, .f4, for: input.f4f4[], reference: simd.distance_squared as (F4, F4) -> F1, subject: kvSimdImpl.distance_squared as (F4, F4) -> F1)
                context.run(.d2, .d2, for: input.d2d2[], reference: simd.distance_squared as (D2, D2) -> D1, subject: kvSimdImpl.distance_squared as (D2, D2) -> D1)
                context.run(.d3, .d3, for: input.d3d3[], reference: simd.distance_squared as (D3, D3) -> D1, subject: kvSimdImpl.distance_squared as (D3, D3) -> D1)
                context.run(.d4, .d4, for: input.d4d4[], reference: simd.distance_squared as (D4, D4) -> D1, subject: kvSimdImpl.distance_squared as (D4, D4) -> D1)
            }
            Run(label: "dot") { context in
                context.run(.f2, .f2, for: input.f2f2[], reference: simd.dot as (F2, F2) -> F1, subject: kvSimdImpl.dot as (F2, F2) -> F1)
                context.run(.f3, .f3, for: input.f3f3[], reference: simd.dot as (F3, F3) -> F1, subject: kvSimdImpl.dot as (F3, F3) -> F1)
                context.run(.f4, .f4, for: input.f4f4[], reference: simd.dot as (F4, F4) -> F1, subject: kvSimdImpl.dot as (F4, F4) -> F1)
                context.run(.d2, .d2, for: input.d2d2[], reference: simd.dot as (D2, D2) -> D1, subject: kvSimdImpl.dot as (D2, D2) -> D1)
                context.run(.d3, .d3, for: input.d3d3[], reference: simd.dot as (D3, D3) -> D1, subject: kvSimdImpl.dot as (D3, D3) -> D1)
                context.run(.d4, .d4, for: input.d4d4[], reference: simd.dot as (D4, D4) -> D1, subject: kvSimdImpl.dot as (D4, D4) -> D1)
            }

            if #available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *) {
                Run(label: "erf") { context in
                    context.run(.f2 , for: input.f2 [], reference: simd.erf as (F2 ) -> F2 , subject: kvSimdImpl.erf as (F2 ) -> F2 )
                    context.run(.f3 , for: input.f3 [], reference: simd.erf as (F3 ) -> F3 , subject: kvSimdImpl.erf as (F3 ) -> F3 )
                    context.run(.f4 , for: input.f4 [], reference: simd.erf as (F4 ) -> F4 , subject: kvSimdImpl.erf as (F4 ) -> F4 )
                    context.run(.f8 , for: input.f8 [], reference: simd.erf as (F8 ) -> F8 , subject: kvSimdImpl.erf as (F8 ) -> F8 )
                    context.run(.f16, for: input.f16[], reference: simd.erf as (F16) -> F16, subject: kvSimdImpl.erf as (F16) -> F16)
                    context.run(.d2 , for: input.d2 [], reference: simd.erf as (D2 ) -> D2 , subject: kvSimdImpl.erf as (D2 ) -> D2 )
                    context.run(.d3 , for: input.d3 [], reference: simd.erf as (D3 ) -> D3 , subject: kvSimdImpl.erf as (D3 ) -> D3 )
                    context.run(.d4 , for: input.d4 [], reference: simd.erf as (D4 ) -> D4 , subject: kvSimdImpl.erf as (D4 ) -> D4 )
                    context.run(.d8 , for: input.d8 [], reference: simd.erf as (D8 ) -> D8 , subject: kvSimdImpl.erf as (D8 ) -> D8 )
                }
                Run(label: "erfc") { context in
                    context.run(.f2 , for: input.f2 [], reference: simd.erfc as (F2 ) -> F2 , subject: kvSimdImpl.erfc as (F2 ) -> F2 )
                    context.run(.f3 , for: input.f3 [], reference: simd.erfc as (F3 ) -> F3 , subject: kvSimdImpl.erfc as (F3 ) -> F3 )
                    context.run(.f4 , for: input.f4 [], reference: simd.erfc as (F4 ) -> F4 , subject: kvSimdImpl.erfc as (F4 ) -> F4 )
                    context.run(.f8 , for: input.f8 [], reference: simd.erfc as (F8 ) -> F8 , subject: kvSimdImpl.erfc as (F8 ) -> F8 )
                    context.run(.f16, for: input.f16[], reference: simd.erfc as (F16) -> F16, subject: kvSimdImpl.erfc as (F16) -> F16)
                    context.run(.d2 , for: input.d2 [], reference: simd.erfc as (D2 ) -> D2 , subject: kvSimdImpl.erfc as (D2 ) -> D2 )
                    context.run(.d3 , for: input.d3 [], reference: simd.erfc as (D3 ) -> D3 , subject: kvSimdImpl.erfc as (D3 ) -> D3 )
                    context.run(.d4 , for: input.d4 [], reference: simd.erfc as (D4 ) -> D4 , subject: kvSimdImpl.erfc as (D4 ) -> D4 )
                    context.run(.d8 , for: input.d8 [], reference: simd.erfc as (D8 ) -> D8 , subject: kvSimdImpl.erfc as (D8 ) -> D8 )
                }
                Run(label: "exp") { context in
                    context.run(.f2 , for: input.f2 [], reference: simd.exp as (F2 ) -> F2 , subject: kvSimdImpl.exp as (F2 ) -> F2 )
                    context.run(.f3 , for: input.f3 [], reference: simd.exp as (F3 ) -> F3 , subject: kvSimdImpl.exp as (F3 ) -> F3 )
                    context.run(.f4 , for: input.f4 [], reference: simd.exp as (F4 ) -> F4 , subject: kvSimdImpl.exp as (F4 ) -> F4 )
                    context.run(.f8 , for: input.f8 [], reference: simd.exp as (F8 ) -> F8 , subject: kvSimdImpl.exp as (F8 ) -> F8 )
                    context.run(.f16, for: input.f16[], reference: simd.exp as (F16) -> F16, subject: kvSimdImpl.exp as (F16) -> F16)
                    context.run(.d2 , for: input.d2 [], reference: simd.exp as (D2 ) -> D2 , subject: kvSimdImpl.exp as (D2 ) -> D2 )
                    context.run(.d3 , for: input.d3 [], reference: simd.exp as (D3 ) -> D3 , subject: kvSimdImpl.exp as (D3 ) -> D3 )
                    context.run(.d4 , for: input.d4 [], reference: simd.exp as (D4 ) -> D4 , subject: kvSimdImpl.exp as (D4 ) -> D4 )
                    context.run(.d8 , for: input.d8 [], reference: simd.exp as (D8 ) -> D8 , subject: kvSimdImpl.exp as (D8 ) -> D8 )
                }
                Run(label: "exp10") { context in
                    context.run(.f2 , for: input.f2 [], reference: simd.exp10 as (F2 ) -> F2 , subject: kvSimdImpl.exp10 as (F2 ) -> F2 )
                    context.run(.f3 , for: input.f3 [], reference: simd.exp10 as (F3 ) -> F3 , subject: kvSimdImpl.exp10 as (F3 ) -> F3 )
                    context.run(.f4 , for: input.f4 [], reference: simd.exp10 as (F4 ) -> F4 , subject: kvSimdImpl.exp10 as (F4 ) -> F4 )
                    context.run(.f8 , for: input.f8 [], reference: simd.exp10 as (F8 ) -> F8 , subject: kvSimdImpl.exp10 as (F8 ) -> F8 )
                    context.run(.f16, for: input.f16[], reference: simd.exp10 as (F16) -> F16, subject: kvSimdImpl.exp10 as (F16) -> F16)
                    context.run(.d2 , for: input.d2 [], reference: simd.exp10 as (D2 ) -> D2 , subject: kvSimdImpl.exp10 as (D2 ) -> D2 )
                    context.run(.d3 , for: input.d3 [], reference: simd.exp10 as (D3 ) -> D3 , subject: kvSimdImpl.exp10 as (D3 ) -> D3 )
                    context.run(.d4 , for: input.d4 [], reference: simd.exp10 as (D4 ) -> D4 , subject: kvSimdImpl.exp10 as (D4 ) -> D4 )
                    context.run(.d8 , for: input.d8 [], reference: simd.exp10 as (D8 ) -> D8 , subject: kvSimdImpl.exp10 as (D8 ) -> D8 )
                }
                Run(label: "exp2") { context in
                    context.run(.f2 , for: input.f2 [], reference: simd.exp2 as (F2 ) -> F2 , subject: kvSimdImpl.exp2 as (F2 ) -> F2 )
                    context.run(.f3 , for: input.f3 [], reference: simd.exp2 as (F3 ) -> F3 , subject: kvSimdImpl.exp2 as (F3 ) -> F3 )
                    context.run(.f4 , for: input.f4 [], reference: simd.exp2 as (F4 ) -> F4 , subject: kvSimdImpl.exp2 as (F4 ) -> F4 )
                    context.run(.f8 , for: input.f8 [], reference: simd.exp2 as (F8 ) -> F8 , subject: kvSimdImpl.exp2 as (F8 ) -> F8 )
                    context.run(.f16, for: input.f16[], reference: simd.exp2 as (F16) -> F16, subject: kvSimdImpl.exp2 as (F16) -> F16)
                    context.run(.d2 , for: input.d2 [], reference: simd.exp2 as (D2 ) -> D2 , subject: kvSimdImpl.exp2 as (D2 ) -> D2 )
                    context.run(.d3 , for: input.d3 [], reference: simd.exp2 as (D3 ) -> D3 , subject: kvSimdImpl.exp2 as (D3 ) -> D3 )
                    context.run(.d4 , for: input.d4 [], reference: simd.exp2 as (D4 ) -> D4 , subject: kvSimdImpl.exp2 as (D4 ) -> D4 )
                    context.run(.d8 , for: input.d8 [], reference: simd.exp2 as (D8 ) -> D8 , subject: kvSimdImpl.exp2 as (D8 ) -> D8 )
                }
                Run(label: "expm1") { context in
                    context.run(.f2 , for: input.f2 [], reference: simd.expm1 as (F2 ) -> F2 , subject: kvSimdImpl.expm1 as (F2 ) -> F2 )
                    context.run(.f3 , for: input.f3 [], reference: simd.expm1 as (F3 ) -> F3 , subject: kvSimdImpl.expm1 as (F3 ) -> F3 )
                    context.run(.f4 , for: input.f4 [], reference: simd.expm1 as (F4 ) -> F4 , subject: kvSimdImpl.expm1 as (F4 ) -> F4 )
                    context.run(.f8 , for: input.f8 [], reference: simd.expm1 as (F8 ) -> F8 , subject: kvSimdImpl.expm1 as (F8 ) -> F8 )
                    context.run(.f16, for: input.f16[], reference: simd.expm1 as (F16) -> F16, subject: kvSimdImpl.expm1 as (F16) -> F16)
                    context.run(.d2 , for: input.d2 [], reference: simd.expm1 as (D2 ) -> D2 , subject: kvSimdImpl.expm1 as (D2 ) -> D2 )
                    context.run(.d3 , for: input.d3 [], reference: simd.expm1 as (D3 ) -> D3 , subject: kvSimdImpl.expm1 as (D3 ) -> D3 )
                    context.run(.d4 , for: input.d4 [], reference: simd.expm1 as (D4 ) -> D4 , subject: kvSimdImpl.expm1 as (D4 ) -> D4 )
                    context.run(.d8 , for: input.d8 [], reference: simd.expm1 as (D8 ) -> D8 , subject: kvSimdImpl.expm1 as (D8 ) -> D8 )
                }
            }

            Run(label: "floor") { context in
                context.run(.f2, for: input.f2[], reference: simd.floor as (F2) -> F2, subject: kvSimdImpl.floor as (F2) -> F2)
                context.run(.f3, for: input.f3[], reference: simd.floor as (F3) -> F3, subject: kvSimdImpl.floor as (F3) -> F3)
                context.run(.f4, for: input.f4[], reference: simd.floor as (F4) -> F4, subject: kvSimdImpl.floor as (F4) -> F4)
                context.run(.d2, for: input.d2[], reference: simd.floor as (D2) -> D2, subject: kvSimdImpl.floor as (D2) -> D2)
                context.run(.d3, for: input.d3[], reference: simd.floor as (D3) -> D3, subject: kvSimdImpl.floor as (D3) -> D3)
                context.run(.d4, for: input.d4[], reference: simd.floor as (D4) -> D4, subject: kvSimdImpl.floor as (D4) -> D4)
            }

            if #available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *) {
                Run(label: "fma") { context in
                    context.run(.f2 , .f2 , .f2 , for: input.f2f2f2   [], reference: simd.fma as (F2 , F2 , F2 ) -> F2 , subject: kvSimdImpl.fma as (F2 , F2 , F2 ) -> F2 )
                    context.run(.f3 , .f3 , .f3 , for: input.f3f3f3   [], reference: simd.fma as (F3 , F3 , F3 ) -> F3 , subject: kvSimdImpl.fma as (F3 , F3 , F3 ) -> F3 )
                    context.run(.f4 , .f4 , .f4 , for: input.f4f4f4   [], reference: simd.fma as (F4 , F4 , F4 ) -> F4 , subject: kvSimdImpl.fma as (F4 , F4 , F4 ) -> F4 )
                    context.run(.f8 , .f8 , .f8 , for: input.f8f8f8   [], reference: simd.fma as (F8 , F8 , F8 ) -> F8 , subject: kvSimdImpl.fma as (F8 , F8 , F8 ) -> F8 )
                    context.run(.f16, .f16, .f16, for: input.f16f16f16[], reference: simd.fma as (F16, F16, F16) -> F16, subject: kvSimdImpl.fma as (F16, F16, F16) -> F16)
                    context.run(.d2 , .d2 , .d2 , for: input.d2d2d2   [], reference: simd.fma as (D2 , D2 , D2 ) -> D2 , subject: kvSimdImpl.fma as (D2 , D2 , D2 ) -> D2 )
                    context.run(.d3 , .d3 , .d3 , for: input.d3d3d3   [], reference: simd.fma as (D3 , D3 , D3 ) -> D3 , subject: kvSimdImpl.fma as (D3 , D3 , D3 ) -> D3 )
                    context.run(.d4 , .d4 , .d4 , for: input.d4d4d4   [], reference: simd.fma as (D4 , D4 , D4 ) -> D4 , subject: kvSimdImpl.fma as (D4 , D4 , D4 ) -> D4 )
                    context.run(.d8 , .d8 , .d8 , for: input.d8d8d8   [], reference: simd.fma as (D8 , D8 , D8 ) -> D8 , subject: kvSimdImpl.fma as (D8 , D8 , D8 ) -> D8 )
                }
            }

            Run(label: "fmax") { context in
                context.run(.f2, .f2, for: input.f2f2[], reference: simd.fmax as (F2, F2) -> F2, subject: kvSimdImpl.fmax as (F2, F2) -> F2)
                context.run(.f3, .f3, for: input.f3f3[], reference: simd.fmax as (F3, F3) -> F3, subject: kvSimdImpl.fmax as (F3, F3) -> F3)
                context.run(.f4, .f4, for: input.f4f4[], reference: simd.fmax as (F4, F4) -> F4, subject: kvSimdImpl.fmax as (F4, F4) -> F4)
                context.run(.d2, .d2, for: input.d2d2[], reference: simd.fmax as (D2, D2) -> D2, subject: kvSimdImpl.fmax as (D2, D2) -> D2)
                context.run(.d3, .d3, for: input.d3d3[], reference: simd.fmax as (D3, D3) -> D3, subject: kvSimdImpl.fmax as (D3, D3) -> D3)
                context.run(.d4, .d4, for: input.d4d4[], reference: simd.fmax as (D4, D4) -> D4, subject: kvSimdImpl.fmax as (D4, D4) -> D4)
            }
            Run(label: "fmin") { context in
                context.run(.f2, .f2, for: input.f2f2[], reference: simd.fmin as (F2, F2) -> F2, subject: kvSimdImpl.fmin as (F2, F2) -> F2)
                context.run(.f3, .f3, for: input.f3f3[], reference: simd.fmin as (F3, F3) -> F3, subject: kvSimdImpl.fmin as (F3, F3) -> F3)
                context.run(.f4, .f4, for: input.f4f4[], reference: simd.fmin as (F4, F4) -> F4, subject: kvSimdImpl.fmin as (F4, F4) -> F4)
                context.run(.d2, .d2, for: input.d2d2[], reference: simd.fmin as (D2, D2) -> D2, subject: kvSimdImpl.fmin as (D2, D2) -> D2)
                context.run(.d3, .d3, for: input.d3d3[], reference: simd.fmin as (D3, D3) -> D3, subject: kvSimdImpl.fmin as (D3, D3) -> D3)
                context.run(.d4, .d4, for: input.d4d4[], reference: simd.fmin as (D4, D4) -> D4, subject: kvSimdImpl.fmin as (D4, D4) -> D4)
            }

            if #available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *) {
                Run(label: "fmod") { context in
                    context.run(.f2 , .f2 , for: input.f2f2  [], reference: simd.fmod as (F2 , F2 ) -> F2 , subject: kvSimdImpl.fmod as (F2 , F2 ) -> F2 )
                    context.run(.f3 , .f3 , for: input.f3f3  [], reference: simd.fmod as (F3 , F3 ) -> F3 , subject: kvSimdImpl.fmod as (F3 , F3 ) -> F3 )
                    context.run(.f4 , .f4 , for: input.f4f4  [], reference: simd.fmod as (F4 , F4 ) -> F4 , subject: kvSimdImpl.fmod as (F4 , F4 ) -> F4 )
                    context.run(.f8 , .f8 , for: input.f8f8  [], reference: simd.fmod as (F8 , F8 ) -> F8 , subject: kvSimdImpl.fmod as (F8 , F8 ) -> F8 )
                    context.run(.f16, .f16, for: input.f16f16[], reference: simd.fmod as (F16, F16) -> F16, subject: kvSimdImpl.fmod as (F16, F16) -> F16)
                    context.run(.d2 , .d2 , for: input.d2d2  [], reference: simd.fmod as (D2 , D2 ) -> D2 , subject: kvSimdImpl.fmod as (D2 , D2 ) -> D2 )
                    context.run(.d3 , .d3 , for: input.d3d3  [], reference: simd.fmod as (D3 , D3 ) -> D3 , subject: kvSimdImpl.fmod as (D3 , D3 ) -> D3 )
                    context.run(.d4 , .d4 , for: input.d4d4  [], reference: simd.fmod as (D4 , D4 ) -> D4 , subject: kvSimdImpl.fmod as (D4 , D4 ) -> D4 )
                    context.run(.d8 , .d8 , for: input.d8d8  [], reference: simd.fmod as (D8 , D8 ) -> D8 , subject: kvSimdImpl.fmod as (D8 , D8 ) -> D8 )
                }
            }

            Run(label: "fract") { context in
                context.run(.f2, for: input.f2[], reference: simd.fract as (F2) -> F2, subject: kvSimdImpl.fract as (F2) -> F2)
                context.run(.f3, for: input.f3[], reference: simd.fract as (F3) -> F3, subject: kvSimdImpl.fract as (F3) -> F3)
                context.run(.f4, for: input.f4[], reference: simd.fract as (F4) -> F4, subject: kvSimdImpl.fract as (F4) -> F4)
                context.run(.d2, for: input.d2[], reference: simd.fract as (D2) -> D2, subject: kvSimdImpl.fract as (D2) -> D2)
                context.run(.d3, for: input.d3[], reference: simd.fract as (D3) -> D3, subject: kvSimdImpl.fract as (D3) -> D3)
                context.run(.d4, for: input.d4[], reference: simd.fract as (D4) -> D4, subject: kvSimdImpl.fract as (D4) -> D4)
            }

            if #available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *) {
                Run(label: "hypot") { context in
                    context.run(.f2 , .f2 , for: input.f2f2  [], reference: simd.hypot as (F2 , F2 ) -> F2 , subject: kvSimdImpl.hypot as (F2 , F2 ) -> F2 )
                    context.run(.f3 , .f3 , for: input.f3f3  [], reference: simd.hypot as (F3 , F3 ) -> F3 , subject: kvSimdImpl.hypot as (F3 , F3 ) -> F3 )
                    context.run(.f4 , .f4 , for: input.f4f4  [], reference: simd.hypot as (F4 , F4 ) -> F4 , subject: kvSimdImpl.hypot as (F4 , F4 ) -> F4 )
                    context.run(.f8 , .f8 , for: input.f8f8  [], reference: simd.hypot as (F8 , F8 ) -> F8 , subject: kvSimdImpl.hypot as (F8 , F8 ) -> F8 )
                    context.run(.f16, .f16, for: input.f16f16[], reference: simd.hypot as (F16, F16) -> F16, subject: kvSimdImpl.hypot as (F16, F16) -> F16)
                    context.run(.d2 , .d2 , for: input.d2d2  [], reference: simd.hypot as (D2 , D2 ) -> D2 , subject: kvSimdImpl.hypot as (D2 , D2 ) -> D2 )
                    context.run(.d3 , .d3 , for: input.d3d3  [], reference: simd.hypot as (D3 , D3 ) -> D3 , subject: kvSimdImpl.hypot as (D3 , D3 ) -> D3 )
                    context.run(.d4 , .d4 , for: input.d4d4  [], reference: simd.hypot as (D4 , D4 ) -> D4 , subject: kvSimdImpl.hypot as (D4 , D4 ) -> D4 )
                    context.run(.d8 , .d8 , for: input.d8d8  [], reference: simd.hypot as (D8 , D8 ) -> D8 , subject: kvSimdImpl.hypot as (D8 , D8 ) -> D8 )
                }
                Run(label: "isfinite") { context in
                    context.run(.f2 , for: input.f2 [.floatValidation], reference: simd.isfinite as (F2 ) -> I2 , subject: kvSimdImpl.isfinite as (F2 ) -> I2 )
                    context.run(.f3 , for: input.f3 [.floatValidation], reference: simd.isfinite as (F3 ) -> I3 , subject: kvSimdImpl.isfinite as (F3 ) -> I3 )
                    context.run(.f4 , for: input.f4 [.floatValidation], reference: simd.isfinite as (F4 ) -> I4 , subject: kvSimdImpl.isfinite as (F4 ) -> I4 )
                    context.run(.f8 , for: input.f8 [.floatValidation], reference: simd.isfinite as (F8 ) -> I8 , subject: kvSimdImpl.isfinite as (F8 ) -> I8 )
                    context.run(.f16, for: input.f16[.floatValidation], reference: simd.isfinite as (F16) -> I16, subject: kvSimdImpl.isfinite as (F16) -> I16)
                    context.run(.d2 , for: input.d2 [.floatValidation], reference: simd.isfinite as (D2 ) -> L2 , subject: kvSimdImpl.isfinite as (D2 ) -> L2 )
                    context.run(.d3 , for: input.d3 [.floatValidation], reference: simd.isfinite as (D3 ) -> L3 , subject: kvSimdImpl.isfinite as (D3 ) -> L3 )
                    context.run(.d4 , for: input.d4 [.floatValidation], reference: simd.isfinite as (D4 ) -> L4 , subject: kvSimdImpl.isfinite as (D4 ) -> L4 )
                    context.run(.d8 , for: input.d8 [.floatValidation], reference: simd.isfinite as (D8 ) -> L8 , subject: kvSimdImpl.isfinite as (D8 ) -> L8 )
                }
                Run(label: "isinf") { context in
                    context.run(.f2 , for: input.f2 [.floatValidation], reference: simd.isinf as (F2 ) -> I2 , subject: kvSimdImpl.isinf as (F2 ) -> I2 )
                    context.run(.f3 , for: input.f3 [.floatValidation], reference: simd.isinf as (F3 ) -> I3 , subject: kvSimdImpl.isinf as (F3 ) -> I3 )
                    context.run(.f4 , for: input.f4 [.floatValidation], reference: simd.isinf as (F4 ) -> I4 , subject: kvSimdImpl.isinf as (F4 ) -> I4 )
                    context.run(.f8 , for: input.f8 [.floatValidation], reference: simd.isinf as (F8 ) -> I8 , subject: kvSimdImpl.isinf as (F8 ) -> I8 )
                    context.run(.f16, for: input.f16[.floatValidation], reference: simd.isinf as (F16) -> I16, subject: kvSimdImpl.isinf as (F16) -> I16)
                    context.run(.d2 , for: input.d2 [.floatValidation], reference: simd.isinf as (D2 ) -> L2 , subject: kvSimdImpl.isinf as (D2 ) -> L2 )
                    context.run(.d3 , for: input.d3 [.floatValidation], reference: simd.isinf as (D3 ) -> L3 , subject: kvSimdImpl.isinf as (D3 ) -> L3 )
                    context.run(.d4 , for: input.d4 [.floatValidation], reference: simd.isinf as (D4 ) -> L4 , subject: kvSimdImpl.isinf as (D4 ) -> L4 )
                    context.run(.d8 , for: input.d8 [.floatValidation], reference: simd.isinf as (D8 ) -> L8 , subject: kvSimdImpl.isinf as (D8 ) -> L8 )
                }
                Run(label: "isnan") { context in
                    context.run(.f2 , for: input.f2 [.floatValidation], reference: simd.isnan as (F2 ) -> I2 , subject: kvSimdImpl.isnan as (F2 ) -> I2 )
                    context.run(.f3 , for: input.f3 [.floatValidation], reference: simd.isnan as (F3 ) -> I3 , subject: kvSimdImpl.isnan as (F3 ) -> I3 )
                    context.run(.f4 , for: input.f4 [.floatValidation], reference: simd.isnan as (F4 ) -> I4 , subject: kvSimdImpl.isnan as (F4 ) -> I4 )
                    context.run(.f8 , for: input.f8 [.floatValidation], reference: simd.isnan as (F8 ) -> I8 , subject: kvSimdImpl.isnan as (F8 ) -> I8 )
                    context.run(.f16, for: input.f16[.floatValidation], reference: simd.isnan as (F16) -> I16, subject: kvSimdImpl.isnan as (F16) -> I16)
                    context.run(.d2 , for: input.d2 [.floatValidation], reference: simd.isnan as (D2 ) -> L2 , subject: kvSimdImpl.isnan as (D2 ) -> L2 )
                    context.run(.d3 , for: input.d3 [.floatValidation], reference: simd.isnan as (D3 ) -> L3 , subject: kvSimdImpl.isnan as (D3 ) -> L3 )
                    context.run(.d4 , for: input.d4 [.floatValidation], reference: simd.isnan as (D4 ) -> L4 , subject: kvSimdImpl.isnan as (D4 ) -> L4 )
                    context.run(.d8 , for: input.d8 [.floatValidation], reference: simd.isnan as (D8 ) -> L8 , subject: kvSimdImpl.isnan as (D8 ) -> L8 )
                }
                Run(label: "isnormal") { context in
                    context.run(.f2 , for: input.f2 [.floatValidation], reference: simd.isnormal as (F2 ) -> I2 , subject: kvSimdImpl.isnormal as (F2 ) -> I2 )
                    context.run(.f3 , for: input.f3 [.floatValidation], reference: simd.isnormal as (F3 ) -> I3 , subject: kvSimdImpl.isnormal as (F3 ) -> I3 )
                    context.run(.f4 , for: input.f4 [.floatValidation], reference: simd.isnormal as (F4 ) -> I4 , subject: kvSimdImpl.isnormal as (F4 ) -> I4 )
                    context.run(.f8 , for: input.f8 [.floatValidation], reference: simd.isnormal as (F8 ) -> I8 , subject: kvSimdImpl.isnormal as (F8 ) -> I8 )
                    context.run(.f16, for: input.f16[.floatValidation], reference: simd.isnormal as (F16) -> I16, subject: kvSimdImpl.isnormal as (F16) -> I16)
                    context.run(.d2 , for: input.d2 [.floatValidation], reference: simd.isnormal as (D2 ) -> L2 , subject: kvSimdImpl.isnormal as (D2 ) -> L2 )
                    context.run(.d3 , for: input.d3 [.floatValidation], reference: simd.isnormal as (D3 ) -> L3 , subject: kvSimdImpl.isnormal as (D3 ) -> L3 )
                    context.run(.d4 , for: input.d4 [.floatValidation], reference: simd.isnormal as (D4 ) -> L4 , subject: kvSimdImpl.isnormal as (D4 ) -> L4 )
                    context.run(.d8 , for: input.d8 [.floatValidation], reference: simd.isnormal as (D8 ) -> L8 , subject: kvSimdImpl.isnormal as (D8 ) -> L8 )
                }
            }

            Run(label: "length") { context in
                context.run(.f2, for: input.f2[], reference: simd.length as (F2) -> F1, subject: kvSimdImpl.length as (F2) -> F1)
                context.run(.f3, for: input.f3[], reference: simd.length as (F3) -> F1, subject: kvSimdImpl.length as (F3) -> F1)
                context.run(.f4, for: input.f4[], reference: simd.length as (F4) -> F1, subject: kvSimdImpl.length as (F4) -> F1)
                context.run(.d2, for: input.d2[], reference: simd.length as (D2) -> D1, subject: kvSimdImpl.length as (D2) -> D1)
                context.run(.d3, for: input.d3[], reference: simd.length as (D3) -> D1, subject: kvSimdImpl.length as (D3) -> D1)
                context.run(.d4, for: input.d4[], reference: simd.length as (D4) -> D1, subject: kvSimdImpl.length as (D4) -> D1)
            }
            Run(label: "length_squared") { context in
                context.run(.f2, for: input.f2[], reference: simd.length_squared as (F2) -> F1, subject: kvSimdImpl.length_squared as (F2) -> F1)
                context.run(.f3, for: input.f3[], reference: simd.length_squared as (F3) -> F1, subject: kvSimdImpl.length_squared as (F3) -> F1)
                context.run(.f4, for: input.f4[], reference: simd.length_squared as (F4) -> F1, subject: kvSimdImpl.length_squared as (F4) -> F1)
                context.run(.d2, for: input.d2[], reference: simd.length_squared as (D2) -> D1, subject: kvSimdImpl.length_squared as (D2) -> D1)
                context.run(.d3, for: input.d3[], reference: simd.length_squared as (D3) -> D1, subject: kvSimdImpl.length_squared as (D3) -> D1)
                context.run(.d4, for: input.d4[], reference: simd.length_squared as (D4) -> D1, subject: kvSimdImpl.length_squared as (D4) -> D1)
            }
            if #available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *) {
                Run(label: "lgamma") { context in
                    context.run(.f2 , for: input.f2 [], reference: simd.lgamma as (F2 ) -> F2 , subject: kvSimdImpl.lgamma as (F2 ) -> F2 )
                    context.run(.f3 , for: input.f3 [], reference: simd.lgamma as (F3 ) -> F3 , subject: kvSimdImpl.lgamma as (F3 ) -> F3 )
                    context.run(.f4 , for: input.f4 [], reference: simd.lgamma as (F4 ) -> F4 , subject: kvSimdImpl.lgamma as (F4 ) -> F4 )
                    context.run(.f8 , for: input.f8 [], reference: simd.lgamma as (F8 ) -> F8 , subject: kvSimdImpl.lgamma as (F8 ) -> F8 )
                    context.run(.f16, for: input.f16[], reference: simd.lgamma as (F16) -> F16, subject: kvSimdImpl.lgamma as (F16) -> F16)
                    context.run(.d2 , for: input.d2 [], reference: simd.lgamma as (D2 ) -> D2 , subject: kvSimdImpl.lgamma as (D2 ) -> D2 )
                    context.run(.d3 , for: input.d3 [], reference: simd.lgamma as (D3 ) -> D3 , subject: kvSimdImpl.lgamma as (D3 ) -> D3 )
                    context.run(.d4 , for: input.d4 [], reference: simd.lgamma as (D4 ) -> D4 , subject: kvSimdImpl.lgamma as (D4 ) -> D4 )
                    context.run(.d8 , for: input.d8 [], reference: simd.lgamma as (D8 ) -> D8 , subject: kvSimdImpl.lgamma as (D8 ) -> D8 )
                }
                Run(label: "log") { context in
                    context.run(.f2 , for: input.f2 [.positive], reference: simd.log as (F2 ) -> F2 , subject: kvSimdImpl.log as (F2 ) -> F2 )
                    context.run(.f3 , for: input.f3 [.positive], reference: simd.log as (F3 ) -> F3 , subject: kvSimdImpl.log as (F3 ) -> F3 )
                    context.run(.f4 , for: input.f4 [.positive], reference: simd.log as (F4 ) -> F4 , subject: kvSimdImpl.log as (F4 ) -> F4 )
                    context.run(.f8 , for: input.f8 [.positive], reference: simd.log as (F8 ) -> F8 , subject: kvSimdImpl.log as (F8 ) -> F8 )
                    context.run(.f16, for: input.f16[.positive], reference: simd.log as (F16) -> F16, subject: kvSimdImpl.log as (F16) -> F16)
                    context.run(.d2 , for: input.d2 [.positive], reference: simd.log as (D2 ) -> D2 , subject: kvSimdImpl.log as (D2 ) -> D2 )
                    context.run(.d3 , for: input.d3 [.positive], reference: simd.log as (D3 ) -> D3 , subject: kvSimdImpl.log as (D3 ) -> D3 )
                    context.run(.d4 , for: input.d4 [.positive], reference: simd.log as (D4 ) -> D4 , subject: kvSimdImpl.log as (D4 ) -> D4 )
                    context.run(.d8 , for: input.d8 [.positive], reference: simd.log as (D8 ) -> D8 , subject: kvSimdImpl.log as (D8 ) -> D8 )
                }
                Run(label: "log10") { context in
                    context.run(.f2 , for: input.f2 [.positive], reference: simd.log10 as (F2 ) -> F2 , subject: kvSimdImpl.log10 as (F2 ) -> F2 )
                    context.run(.f3 , for: input.f3 [.positive], reference: simd.log10 as (F3 ) -> F3 , subject: kvSimdImpl.log10 as (F3 ) -> F3 )
                    context.run(.f4 , for: input.f4 [.positive], reference: simd.log10 as (F4 ) -> F4 , subject: kvSimdImpl.log10 as (F4 ) -> F4 )
                    context.run(.f8 , for: input.f8 [.positive], reference: simd.log10 as (F8 ) -> F8 , subject: kvSimdImpl.log10 as (F8 ) -> F8 )
                    context.run(.f16, for: input.f16[.positive], reference: simd.log10 as (F16) -> F16, subject: kvSimdImpl.log10 as (F16) -> F16)
                    context.run(.d2 , for: input.d2 [.positive], reference: simd.log10 as (D2 ) -> D2 , subject: kvSimdImpl.log10 as (D2 ) -> D2 )
                    context.run(.d3 , for: input.d3 [.positive], reference: simd.log10 as (D3 ) -> D3 , subject: kvSimdImpl.log10 as (D3 ) -> D3 )
                    context.run(.d4 , for: input.d4 [.positive], reference: simd.log10 as (D4 ) -> D4 , subject: kvSimdImpl.log10 as (D4 ) -> D4 )
                    context.run(.d8 , for: input.d8 [.positive], reference: simd.log10 as (D8 ) -> D8 , subject: kvSimdImpl.log10 as (D8 ) -> D8 )
                }
                Run(label: "log1p") { context in
                    context.run(.f2 , for: input.f2 [.log1p], reference: simd.log1p as (F2 ) -> F2 , subject: kvSimdImpl.log1p as (F2 ) -> F2 )
                    context.run(.f3 , for: input.f3 [.log1p], reference: simd.log1p as (F3 ) -> F3 , subject: kvSimdImpl.log1p as (F3 ) -> F3 )
                    context.run(.f4 , for: input.f4 [.log1p], reference: simd.log1p as (F4 ) -> F4 , subject: kvSimdImpl.log1p as (F4 ) -> F4 )
                    context.run(.f8 , for: input.f8 [.log1p], reference: simd.log1p as (F8 ) -> F8 , subject: kvSimdImpl.log1p as (F8 ) -> F8 )
                    context.run(.f16, for: input.f16[.log1p], reference: simd.log1p as (F16) -> F16, subject: kvSimdImpl.log1p as (F16) -> F16)
                    context.run(.d2 , for: input.d2 [.log1p], reference: simd.log1p as (D2 ) -> D2 , subject: kvSimdImpl.log1p as (D2 ) -> D2 )
                    context.run(.d3 , for: input.d3 [.log1p], reference: simd.log1p as (D3 ) -> D3 , subject: kvSimdImpl.log1p as (D3 ) -> D3 )
                    context.run(.d4 , for: input.d4 [.log1p], reference: simd.log1p as (D4 ) -> D4 , subject: kvSimdImpl.log1p as (D4 ) -> D4 )
                    context.run(.d8 , for: input.d8 [.log1p], reference: simd.log1p as (D8 ) -> D8 , subject: kvSimdImpl.log1p as (D8 ) -> D8 )
                }
                Run(label: "log2") { context in
                    context.run(.f2 , for: input.f2 [.positive], reference: simd.log2 as (F2 ) -> F2 , subject: kvSimdImpl.log2 as (F2 ) -> F2 )
                    context.run(.f3 , for: input.f3 [.positive], reference: simd.log2 as (F3 ) -> F3 , subject: kvSimdImpl.log2 as (F3 ) -> F3 )
                    context.run(.f4 , for: input.f4 [.positive], reference: simd.log2 as (F4 ) -> F4 , subject: kvSimdImpl.log2 as (F4 ) -> F4 )
                    context.run(.f8 , for: input.f8 [.positive], reference: simd.log2 as (F8 ) -> F8 , subject: kvSimdImpl.log2 as (F8 ) -> F8 )
                    context.run(.f16, for: input.f16[.positive], reference: simd.log2 as (F16) -> F16, subject: kvSimdImpl.log2 as (F16) -> F16)
                    context.run(.d2 , for: input.d2 [.positive], reference: simd.log2 as (D2 ) -> D2 , subject: kvSimdImpl.log2 as (D2 ) -> D2 )
                    context.run(.d3 , for: input.d3 [.positive], reference: simd.log2 as (D3 ) -> D3 , subject: kvSimdImpl.log2 as (D3 ) -> D3 )
                    context.run(.d4 , for: input.d4 [.positive], reference: simd.log2 as (D4 ) -> D4 , subject: kvSimdImpl.log2 as (D4 ) -> D4 )
                    context.run(.d8 , for: input.d8 [.positive], reference: simd.log2 as (D8 ) -> D8 , subject: kvSimdImpl.log2 as (D8 ) -> D8 )
                }
            }

            Run(label: "max") { context in
                context.run(.i2, .i2, for: input.i2i2[], reference: simd.max as (I2, I2) -> I2, subject: kvSimdImpl.max as (I2, I2) -> I2)
                context.run(.i2, .i1, for: input.i2i1[], reference: simd.max as (I2, I1) -> I2, subject: kvSimdImpl.max as (I2, I1) -> I2)
                context.run(.i3, .i3, for: input.i3i3[], reference: simd.max as (I3, I3) -> I3, subject: kvSimdImpl.max as (I3, I3) -> I3)
                context.run(.i3, .i1, for: input.i3i1[], reference: simd.max as (I3, I1) -> I3, subject: kvSimdImpl.max as (I3, I1) -> I3)
                context.run(.i4, .i4, for: input.i4i4[], reference: simd.max as (I4, I4) -> I4, subject: kvSimdImpl.max as (I4, I4) -> I4)
                context.run(.i4, .i1, for: input.i4i1[], reference: simd.max as (I4, I1) -> I4, subject: kvSimdImpl.max as (I4, I1) -> I4)
                context.run(.u2, .u2, for: input.u2u2[], reference: simd.max as (U2, U2) -> U2, subject: kvSimdImpl.max as (U2, U2) -> U2)
                context.run(.u2, .u1, for: input.u2u1[], reference: simd.max as (U2, U1) -> U2, subject: kvSimdImpl.max as (U2, U1) -> U2)
                context.run(.u3, .u3, for: input.u3u3[], reference: simd.max as (U3, U3) -> U3, subject: kvSimdImpl.max as (U3, U3) -> U3)
                context.run(.u3, .u1, for: input.u3u1[], reference: simd.max as (U3, U1) -> U3, subject: kvSimdImpl.max as (U3, U1) -> U3)
                context.run(.u4, .u4, for: input.u4u4[], reference: simd.max as (U4, U4) -> U4, subject: kvSimdImpl.max as (U4, U4) -> U4)
                context.run(.u4, .u1, for: input.u4u1[], reference: simd.max as (U4, U1) -> U4, subject: kvSimdImpl.max as (U4, U1) -> U4)
                context.run(.f2, .f2, for: input.f2f2[], reference: simd.max as (F2, F2) -> F2, subject: kvSimdImpl.max as (F2, F2) -> F2)
                context.run(.f2, .f1, for: input.f2f1[], reference: simd.max as (F2, F1) -> F2, subject: kvSimdImpl.max as (F2, F1) -> F2)
                context.run(.f3, .f3, for: input.f3f3[], reference: simd.max as (F3, F3) -> F3, subject: kvSimdImpl.max as (F3, F3) -> F3)
                context.run(.f3, .f1, for: input.f3f1[], reference: simd.max as (F3, F1) -> F3, subject: kvSimdImpl.max as (F3, F1) -> F3)
                context.run(.f4, .f4, for: input.f4f4[], reference: simd.max as (F4, F4) -> F4, subject: kvSimdImpl.max as (F4, F4) -> F4)
                context.run(.f4, .f1, for: input.f4f1[], reference: simd.max as (F4, F1) -> F4, subject: kvSimdImpl.max as (F4, F1) -> F4)
                context.run(.d2, .d2, for: input.d2d2[], reference: simd.max as (D2, D2) -> D2, subject: kvSimdImpl.max as (D2, D2) -> D2)
                context.run(.d2, .d1, for: input.d2d1[], reference: simd.max as (D2, D1) -> D2, subject: kvSimdImpl.max as (D2, D1) -> D2)
                context.run(.d3, .d3, for: input.d3d3[], reference: simd.max as (D3, D3) -> D3, subject: kvSimdImpl.max as (D3, D3) -> D3)
                context.run(.d3, .d1, for: input.d3d1[], reference: simd.max as (D3, D1) -> D3, subject: kvSimdImpl.max as (D3, D1) -> D3)
                context.run(.d4, .d4, for: input.d4d4[], reference: simd.max as (D4, D4) -> D4, subject: kvSimdImpl.max as (D4, D4) -> D4)
                context.run(.d4, .d1, for: input.d4d1[], reference: simd.max as (D4, D1) -> D4, subject: kvSimdImpl.max as (D4, D1) -> D4)
            }
            Run(label: "min") { context in
                context.run(.i2, .i2, for: input.i2i2[], reference: simd.min as (I2, I2) -> I2, subject: kvSimdImpl.min as (I2, I2) -> I2)
                context.run(.i2, .i1, for: input.i2i1[], reference: simd.min as (I2, I1) -> I2, subject: kvSimdImpl.min as (I2, I1) -> I2)
                context.run(.i3, .i3, for: input.i3i3[], reference: simd.min as (I3, I3) -> I3, subject: kvSimdImpl.min as (I3, I3) -> I3)
                context.run(.i3, .i1, for: input.i3i1[], reference: simd.min as (I3, I1) -> I3, subject: kvSimdImpl.min as (I3, I1) -> I3)
                context.run(.i4, .i4, for: input.i4i4[], reference: simd.min as (I4, I4) -> I4, subject: kvSimdImpl.min as (I4, I4) -> I4)
                context.run(.i4, .i1, for: input.i4i1[], reference: simd.min as (I4, I1) -> I4, subject: kvSimdImpl.min as (I4, I1) -> I4)
                context.run(.u2, .u2, for: input.u2u2[], reference: simd.min as (U2, U2) -> U2, subject: kvSimdImpl.min as (U2, U2) -> U2)
                context.run(.u2, .u1, for: input.u2u1[], reference: simd.min as (U2, U1) -> U2, subject: kvSimdImpl.min as (U2, U1) -> U2)
                context.run(.u3, .u3, for: input.u3u3[], reference: simd.min as (U3, U3) -> U3, subject: kvSimdImpl.min as (U3, U3) -> U3)
                context.run(.u3, .u1, for: input.u3u1[], reference: simd.min as (U3, U1) -> U3, subject: kvSimdImpl.min as (U3, U1) -> U3)
                context.run(.u4, .u4, for: input.u4u4[], reference: simd.min as (U4, U4) -> U4, subject: kvSimdImpl.min as (U4, U4) -> U4)
                context.run(.u4, .u1, for: input.u4u1[], reference: simd.min as (U4, U1) -> U4, subject: kvSimdImpl.min as (U4, U1) -> U4)
                context.run(.f2, .f2, for: input.f2f2[], reference: simd.min as (F2, F2) -> F2, subject: kvSimdImpl.min as (F2, F2) -> F2)
                context.run(.f2, .f1, for: input.f2f1[], reference: simd.min as (F2, F1) -> F2, subject: kvSimdImpl.min as (F2, F1) -> F2)
                context.run(.f3, .f3, for: input.f3f3[], reference: simd.min as (F3, F3) -> F3, subject: kvSimdImpl.min as (F3, F3) -> F3)
                context.run(.f3, .f1, for: input.f3f1[], reference: simd.min as (F3, F1) -> F3, subject: kvSimdImpl.min as (F3, F1) -> F3)
                context.run(.f4, .f4, for: input.f4f4[], reference: simd.min as (F4, F4) -> F4, subject: kvSimdImpl.min as (F4, F4) -> F4)
                context.run(.f4, .f1, for: input.f4f1[], reference: simd.min as (F4, F1) -> F4, subject: kvSimdImpl.min as (F4, F1) -> F4)
                context.run(.d2, .d2, for: input.d2d2[], reference: simd.min as (D2, D2) -> D2, subject: kvSimdImpl.min as (D2, D2) -> D2)
                context.run(.d2, .d1, for: input.d2d1[], reference: simd.min as (D2, D1) -> D2, subject: kvSimdImpl.min as (D2, D1) -> D2)
                context.run(.d3, .d3, for: input.d3d3[], reference: simd.min as (D3, D3) -> D3, subject: kvSimdImpl.min as (D3, D3) -> D3)
                context.run(.d3, .d1, for: input.d3d1[], reference: simd.min as (D3, D1) -> D3, subject: kvSimdImpl.min as (D3, D1) -> D3)
                context.run(.d4, .d4, for: input.d4d4[], reference: simd.min as (D4, D4) -> D4, subject: kvSimdImpl.min as (D4, D4) -> D4)
                context.run(.d4, .d1, for: input.d4d1[], reference: simd.min as (D4, D1) -> D4, subject: kvSimdImpl.min as (D4, D1) -> D4)
            }
            Run(label: "mix") { context in
                context.run(.f2, .f2, .f2, for: input.f2f2f2[], reference: simd.mix as (F2, F2, F2) -> F2, subject: kvSimdImpl.mix as (F2, F2, F2) -> F2)
                context.run(.f2, .f2, .f1, for: input.f2f2f1[], reference: simd.mix as (F2, F2, F1) -> F2, subject: kvSimdImpl.mix as (F2, F2, F1) -> F2)
                context.run(.f3, .f3, .f3, for: input.f3f3f3[], reference: simd.mix as (F3, F3, F3) -> F3, subject: kvSimdImpl.mix as (F3, F3, F3) -> F3)
                context.run(.f3, .f3, .f1, for: input.f3f3f1[], reference: simd.mix as (F3, F3, F1) -> F3, subject: kvSimdImpl.mix as (F3, F3, F1) -> F3)
                context.run(.f4, .f4, .f4, for: input.f4f4f4[], reference: simd.mix as (F4, F4, F4) -> F4, subject: kvSimdImpl.mix as (F4, F4, F4) -> F4)
                context.run(.f4, .f4, .f1, for: input.f4f4f1[], reference: simd.mix as (F4, F4, F1) -> F4, subject: kvSimdImpl.mix as (F4, F4, F1) -> F4)
                context.run(.d2, .d2, .d2, for: input.d2d2d2[], reference: simd.mix as (D2, D2, D2) -> D2, subject: kvSimdImpl.mix as (D2, D2, D2) -> D2)
                context.run(.d2, .d2, .d1, for: input.d2d2d1[], reference: simd.mix as (D2, D2, D1) -> D2, subject: kvSimdImpl.mix as (D2, D2, D1) -> D2)
                context.run(.d3, .d3, .d3, for: input.d3d3d3[], reference: simd.mix as (D3, D3, D3) -> D3, subject: kvSimdImpl.mix as (D3, D3, D3) -> D3)
                context.run(.d3, .d3, .d1, for: input.d3d3d1[], reference: simd.mix as (D3, D3, D1) -> D3, subject: kvSimdImpl.mix as (D3, D3, D1) -> D3)
                context.run(.d4, .d4, .d4, for: input.d4d4d4[], reference: simd.mix as (D4, D4, D4) -> D4, subject: kvSimdImpl.mix as (D4, D4, D4) -> D4)
                context.run(.d4, .d4, .d1, for: input.d4d4d1[], reference: simd.mix as (D4, D4, D1) -> D4, subject: kvSimdImpl.mix as (D4, D4, D1) -> D4)
            }

            if #available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *) {
                Run(label: "nextafter") { context in
                    context.run(.f2 , .f2 , for: input.f2f2  [], reference: simd.nextafter as (F2 , F2 ) -> F2 , subject: kvSimdImpl.nextafter as (F2 , F2 ) -> F2 )
                    context.run(.f3 , .f3 , for: input.f3f3  [], reference: simd.nextafter as (F3 , F3 ) -> F3 , subject: kvSimdImpl.nextafter as (F3 , F3 ) -> F3 )
                    context.run(.f4 , .f4 , for: input.f4f4  [], reference: simd.nextafter as (F4 , F4 ) -> F4 , subject: kvSimdImpl.nextafter as (F4 , F4 ) -> F4 )
                    context.run(.f8 , .f8 , for: input.f8f8  [], reference: simd.nextafter as (F8 , F8 ) -> F8 , subject: kvSimdImpl.nextafter as (F8 , F8 ) -> F8 )
                    context.run(.f16, .f16, for: input.f16f16[], reference: simd.nextafter as (F16, F16) -> F16, subject: kvSimdImpl.nextafter as (F16, F16) -> F16)
                    context.run(.d2 , .d2 , for: input.d2d2  [], reference: simd.nextafter as (D2 , D2 ) -> D2 , subject: kvSimdImpl.nextafter as (D2 , D2 ) -> D2 )
                    context.run(.d3 , .d3 , for: input.d3d3  [], reference: simd.nextafter as (D3 , D3 ) -> D3 , subject: kvSimdImpl.nextafter as (D3 , D3 ) -> D3 )
                    context.run(.d4 , .d4 , for: input.d4d4  [], reference: simd.nextafter as (D4 , D4 ) -> D4 , subject: kvSimdImpl.nextafter as (D4 , D4 ) -> D4 )
                    context.run(.d8 , .d8 , for: input.d8d8  [], reference: simd.nextafter as (D8 , D8 ) -> D8 , subject: kvSimdImpl.nextafter as (D8 , D8 ) -> D8 )
                }
            }

            Run(label: "norm_inf") { context in
                context.run(.f2, for: input.f2[], reference: simd.norm_inf as (F2) -> F1, subject: kvSimdImpl.norm_inf as (F2) -> F1)
                context.run(.f3, for: input.f3[], reference: simd.norm_inf as (F3) -> F1, subject: kvSimdImpl.norm_inf as (F3) -> F1)
                context.run(.f4, for: input.f4[], reference: simd.norm_inf as (F4) -> F1, subject: kvSimdImpl.norm_inf as (F4) -> F1)
                context.run(.d2, for: input.d2[], reference: simd.norm_inf as (D2) -> D1, subject: kvSimdImpl.norm_inf as (D2) -> D1)
                context.run(.d3, for: input.d3[], reference: simd.norm_inf as (D3) -> D1, subject: kvSimdImpl.norm_inf as (D3) -> D1)
                context.run(.d4, for: input.d4[], reference: simd.norm_inf as (D4) -> D1, subject: kvSimdImpl.norm_inf as (D4) -> D1)
            }
            Run(label: "norm_one") { context in
                context.run(.f2, for: input.f2[], reference: simd.norm_one as (F2) -> F1, subject: kvSimdImpl.norm_one as (F2) -> F1)
                context.run(.f3, for: input.f3[], reference: simd.norm_one as (F3) -> F1, subject: kvSimdImpl.norm_one as (F3) -> F1)
                context.run(.f4, for: input.f4[], reference: simd.norm_one as (F4) -> F1, subject: kvSimdImpl.norm_one as (F4) -> F1)
                context.run(.d2, for: input.d2[], reference: simd.norm_one as (D2) -> D1, subject: kvSimdImpl.norm_one as (D2) -> D1)
                context.run(.d3, for: input.d3[], reference: simd.norm_one as (D3) -> D1, subject: kvSimdImpl.norm_one as (D3) -> D1)
                context.run(.d4, for: input.d4[], reference: simd.norm_one as (D4) -> D1, subject: kvSimdImpl.norm_one as (D4) -> D1)
            }
            Run(label: "normalize") { context in
                context.run(.f2, for: input.f2[], reference: simd.normalize as (F2) -> F2, subject: kvSimdImpl.normalize as (F2) -> F2)
                context.run(.f3, for: input.f3[], reference: simd.normalize as (F3) -> F3, subject: kvSimdImpl.normalize as (F3) -> F3)
                context.run(.f4, for: input.f4[], reference: simd.normalize as (F4) -> F4, subject: kvSimdImpl.normalize as (F4) -> F4)
                context.run(.d2, for: input.d2[], reference: simd.normalize as (D2) -> D2, subject: kvSimdImpl.normalize as (D2) -> D2)
                context.run(.d3, for: input.d3[], reference: simd.normalize as (D3) -> D3, subject: kvSimdImpl.normalize as (D3) -> D3)
                context.run(.d4, for: input.d4[], reference: simd.normalize as (D4) -> D4, subject: kvSimdImpl.normalize as (D4) -> D4)
            }

            if #available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *) {
                Run(label: "pow") { context in
                    context.run(.f2 , .f2 , for: input.f2f2  [.positive], reference: simd.pow as (F2 , F2 ) -> F2 , subject: kvSimdImpl.pow as (F2 , F2 ) -> F2 )
                    context.run(.f3 , .f3 , for: input.f3f3  [.positive], reference: simd.pow as (F3 , F3 ) -> F3 , subject: kvSimdImpl.pow as (F3 , F3 ) -> F3 )
                    context.run(.f4 , .f4 , for: input.f4f4  [.positive], reference: simd.pow as (F4 , F4 ) -> F4 , subject: kvSimdImpl.pow as (F4 , F4 ) -> F4 )
                    context.run(.f8 , .f8 , for: input.f8f8  [.positive], reference: simd.pow as (F8 , F8 ) -> F8 , subject: kvSimdImpl.pow as (F8 , F8 ) -> F8 )
                    context.run(.f16, .f16, for: input.f16f16[.positive], reference: simd.pow as (F16, F16) -> F16, subject: kvSimdImpl.pow as (F16, F16) -> F16)
                    context.run(.d2 , .d2 , for: input.d2d2  [.positive], reference: simd.pow as (D2 , D2 ) -> D2 , subject: kvSimdImpl.pow as (D2 , D2 ) -> D2 )
                    context.run(.d3 , .d3 , for: input.d3d3  [.positive], reference: simd.pow as (D3 , D3 ) -> D3 , subject: kvSimdImpl.pow as (D3 , D3 ) -> D3 )
                    context.run(.d4 , .d4 , for: input.d4d4  [.positive], reference: simd.pow as (D4 , D4 ) -> D4 , subject: kvSimdImpl.pow as (D4 , D4 ) -> D4 )
                    context.run(.d8 , .d8 , for: input.d8d8  [.positive], reference: simd.pow as (D8 , D8 ) -> D8 , subject: kvSimdImpl.pow as (D8 , D8 ) -> D8 )
                }
            }

            Run(label: "project") { context in
                context.run(.f2, .f2, for: input.f2f2[], reference: simd.project as (F2, F2) -> F2, subject: kvSimdImpl.project as (F2, F2) -> F2)
                context.run(.f3, .f3, for: input.f3f3[], reference: simd.project as (F3, F3) -> F3, subject: kvSimdImpl.project as (F3, F3) -> F3)
                context.run(.f4, .f4, for: input.f4f4[], reference: simd.project as (F4, F4) -> F4, subject: kvSimdImpl.project as (F4, F4) -> F4)
                context.run(.d2, .d2, for: input.d2d2[], reference: simd.project as (D2, D2) -> D2, subject: kvSimdImpl.project as (D2, D2) -> D2)
                context.run(.d3, .d3, for: input.d3d3[], reference: simd.project as (D3, D3) -> D3, subject: kvSimdImpl.project as (D3, D3) -> D3)
                context.run(.d4, .d4, for: input.d4d4[], reference: simd.project as (D4, D4) -> D4, subject: kvSimdImpl.project as (D4, D4) -> D4)
            }
            Run(label: "recip") { context in
                context.run(.f1, for: input.f1[], reference: simd.recip as (F1) -> F1, subject: kvSimdImpl.recip as (F1) -> F1)
                context.run(.f2, for: input.f2[], reference: simd.recip as (F2) -> F2, subject: kvSimdImpl.recip as (F2) -> F2)
                context.run(.f3, for: input.f3[], reference: simd.recip as (F3) -> F3, subject: kvSimdImpl.recip as (F3) -> F3)
                context.run(.f4, for: input.f4[], reference: simd.recip as (F4) -> F4, subject: kvSimdImpl.recip as (F4) -> F4)
                context.run(.d1, for: input.d1[], reference: simd.recip as (D1) -> D1, subject: kvSimdImpl.recip as (D1) -> D1)
                context.run(.d2, for: input.d2[], reference: simd.recip as (D2) -> D2, subject: kvSimdImpl.recip as (D2) -> D2)
                context.run(.d3, for: input.d3[], reference: simd.recip as (D3) -> D3, subject: kvSimdImpl.recip as (D3) -> D3)
                context.run(.d4, for: input.d4[], reference: simd.recip as (D4) -> D4, subject: kvSimdImpl.recip as (D4) -> D4)
            }
            Run(label: "reduce_add") { context in
                context.run(.i2, for: input.i2[], reference: simd.reduce_add as (I2) -> I1, subject: kvSimdImpl.reduce_add as (I2) -> I1)
                context.run(.i3, for: input.i3[], reference: simd.reduce_add as (I3) -> I1, subject: kvSimdImpl.reduce_add as (I3) -> I1)
                context.run(.i4, for: input.i4[], reference: simd.reduce_add as (I4) -> I1, subject: kvSimdImpl.reduce_add as (I4) -> I1)
                context.run(.u2, for: input.u2[], reference: simd.reduce_add as (U2) -> U1, subject: kvSimdImpl.reduce_add as (U2) -> U1)
                context.run(.u3, for: input.u3[], reference: simd.reduce_add as (U3) -> U1, subject: kvSimdImpl.reduce_add as (U3) -> U1)
                context.run(.u4, for: input.u4[], reference: simd.reduce_add as (U4) -> U1, subject: kvSimdImpl.reduce_add as (U4) -> U1)
                context.run(.f2, for: input.f2[], reference: simd.reduce_add as (F2) -> F1, subject: kvSimdImpl.reduce_add as (F2) -> F1)
                context.run(.f3, for: input.f3[], reference: simd.reduce_add as (F3) -> F1, subject: kvSimdImpl.reduce_add as (F3) -> F1)
                context.run(.f4, for: input.f4[], reference: simd.reduce_add as (F4) -> F1, subject: kvSimdImpl.reduce_add as (F4) -> F1)
                context.run(.d2, for: input.d2[], reference: simd.reduce_add as (D2) -> D1, subject: kvSimdImpl.reduce_add as (D2) -> D1)
                context.run(.d3, for: input.d3[], reference: simd.reduce_add as (D3) -> D1, subject: kvSimdImpl.reduce_add as (D3) -> D1)
                context.run(.d4, for: input.d4[], reference: simd.reduce_add as (D4) -> D1, subject: kvSimdImpl.reduce_add as (D4) -> D1)
            }
            Run(label: "reduce_max") { context in
                context.run(.i2, for: input.i2[], reference: simd.reduce_max as (I2) -> I1, subject: kvSimdImpl.reduce_min as (I2) -> I1)
                context.run(.i3, for: input.i3[], reference: simd.reduce_max as (I3) -> I1, subject: kvSimdImpl.reduce_min as (I3) -> I1)
                context.run(.i4, for: input.i4[], reference: simd.reduce_max as (I4) -> I1, subject: kvSimdImpl.reduce_min as (I4) -> I1)
                context.run(.u2, for: input.u2[], reference: simd.reduce_max as (U2) -> U1, subject: kvSimdImpl.reduce_min as (U2) -> U1)
                context.run(.u3, for: input.u3[], reference: simd.reduce_max as (U3) -> U1, subject: kvSimdImpl.reduce_min as (U3) -> U1)
                context.run(.u4, for: input.u4[], reference: simd.reduce_max as (U4) -> U1, subject: kvSimdImpl.reduce_min as (U4) -> U1)
                context.run(.f2, for: input.f2[], reference: simd.reduce_max as (F2) -> F1, subject: kvSimdImpl.reduce_min as (F2) -> F1)
                context.run(.f3, for: input.f3[], reference: simd.reduce_max as (F3) -> F1, subject: kvSimdImpl.reduce_min as (F3) -> F1)
                context.run(.f4, for: input.f4[], reference: simd.reduce_max as (F4) -> F1, subject: kvSimdImpl.reduce_min as (F4) -> F1)
                context.run(.d2, for: input.d2[], reference: simd.reduce_max as (D2) -> D1, subject: kvSimdImpl.reduce_min as (D2) -> D1)
                context.run(.d3, for: input.d3[], reference: simd.reduce_max as (D3) -> D1, subject: kvSimdImpl.reduce_min as (D3) -> D1)
                context.run(.d4, for: input.d4[], reference: simd.reduce_max as (D4) -> D1, subject: kvSimdImpl.reduce_min as (D4) -> D1)
            }
            Run(label: "reduce_min") { context in
                context.run(.i2, for: input.i2[], reference: simd.reduce_min as (I2) -> I1, subject: kvSimdImpl.reduce_min as (I2) -> I1)
                context.run(.i3, for: input.i3[], reference: simd.reduce_min as (I3) -> I1, subject: kvSimdImpl.reduce_min as (I3) -> I1)
                context.run(.i4, for: input.i4[], reference: simd.reduce_min as (I4) -> I1, subject: kvSimdImpl.reduce_min as (I4) -> I1)
                context.run(.u2, for: input.u2[], reference: simd.reduce_min as (U2) -> U1, subject: kvSimdImpl.reduce_min as (U2) -> U1)
                context.run(.u3, for: input.u3[], reference: simd.reduce_min as (U3) -> U1, subject: kvSimdImpl.reduce_min as (U3) -> U1)
                context.run(.u4, for: input.u4[], reference: simd.reduce_min as (U4) -> U1, subject: kvSimdImpl.reduce_min as (U4) -> U1)
                context.run(.f2, for: input.f2[], reference: simd.reduce_min as (F2) -> F1, subject: kvSimdImpl.reduce_min as (F2) -> F1)
                context.run(.f3, for: input.f3[], reference: simd.reduce_min as (F3) -> F1, subject: kvSimdImpl.reduce_min as (F3) -> F1)
                context.run(.f4, for: input.f4[], reference: simd.reduce_min as (F4) -> F1, subject: kvSimdImpl.reduce_min as (F4) -> F1)
                context.run(.d2, for: input.d2[], reference: simd.reduce_min as (D2) -> D1, subject: kvSimdImpl.reduce_min as (D2) -> D1)
                context.run(.d3, for: input.d3[], reference: simd.reduce_min as (D3) -> D1, subject: kvSimdImpl.reduce_min as (D3) -> D1)
                context.run(.d4, for: input.d4[], reference: simd.reduce_min as (D4) -> D1, subject: kvSimdImpl.reduce_min as (D4) -> D1)
            }
            Run(label: "reflect") { context in
                context.run(.f2, .f2, for: input.f2f2[].lazy.map { ($0, simd.normalize($1)) }, reference: simd.reflect as (F2, F2) -> F2, subject: kvSimdImpl.reflect as (F2, F2) -> F2)
                context.run(.f3, .f3, for: input.f3f3[].lazy.map { ($0, simd.normalize($1)) }, reference: simd.reflect as (F3, F3) -> F3, subject: kvSimdImpl.reflect as (F3, F3) -> F3)
                context.run(.f4, .f4, for: input.f4f4[].lazy.map { ($0, simd.normalize($1)) }, reference: simd.reflect as (F4, F4) -> F4, subject: kvSimdImpl.reflect as (F4, F4) -> F4)
                context.run(.d2, .d2, for: input.d2d2[].lazy.map { ($0, simd.normalize($1)) }, reference: simd.reflect as (D2, D2) -> D2, subject: kvSimdImpl.reflect as (D2, D2) -> D2)
                context.run(.d3, .d3, for: input.d3d3[].lazy.map { ($0, simd.normalize($1)) }, reference: simd.reflect as (D3, D3) -> D3, subject: kvSimdImpl.reflect as (D3, D3) -> D3)
                context.run(.d4, .d4, for: input.d4d4[].lazy.map { ($0, simd.normalize($1)) }, reference: simd.reflect as (D4, D4) -> D4, subject: kvSimdImpl.reflect as (D4, D4) -> D4)
            }
            Run(label: "refract") { context in
                context.run(.f2, .f2, .f1, for: input.f2f2f1[].lazy.map { ($0, simd.normalize($1), $2) }, reference: simd.refract as (F2, F2, F1) -> F2, subject: kvSimdImpl.refract as (F2, F2, F1) -> F2)
                context.run(.f3, .f3, .f1, for: input.f3f3f1[].lazy.map { ($0, simd.normalize($1), $2) }, reference: simd.refract as (F3, F3, F1) -> F3, subject: kvSimdImpl.refract as (F3, F3, F1) -> F3)
                context.run(.f4, .f4, .f1, for: input.f4f4f1[].lazy.map { ($0, simd.normalize($1), $2) }, reference: simd.refract as (F4, F4, F1) -> F4, subject: kvSimdImpl.refract as (F4, F4, F1) -> F4)
                context.run(.d2, .d2, .d1, for: input.d2d2d1[].lazy.map { ($0, simd.normalize($1), $2) }, reference: simd.refract as (D2, D2, D1) -> D2, subject: kvSimdImpl.refract as (D2, D2, D1) -> D2)
                context.run(.d3, .d3, .d1, for: input.d3d3d1[].lazy.map { ($0, simd.normalize($1), $2) }, reference: simd.refract as (D3, D3, D1) -> D3, subject: kvSimdImpl.refract as (D3, D3, D1) -> D3)
                context.run(.d4, .d4, .d1, for: input.d4d4d1[].lazy.map { ($0, simd.normalize($1), $2) }, reference: simd.refract as (D4, D4, D1) -> D4, subject: kvSimdImpl.refract as (D4, D4, D1) -> D4)
            }

            if #available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *) {
                Run(label: "remainder") { context in
                    context.run(.f2 , .f2 , for: input.f2f2  [], reference: simd.remainder as (F2 , F2 ) -> F2 , subject: kvSimdImpl.remainder as (F2 , F2 ) -> F2 )
                    context.run(.f3 , .f3 , for: input.f3f3  [], reference: simd.remainder as (F3 , F3 ) -> F3 , subject: kvSimdImpl.remainder as (F3 , F3 ) -> F3 )
                    context.run(.f4 , .f4 , for: input.f4f4  [], reference: simd.remainder as (F4 , F4 ) -> F4 , subject: kvSimdImpl.remainder as (F4 , F4 ) -> F4 )
                    context.run(.f8 , .f8 , for: input.f8f8  [], reference: simd.remainder as (F8 , F8 ) -> F8 , subject: kvSimdImpl.remainder as (F8 , F8 ) -> F8 )
                    context.run(.f16, .f16, for: input.f16f16[], reference: simd.remainder as (F16, F16) -> F16, subject: kvSimdImpl.remainder as (F16, F16) -> F16)
                    context.run(.d2 , .d2 , for: input.d2d2  [], reference: simd.remainder as (D2 , D2 ) -> D2 , subject: kvSimdImpl.remainder as (D2 , D2 ) -> D2 )
                    context.run(.d3 , .d3 , for: input.d3d3  [], reference: simd.remainder as (D3 , D3 ) -> D3 , subject: kvSimdImpl.remainder as (D3 , D3 ) -> D3 )
                    context.run(.d4 , .d4 , for: input.d4d4  [], reference: simd.remainder as (D4 , D4 ) -> D4 , subject: kvSimdImpl.remainder as (D4 , D4 ) -> D4 )
                    context.run(.d8 , .d8 , for: input.d8d8  [], reference: simd.remainder as (D8 , D8 ) -> D8 , subject: kvSimdImpl.remainder as (D8 , D8 ) -> D8 )
                }
                Run(label: "round") { context in
                    context.run(.f2 , for: input.f2 [], reference: simd.round as (F2 ) -> F2 , subject: kvSimdImpl.round as (F2 ) -> F2 )
                    context.run(.f3 , for: input.f3 [], reference: simd.round as (F3 ) -> F3 , subject: kvSimdImpl.round as (F3 ) -> F3 )
                    context.run(.f4 , for: input.f4 [], reference: simd.round as (F4 ) -> F4 , subject: kvSimdImpl.round as (F4 ) -> F4 )
                    context.run(.f8 , for: input.f8 [], reference: simd.round as (F8 ) -> F8 , subject: kvSimdImpl.round as (F8 ) -> F8 )
                    context.run(.f16, for: input.f16[], reference: simd.round as (F16) -> F16, subject: kvSimdImpl.round as (F16) -> F16)
                    context.run(.d2 , for: input.d2 [], reference: simd.round as (D2 ) -> D2 , subject: kvSimdImpl.round as (D2 ) -> D2 )
                    context.run(.d3 , for: input.d3 [], reference: simd.round as (D3 ) -> D3 , subject: kvSimdImpl.round as (D3 ) -> D3 )
                    context.run(.d4 , for: input.d4 [], reference: simd.round as (D4 ) -> D4 , subject: kvSimdImpl.round as (D4 ) -> D4 )
                    context.run(.d8 , for: input.d8 [], reference: simd.round as (D8 ) -> D8 , subject: kvSimdImpl.round as (D8 ) -> D8 )
                }
            }

            Run(label: "rsqrt") { context in
                context.run(.f1, for: input.f1[], reference: simd.rsqrt as (F1) -> F1, subject: kvSimdImpl.rsqrt as (F1) -> F1)
                context.run(.f2, for: input.f2[], reference: simd.rsqrt as (F2) -> F2, subject: kvSimdImpl.rsqrt as (F2) -> F2)
                context.run(.f3, for: input.f3[], reference: simd.rsqrt as (F3) -> F3, subject: kvSimdImpl.rsqrt as (F3) -> F3)
                context.run(.f4, for: input.f4[], reference: simd.rsqrt as (F4) -> F4, subject: kvSimdImpl.rsqrt as (F4) -> F4)
                context.run(.d1, for: input.d1[], reference: simd.rsqrt as (D1) -> D1, subject: kvSimdImpl.rsqrt as (D1) -> D1)
                context.run(.d2, for: input.d2[], reference: simd.rsqrt as (D2) -> D2, subject: kvSimdImpl.rsqrt as (D2) -> D2)
                context.run(.d3, for: input.d3[], reference: simd.rsqrt as (D3) -> D3, subject: kvSimdImpl.rsqrt as (D3) -> D3)
                context.run(.d4, for: input.d4[], reference: simd.rsqrt as (D4) -> D4, subject: kvSimdImpl.rsqrt as (D4) -> D4)
            }
            Run(label: "sign") { context in
                context.run(.f1, for: input.f1[], reference: simd.sign as (F1) -> F1, subject: kvSimdImpl.sign as (F1) -> F1)
                context.run(.f2, for: input.f2[], reference: simd.sign as (F2) -> F2, subject: kvSimdImpl.sign as (F2) -> F2)
                context.run(.f3, for: input.f3[], reference: simd.sign as (F3) -> F3, subject: kvSimdImpl.sign as (F3) -> F3)
                context.run(.f4, for: input.f4[], reference: simd.sign as (F4) -> F4, subject: kvSimdImpl.sign as (F4) -> F4)
                context.run(.d1, for: input.d1[], reference: simd.sign as (D1) -> D1, subject: kvSimdImpl.sign as (D1) -> D1)
                context.run(.d2, for: input.d2[], reference: simd.sign as (D2) -> D2, subject: kvSimdImpl.sign as (D2) -> D2)
                context.run(.d3, for: input.d3[], reference: simd.sign as (D3) -> D3, subject: kvSimdImpl.sign as (D3) -> D3)
                context.run(.d4, for: input.d4[], reference: simd.sign as (D4) -> D4, subject: kvSimdImpl.sign as (D4) -> D4)
            }
            Run(label: "simd_abs") { context in
                context.run(.i2 , for: input.i2 [], reference: simd.simd_abs as (I2 ) -> I2 , subject: kvSimdImpl.simd_abs as (I2 ) -> I2 )
                context.run(.i3 , for: input.i3 [], reference: simd.simd_abs as (I3 ) -> I3 , subject: kvSimdImpl.simd_abs as (I3 ) -> I3 )
                context.run(.i4 , for: input.i4 [], reference: simd.simd_abs as (I4 ) -> I4 , subject: kvSimdImpl.simd_abs as (I4 ) -> I4 )
                context.run(.f2 , for: input.f2 [], reference: simd.simd_abs as (F2 ) -> F2 , subject: kvSimdImpl.simd_abs as (F2 ) -> F2 )
                context.run(.f3 , for: input.f3 [], reference: simd.simd_abs as (F3 ) -> F3 , subject: kvSimdImpl.simd_abs as (F3 ) -> F3 )
                context.run(.f4 , for: input.f4 [], reference: simd.simd_abs as (F4 ) -> F4 , subject: kvSimdImpl.simd_abs as (F4 ) -> F4 )
                context.run(.f8 , for: input.f8 [], reference: simd.simd_abs as (F8 ) -> F8 , subject: kvSimdImpl.simd_abs as (F8 ) -> F8 )
                context.run(.f16, for: input.f16[], reference: simd.simd_abs as (F16) -> F16, subject: kvSimdImpl.simd_abs as (F16) -> F16)
                context.run(.d2 , for: input.d2 [], reference: simd.simd_abs as (D2 ) -> D2 , subject: kvSimdImpl.simd_abs as (D2 ) -> D2 )
                context.run(.d3 , for: input.d3 [], reference: simd.simd_abs as (D3 ) -> D3 , subject: kvSimdImpl.simd_abs as (D3 ) -> D3 )
                context.run(.d4 , for: input.d4 [], reference: simd.simd_abs as (D4 ) -> D4 , subject: kvSimdImpl.simd_abs as (D4 ) -> D4 )
                context.run(.d8 , for: input.d8 [], reference: simd.simd_abs as (D8 ) -> D8 , subject: kvSimdImpl.simd_abs as (D8 ) -> D8 )
            }
            Run(label: "simd_clamp") { context in
                context.run(.i2 , .i2 , .i2 , for: input.i2i2i2   [], reference: simd.simd_clamp as (I2 , I2 , I2 ) -> I2 , subject: kvSimdImpl.simd_clamp as (I2 , I2 , I2 ) -> I2 )
                context.run(.i3 , .i3 , .i3 , for: input.i3i3i3   [], reference: simd.simd_clamp as (I3 , I3 , I3 ) -> I3 , subject: kvSimdImpl.simd_clamp as (I3 , I3 , I3 ) -> I3 )
                context.run(.i4 , .i4 , .i4 , for: input.i4i4i4   [], reference: simd.simd_clamp as (I4 , I4 , I4 ) -> I4 , subject: kvSimdImpl.simd_clamp as (I4 , I4 , I4 ) -> I4 )
                context.run(.u2 , .u2 , .u2 , for: input.u2u2u2   [], reference: simd.simd_clamp as (U2 , U2 , U2 ) -> U2 , subject: kvSimdImpl.simd_clamp as (U2 , U2 , U2 ) -> U2 )
                context.run(.u3 , .u3 , .u3 , for: input.u3u3u3   [], reference: simd.simd_clamp as (U3 , U3 , U3 ) -> U3 , subject: kvSimdImpl.simd_clamp as (U3 , U3 , U3 ) -> U3 )
                context.run(.u4 , .u4 , .u4 , for: input.u4u4u4   [], reference: simd.simd_clamp as (U4 , U4 , U4 ) -> U4 , subject: kvSimdImpl.simd_clamp as (U4 , U4 , U4 ) -> U4 )
                context.run(.f1 , .f1 , .f1 , for: input.f1f1f1   [], reference: simd.simd_clamp as (F1 , F1 , F1 ) -> F1 , subject: kvSimdImpl.simd_clamp as (F1 , F1 , F1 ) -> F1 )
                context.run(.f2 , .f2 , .f2 , for: input.f2f2f2   [], reference: simd.simd_clamp as (F2 , F2 , F2 ) -> F2 , subject: kvSimdImpl.simd_clamp as (F2 , F2 , F2 ) -> F2 )
                context.run(.f3 , .f3 , .f3 , for: input.f3f3f3   [], reference: simd.simd_clamp as (F3 , F3 , F3 ) -> F3 , subject: kvSimdImpl.simd_clamp as (F3 , F3 , F3 ) -> F3 )
                context.run(.f4 , .f4 , .f4 , for: input.f4f4f4   [], reference: simd.simd_clamp as (F4 , F4 , F4 ) -> F4 , subject: kvSimdImpl.simd_clamp as (F4 , F4 , F4 ) -> F4 )
                context.run(.f8 , .f8 , .f8 , for: input.f8f8f8   [], reference: simd.simd_clamp as (F8 , F8 , F8 ) -> F8 , subject: kvSimdImpl.simd_clamp as (F8 , F8 , F8 ) -> F8 )
                context.run(.f16, .f16, .f16, for: input.f16f16f16[], reference: simd.simd_clamp as (F16, F16, F16) -> F16, subject: kvSimdImpl.simd_clamp as (F16, F16, F16) -> F16)
                context.run(.d1 , .d1 , .d1 , for: input.d1d1d1   [], reference: simd.simd_clamp as (D1 , D1 , D1 ) -> D1 , subject: kvSimdImpl.simd_clamp as (D1 , D1 , D1 ) -> D1 )
                context.run(.d2 , .d2 , .d2 , for: input.d2d2d2   [], reference: simd.simd_clamp as (D2 , D2 , D2 ) -> D2 , subject: kvSimdImpl.simd_clamp as (D2 , D2 , D2 ) -> D2 )
                context.run(.d3 , .d3 , .d3 , for: input.d3d3d3   [], reference: simd.simd_clamp as (D3 , D3 , D3 ) -> D3 , subject: kvSimdImpl.simd_clamp as (D3 , D3 , D3 ) -> D3 )
                context.run(.d4 , .d4 , .d4 , for: input.d4d4d4   [], reference: simd.simd_clamp as (D4 , D4 , D4 ) -> D4 , subject: kvSimdImpl.simd_clamp as (D4 , D4 , D4 ) -> D4 )
                context.run(.d8 , .d8 , .d8 , for: input.d8d8d8   [], reference: simd.simd_clamp as (D8 , D8 , D8 ) -> D8 , subject: kvSimdImpl.simd_clamp as (D8 , D8 , D8 ) -> D8 )
            }
            Run(label: "simd_cross") { context in
                context.run(.f2, .f2, for: input.f2f2[], reference: simd.simd_cross as (F2, F2) -> F3, subject: kvSimdImpl.simd_cross as (F2, F2) -> F3)
                context.run(.f3, .f3, for: input.f3f3[], reference: simd.simd_cross as (F3, F3) -> F3, subject: kvSimdImpl.simd_cross as (F3, F3) -> F3)
                context.run(.d2, .d2, for: input.d2d2[], reference: simd.simd_cross as (D2, D2) -> D3, subject: kvSimdImpl.simd_cross as (D2, D2) -> D3)
                context.run(.d3, .d3, for: input.d3d3[], reference: simd.simd_cross as (D3, D3) -> D3, subject: kvSimdImpl.simd_cross as (D3, D3) -> D3)
            }
            Run(label: "simd_distance_squared") { context in
                context.run(.f2 , .f2 , for: input.f2f2  [], reference: simd.simd_distance_squared as (F2 , F2 ) -> F1, subject: kvSimdImpl.simd_distance_squared as (F2 , F2 ) -> F1)
                context.run(.f3 , .f3 , for: input.f3f3  [], reference: simd.simd_distance_squared as (F3 , F3 ) -> F1, subject: kvSimdImpl.simd_distance_squared as (F3 , F3 ) -> F1)
                context.run(.f4 , .f4 , for: input.f4f4  [], reference: simd.simd_distance_squared as (F4 , F4 ) -> F1, subject: kvSimdImpl.simd_distance_squared as (F4 , F4 ) -> F1)
                context.run(.f8 , .f8 , for: input.f8f8  [], reference: simd.simd_distance_squared as (F8 , F8 ) -> F1, subject: kvSimdImpl.simd_distance_squared as (F8 , F8 ) -> F1)
                context.run(.f16, .f16, for: input.f16f16[], reference: simd.simd_distance_squared as (F16, F16) -> F1, subject: kvSimdImpl.simd_distance_squared as (F16, F16) -> F1)
                context.run(.d2 , .d2 , for: input.d2d2  [], reference: simd.simd_distance_squared as (D2 , D2 ) -> D1, subject: kvSimdImpl.simd_distance_squared as (D2 , D2 ) -> D1)
                context.run(.d3 , .d3 , for: input.d3d3  [], reference: simd.simd_distance_squared as (D3 , D3 ) -> D1, subject: kvSimdImpl.simd_distance_squared as (D3 , D3 ) -> D1)
                context.run(.d4 , .d4 , for: input.d4d4  [], reference: simd.simd_distance_squared as (D4 , D4 ) -> D1, subject: kvSimdImpl.simd_distance_squared as (D4 , D4 ) -> D1)
                context.run(.d8 , .d8 , for: input.d8d8  [], reference: simd.simd_distance_squared as (D8 , D8 ) -> D1, subject: kvSimdImpl.simd_distance_squared as (D8 , D8 ) -> D1)
            }
            Run(label: "simd_dot") { context in
                context.run(.f2 , .f2 , for: input.f2f2  [], reference: simd.simd_dot as (F2 , F2 ) -> F1, subject: kvSimdImpl.simd_dot as (F2 , F2 ) -> F1)
                context.run(.f3 , .f3 , for: input.f3f3  [], reference: simd.simd_dot as (F3 , F3 ) -> F1, subject: kvSimdImpl.simd_dot as (F3 , F3 ) -> F1)
                context.run(.f4 , .f4 , for: input.f4f4  [], reference: simd.simd_dot as (F4 , F4 ) -> F1, subject: kvSimdImpl.simd_dot as (F4 , F4 ) -> F1)
                context.run(.f8 , .f8 , for: input.f8f8  [], reference: simd.simd_dot as (F8 , F8 ) -> F1, subject: kvSimdImpl.simd_dot as (F8 , F8 ) -> F1)
                context.run(.f16, .f16, for: input.f16f16[], reference: simd.simd_dot as (F16, F16) -> F1, subject: kvSimdImpl.simd_dot as (F16, F16) -> F1)
                context.run(.d2 , .d2 , for: input.d2d2  [], reference: simd.simd_dot as (D2 , D2 ) -> D1, subject: kvSimdImpl.simd_dot as (D2 , D2 ) -> D1)
                context.run(.d3 , .d3 , for: input.d3d3  [], reference: simd.simd_dot as (D3 , D3 ) -> D1, subject: kvSimdImpl.simd_dot as (D3 , D3 ) -> D1)
                context.run(.d4 , .d4 , for: input.d4d4  [], reference: simd.simd_dot as (D4 , D4 ) -> D1, subject: kvSimdImpl.simd_dot as (D4 , D4 ) -> D1)
                context.run(.d8 , .d8 , for: input.d8d8  [], reference: simd.simd_dot as (D8 , D8 ) -> D1, subject: kvSimdImpl.simd_dot as (D8 , D8 ) -> D1)
            }
            Run(label: "simd_equal") { context in
                context.run(.i2 , .i2 , for: input.i2i2  [], reference: simd.simd_equal as (I2 , I2 ) -> Bool, subject: kvSimdImpl.simd_equal as (I2 , I2 ) -> Bool)
                context.run(.i3 , .i3 , for: input.i3i3  [], reference: simd.simd_equal as (I3 , I3 ) -> Bool, subject: kvSimdImpl.simd_equal as (I3 , I3 ) -> Bool)
                context.run(.i4 , .i4 , for: input.i4i4  [], reference: simd.simd_equal as (I4 , I4 ) -> Bool, subject: kvSimdImpl.simd_equal as (I4 , I4 ) -> Bool)
                context.run(.u2 , .u2 , for: input.u2u2  [], reference: simd.simd_equal as (U2 , U2 ) -> Bool, subject: kvSimdImpl.simd_equal as (U2 , U2 ) -> Bool)
                context.run(.u3 , .u3 , for: input.u3u3  [], reference: simd.simd_equal as (U3 , U3 ) -> Bool, subject: kvSimdImpl.simd_equal as (U3 , U3 ) -> Bool)
                context.run(.u4 , .u4 , for: input.u4u4  [], reference: simd.simd_equal as (U4 , U4 ) -> Bool, subject: kvSimdImpl.simd_equal as (U4 , U4 ) -> Bool)
                context.run(.f2 , .f2 , for: input.f2f2  [], reference: simd.simd_equal as (F2 , F2 ) -> Bool, subject: kvSimdImpl.simd_equal as (F2 , F2 ) -> Bool)
                context.run(.f3 , .f3 , for: input.f3f3  [], reference: simd.simd_equal as (F3 , F3 ) -> Bool, subject: kvSimdImpl.simd_equal as (F3 , F3 ) -> Bool)
                context.run(.f4 , .f4 , for: input.f4f4  [], reference: simd.simd_equal as (F4 , F4 ) -> Bool, subject: kvSimdImpl.simd_equal as (F4 , F4 ) -> Bool)
                context.run(.f8 , .f8 , for: input.f8f8  [], reference: simd.simd_equal as (F8 , F8 ) -> Bool, subject: kvSimdImpl.simd_equal as (F8 , F8 ) -> Bool)
                context.run(.f16, .f16, for: input.f16f16[], reference: simd.simd_equal as (F16, F16) -> Bool, subject: kvSimdImpl.simd_equal as (F16, F16) -> Bool)
                context.run(.d2 , .d2 , for: input.d2d2  [], reference: simd.simd_equal as (D2 , D2 ) -> Bool, subject: kvSimdImpl.simd_equal as (D2 , D2 ) -> Bool)
                context.run(.d3 , .d3 , for: input.d3d3  [], reference: simd.simd_equal as (D3 , D3 ) -> Bool, subject: kvSimdImpl.simd_equal as (D3 , D3 ) -> Bool)
                context.run(.d4 , .d4 , for: input.d4d4  [], reference: simd.simd_equal as (D4 , D4 ) -> Bool, subject: kvSimdImpl.simd_equal as (D4 , D4 ) -> Bool)
                context.run(.d8 , .d8 , for: input.d8d8  [], reference: simd.simd_equal as (D8 , D8 ) -> Bool, subject: kvSimdImpl.simd_equal as (D8 , D8 ) -> Bool)
            }
            Run(label: "simd_fast_distance") { context in
                context.run(.f2 , .f2 , for: input.f2f2  [], reference: simd.simd_fast_distance as (F2 , F2 ) -> F1, subject: kvSimdImpl.simd_fast_distance as (F2 , F2 ) -> F1)
                context.run(.f3 , .f3 , for: input.f3f3  [], reference: simd.simd_fast_distance as (F3 , F3 ) -> F1, subject: kvSimdImpl.simd_fast_distance as (F3 , F3 ) -> F1)
                context.run(.f4 , .f4 , for: input.f4f4  [], reference: simd.simd_fast_distance as (F4 , F4 ) -> F1, subject: kvSimdImpl.simd_fast_distance as (F4 , F4 ) -> F1)
                context.run(.f8 , .f8 , for: input.f8f8  [], reference: simd.simd_fast_distance as (F8 , F8 ) -> F1, subject: kvSimdImpl.simd_fast_distance as (F8 , F8 ) -> F1)
                context.run(.f16, .f16, for: input.f16f16[], reference: simd.simd_fast_distance as (F16, F16) -> F1, subject: kvSimdImpl.simd_fast_distance as (F16, F16) -> F1)
                context.run(.d2 , .d2 , for: input.d2d2  [], reference: simd.simd_fast_distance as (D2 , D2 ) -> D1, subject: kvSimdImpl.simd_fast_distance as (D2 , D2 ) -> D1)
                context.run(.d3 , .d3 , for: input.d3d3  [], reference: simd.simd_fast_distance as (D3 , D3 ) -> D1, subject: kvSimdImpl.simd_fast_distance as (D3 , D3 ) -> D1)
                context.run(.d4 , .d4 , for: input.d4d4  [], reference: simd.simd_fast_distance as (D4 , D4 ) -> D1, subject: kvSimdImpl.simd_fast_distance as (D4 , D4 ) -> D1)
                context.run(.d8 , .d8 , for: input.d8d8  [], reference: simd.simd_fast_distance as (D8 , D8 ) -> D1, subject: kvSimdImpl.simd_fast_distance as (D8 , D8 ) -> D1)
            }
            Run(label: "simd_fast_length") { context in
                context.run(.f2 , for: input.f2 [], reference: simd.simd_fast_length as (F2 ) -> F1, subject: kvSimdImpl.simd_fast_length as (F2 ) -> F1)
                context.run(.f3 , for: input.f3 [], reference: simd.simd_fast_length as (F3 ) -> F1, subject: kvSimdImpl.simd_fast_length as (F3 ) -> F1)
                context.run(.f4 , for: input.f4 [], reference: simd.simd_fast_length as (F4 ) -> F1, subject: kvSimdImpl.simd_fast_length as (F4 ) -> F1)
                context.run(.f8 , for: input.f8 [], reference: simd.simd_fast_length as (F8 ) -> F1, subject: kvSimdImpl.simd_fast_length as (F8 ) -> F1)
                context.run(.f16, for: input.f16[], reference: simd.simd_fast_length as (F16) -> F1, subject: kvSimdImpl.simd_fast_length as (F16) -> F1)
                context.run(.d2 , for: input.d2 [], reference: simd.simd_fast_length as (D2 ) -> D1, subject: kvSimdImpl.simd_fast_length as (D2 ) -> D1)
                context.run(.d3 , for: input.d3 [], reference: simd.simd_fast_length as (D3 ) -> D1, subject: kvSimdImpl.simd_fast_length as (D3 ) -> D1)
                context.run(.d4 , for: input.d4 [], reference: simd.simd_fast_length as (D4 ) -> D1, subject: kvSimdImpl.simd_fast_length as (D4 ) -> D1)
                context.run(.d8 , for: input.d8 [], reference: simd.simd_fast_length as (D8 ) -> D1, subject: kvSimdImpl.simd_fast_length as (D8 ) -> D1)
            }
            Run(label: "simd_fast_normalize") { context in
                context.run(.f2 , for: input.f2 [], reference: simd.simd_fast_normalize as (F2 ) -> F2 , subject: kvSimdImpl.simd_fast_normalize as (F2 ) -> F2 )
                context.run(.f3 , for: input.f3 [], reference: simd.simd_fast_normalize as (F3 ) -> F3 , subject: kvSimdImpl.simd_fast_normalize as (F3 ) -> F3 )
                context.run(.f4 , for: input.f4 [], reference: simd.simd_fast_normalize as (F4 ) -> F4 , subject: kvSimdImpl.simd_fast_normalize as (F4 ) -> F4 )
                context.run(.f8 , for: input.f8 [], reference: simd.simd_fast_normalize as (F8 ) -> F8 , subject: kvSimdImpl.simd_fast_normalize as (F8 ) -> F8 )
                context.run(.f16, for: input.f16[], reference: simd.simd_fast_normalize as (F16) -> F16, subject: kvSimdImpl.simd_fast_normalize as (F16) -> F16)
                context.run(.d2 , for: input.d2 [], reference: simd.simd_fast_normalize as (D2 ) -> D2 , subject: kvSimdImpl.simd_fast_normalize as (D2 ) -> D2 )
                context.run(.d3 , for: input.d3 [], reference: simd.simd_fast_normalize as (D3 ) -> D3 , subject: kvSimdImpl.simd_fast_normalize as (D3 ) -> D3 )
                context.run(.d4 , for: input.d4 [], reference: simd.simd_fast_normalize as (D4 ) -> D4 , subject: kvSimdImpl.simd_fast_normalize as (D4 ) -> D4 )
                context.run(.d8 , for: input.d8 [], reference: simd.simd_fast_normalize as (D8 ) -> D8 , subject: kvSimdImpl.simd_fast_normalize as (D8 ) -> D8 )
            }
            Run(label: "simd_fast_project") { context in
                context.run(.f2 , .f2 , for: input.f2f2  [], reference: simd.simd_fast_project as (F2 , F2 ) -> F2 , subject: kvSimdImpl.simd_fast_project as (F2 , F2 ) -> F2 )
                context.run(.f3 , .f3 , for: input.f3f3  [], reference: simd.simd_fast_project as (F3 , F3 ) -> F3 , subject: kvSimdImpl.simd_fast_project as (F3 , F3 ) -> F3 )
                context.run(.f4 , .f4 , for: input.f4f4  [], reference: simd.simd_fast_project as (F4 , F4 ) -> F4 , subject: kvSimdImpl.simd_fast_project as (F4 , F4 ) -> F4 )
                context.run(.f8 , .f8 , for: input.f8f8  [], reference: simd.simd_fast_project as (F8 , F8 ) -> F8 , subject: kvSimdImpl.simd_fast_project as (F8 , F8 ) -> F8 )
                context.run(.f16, .f16, for: input.f16f16[], reference: simd.simd_fast_project as (F16, F16) -> F16, subject: kvSimdImpl.simd_fast_project as (F16, F16) -> F16)
                context.run(.d2 , .d2 , for: input.d2d2  [], reference: simd.simd_fast_project as (D2 , D2 ) -> D2 , subject: kvSimdImpl.simd_fast_project as (D2 , D2 ) -> D2 )
                context.run(.d3 , .d3 , for: input.d3d3  [], reference: simd.simd_fast_project as (D3 , D3 ) -> D3 , subject: kvSimdImpl.simd_fast_project as (D3 , D3 ) -> D3 )
                context.run(.d4 , .d4 , for: input.d4d4  [], reference: simd.simd_fast_project as (D4 , D4 ) -> D4 , subject: kvSimdImpl.simd_fast_project as (D4 , D4 ) -> D4 )
                context.run(.d8 , .d8 , for: input.d8d8  [], reference: simd.simd_fast_project as (D8 , D8 ) -> D8 , subject: kvSimdImpl.simd_fast_project as (D8 , D8 ) -> D8 )
            }
            Run(label: "simd_fast_recip") { context in
                context.run(.f1 , for: input.f1 [], reference: simd.simd_fast_recip as (F1 ) -> F1 , subject: kvSimdImpl.simd_fast_recip as (F1 ) -> F1 )
                context.run(.f2 , for: input.f2 [], reference: simd.simd_fast_recip as (F2 ) -> F2 , subject: kvSimdImpl.simd_fast_recip as (F2 ) -> F2 )
                context.run(.f3 , for: input.f3 [], reference: simd.simd_fast_recip as (F3 ) -> F3 , subject: kvSimdImpl.simd_fast_recip as (F3 ) -> F3 )
                context.run(.f4 , for: input.f4 [], reference: simd.simd_fast_recip as (F4 ) -> F4 , subject: kvSimdImpl.simd_fast_recip as (F4 ) -> F4 )
                context.run(.f8 , for: input.f8 [], reference: simd.simd_fast_recip as (F8 ) -> F8 , subject: kvSimdImpl.simd_fast_recip as (F8 ) -> F8 )
                context.run(.f16, for: input.f16[], reference: simd.simd_fast_recip as (F16) -> F16, subject: kvSimdImpl.simd_fast_recip as (F16) -> F16)
                context.run(.d1 , for: input.d1 [], reference: simd.simd_fast_recip as (D1 ) -> D1 , subject: kvSimdImpl.simd_fast_recip as (D1 ) -> D1 )
                context.run(.d2 , for: input.d2 [], reference: simd.simd_fast_recip as (D2 ) -> D2 , subject: kvSimdImpl.simd_fast_recip as (D2 ) -> D2 )
                context.run(.d3 , for: input.d3 [], reference: simd.simd_fast_recip as (D3 ) -> D3 , subject: kvSimdImpl.simd_fast_recip as (D3 ) -> D3 )
                context.run(.d4 , for: input.d4 [], reference: simd.simd_fast_recip as (D4 ) -> D4 , subject: kvSimdImpl.simd_fast_recip as (D4 ) -> D4 )
                context.run(.d8 , for: input.d8 [], reference: simd.simd_fast_recip as (D8 ) -> D8 , subject: kvSimdImpl.simd_fast_recip as (D8 ) -> D8 )
            }
            Run(label: "simd_fast_rsqrt") { context in
                context.run(.f1 , for: input.f1 [.positive], reference: simd.simd_fast_rsqrt as (F1 ) -> F1 , subject: kvSimdImpl.simd_fast_rsqrt as (F1 ) -> F1 )
                context.run(.f2 , for: input.f2 [.positive], reference: simd.simd_fast_rsqrt as (F2 ) -> F2 , subject: kvSimdImpl.simd_fast_rsqrt as (F2 ) -> F2 )
                context.run(.f3 , for: input.f3 [.positive], reference: simd.simd_fast_rsqrt as (F3 ) -> F3 , subject: kvSimdImpl.simd_fast_rsqrt as (F3 ) -> F3 )
                context.run(.f4 , for: input.f4 [.positive], reference: simd.simd_fast_rsqrt as (F4 ) -> F4 , subject: kvSimdImpl.simd_fast_rsqrt as (F4 ) -> F4 )
                context.run(.f8 , for: input.f8 [.positive], reference: simd.simd_fast_rsqrt as (F8 ) -> F8 , subject: kvSimdImpl.simd_fast_rsqrt as (F8 ) -> F8 )
                context.run(.f16, for: input.f16[.positive], reference: simd.simd_fast_rsqrt as (F16) -> F16, subject: kvSimdImpl.simd_fast_rsqrt as (F16) -> F16)
                context.run(.d1 , for: input.d1 [.positive], reference: simd.simd_fast_rsqrt as (D1 ) -> D1 , subject: kvSimdImpl.simd_fast_rsqrt as (D1 ) -> D1 )
                context.run(.d2 , for: input.d2 [.positive], reference: simd.simd_fast_rsqrt as (D2 ) -> D2 , subject: kvSimdImpl.simd_fast_rsqrt as (D2 ) -> D2 )
                context.run(.d3 , for: input.d3 [.positive], reference: simd.simd_fast_rsqrt as (D3 ) -> D3 , subject: kvSimdImpl.simd_fast_rsqrt as (D3 ) -> D3 )
                context.run(.d4 , for: input.d4 [.positive], reference: simd.simd_fast_rsqrt as (D4 ) -> D4 , subject: kvSimdImpl.simd_fast_rsqrt as (D4 ) -> D4 )
                context.run(.d8 , for: input.d8 [.positive], reference: simd.simd_fast_rsqrt as (D8 ) -> D8 , subject: kvSimdImpl.simd_fast_rsqrt as (D8 ) -> D8 )
            }
            Run(label: "simd_fract") { context in
                context.run(.f1 , for: input.f1 [], reference: simd.simd_fract as (F1 ) -> F1 , subject: kvSimdImpl.simd_fract as (F1 ) -> F1 )
                context.run(.f2 , for: input.f2 [], reference: simd.simd_fract as (F2 ) -> F2 , subject: kvSimdImpl.simd_fract as (F2 ) -> F2 )
                context.run(.f3 , for: input.f3 [], reference: simd.simd_fract as (F3 ) -> F3 , subject: kvSimdImpl.simd_fract as (F3 ) -> F3 )
                context.run(.f4 , for: input.f4 [], reference: simd.simd_fract as (F4 ) -> F4 , subject: kvSimdImpl.simd_fract as (F4 ) -> F4 )
                context.run(.f8 , for: input.f8 [], reference: simd.simd_fract as (F8 ) -> F8 , subject: kvSimdImpl.simd_fract as (F8 ) -> F8 )
                context.run(.f16, for: input.f16[], reference: simd.simd_fract as (F16) -> F16, subject: kvSimdImpl.simd_fract as (F16) -> F16)
                context.run(.d1 , for: input.d1 [], reference: simd.simd_fract as (D1 ) -> D1 , subject: kvSimdImpl.simd_fract as (D1 ) -> D1 )
                context.run(.d2 , for: input.d2 [], reference: simd.simd_fract as (D2 ) -> D2 , subject: kvSimdImpl.simd_fract as (D2 ) -> D2 )
                context.run(.d3 , for: input.d3 [], reference: simd.simd_fract as (D3 ) -> D3 , subject: kvSimdImpl.simd_fract as (D3 ) -> D3 )
                context.run(.d4 , for: input.d4 [], reference: simd.simd_fract as (D4 ) -> D4 , subject: kvSimdImpl.simd_fract as (D4 ) -> D4 )
                context.run(.d8 , for: input.d8 [], reference: simd.simd_fract as (D8 ) -> D8 , subject: kvSimdImpl.simd_fract as (D8 ) -> D8 )
            }
            Run(label: "simd_incircle") { context in
                context.run(.f2, .f2, .f2, .f2, for: input.f2f2f2f2[], reference: simd.simd_incircle as (F2, F2, F2, F2) -> F1, subject: kvSimdImpl.simd_incircle as (F2, F2, F2, F2) -> F1)
                context.run(.d2, .d2, .d2, .d2, for: input.d2d2d2d2[], reference: simd.simd_incircle as (D2, D2, D2, D2) -> D1, subject: kvSimdImpl.simd_incircle as (D2, D2, D2, D2) -> D1)
            }
            Run(label: "simd_insphere") { context in
                context.run(.f3, .f3, .f3, .f3, .f3, for: input.f3f3f3f3f3[], reference: simd.simd_insphere as (F3, F3, F3, F3, F3) -> F1, subject: kvSimdImpl.simd_insphere as (F3, F3, F3, F3, F3) -> F1)
                context.run(.d3, .d3, .d3, .d3, .d3, for: input.d3d3d3d3d3[], reference: simd.simd_insphere as (D3, D3, D3, D3, D3) -> D1, subject: kvSimdImpl.simd_insphere as (D3, D3, D3, D3, D3) -> D1)
            }
            Run(label: "simd_length_squared") { context in
                context.run(.f2 , for: input.f2 [], reference: simd.simd_length_squared as (F2 ) -> F1, subject: kvSimdImpl.simd_length_squared as (F2 ) -> F1)
                context.run(.f3 , for: input.f3 [], reference: simd.simd_length_squared as (F3 ) -> F1, subject: kvSimdImpl.simd_length_squared as (F3 ) -> F1)
                context.run(.f4 , for: input.f4 [], reference: simd.simd_length_squared as (F4 ) -> F1, subject: kvSimdImpl.simd_length_squared as (F4 ) -> F1)
                context.run(.f8 , for: input.f8 [], reference: simd.simd_length_squared as (F8 ) -> F1, subject: kvSimdImpl.simd_length_squared as (F8 ) -> F1)
                context.run(.f16, for: input.f16[], reference: simd.simd_length_squared as (F16) -> F1, subject: kvSimdImpl.simd_length_squared as (F16) -> F1)
                context.run(.d2 , for: input.d2 [], reference: simd.simd_length_squared as (D2 ) -> D1, subject: kvSimdImpl.simd_length_squared as (D2 ) -> D1)
                context.run(.d3 , for: input.d3 [], reference: simd.simd_length_squared as (D3 ) -> D1, subject: kvSimdImpl.simd_length_squared as (D3 ) -> D1)
                context.run(.d4 , for: input.d4 [], reference: simd.simd_length_squared as (D4 ) -> D1, subject: kvSimdImpl.simd_length_squared as (D4 ) -> D1)
                context.run(.d8 , for: input.d8 [], reference: simd.simd_length_squared as (D8 ) -> D1, subject: kvSimdImpl.simd_length_squared as (D8 ) -> D1)
            }
            Run(label: "simd_max") { context in
                context.run(.i2 , .i2 , for: input.i2i2  [], reference: simd.simd_max as (I2 , I2 ) -> I2 , subject: kvSimdImpl.simd_max as (I2 , I2 ) -> I2 )
                context.run(.i3 , .i3 , for: input.i3i3  [], reference: simd.simd_max as (I3 , I3 ) -> I3 , subject: kvSimdImpl.simd_max as (I3 , I3 ) -> I3 )
                context.run(.i4 , .i4 , for: input.i4i4  [], reference: simd.simd_max as (I4 , I4 ) -> I4 , subject: kvSimdImpl.simd_max as (I4 , I4 ) -> I4 )
                context.run(.u2 , .u2 , for: input.u2u2  [], reference: simd.simd_max as (U2 , U2 ) -> U2 , subject: kvSimdImpl.simd_max as (U2 , U2 ) -> U2 )
                context.run(.u3 , .u3 , for: input.u3u3  [], reference: simd.simd_max as (U3 , U3 ) -> U3 , subject: kvSimdImpl.simd_max as (U3 , U3 ) -> U3 )
                context.run(.u4 , .u4 , for: input.u4u4  [], reference: simd.simd_max as (U4 , U4 ) -> U4 , subject: kvSimdImpl.simd_max as (U4 , U4 ) -> U4 )
                context.run(.f1 , .f1 , for: input.f1f1  [], reference: simd.simd_max as (F1 , F1 ) -> F1 , subject: kvSimdImpl.simd_max as (F1 , F1 ) -> F1 )
                context.run(.f2 , .f2 , for: input.f2f2  [], reference: simd.simd_max as (F2 , F2 ) -> F2 , subject: kvSimdImpl.simd_max as (F2 , F2 ) -> F2 )
                context.run(.f3 , .f3 , for: input.f3f3  [], reference: simd.simd_max as (F3 , F3 ) -> F3 , subject: kvSimdImpl.simd_max as (F3 , F3 ) -> F3 )
                context.run(.f4 , .f4 , for: input.f4f4  [], reference: simd.simd_max as (F4 , F4 ) -> F4 , subject: kvSimdImpl.simd_max as (F4 , F4 ) -> F4 )
                context.run(.f8 , .f8 , for: input.f8f8  [], reference: simd.simd_max as (F8 , F8 ) -> F8 , subject: kvSimdImpl.simd_max as (F8 , F8 ) -> F8 )
                context.run(.f16, .f16, for: input.f16f16[], reference: simd.simd_max as (F16, F16) -> F16, subject: kvSimdImpl.simd_max as (F16, F16) -> F16)
                context.run(.d1 , .d1 , for: input.d1d1  [], reference: simd.simd_max as (D1 , D1 ) -> D1 , subject: kvSimdImpl.simd_max as (D1 , D1 ) -> D1 )
                context.run(.d2 , .d2 , for: input.d2d2  [], reference: simd.simd_max as (D2 , D2 ) -> D2 , subject: kvSimdImpl.simd_max as (D2 , D2 ) -> D2 )
                context.run(.d3 , .d3 , for: input.d3d3  [], reference: simd.simd_max as (D3 , D3 ) -> D3 , subject: kvSimdImpl.simd_max as (D3 , D3 ) -> D3 )
                context.run(.d4 , .d4 , for: input.d4d4  [], reference: simd.simd_max as (D4 , D4 ) -> D4 , subject: kvSimdImpl.simd_max as (D4 , D4 ) -> D4 )
                context.run(.d8 , .d8 , for: input.d8d8  [], reference: simd.simd_max as (D8 , D8 ) -> D8 , subject: kvSimdImpl.simd_max as (D8 , D8 ) -> D8 )
            }
            Run(label: "simd_min") { context in
                context.run(.i2 , .i2 , for: input.i2i2  [], reference: simd.simd_min as (I2 , I2 ) -> I2 , subject: kvSimdImpl.simd_min as (I2 , I2 ) -> I2 )
                context.run(.i3 , .i3 , for: input.i3i3  [], reference: simd.simd_min as (I3 , I3 ) -> I3 , subject: kvSimdImpl.simd_min as (I3 , I3 ) -> I3 )
                context.run(.i4 , .i4 , for: input.i4i4  [], reference: simd.simd_min as (I4 , I4 ) -> I4 , subject: kvSimdImpl.simd_min as (I4 , I4 ) -> I4 )
                context.run(.u2 , .u2 , for: input.u2u2  [], reference: simd.simd_min as (U2 , U2 ) -> U2 , subject: kvSimdImpl.simd_min as (U2 , U2 ) -> U2 )
                context.run(.u3 , .u3 , for: input.u3u3  [], reference: simd.simd_min as (U3 , U3 ) -> U3 , subject: kvSimdImpl.simd_min as (U3 , U3 ) -> U3 )
                context.run(.u4 , .u4 , for: input.u4u4  [], reference: simd.simd_min as (U4 , U4 ) -> U4 , subject: kvSimdImpl.simd_min as (U4 , U4 ) -> U4 )
                context.run(.f1 , .f1 , for: input.f1f1  [], reference: simd.simd_min as (F1 , F1 ) -> F1 , subject: kvSimdImpl.simd_min as (F1 , F1 ) -> F1 )
                context.run(.f2 , .f2 , for: input.f2f2  [], reference: simd.simd_min as (F2 , F2 ) -> F2 , subject: kvSimdImpl.simd_min as (F2 , F2 ) -> F2 )
                context.run(.f3 , .f3 , for: input.f3f3  [], reference: simd.simd_min as (F3 , F3 ) -> F3 , subject: kvSimdImpl.simd_min as (F3 , F3 ) -> F3 )
                context.run(.f4 , .f4 , for: input.f4f4  [], reference: simd.simd_min as (F4 , F4 ) -> F4 , subject: kvSimdImpl.simd_min as (F4 , F4 ) -> F4 )
                context.run(.f8 , .f8 , for: input.f8f8  [], reference: simd.simd_min as (F8 , F8 ) -> F8 , subject: kvSimdImpl.simd_min as (F8 , F8 ) -> F8 )
                context.run(.f16, .f16, for: input.f16f16[], reference: simd.simd_min as (F16, F16) -> F16, subject: kvSimdImpl.simd_min as (F16, F16) -> F16)
                context.run(.d1 , .d1 , for: input.d1d1  [], reference: simd.simd_min as (D1 , D1 ) -> D1 , subject: kvSimdImpl.simd_min as (D1 , D1 ) -> D1 )
                context.run(.d2 , .d2 , for: input.d2d2  [], reference: simd.simd_min as (D2 , D2 ) -> D2 , subject: kvSimdImpl.simd_min as (D2 , D2 ) -> D2 )
                context.run(.d3 , .d3 , for: input.d3d3  [], reference: simd.simd_min as (D3 , D3 ) -> D3 , subject: kvSimdImpl.simd_min as (D3 , D3 ) -> D3 )
                context.run(.d4 , .d4 , for: input.d4d4  [], reference: simd.simd_min as (D4 , D4 ) -> D4 , subject: kvSimdImpl.simd_min as (D4 , D4 ) -> D4 )
                context.run(.d8 , .d8 , for: input.d8d8  [], reference: simd.simd_min as (D8 , D8 ) -> D8 , subject: kvSimdImpl.simd_min as (D8 , D8 ) -> D8 )
            }
            Run(label: "simd_mix") { context in
                context.run(.f1 , .f1 , .f1 , for: input.f1f1f1   [], reference: simd.simd_mix as (F1 , F1 , F1 ) -> F1 , subject: kvSimdImpl.simd_mix as (F1 , F1 , F1 ) -> F1 )
                context.run(.f2 , .f2 , .f2 , for: input.f2f2f2   [], reference: simd.simd_mix as (F2 , F2 , F2 ) -> F2 , subject: kvSimdImpl.simd_mix as (F2 , F2 , F2 ) -> F2 )
                context.run(.f3 , .f3 , .f3 , for: input.f3f3f3   [], reference: simd.simd_mix as (F3 , F3 , F3 ) -> F3 , subject: kvSimdImpl.simd_mix as (F3 , F3 , F3 ) -> F3 )
                context.run(.f4 , .f4 , .f4 , for: input.f4f4f4   [], reference: simd.simd_mix as (F4 , F4 , F4 ) -> F4 , subject: kvSimdImpl.simd_mix as (F4 , F4 , F4 ) -> F4 )
                context.run(.f8 , .f8 , .f8 , for: input.f8f8f8   [], reference: simd.simd_mix as (F8 , F8 , F8 ) -> F8 , subject: kvSimdImpl.simd_mix as (F8 , F8 , F8 ) -> F8 )
                context.run(.f16, .f16, .f16, for: input.f16f16f16[], reference: simd.simd_mix as (F16, F16, F16) -> F16, subject: kvSimdImpl.simd_mix as (F16, F16, F16) -> F16)
                context.run(.d1 , .d1 , .d1 , for: input.d1d1d1   [], reference: simd.simd_mix as (D1 , D1 , D1 ) -> D1 , subject: kvSimdImpl.simd_mix as (D1 , D1 , D1 ) -> D1 )
                context.run(.d2 , .d2 , .d2 , for: input.d2d2d2   [], reference: simd.simd_mix as (D2 , D2 , D2 ) -> D2 , subject: kvSimdImpl.simd_mix as (D2 , D2 , D2 ) -> D2 )
                context.run(.d3 , .d3 , .d3 , for: input.d3d3d3   [], reference: simd.simd_mix as (D3 , D3 , D3 ) -> D3 , subject: kvSimdImpl.simd_mix as (D3 , D3 , D3 ) -> D3 )
                context.run(.d4 , .d4 , .d4 , for: input.d4d4d4   [], reference: simd.simd_mix as (D4 , D4 , D4 ) -> D4 , subject: kvSimdImpl.simd_mix as (D4 , D4 , D4 ) -> D4 )
                context.run(.d8 , .d8 , .d8 , for: input.d8d8d8   [], reference: simd.simd_mix as (D8 , D8 , D8 ) -> D8 , subject: kvSimdImpl.simd_mix as (D8 , D8 , D8 ) -> D8 )
            }
            Run(label: "simd_norm_inf") { context in
                context.run(.f2 , for: input.f2 [], reference: simd.simd_norm_inf as (F2 ) -> F1, subject: kvSimdImpl.simd_norm_inf as (F2 ) -> F1)
                context.run(.f3 , for: input.f3 [], reference: simd.simd_norm_inf as (F3 ) -> F1, subject: kvSimdImpl.simd_norm_inf as (F3 ) -> F1)
                context.run(.f4 , for: input.f4 [], reference: simd.simd_norm_inf as (F4 ) -> F1, subject: kvSimdImpl.simd_norm_inf as (F4 ) -> F1)
                context.run(.f8 , for: input.f8 [], reference: simd.simd_norm_inf as (F8 ) -> F1, subject: kvSimdImpl.simd_norm_inf as (F8 ) -> F1)
                context.run(.f16, for: input.f16[], reference: simd.simd_norm_inf as (F16) -> F1, subject: kvSimdImpl.simd_norm_inf as (F16) -> F1)
                context.run(.d2 , for: input.d2 [], reference: simd.simd_norm_inf as (D2 ) -> D1, subject: kvSimdImpl.simd_norm_inf as (D2 ) -> D1)
                context.run(.d3 , for: input.d3 [], reference: simd.simd_norm_inf as (D3 ) -> D1, subject: kvSimdImpl.simd_norm_inf as (D3 ) -> D1)
                context.run(.d4 , for: input.d4 [], reference: simd.simd_norm_inf as (D4 ) -> D1, subject: kvSimdImpl.simd_norm_inf as (D4 ) -> D1)
                context.run(.d8 , for: input.d8 [], reference: simd.simd_norm_inf as (D8 ) -> D1, subject: kvSimdImpl.simd_norm_inf as (D8 ) -> D1)
            }
            Run(label: "simd_norm_one") { context in
                context.run(.f2 , for: input.f2 [], reference: simd.simd_norm_one as (F2 ) -> F1, subject: kvSimdImpl.simd_norm_one as (F2 ) -> F1)
                context.run(.f3 , for: input.f3 [], reference: simd.simd_norm_one as (F3 ) -> F1, subject: kvSimdImpl.simd_norm_one as (F3 ) -> F1)
                context.run(.f4 , for: input.f4 [], reference: simd.simd_norm_one as (F4 ) -> F1, subject: kvSimdImpl.simd_norm_one as (F4 ) -> F1)
                context.run(.f8 , for: input.f8 [], reference: simd.simd_norm_one as (F8 ) -> F1, subject: kvSimdImpl.simd_norm_one as (F8 ) -> F1)
                context.run(.f16, for: input.f16[], reference: simd.simd_norm_one as (F16) -> F1, subject: kvSimdImpl.simd_norm_one as (F16) -> F1)
                context.run(.d2 , for: input.d2 [], reference: simd.simd_norm_one as (D2 ) -> D1, subject: kvSimdImpl.simd_norm_one as (D2 ) -> D1)
                context.run(.d3 , for: input.d3 [], reference: simd.simd_norm_one as (D3 ) -> D1, subject: kvSimdImpl.simd_norm_one as (D3 ) -> D1)
                context.run(.d4 , for: input.d4 [], reference: simd.simd_norm_one as (D4 ) -> D1, subject: kvSimdImpl.simd_norm_one as (D4 ) -> D1)
                context.run(.d8 , for: input.d8 [], reference: simd.simd_norm_one as (D8 ) -> D1, subject: kvSimdImpl.simd_norm_one as (D8 ) -> D1)
            }
            Run(label: "simd_orient") { context in
                context.run(.f2, .f2          , for: input.f2f2    [], reference: simd.simd_orient as (F2, F2) -> F1        , subject: kvSimdImpl.simd_orient as (F2, F2) -> F1        )
                context.run(.d2, .d2          , for: input.d2d2    [], reference: simd.simd_orient as (D2, D2) -> D1        , subject: kvSimdImpl.simd_orient as (D2, D2) -> D1        )
                context.run(.f2, .f2, .f2     , for: input.f2f2f2  [], reference: simd.simd_orient as (F2, F2, F2) -> F1    , subject: kvSimdImpl.simd_orient as (F2, F2, F2) -> F1    )
                context.run(.d2, .d2, .d2     , for: input.d2d2d2  [], reference: simd.simd_orient as (D2, D2, D2) -> D1    , subject: kvSimdImpl.simd_orient as (D2, D2, D2) -> D1    )
                context.run(.f3, .f3, .f3     , for: input.f3f3f3  [], reference: simd.simd_orient as (F3, F3, F3) -> F1    , subject: kvSimdImpl.simd_orient as (F3, F3, F3) -> F1    )
                context.run(.d3, .d3, .d3     , for: input.d3d3d3  [], reference: simd.simd_orient as (D3, D3, D3) -> D1    , subject: kvSimdImpl.simd_orient as (D3, D3, D3) -> D1    )
                context.run(.f3, .f3, .f3, .f3, for: input.f3f3f3f3[], reference: simd.simd_orient as (F3, F3, F3, F3) -> F1, subject: kvSimdImpl.simd_orient as (F3, F3, F3, F3) -> F1)
                context.run(.d3, .d3, .d3, .d3, for: input.d3d3d3d3[], reference: simd.simd_orient as (D3, D3, D3, D3) -> D1, subject: kvSimdImpl.simd_orient as (D3, D3, D3, D3) -> D1)
            }
            Run(label: "simd_precise_distance") { context in
                context.run(.f2 , .f2 , for: input.f2f2  [], reference: simd.simd_precise_distance as (F2 , F2 ) -> F1, subject: kvSimdImpl.simd_precise_distance as (F2 , F2 ) -> F1)
                context.run(.f3 , .f3 , for: input.f3f3  [], reference: simd.simd_precise_distance as (F3 , F3 ) -> F1, subject: kvSimdImpl.simd_precise_distance as (F3 , F3 ) -> F1)
                context.run(.f4 , .f4 , for: input.f4f4  [], reference: simd.simd_precise_distance as (F4 , F4 ) -> F1, subject: kvSimdImpl.simd_precise_distance as (F4 , F4 ) -> F1)
                context.run(.f8 , .f8 , for: input.f8f8  [], reference: simd.simd_precise_distance as (F8 , F8 ) -> F1, subject: kvSimdImpl.simd_precise_distance as (F8 , F8 ) -> F1)
                context.run(.f16, .f16, for: input.f16f16[], reference: simd.simd_precise_distance as (F16, F16) -> F1, subject: kvSimdImpl.simd_precise_distance as (F16, F16) -> F1)
                context.run(.d2 , .d2 , for: input.d2d2  [], reference: simd.simd_precise_distance as (D2 , D2 ) -> D1, subject: kvSimdImpl.simd_precise_distance as (D2 , D2 ) -> D1)
                context.run(.d3 , .d3 , for: input.d3d3  [], reference: simd.simd_precise_distance as (D3 , D3 ) -> D1, subject: kvSimdImpl.simd_precise_distance as (D3 , D3 ) -> D1)
                context.run(.d4 , .d4 , for: input.d4d4  [], reference: simd.simd_precise_distance as (D4 , D4 ) -> D1, subject: kvSimdImpl.simd_precise_distance as (D4 , D4 ) -> D1)
                context.run(.d8 , .d8 , for: input.d8d8  [], reference: simd.simd_precise_distance as (D8 , D8 ) -> D1, subject: kvSimdImpl.simd_precise_distance as (D8 , D8 ) -> D1)
            }
            Run(label: "simd_precise_length") { context in
                context.run(.f2 , for: input.f2 [], reference: simd.simd_precise_length as (F2 ) -> F1, subject: kvSimdImpl.simd_precise_length as (F2 ) -> F1)
                context.run(.f3 , for: input.f3 [], reference: simd.simd_precise_length as (F3 ) -> F1, subject: kvSimdImpl.simd_precise_length as (F3 ) -> F1)
                context.run(.f4 , for: input.f4 [], reference: simd.simd_precise_length as (F4 ) -> F1, subject: kvSimdImpl.simd_precise_length as (F4 ) -> F1)
                context.run(.f8 , for: input.f8 [], reference: simd.simd_precise_length as (F8 ) -> F1, subject: kvSimdImpl.simd_precise_length as (F8 ) -> F1)
                context.run(.f16, for: input.f16[], reference: simd.simd_precise_length as (F16) -> F1, subject: kvSimdImpl.simd_precise_length as (F16) -> F1)
                context.run(.d2 , for: input.d2 [], reference: simd.simd_precise_length as (D2 ) -> D1, subject: kvSimdImpl.simd_precise_length as (D2 ) -> D1)
                context.run(.d3 , for: input.d3 [], reference: simd.simd_precise_length as (D3 ) -> D1, subject: kvSimdImpl.simd_precise_length as (D3 ) -> D1)
                context.run(.d4 , for: input.d4 [], reference: simd.simd_precise_length as (D4 ) -> D1, subject: kvSimdImpl.simd_precise_length as (D4 ) -> D1)
                context.run(.d8 , for: input.d8 [], reference: simd.simd_precise_length as (D8 ) -> D1, subject: kvSimdImpl.simd_precise_length as (D8 ) -> D1)
            }
            Run(label: "simd_precise_normalize") { context in
                context.run(.f2 , for: input.f2 [], reference: simd.simd_precise_normalize as (F2 ) -> F2 , subject: kvSimdImpl.simd_precise_normalize as (F2 ) -> F2 )
                context.run(.f3 , for: input.f3 [], reference: simd.simd_precise_normalize as (F3 ) -> F3 , subject: kvSimdImpl.simd_precise_normalize as (F3 ) -> F3 )
                context.run(.f4 , for: input.f4 [], reference: simd.simd_precise_normalize as (F4 ) -> F4 , subject: kvSimdImpl.simd_precise_normalize as (F4 ) -> F4 )
                context.run(.f8 , for: input.f8 [], reference: simd.simd_precise_normalize as (F8 ) -> F8 , subject: kvSimdImpl.simd_precise_normalize as (F8 ) -> F8 )
                context.run(.f16, for: input.f16[], reference: simd.simd_precise_normalize as (F16) -> F16, subject: kvSimdImpl.simd_precise_normalize as (F16) -> F16)
                context.run(.d2 , for: input.d2 [], reference: simd.simd_precise_normalize as (D2 ) -> D2 , subject: kvSimdImpl.simd_precise_normalize as (D2 ) -> D2 )
                context.run(.d3 , for: input.d3 [], reference: simd.simd_precise_normalize as (D3 ) -> D3 , subject: kvSimdImpl.simd_precise_normalize as (D3 ) -> D3 )
                context.run(.d4 , for: input.d4 [], reference: simd.simd_precise_normalize as (D4 ) -> D4 , subject: kvSimdImpl.simd_precise_normalize as (D4 ) -> D4 )
                context.run(.d8 , for: input.d8 [], reference: simd.simd_precise_normalize as (D8 ) -> D8 , subject: kvSimdImpl.simd_precise_normalize as (D8 ) -> D8 )
            }
            Run(label: "simd_precise_project") { context in
                context.run(.f2 , .f2 , for: input.f2f2  [], reference: simd.simd_precise_project as (F2 , F2 ) -> F2 , subject: kvSimdImpl.simd_precise_project as (F2 , F2 ) -> F2 )
                context.run(.f3 , .f3 , for: input.f3f3  [], reference: simd.simd_precise_project as (F3 , F3 ) -> F3 , subject: kvSimdImpl.simd_precise_project as (F3 , F3 ) -> F3 )
                context.run(.f4 , .f4 , for: input.f4f4  [], reference: simd.simd_precise_project as (F4 , F4 ) -> F4 , subject: kvSimdImpl.simd_precise_project as (F4 , F4 ) -> F4 )
                context.run(.f8 , .f8 , for: input.f8f8  [], reference: simd.simd_precise_project as (F8 , F8 ) -> F8 , subject: kvSimdImpl.simd_precise_project as (F8 , F8 ) -> F8 )
                context.run(.f16, .f16, for: input.f16f16[], reference: simd.simd_precise_project as (F16, F16) -> F16, subject: kvSimdImpl.simd_precise_project as (F16, F16) -> F16)
                context.run(.d2 , .d2 , for: input.d2d2  [], reference: simd.simd_precise_project as (D2 , D2 ) -> D2 , subject: kvSimdImpl.simd_precise_project as (D2 , D2 ) -> D2 )
                context.run(.d3 , .d3 , for: input.d3d3  [], reference: simd.simd_precise_project as (D3 , D3 ) -> D3 , subject: kvSimdImpl.simd_precise_project as (D3 , D3 ) -> D3 )
                context.run(.d4 , .d4 , for: input.d4d4  [], reference: simd.simd_precise_project as (D4 , D4 ) -> D4 , subject: kvSimdImpl.simd_precise_project as (D4 , D4 ) -> D4 )
                context.run(.d8 , .d8 , for: input.d8d8  [], reference: simd.simd_precise_project as (D8 , D8 ) -> D8 , subject: kvSimdImpl.simd_precise_project as (D8 , D8 ) -> D8 )
            }
            Run(label: "simd_precise_recip") { context in
                context.run(.f1 , for: input.f1 [], reference: simd.simd_precise_recip as (F1 ) -> F1 , subject: kvSimdImpl.simd_precise_recip as (F1 ) -> F1 )
                context.run(.f2 , for: input.f2 [], reference: simd.simd_precise_recip as (F2 ) -> F2 , subject: kvSimdImpl.simd_precise_recip as (F2 ) -> F2 )
                context.run(.f3 , for: input.f3 [], reference: simd.simd_precise_recip as (F3 ) -> F3 , subject: kvSimdImpl.simd_precise_recip as (F3 ) -> F3 )
                context.run(.f4 , for: input.f4 [], reference: simd.simd_precise_recip as (F4 ) -> F4 , subject: kvSimdImpl.simd_precise_recip as (F4 ) -> F4 )
                context.run(.f8 , for: input.f8 [], reference: simd.simd_precise_recip as (F8 ) -> F8 , subject: kvSimdImpl.simd_precise_recip as (F8 ) -> F8 )
                context.run(.f16, for: input.f16[], reference: simd.simd_precise_recip as (F16) -> F16, subject: kvSimdImpl.simd_precise_recip as (F16) -> F16)
                context.run(.d1 , for: input.d1 [], reference: simd.simd_precise_recip as (D1 ) -> D1 , subject: kvSimdImpl.simd_precise_recip as (D1 ) -> D1 )
                context.run(.d2 , for: input.d2 [], reference: simd.simd_precise_recip as (D2 ) -> D2 , subject: kvSimdImpl.simd_precise_recip as (D2 ) -> D2 )
                context.run(.d3 , for: input.d3 [], reference: simd.simd_precise_recip as (D3 ) -> D3 , subject: kvSimdImpl.simd_precise_recip as (D3 ) -> D3 )
                context.run(.d4 , for: input.d4 [], reference: simd.simd_precise_recip as (D4 ) -> D4 , subject: kvSimdImpl.simd_precise_recip as (D4 ) -> D4 )
                context.run(.d8 , for: input.d8 [], reference: simd.simd_precise_recip as (D8 ) -> D8 , subject: kvSimdImpl.simd_precise_recip as (D8 ) -> D8 )
            }
            Run(label: "simd_precise_rsqrt") { context in
                context.run(.f1 , for: input.f1 [.positive], reference: simd.simd_precise_rsqrt as (F1 ) -> F1 , subject: kvSimdImpl.simd_precise_rsqrt as (F1 ) -> F1 )
                context.run(.f2 , for: input.f2 [.positive], reference: simd.simd_precise_rsqrt as (F2 ) -> F2 , subject: kvSimdImpl.simd_precise_rsqrt as (F2 ) -> F2 )
                context.run(.f3 , for: input.f3 [.positive], reference: simd.simd_precise_rsqrt as (F3 ) -> F3 , subject: kvSimdImpl.simd_precise_rsqrt as (F3 ) -> F3 )
                context.run(.f4 , for: input.f4 [.positive], reference: simd.simd_precise_rsqrt as (F4 ) -> F4 , subject: kvSimdImpl.simd_precise_rsqrt as (F4 ) -> F4 )
                context.run(.f8 , for: input.f8 [.positive], reference: simd.simd_precise_rsqrt as (F8 ) -> F8 , subject: kvSimdImpl.simd_precise_rsqrt as (F8 ) -> F8 )
                context.run(.f16, for: input.f16[.positive], reference: simd.simd_precise_rsqrt as (F16) -> F16, subject: kvSimdImpl.simd_precise_rsqrt as (F16) -> F16)
                context.run(.d1 , for: input.d1 [.positive], reference: simd.simd_precise_rsqrt as (D1 ) -> D1 , subject: kvSimdImpl.simd_precise_rsqrt as (D1 ) -> D1 )
                context.run(.d2 , for: input.d2 [.positive], reference: simd.simd_precise_rsqrt as (D2 ) -> D2 , subject: kvSimdImpl.simd_precise_rsqrt as (D2 ) -> D2 )
                context.run(.d3 , for: input.d3 [.positive], reference: simd.simd_precise_rsqrt as (D3 ) -> D3 , subject: kvSimdImpl.simd_precise_rsqrt as (D3 ) -> D3 )
                context.run(.d4 , for: input.d4 [.positive], reference: simd.simd_precise_rsqrt as (D4 ) -> D4 , subject: kvSimdImpl.simd_precise_rsqrt as (D4 ) -> D4 )
                context.run(.d8 , for: input.d8 [.positive], reference: simd.simd_precise_rsqrt as (D8 ) -> D8 , subject: kvSimdImpl.simd_precise_rsqrt as (D8 ) -> D8 )
            }
            Run(label: "simd_reflect") { context in
                context.run(.f2, .f2, for: input.f2f2[], reference: simd.simd_reflect as (F2, F2) -> F2, subject: kvSimdImpl.simd_reflect as (F2, F2) -> F2)
                context.run(.f3, .f3, for: input.f3f3[], reference: simd.simd_reflect as (F3, F3) -> F3, subject: kvSimdImpl.simd_reflect as (F3, F3) -> F3)
                context.run(.f4, .f4, for: input.f4f4[], reference: simd.simd_reflect as (F4, F4) -> F4, subject: kvSimdImpl.simd_reflect as (F4, F4) -> F4)
                context.run(.d2, .d2, for: input.d2d2[], reference: simd.simd_reflect as (D2, D2) -> D2, subject: kvSimdImpl.simd_reflect as (D2, D2) -> D2)
                context.run(.d3, .d3, for: input.d3d3[], reference: simd.simd_reflect as (D3, D3) -> D3, subject: kvSimdImpl.simd_reflect as (D3, D3) -> D3)
                context.run(.d4, .d4, for: input.d4d4[], reference: simd.simd_reflect as (D4, D4) -> D4, subject: kvSimdImpl.simd_reflect as (D4, D4) -> D4)
            }
            Run(label: "simd_refract") { context in
                context.run(.f2, .f2, .f1, for: input.f2f2f1[], reference: simd.simd_refract as (F2, F2, F1) -> F2, subject: kvSimdImpl.simd_refract as (F2, F2, F1) -> F2)
                context.run(.f3, .f3, .f1, for: input.f3f3f1[], reference: simd.simd_refract as (F3, F3, F1) -> F3, subject: kvSimdImpl.simd_refract as (F3, F3, F1) -> F3)
                context.run(.f4, .f4, .f1, for: input.f4f4f1[], reference: simd.simd_refract as (F4, F4, F1) -> F4, subject: kvSimdImpl.simd_refract as (F4, F4, F1) -> F4)
                context.run(.d2, .d2, .d1, for: input.d2d2d1[], reference: simd.simd_refract as (D2, D2, D1) -> D2, subject: kvSimdImpl.simd_refract as (D2, D2, D1) -> D2)
                context.run(.d3, .d3, .d1, for: input.d3d3d1[], reference: simd.simd_refract as (D3, D3, D1) -> D3, subject: kvSimdImpl.simd_refract as (D3, D3, D1) -> D3)
                context.run(.d4, .d4, .d1, for: input.d4d4d1[], reference: simd.simd_refract as (D4, D4, D1) -> D4, subject: kvSimdImpl.simd_refract as (D4, D4, D1) -> D4)
            }
            Run(label: "simd_sign") { context in
                context.run(.f1 , for: input.f1 [], reference: simd.simd_sign as (F1 ) -> F1 , subject: kvSimdImpl.simd_sign as (F1 ) -> F1 )
                context.run(.f2 , for: input.f2 [], reference: simd.simd_sign as (F2 ) -> F2 , subject: kvSimdImpl.simd_sign as (F2 ) -> F2 )
                context.run(.f3 , for: input.f3 [], reference: simd.simd_sign as (F3 ) -> F3 , subject: kvSimdImpl.simd_sign as (F3 ) -> F3 )
                context.run(.f4 , for: input.f4 [], reference: simd.simd_sign as (F4 ) -> F4 , subject: kvSimdImpl.simd_sign as (F4 ) -> F4 )
                context.run(.f8 , for: input.f8 [], reference: simd.simd_sign as (F8 ) -> F8 , subject: kvSimdImpl.simd_sign as (F8 ) -> F8 )
                context.run(.f16, for: input.f16[], reference: simd.simd_sign as (F16) -> F16, subject: kvSimdImpl.simd_sign as (F16) -> F16)
                context.run(.d1 , for: input.d1 [], reference: simd.simd_sign as (D1 ) -> D1 , subject: kvSimdImpl.simd_sign as (D1 ) -> D1 )
                context.run(.d2 , for: input.d2 [], reference: simd.simd_sign as (D2 ) -> D2 , subject: kvSimdImpl.simd_sign as (D2 ) -> D2 )
                context.run(.d3 , for: input.d3 [], reference: simd.simd_sign as (D3 ) -> D3 , subject: kvSimdImpl.simd_sign as (D3 ) -> D3 )
                context.run(.d4 , for: input.d4 [], reference: simd.simd_sign as (D4 ) -> D4 , subject: kvSimdImpl.simd_sign as (D4 ) -> D4 )
                context.run(.d8 , for: input.d8 [], reference: simd.simd_sign as (D8 ) -> D8 , subject: kvSimdImpl.simd_sign as (D8 ) -> D8 )
            }
            Run(label: "simd_smoothstep") { context in
                context.run(.f1 , .f1 , .f1 , for: input.f1f1f1   [], reference: simd.simd_smoothstep as (F1 , F1 , F1 ) -> F1 , subject: kvSimdImpl.simd_smoothstep as (F1 , F1 , F1 ) -> F1 )
                context.run(.f2 , .f2 , .f2 , for: input.f2f2f2   [], reference: simd.simd_smoothstep as (F2 , F2 , F2 ) -> F2 , subject: kvSimdImpl.simd_smoothstep as (F2 , F2 , F2 ) -> F2 )
                context.run(.f3 , .f3 , .f3 , for: input.f3f3f3   [], reference: simd.simd_smoothstep as (F3 , F3 , F3 ) -> F3 , subject: kvSimdImpl.simd_smoothstep as (F3 , F3 , F3 ) -> F3 )
                context.run(.f4 , .f4 , .f4 , for: input.f4f4f4   [], reference: simd.simd_smoothstep as (F4 , F4 , F4 ) -> F4 , subject: kvSimdImpl.simd_smoothstep as (F4 , F4 , F4 ) -> F4 )
                context.run(.f8 , .f8 , .f8 , for: input.f8f8f8   [], reference: simd.simd_smoothstep as (F8 , F8 , F8 ) -> F8 , subject: kvSimdImpl.simd_smoothstep as (F8 , F8 , F8 ) -> F8 )
                context.run(.f16, .f16, .f16, for: input.f16f16f16[], reference: simd.simd_smoothstep as (F16, F16, F16) -> F16, subject: kvSimdImpl.simd_smoothstep as (F16, F16, F16) -> F16)
                context.run(.d1 , .d1 , .d1 , for: input.d1d1d1   [], reference: simd.simd_smoothstep as (D1 , D1 , D1 ) -> D1 , subject: kvSimdImpl.simd_smoothstep as (D1 , D1 , D1 ) -> D1 )
                context.run(.d2 , .d2 , .d2 , for: input.d2d2d2   [], reference: simd.simd_smoothstep as (D2 , D2 , D2 ) -> D2 , subject: kvSimdImpl.simd_smoothstep as (D2 , D2 , D2 ) -> D2 )
                context.run(.d3 , .d3 , .d3 , for: input.d3d3d3   [], reference: simd.simd_smoothstep as (D3 , D3 , D3 ) -> D3 , subject: kvSimdImpl.simd_smoothstep as (D3 , D3 , D3 ) -> D3 )
                context.run(.d4 , .d4 , .d4 , for: input.d4d4d4   [], reference: simd.simd_smoothstep as (D4 , D4 , D4 ) -> D4 , subject: kvSimdImpl.simd_smoothstep as (D4 , D4 , D4 ) -> D4 )
                context.run(.d8 , .d8 , .d8 , for: input.d8d8d8   [], reference: simd.simd_smoothstep as (D8 , D8 , D8 ) -> D8 , subject: kvSimdImpl.simd_smoothstep as (D8 , D8 , D8 ) -> D8 )
            }
            Run(label: "simd_step") { context in
                context.run(.f1 , .f1 , for: input.f1f1  [], reference: simd.simd_step as (F1 , F1 ) -> F1 , subject: kvSimdImpl.simd_step as (F1 , F1 ) -> F1 )
                context.run(.f2 , .f2 , for: input.f2f2  [], reference: simd.simd_step as (F2 , F2 ) -> F2 , subject: kvSimdImpl.simd_step as (F2 , F2 ) -> F2 )
                context.run(.f3 , .f3 , for: input.f3f3  [], reference: simd.simd_step as (F3 , F3 ) -> F3 , subject: kvSimdImpl.simd_step as (F3 , F3 ) -> F3 )
                context.run(.f4 , .f4 , for: input.f4f4  [], reference: simd.simd_step as (F4 , F4 ) -> F4 , subject: kvSimdImpl.simd_step as (F4 , F4 ) -> F4 )
                context.run(.f8 , .f8 , for: input.f8f8  [], reference: simd.simd_step as (F8 , F8 ) -> F8 , subject: kvSimdImpl.simd_step as (F8 , F8 ) -> F8 )
                context.run(.f16, .f16, for: input.f16f16[], reference: simd.simd_step as (F16, F16) -> F16, subject: kvSimdImpl.simd_step as (F16, F16) -> F16)
                context.run(.d1 , .d1 , for: input.d1d1  [], reference: simd.simd_step as (D1 , D1 ) -> D1 , subject: kvSimdImpl.simd_step as (D1 , D1 ) -> D1 )
                context.run(.d2 , .d2 , for: input.d2d2  [], reference: simd.simd_step as (D2 , D2 ) -> D2 , subject: kvSimdImpl.simd_step as (D2 , D2 ) -> D2 )
                context.run(.d3 , .d3 , for: input.d3d3  [], reference: simd.simd_step as (D3 , D3 ) -> D3 , subject: kvSimdImpl.simd_step as (D3 , D3 ) -> D3 )
                context.run(.d4 , .d4 , for: input.d4d4  [], reference: simd.simd_step as (D4 , D4 ) -> D4 , subject: kvSimdImpl.simd_step as (D4 , D4 ) -> D4 )
                context.run(.d8 , .d8 , for: input.d8d8  [], reference: simd.simd_step as (D8 , D8 ) -> D8 , subject: kvSimdImpl.simd_step as (D8 , D8 ) -> D8 )
            }

            if #available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *) {
                Run(label: "sin") { context in
                    context.run(.f2 , for: input.f2 [], reference: simd.sin as (F2 ) -> F2 , subject: kvSimdImpl.sin as (F2 ) -> F2 )
                    context.run(.f3 , for: input.f3 [], reference: simd.sin as (F3 ) -> F3 , subject: kvSimdImpl.sin as (F3 ) -> F3 )
                    context.run(.f4 , for: input.f4 [], reference: simd.sin as (F4 ) -> F4 , subject: kvSimdImpl.sin as (F4 ) -> F4 )
                    context.run(.f8 , for: input.f8 [], reference: simd.sin as (F8 ) -> F8 , subject: kvSimdImpl.sin as (F8 ) -> F8 )
                    context.run(.f16, for: input.f16[], reference: simd.sin as (F16) -> F16, subject: kvSimdImpl.sin as (F16) -> F16)
                    context.run(.d2 , for: input.d2 [], reference: simd.sin as (D2 ) -> D2 , subject: kvSimdImpl.sin as (D2 ) -> D2 )
                    context.run(.d3 , for: input.d3 [], reference: simd.sin as (D3 ) -> D3 , subject: kvSimdImpl.sin as (D3 ) -> D3 )
                    context.run(.d4 , for: input.d4 [], reference: simd.sin as (D4 ) -> D4 , subject: kvSimdImpl.sin as (D4 ) -> D4 )
                    context.run(.d8 , for: input.d8 [], reference: simd.sin as (D8 ) -> D8 , subject: kvSimdImpl.sin as (D8 ) -> D8 )
                }
                Run(label: "sinh") { context in
                    context.run(.f2 , for: input.f2 [], reference: simd.sinh as (F2 ) -> F2 , subject: kvSimdImpl.sinh as (F2 ) -> F2 )
                    context.run(.f3 , for: input.f3 [], reference: simd.sinh as (F3 ) -> F3 , subject: kvSimdImpl.sinh as (F3 ) -> F3 )
                    context.run(.f4 , for: input.f4 [], reference: simd.sinh as (F4 ) -> F4 , subject: kvSimdImpl.sinh as (F4 ) -> F4 )
                    context.run(.f8 , for: input.f8 [], reference: simd.sinh as (F8 ) -> F8 , subject: kvSimdImpl.sinh as (F8 ) -> F8 )
                    context.run(.f16, for: input.f16[], reference: simd.sinh as (F16) -> F16, subject: kvSimdImpl.sinh as (F16) -> F16)
                    context.run(.d2 , for: input.d2 [], reference: simd.sinh as (D2 ) -> D2 , subject: kvSimdImpl.sinh as (D2 ) -> D2 )
                    context.run(.d3 , for: input.d3 [], reference: simd.sinh as (D3 ) -> D3 , subject: kvSimdImpl.sinh as (D3 ) -> D3 )
                    context.run(.d4 , for: input.d4 [], reference: simd.sinh as (D4 ) -> D4 , subject: kvSimdImpl.sinh as (D4 ) -> D4 )
                    context.run(.d8 , for: input.d8 [], reference: simd.sinh as (D8 ) -> D8 , subject: kvSimdImpl.sinh as (D8 ) -> D8 )
                }
                Run(label: "sinpi") { context in
                    context.run(.f2 , for: input.f2 [], reference: simd.sinpi as (F2 ) -> F2 , subject: kvSimdImpl.sinpi as (F2 ) -> F2 )
                    context.run(.f3 , for: input.f3 [], reference: simd.sinpi as (F3 ) -> F3 , subject: kvSimdImpl.sinpi as (F3 ) -> F3 )
                    context.run(.f4 , for: input.f4 [], reference: simd.sinpi as (F4 ) -> F4 , subject: kvSimdImpl.sinpi as (F4 ) -> F4 )
                    context.run(.f8 , for: input.f8 [], reference: simd.sinpi as (F8 ) -> F8 , subject: kvSimdImpl.sinpi as (F8 ) -> F8 )
                    context.run(.f16, for: input.f16[], reference: simd.sinpi as (F16) -> F16, subject: kvSimdImpl.sinpi as (F16) -> F16)
                    context.run(.d2 , for: input.d2 [], reference: simd.sinpi as (D2 ) -> D2 , subject: kvSimdImpl.sinpi as (D2 ) -> D2 )
                    context.run(.d3 , for: input.d3 [], reference: simd.sinpi as (D3 ) -> D3 , subject: kvSimdImpl.sinpi as (D3 ) -> D3 )
                    context.run(.d4 , for: input.d4 [], reference: simd.sinpi as (D4 ) -> D4 , subject: kvSimdImpl.sinpi as (D4 ) -> D4 )
                    context.run(.d8 , for: input.d8 [], reference: simd.sinpi as (D8 ) -> D8 , subject: kvSimdImpl.sinpi as (D8 ) -> D8 )
                }
            }

            Run(label: "smoothstep") { context in
                context.run(.f2, .f2, .f2, for: input.f2f2f2[], reference: simd.smoothstep as (F2, F2, F2) -> F2, subject: kvSimdImpl.smoothstep as (F2, F2, F2) -> F2)
                context.run(.f3, .f3, .f3, for: input.f3f3f3[], reference: simd.smoothstep as (F3, F3, F3) -> F3, subject: kvSimdImpl.smoothstep as (F3, F3, F3) -> F3)
                context.run(.f4, .f4, .f4, for: input.f4f4f4[], reference: simd.smoothstep as (F4, F4, F4) -> F4, subject: kvSimdImpl.smoothstep as (F4, F4, F4) -> F4)
                context.run(.d2, .d2, .d2, for: input.d2d2d2[], reference: simd.smoothstep as (D2, D2, D2) -> D2, subject: kvSimdImpl.smoothstep as (D2, D2, D2) -> D2)
                context.run(.d3, .d3, .d3, for: input.d3d3d3[], reference: simd.smoothstep as (D3, D3, D3) -> D3, subject: kvSimdImpl.smoothstep as (D3, D3, D3) -> D3)
                context.run(.d4, .d4, .d4, for: input.d4d4d4[], reference: simd.smoothstep as (D4, D4, D4) -> D4, subject: kvSimdImpl.smoothstep as (D4, D4, D4) -> D4)
            }
            Run(label: "step") { context in
                context.run(.f1, .f1, for: input.f1f1[], reference: simd.step as (F1, F1) -> F1, subject: kvSimdImpl.step as (F1, F1) -> F1)
                context.run(.f2, .f2, for: input.f2f2[], reference: simd.step as (F2, F2) -> F2, subject: kvSimdImpl.step as (F2, F2) -> F2)
                context.run(.f3, .f3, for: input.f3f3[], reference: simd.step as (F3, F3) -> F3, subject: kvSimdImpl.step as (F3, F3) -> F3)
                context.run(.f4, .f4, for: input.f4f4[], reference: simd.step as (F4, F4) -> F4, subject: kvSimdImpl.step as (F4, F4) -> F4)
                context.run(.d1, .d1, for: input.d1d1[], reference: simd.step as (D1, D1) -> D1, subject: kvSimdImpl.step as (D1, D1) -> D1)
                context.run(.d2, .d2, for: input.d2d2[], reference: simd.step as (D2, D2) -> D2, subject: kvSimdImpl.step as (D2, D2) -> D2)
                context.run(.d3, .d3, for: input.d3d3[], reference: simd.step as (D3, D3) -> D3, subject: kvSimdImpl.step as (D3, D3) -> D3)
                context.run(.d4, .d4, for: input.d4d4[], reference: simd.step as (D4, D4) -> D4, subject: kvSimdImpl.step as (D4, D4) -> D4)
            }

            if #available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *) {
                Run(label: "tan") { context in
                    context.run(.f2 , for: input.f2 [], reference: simd.tan as (F2 ) -> F2 , subject: kvSimdImpl.tan as (F2 ) -> F2 )
                    context.run(.f3 , for: input.f3 [], reference: simd.tan as (F3 ) -> F3 , subject: kvSimdImpl.tan as (F3 ) -> F3 )
                    context.run(.f4 , for: input.f4 [], reference: simd.tan as (F4 ) -> F4 , subject: kvSimdImpl.tan as (F4 ) -> F4 )
                    context.run(.f8 , for: input.f8 [], reference: simd.tan as (F8 ) -> F8 , subject: kvSimdImpl.tan as (F8 ) -> F8 )
                    context.run(.f16, for: input.f16[], reference: simd.tan as (F16) -> F16, subject: kvSimdImpl.tan as (F16) -> F16)
                    context.run(.d2 , for: input.d2 [], reference: simd.tan as (D2 ) -> D2 , subject: kvSimdImpl.tan as (D2 ) -> D2 )
                    context.run(.d3 , for: input.d3 [], reference: simd.tan as (D3 ) -> D3 , subject: kvSimdImpl.tan as (D3 ) -> D3 )
                    context.run(.d4 , for: input.d4 [], reference: simd.tan as (D4 ) -> D4 , subject: kvSimdImpl.tan as (D4 ) -> D4 )
                    context.run(.d8 , for: input.d8 [], reference: simd.tan as (D8 ) -> D8 , subject: kvSimdImpl.tan as (D8 ) -> D8 )
                }
                Run(label: "tanh") { context in
                    context.run(.f2 , for: input.f2 [], reference: simd.tanh as (F2 ) -> F2 , subject: kvSimdImpl.tanh as (F2 ) -> F2 )
                    context.run(.f3 , for: input.f3 [], reference: simd.tanh as (F3 ) -> F3 , subject: kvSimdImpl.tanh as (F3 ) -> F3 )
                    context.run(.f4 , for: input.f4 [], reference: simd.tanh as (F4 ) -> F4 , subject: kvSimdImpl.tanh as (F4 ) -> F4 )
                    context.run(.f8 , for: input.f8 [], reference: simd.tanh as (F8 ) -> F8 , subject: kvSimdImpl.tanh as (F8 ) -> F8 )
                    context.run(.f16, for: input.f16[], reference: simd.tanh as (F16) -> F16, subject: kvSimdImpl.tanh as (F16) -> F16)
                    context.run(.d2 , for: input.d2 [], reference: simd.tanh as (D2 ) -> D2 , subject: kvSimdImpl.tanh as (D2 ) -> D2 )
                    context.run(.d3 , for: input.d3 [], reference: simd.tanh as (D3 ) -> D3 , subject: kvSimdImpl.tanh as (D3 ) -> D3 )
                    context.run(.d4 , for: input.d4 [], reference: simd.tanh as (D4 ) -> D4 , subject: kvSimdImpl.tanh as (D4 ) -> D4 )
                    context.run(.d8 , for: input.d8 [], reference: simd.tanh as (D8 ) -> D8 , subject: kvSimdImpl.tanh as (D8 ) -> D8 )
                }
                Run(label: "tanpi") { context in
                    context.run(.f2 , for: input.f2 [], reference: simd.tanpi as (F2 ) -> F2 , subject: kvSimdImpl.tanpi as (F2 ) -> F2 )
                    context.run(.f3 , for: input.f3 [], reference: simd.tanpi as (F3 ) -> F3 , subject: kvSimdImpl.tanpi as (F3 ) -> F3 )
                    context.run(.f4 , for: input.f4 [], reference: simd.tanpi as (F4 ) -> F4 , subject: kvSimdImpl.tanpi as (F4 ) -> F4 )
                    context.run(.f8 , for: input.f8 [], reference: simd.tanpi as (F8 ) -> F8 , subject: kvSimdImpl.tanpi as (F8 ) -> F8 )
                    context.run(.f16, for: input.f16[], reference: simd.tanpi as (F16) -> F16, subject: kvSimdImpl.tanpi as (F16) -> F16)
                    context.run(.d2 , for: input.d2 [], reference: simd.tanpi as (D2 ) -> D2 , subject: kvSimdImpl.tanpi as (D2 ) -> D2 )
                    context.run(.d3 , for: input.d3 [], reference: simd.tanpi as (D3 ) -> D3 , subject: kvSimdImpl.tanpi as (D3 ) -> D3 )
                    context.run(.d4 , for: input.d4 [], reference: simd.tanpi as (D4 ) -> D4 , subject: kvSimdImpl.tanpi as (D4 ) -> D4 )
                    context.run(.d8 , for: input.d8 [], reference: simd.tanpi as (D8 ) -> D8 , subject: kvSimdImpl.tanpi as (D8 ) -> D8 )
                }
                Run(label: "tgamma") { context in
                    context.run(.f2 , for: input.f2 [], reference: simd.tgamma as (F2 ) -> F2 , subject: kvSimdImpl.tgamma as (F2 ) -> F2 )
                    context.run(.f3 , for: input.f3 [], reference: simd.tgamma as (F3 ) -> F3 , subject: kvSimdImpl.tgamma as (F3 ) -> F3 )
                    context.run(.f4 , for: input.f4 [], reference: simd.tgamma as (F4 ) -> F4 , subject: kvSimdImpl.tgamma as (F4 ) -> F4 )
                    context.run(.f8 , for: input.f8 [], reference: simd.tgamma as (F8 ) -> F8 , subject: kvSimdImpl.tgamma as (F8 ) -> F8 )
                    context.run(.f16, for: input.f16[], reference: simd.tgamma as (F16) -> F16, subject: kvSimdImpl.tgamma as (F16) -> F16)
                    context.run(.d2 , for: input.d2 [], reference: simd.tgamma as (D2 ) -> D2 , subject: kvSimdImpl.tgamma as (D2 ) -> D2 )
                    context.run(.d3 , for: input.d3 [], reference: simd.tgamma as (D3 ) -> D3 , subject: kvSimdImpl.tgamma as (D3 ) -> D3 )
                    context.run(.d4 , for: input.d4 [], reference: simd.tgamma as (D4 ) -> D4 , subject: kvSimdImpl.tgamma as (D4 ) -> D4 )
                    context.run(.d8 , for: input.d8 [], reference: simd.tgamma as (D8 ) -> D8 , subject: kvSimdImpl.tgamma as (D8 ) -> D8 )
                }
            }

            Run(label: "trunc") { context in
                context.run(.f2, for: input.f2[], reference: simd.trunc as (F2) -> F2, subject: kvSimdImpl.trunc as (F2) -> F2)
                context.run(.f3, for: input.f3[], reference: simd.trunc as (F3) -> F3, subject: kvSimdImpl.trunc as (F3) -> F3)
                context.run(.f4, for: input.f4[], reference: simd.trunc as (F4) -> F4, subject: kvSimdImpl.trunc as (F4) -> F4)
                context.run(.d2, for: input.d2[], reference: simd.trunc as (D2) -> D2, subject: kvSimdImpl.trunc as (D2) -> D2)
                context.run(.d3, for: input.d3[], reference: simd.trunc as (D3) -> D3, subject: kvSimdImpl.trunc as (D3) -> D3)
                context.run(.d4, for: input.d4[], reference: simd.trunc as (D4) -> D4, subject: kvSimdImpl.trunc as (D4) -> D4)
            }
        }

        do {
            let reportURL = reportURL.absoluteURL

            try benchmark.writeReport(at: reportURL)

            print("Report has been written to «\(reportURL)» URL")
        }
        catch { print("WARNING. Unable to write report: \(error)") }
    }


    // MARK: Auxiliaries

    fileprivate typealias I1 = Int32
    fileprivate typealias I2 = SIMD2<I1>
    fileprivate typealias I3 = SIMD3<I1>
    fileprivate typealias I4 = SIMD4<I1>
    fileprivate typealias I8 = SIMD8<I1>
    fileprivate typealias I16 = SIMD16<I1>

    fileprivate typealias U1 = UInt32
    fileprivate typealias U2 = SIMD2<U1>
    fileprivate typealias U3 = SIMD3<U1>
    fileprivate typealias U4 = SIMD4<U1>

    fileprivate typealias L1 = Int
    fileprivate typealias L2 = SIMD2<L1>
    fileprivate typealias L3 = SIMD3<L1>
    fileprivate typealias L4 = SIMD4<L1>
    fileprivate typealias L8 = SIMD8<L1>

    fileprivate typealias F1 = Float
    fileprivate typealias F2 = SIMD2<F1>
    fileprivate typealias F3 = SIMD3<F1>
    fileprivate typealias F4 = SIMD4<F1>
    fileprivate typealias F8 = SIMD8<F1>
    fileprivate typealias F16 = SIMD16<F1>

    fileprivate typealias D1 = Double
    fileprivate typealias D2 = SIMD2<D1>
    fileprivate typealias D3 = SIMD3<D1>
    fileprivate typealias D4 = SIMD4<D1>
    fileprivate typealias D8 = SIMD8<D1>



    private static var reportURL: URL {
        .init(fileURLWithPath: "report.md")
    }


    // MARK: .Input

    fileprivate struct Input {

        let i2 = Values(defaultKey: .default, valueBlock: Self.randomI2)
        let i3 = Values(defaultKey: .default, valueBlock: Self.randomI3)
        let i4 = Values(defaultKey: .default, valueBlock: Self.randomI4)

        let i2i1 = Values(defaultKey: .default, valueBlock: { (Self.randomI2(in: $0), Self.randomI1(in: $0)) })
        let i3i1 = Values(defaultKey: .default, valueBlock: { (Self.randomI3(in: $0), Self.randomI1(in: $0)) })
        let i4i1 = Values(defaultKey: .default, valueBlock: { (Self.randomI4(in: $0), Self.randomI1(in: $0)) })

        let i2i2 = Values(defaultKey: .default, valueBlock: { (Self.randomI2(in: $0), Self.randomI2(in: $0)) })
        let i3i3 = Values(defaultKey: .default, valueBlock: { (Self.randomI3(in: $0), Self.randomI3(in: $0)) })
        let i4i4 = Values(defaultKey: .default, valueBlock: { (Self.randomI4(in: $0), Self.randomI4(in: $0)) })

        let u2 = Values(defaultKey: .default, valueBlock: Self.randomU2)
        let u3 = Values(defaultKey: .default, valueBlock: Self.randomU3)
        let u4 = Values(defaultKey: .default, valueBlock: Self.randomU4)

        let u2u1 = Values(defaultKey: .default, valueBlock: { (Self.randomU2(in: $0), Self.randomU1(in: $0)) })
        let u3u1 = Values(defaultKey: .default, valueBlock: { (Self.randomU3(in: $0), Self.randomU1(in: $0)) })
        let u4u1 = Values(defaultKey: .default, valueBlock: { (Self.randomU4(in: $0), Self.randomU1(in: $0)) })

        let u2u2 = Values(defaultKey: .default, valueBlock: { (Self.randomU2(in: $0), Self.randomU2(in: $0)) })
        let u3u3 = Values(defaultKey: .default, valueBlock: { (Self.randomU3(in: $0), Self.randomU3(in: $0)) })
        let u4u4 = Values(defaultKey: .default, valueBlock: { (Self.randomU4(in: $0), Self.randomU4(in: $0)) })

        let i2i1i1 = Values(defaultKey: .default, valueBlock: { (Self.randomI2(in: $0), Self.randomI1(in: $0), Self.randomI1(in: $0)) })
        let i3i1i1 = Values(defaultKey: .default, valueBlock: { (Self.randomI3(in: $0), Self.randomI1(in: $0), Self.randomI1(in: $0)) })
        let i4i1i1 = Values(defaultKey: .default, valueBlock: { (Self.randomI4(in: $0), Self.randomI1(in: $0), Self.randomI1(in: $0)) })

        let i2i2i2 = Values(defaultKey: .default, valueBlock: { (Self.randomI2(in: $0), Self.randomI2(in: $0), Self.randomI2(in: $0)) })
        let i3i3i3 = Values(defaultKey: .default, valueBlock: { (Self.randomI3(in: $0), Self.randomI3(in: $0), Self.randomI3(in: $0)) })
        let i4i4i4 = Values(defaultKey: .default, valueBlock: { (Self.randomI4(in: $0), Self.randomI4(in: $0), Self.randomI4(in: $0)) })

        let u2u1u1 = Values(defaultKey: .default, valueBlock: { (Self.randomU2(in: $0), Self.randomU1(in: $0), Self.randomU1(in: $0)) })
        let u3u1u1 = Values(defaultKey: .default, valueBlock: { (Self.randomU3(in: $0), Self.randomU1(in: $0), Self.randomU1(in: $0)) })
        let u4u1u1 = Values(defaultKey: .default, valueBlock: { (Self.randomU4(in: $0), Self.randomU1(in: $0), Self.randomU1(in: $0)) })

        let u2u2u2 = Values(defaultKey: .default, valueBlock: { (Self.randomU2(in: $0), Self.randomU2(in: $0), Self.randomU2(in: $0)) })
        let u3u3u3 = Values(defaultKey: .default, valueBlock: { (Self.randomU3(in: $0), Self.randomU3(in: $0), Self.randomU3(in: $0)) })
        let u4u4u4 = Values(defaultKey: .default, valueBlock: { (Self.randomU4(in: $0), Self.randomU4(in: $0), Self.randomU4(in: $0)) })

        let f1  = Values(defaultKey: .default, valueBlock: Self.randomF1 )
        let f2  = Values(defaultKey: .default, valueBlock: Self.randomF2 )
        let f3  = Values(defaultKey: .default, valueBlock: Self.randomF3 )
        let f4  = Values(defaultKey: .default, valueBlock: Self.randomF4 )
        let f8  = Values(defaultKey: .default, valueBlock: Self.randomF8 )
        let f16 = Values(defaultKey: .default, valueBlock: Self.randomF16)

        let f2f1 = Values(defaultKey: .default, valueBlock: { (Self.randomF2 (in: $0), Self.randomF1 (in: $0)) })
        let f3f1 = Values(defaultKey: .default, valueBlock: { (Self.randomF3 (in: $0), Self.randomF1 (in: $0)) })
        let f4f1 = Values(defaultKey: .default, valueBlock: { (Self.randomF4 (in: $0), Self.randomF1 (in: $0)) })

        let f1f1   = Values(defaultKey: .default, valueBlock: { (Self.randomF1 (in: $0), Self.randomF1 (in: $0)) })
        let f2f2   = Values(defaultKey: .default, valueBlock: { (Self.randomF2 (in: $0), Self.randomF2 (in: $0)) })
        let f3f3   = Values(defaultKey: .default, valueBlock: { (Self.randomF3 (in: $0), Self.randomF3 (in: $0)) })
        let f4f4   = Values(defaultKey: .default, valueBlock: { (Self.randomF4 (in: $0), Self.randomF4 (in: $0)) })
        let f8f8   = Values(defaultKey: .default, valueBlock: { (Self.randomF8 (in: $0), Self.randomF8 (in: $0)) })
        let f16f16 = Values(defaultKey: .default, valueBlock: { (Self.randomF16(in: $0), Self.randomF16(in: $0)) })

        let f2f1f1 = Values(defaultKey: .default, valueBlock: { (Self.randomF2 (in: $0), Self.randomF1 (in: $0), Self.randomF1 (in: $0)) })
        let f3f1f1 = Values(defaultKey: .default, valueBlock: { (Self.randomF3 (in: $0), Self.randomF1 (in: $0), Self.randomF1 (in: $0)) })
        let f4f1f1 = Values(defaultKey: .default, valueBlock: { (Self.randomF4 (in: $0), Self.randomF1 (in: $0), Self.randomF1 (in: $0)) })

        let f2f2f1 = Values(defaultKey: .default, valueBlock: { (Self.randomF2 (in: $0), Self.randomF2 (in: $0), Self.randomF1 (in: $0)) })
        let f3f3f1 = Values(defaultKey: .default, valueBlock: { (Self.randomF3 (in: $0), Self.randomF3 (in: $0), Self.randomF1 (in: $0)) })
        let f4f4f1 = Values(defaultKey: .default, valueBlock: { (Self.randomF4 (in: $0), Self.randomF4 (in: $0), Self.randomF1 (in: $0)) })

        let f1f1f1    = Values(defaultKey: .default, valueBlock: { (Self.randomF1( in: $0), Self.randomF1( in: $0), Self.randomF1( in: $0)) })
        let f2f2f2    = Values(defaultKey: .default, valueBlock: { (Self.randomF2( in: $0), Self.randomF2( in: $0), Self.randomF2( in: $0)) })
        let f3f3f3    = Values(defaultKey: .default, valueBlock: { (Self.randomF3( in: $0), Self.randomF3( in: $0), Self.randomF3( in: $0)) })
        let f4f4f4    = Values(defaultKey: .default, valueBlock: { (Self.randomF4( in: $0), Self.randomF4( in: $0), Self.randomF4( in: $0)) })
        let f8f8f8    = Values(defaultKey: .default, valueBlock: { (Self.randomF8( in: $0), Self.randomF8( in: $0), Self.randomF8( in: $0)) })
        let f16f16f16 = Values(defaultKey: .default, valueBlock: { (Self.randomF16(in: $0), Self.randomF16(in: $0), Self.randomF16(in: $0)) })

        let f2f2f2f2 = Values(defaultKey: .default, valueBlock: { (Self.randomF2( in: $0), Self.randomF2( in: $0), Self.randomF2( in: $0), Self.randomF2( in: $0)) })
        let f3f3f3f3 = Values(defaultKey: .default, valueBlock: { (Self.randomF3( in: $0), Self.randomF3( in: $0), Self.randomF3( in: $0), Self.randomF3( in: $0)) })

        let f3f3f3f3f3 = Values(defaultKey: .default, valueBlock: { (Self.randomF3( in: $0), Self.randomF3( in: $0), Self.randomF3( in: $0), Self.randomF3( in: $0), Self.randomF3( in: $0)) })

        let d1 = Values(defaultKey: .default, valueBlock: Self.randomD1)
        let d2 = Values(defaultKey: .default, valueBlock: Self.randomD2)
        let d3 = Values(defaultKey: .default, valueBlock: Self.randomD3)
        let d4 = Values(defaultKey: .default, valueBlock: Self.randomD4)
        let d8 = Values(defaultKey: .default, valueBlock: Self.randomD8)

        let d2d1 = Values(defaultKey: .default, valueBlock: { (Self.randomD2 (in: $0), Self.randomD1 (in: $0)) })
        let d3d1 = Values(defaultKey: .default, valueBlock: { (Self.randomD3 (in: $0), Self.randomD1 (in: $0)) })
        let d4d1 = Values(defaultKey: .default, valueBlock: { (Self.randomD4 (in: $0), Self.randomD1 (in: $0)) })

        let d1d1 = Values(defaultKey: .default, valueBlock: { (Self.randomD1 (in: $0), Self.randomD1 (in: $0)) })
        let d2d2 = Values(defaultKey: .default, valueBlock: { (Self.randomD2 (in: $0), Self.randomD2 (in: $0)) })
        let d3d3 = Values(defaultKey: .default, valueBlock: { (Self.randomD3 (in: $0), Self.randomD3 (in: $0)) })
        let d4d4 = Values(defaultKey: .default, valueBlock: { (Self.randomD4 (in: $0), Self.randomD4 (in: $0)) })
        let d8d8 = Values(defaultKey: .default, valueBlock: { (Self.randomD8 (in: $0), Self.randomD8 (in: $0)) })

        let d2d1d1 = Values(defaultKey: .default, valueBlock: { (Self.randomD2 (in: $0), Self.randomD1 (in: $0), Self.randomD1 (in: $0)) })
        let d3d1d1 = Values(defaultKey: .default, valueBlock: { (Self.randomD3 (in: $0), Self.randomD1 (in: $0), Self.randomD1 (in: $0)) })
        let d4d1d1 = Values(defaultKey: .default, valueBlock: { (Self.randomD4 (in: $0), Self.randomD1 (in: $0), Self.randomD1 (in: $0)) })

        let d2d2d1 = Values(defaultKey: .default, valueBlock: { (Self.randomD2 (in: $0), Self.randomD2 (in: $0), Self.randomD1 (in: $0)) })
        let d3d3d1 = Values(defaultKey: .default, valueBlock: { (Self.randomD3 (in: $0), Self.randomD3 (in: $0), Self.randomD1 (in: $0)) })
        let d4d4d1 = Values(defaultKey: .default, valueBlock: { (Self.randomD4 (in: $0), Self.randomD4 (in: $0), Self.randomD1 (in: $0)) })

        let d1d1d1 = Values(defaultKey: .default, valueBlock: { (Self.randomD1 (in: $0), Self.randomD1 (in: $0), Self.randomD1 (in: $0)) })
        let d2d2d2 = Values(defaultKey: .default, valueBlock: { (Self.randomD2 (in: $0), Self.randomD2 (in: $0), Self.randomD2 (in: $0)) })
        let d3d3d3 = Values(defaultKey: .default, valueBlock: { (Self.randomD3 (in: $0), Self.randomD3 (in: $0), Self.randomD3 (in: $0)) })
        let d4d4d4 = Values(defaultKey: .default, valueBlock: { (Self.randomD4 (in: $0), Self.randomD4 (in: $0), Self.randomD4 (in: $0)) })
        let d8d8d8 = Values(defaultKey: .default, valueBlock: { (Self.randomD8 (in: $0), Self.randomD8 (in: $0), Self.randomD8 (in: $0)) })

        let d2d2d2d2 = Values(defaultKey: .default, valueBlock: { (Self.randomD2( in: $0), Self.randomD2( in: $0), Self.randomD2( in: $0), Self.randomD2( in: $0)) })
        let d3d3d3d3 = Values(defaultKey: .default, valueBlock: { (Self.randomD3( in: $0), Self.randomD3( in: $0), Self.randomD3( in: $0), Self.randomD3( in: $0)) })

        let d3d3d3d3d3 = Values(defaultKey: .default, valueBlock: { (Self.randomD3( in: $0), Self.randomD3( in: $0), Self.randomD3( in: $0), Self.randomD3( in: $0), Self.randomD3( in: $0)) })


        // MARK: .Values

        /// E.g. `E` can be inequal to `T` when `T : SIMD` and `E == T.Scalar`.
        class Values<T, E> where E : Comparable & Hashable {

            typealias Key = ValueDomain<E>
            typealias ValueBlock = (Key) -> T


            init(defaultKey: Key, valueBlock: @escaping ValueBlock) {
                self.defaultKey = defaultKey
                self.valueBlock = valueBlock
            }


            private let defaultKey: Key
            private let valueBlock: ValueBlock

            private var arrays: [Key : [T]] = .init()


            // MARK: Operations

            subscript() -> [T] { self[defaultKey] }

            subscript(key: Key) -> [T] {
                if let value = arrays[key] {
                    return value
                }

                let value = (0 ..< Constants.count).map { _ in valueBlock(key) }
                arrays[key] = value

                return value
            }


            // MARK: .Constants

            private struct Constants {

                static var count: Int {
#if DEBUG
                    return 10000
#else // !DEBUG
                    return 500000
#endif
                }

            }

        }


        // MARK: Operations

        private static func randomI1(in domain: ValueDomain<I1>) -> I1 { random(in: domain) }
        private static func randomI2(in domain: ValueDomain<I1>) -> I2 { random(in: domain) }
        private static func randomI3(in domain: ValueDomain<I1>) -> I3 { random(in: domain) }
        private static func randomI4(in domain: ValueDomain<I1>) -> I4 { random(in: domain) }

        private static func randomU1(in domain: ValueDomain<U1>) -> U1 { random(in: domain) }
        private static func randomU2(in domain: ValueDomain<U1>) -> U2 { random(in: domain) }
        private static func randomU3(in domain: ValueDomain<U1>) -> U3 { random(in: domain) }
        private static func randomU4(in domain: ValueDomain<U1>) -> U4 { random(in: domain) }

        private static func randomF1 (in domain: ValueDomain<F1>) -> F1  { random(in: domain) }
        private static func randomF2 (in domain: ValueDomain<F1>) -> F2  { random(in: domain) }
        private static func randomF3 (in domain: ValueDomain<F1>) -> F3  { random(in: domain) }
        private static func randomF4 (in domain: ValueDomain<F1>) -> F4  { random(in: domain) }
        private static func randomF8 (in domain: ValueDomain<F1>) -> F8  { random(in: domain) }
        private static func randomF16(in domain: ValueDomain<F1>) -> F16 { random(in: domain) }

        private static func randomD1(in domain: ValueDomain<D1>) -> D1 { random(in: domain) }
        private static func randomD2(in domain: ValueDomain<D1>) -> D2 { random(in: domain) }
        private static func randomD3(in domain: ValueDomain<D1>) -> D3 { random(in: domain) }
        private static func randomD4(in domain: ValueDomain<D1>) -> D4 { random(in: domain) }
        private static func randomD8(in domain: ValueDomain<D1>) -> D8 { random(in: domain) }


        private static func random<T>(in domain: ValueDomain<T>) -> T
        where T : FixedWidthInteger
        {
            switch domain {
            case .collection(let values):
                return values.randomElement()!
            case .range(let range):
                return .random(in: range)
            }
        }

        private static func random<T>(in domain: ValueDomain<T>) -> T
        where T : BinaryFloatingPoint, T.RawSignificand : FixedWidthInteger
        {
            switch domain {
            case .collection(let values):
                return values.randomElement()!
            case .range(let range):
                return .random(in: range)
            }
        }

        private static func random<T>(in domain: ValueDomain<T>) -> SIMD2<T> where T : SIMDScalar & FixedWidthInteger {
            SIMD2<T>(random(in: domain), random(in: domain))
        }

        private static func random<T>(in domain: ValueDomain<T>) -> SIMD3<T> where T : SIMDScalar & FixedWidthInteger {
            SIMD3<T>(random(in: domain), random(in: domain), random(in: domain))
        }

        private static func random<T>(in domain: ValueDomain<T>) -> SIMD4<T> where T : SIMDScalar & FixedWidthInteger {
            SIMD4<T>(random(in: domain), random(in: domain), random(in: domain), random(in: domain))
        }


        private static func random<T>(in domain: ValueDomain<T>) -> SIMD2<T> where T : SIMDScalar & BinaryFloatingPoint, T.RawSignificand : FixedWidthInteger {
            SIMD2<T>(random(in: domain), random(in: domain))
        }

        private static func random<T>(in domain: ValueDomain<T>) -> SIMD3<T> where T : SIMDScalar & BinaryFloatingPoint, T.RawSignificand : FixedWidthInteger {
            SIMD3<T>(random(in: domain), random(in: domain), random(in: domain))
        }

        private static func random<T>(in domain: ValueDomain<T>) -> SIMD4<T> where T : SIMDScalar & BinaryFloatingPoint, T.RawSignificand : FixedWidthInteger {
            SIMD4<T>(random(in: domain), random(in: domain), random(in: domain), random(in: domain))
        }

        private static func random<T>(in domain: ValueDomain<T>) -> SIMD8<T> where T : SIMDScalar & BinaryFloatingPoint, T.RawSignificand : FixedWidthInteger {
            SIMD8<T>(lowHalf: random(in: domain), highHalf: random(in: domain))
        }

        private static func random<T>(in domain: ValueDomain<T>) -> SIMD16<T> where T : SIMDScalar & BinaryFloatingPoint, T.RawSignificand : FixedWidthInteger {
            SIMD16<T>(lowHalf: random(in: domain), highHalf: random(in: domain))
        }

    }

}



// MARK: .Input.ValueDomain

extension KvBenchmarkApp.Input {

    fileprivate enum ValueDomain<T : Comparable & Hashable> : Hashable {

        case range(ClosedRange<T>)
        case collection([T])

    }

}


extension KvBenchmarkApp.Input.ValueDomain where T : BinaryInteger & UnsignedInteger {

    static var `default`: Self { .range(0 ... 10) }

}


extension KvBenchmarkApp.Input.ValueDomain where T : BinaryInteger & SignedInteger {

    static var `default`: Self { .range(-10 ... 10) }

}


extension KvBenchmarkApp.Input.ValueDomain where T : BinaryFloatingPoint {

    static var `default`: Self { .range(-10.0 ... 10.0) }

    static var negative: Self { .range(-10.0 ... 10.0) }
    static var nonNegative: Self { .range(0.0 ... 10.0) }
    static var nonPositive: Self { .range(-10.0 ... 0.0) }
    static var positive: Self { .range(T.ulpOfOne ... 10.0) }

    static var cosh: Self { .range(1.0 ... 100.0) }
    static var sin: Self { .range(-1.0 ... 1.0) }
    static var tanh: Self { .range(-0.999 ... 0.999) }

    static var log1p: Self { .range((-1.0 + T.ulpOfOne) ... 10.0) }

    static var floatValidation: Self { .collection([
        0.0, 1.0, -1.0,
        T.greatestFiniteMagnitude, -T.greatestFiniteMagnitude,
        T.leastNonzeroMagnitude, -T.leastNonzeroMagnitude,
        T.leastNormalMagnitude, -T.leastNormalMagnitude,
        T.infinity, -T.infinity,
        T.nan,
    ]) }

}
