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
//  KvBenchmark.swift
//  kvSIMDBenchmark
//
//  Created by Svyatoslav Popov on 23.07.2023.
//

import Foundation

import kvKit



class KvBenchmark {

    private let mutationLock = NSRecursiveLock()

    private var reports: [Report] = .init()

//    private var totalAccumulator: TimeMeasurement.Accumulator = .init()



    // MARK: .Constants

    private struct Constants {

        static var numberOfExperiments: Int { 50 }

        static var minimumExperimentDuration: TimeInterval { 1e-4 }

    }



    // MARK: Operations

    func run(label: String, block: (RunContext) -> Void) {
        block(RunContext(benchmark: self, label: label))
    }


    private func run<I, R>(label: String, arguments: Arguments,
                           for input: [I],
                           initial: R,
                           reference referenceBlock: (I) -> R,
                           subject subjectBlock: (I) -> R,
                           resultAdd: (R, R) -> R,
                           resultSub: (R, R) -> R
    ) {
        var delta = initial

        let report = Report(label: label, arguments: arguments, timeMeasurement: measure {
            let reference = Self.runExperiment(referenceBlock, for: input, initial: initial, resultAdd: resultAdd)

            guard reference.timeInterval >= Constants.minimumExperimentDuration else { return nil }

            let subject = Self.runExperiment(subjectBlock, for: input, initial: initial, resultAdd: resultAdd)

            delta = resultAdd(delta, resultSub(subject.value, reference.value))
            return subject.timeInterval / reference.timeInterval - 1.0
        })

        mutationLock.withLock {
            if reports.isEmpty {
                print(Report.mdTableHeader())
                print(Report.mdTableAlignment())
            }

            print(report.mdTableRow())

            reports.append(report)
        }
    }


    /// Runs *subject* on each element of *input*.
    ///
    /// - Returns: Sum of the results and the calculation time.
    ///
    /// - Note: It's non-trivial to measure time of execution when the optimizarion is enabled.
    ///         If result of *subject* is discarded then optimizer can remove the call to *subject* and the results become degenerate.
    ///         So summation of the results is used to prevent this case.
    ///
    /// - Note: It's marked as non-inlinable to be shure that calculation time is measured in the exactly the same way even when the optimization is enabled.
    @inline(never)
    private static func runExperiment<I, R>(_ subject: (I) -> R,
                                            for input: [I],
                                            initial: R,
                                            resultAdd: (R, R) -> R
    ) -> (value: R, timeInterval: TimeInterval)
    {
        let resultBuffer = UnsafeMutableBufferPointer<R>.allocate(capacity: input.count)
        defer { resultBuffer.deallocate() }

        let timeInterval: TimeInterval = {
            var ptr = resultBuffer.baseAddress!
            let startTimestamp = Date()

            input.indices.forEach {
                ptr.pointee = subject(input[$0])
                ptr = ptr.successor()
            }

            return -startTimestamp.timeIntervalSinceNow
        }()

        return (resultBuffer.reduce(initial, resultAdd), timeInterval)
    }


    private func measure(block: () -> TimeInterval?) -> TimeMeasurement? {
        var accumulator = TimeMeasurement.Accumulator()

        for _ in 0 ..< Constants.numberOfExperiments {
            guard let value = block() else { return nil }

            accumulator.process(value)
//            totalAccumulator.process(value)
        }

        return accumulator.measurement
    }


    /// - Note: The report are in Markdown format.
    func writeReport(at url: URL) throws {

        func Write(_ stream: OutputStream, _ string: String) {
            string.data(using: .utf8)!.withUnsafeBytes { buffer in
                _ = stream.write(buffer.baseAddress!, maxLength: buffer.count)
            }
        }


        /// - Note: Missing `\n` is automatically appended.
        func WriteLn(_ stream: OutputStream, _ string: String) {
            Write(stream, string)

            guard string.last != "\n" else { return }

            Write(stream, "\n")
        }


        func WriteResultTableHeader(_ stream: OutputStream) {
            WriteLn(stream, Report.mdTableHeader())
            WriteLn(stream, Report.mdTableAlignment())
        }


        func WriteResultTableRow(_ stream: OutputStream, subject: String, arguments: Arguments, _ measurement: TimeMeasurement?) {
            WriteLn(stream, Report.mdTableRow(label: subject, arguments: arguments, measurement: measurement))
        }


        func WriteResultTableRow(_ stream: OutputStream, _ report: Report) {
            WriteLn(stream, report.mdTableRow())
        }


        /// - Returns: The result of  `sysctlbyname` for "hw.machine" key.
        func sysctl(byname name: String) -> String? {
            var size = 0
            guard sysctlbyname(name, nil, &size, nil, 0) == 0 else { return nil }

            var machine: [CChar] = .init(repeating: 0, count: size)
            guard sysctlbyname(name, &machine, &size, nil, 0) == 0 else { return nil }

            return String(cString: machine)
        }


        guard let stream = OutputStream(url: url, append: false) else { throw KvError("Unable to create output stream for «\(url)» URL") }

        stream.open()
        defer { stream.close() }

        WriteLn(stream, "# *kvSIMD* Performance Report")
        Write(stream, "\n")

        WriteLn(stream, "This report contains relative differences between run times of functions from the *SIMD* framework")
        WriteLn(stream, "and corresponding implementations from *kvSIMD*.")
        Write(stream, "\n")

        WriteLn(stream, "Let *t₁* is duration of a run with function from the *SIMD* framework,")
        WriteLn(stream, "*t₂* is duration of a run with correcponding function *kvSIMD*.")
        WriteLn(stream, "Then the result of a comparison is (*t₂* ÷ *t₁* – 1).")
        WriteLn(stream, "E.g. if a function from *kvSIMD* is slower by 10% then the resulting value is +10%.")
        Write(stream, "\n")

        WriteLn(stream, "Values in «\(Report.Column.avg.label)», «\(Report.Column.standardDeviation.label)», «\(Report.Column.min.label)» and «\(Report.Column.max.label)» columns")
        WriteLn(stream, "are calculated for series of the resulting values described above.")
        WriteLn(stream, "Values in «\(Report.Column.count.label)» columns are number of elements in the series.")
        Write(stream, "\n")

        WriteLn(stream, "Suffixes after function names mean type and number of components in arguments:")
        WriteLn(stream, "«i» means `Int32`, «f» means `Float`, «d» means `Double`.")
        Write(stream, "\n")

        WriteLn(stream, "## Hardware")
        Write(stream, "\n")

        do {
            let headerRow: (String, String) = ("Key", "Value")
            let alignment = (Report.Column.Alignment.left, Report.Column.Alignment.left)
            let rows: [(String, String)] = [
                ("hw.model", sysctl(byname: "hw.model") ?? "—"),
                ("hw.machine", sysctl(byname: "hw.machine") ?? "—"),
            ]
            let widths = rows.reduce((headerRow.0.count, headerRow.1.count), { (max($0.0, $1.0.count), max($0.1, $1.1.count)) })


            func WriteHardwareTableRow(_ row: (String, String)) {
                WriteLn(stream, " \(alignment.0.format(row.0, width: widths.0)) | \(alignment.1.format(row.1, width: widths.1))")
            }

            func WriteHardwareTableHeader() {
                WriteHardwareTableRow(headerRow)
                WriteLn(stream, "\(alignment.0.tableColumnDeclaration(width: widths.0))|\(alignment.1.tableColumnDeclaration(width: widths.1))")
            }


            WriteHardwareTableHeader()
            rows.forEach(WriteHardwareTableRow(_:))
            Write(stream, "\n")
        }

//        WriteLn(stream, "## Summary")
//        Write(stream, "\n")
//
//        WriteResultTableHeader(stream)
//        WriteResultTableRow(stream, subject: "*", totalAccumulator.measurement)
//        Write(stream, "\n")

        WriteLn(stream, "## Reports")
        Write(stream, "\n")

        WriteResultTableHeader(stream)

        mutationLock.withLock {
            reports.sort { lhs, rhs in
                switch lhs.label.compare(rhs.label) {
                case .orderedAscending:
                    return true
                case .orderedDescending:
                    return false
                case .orderedSame:
                    return lhs.arguments < rhs.arguments
                }
            }

            reports.forEach { report in
                WriteResultTableRow(stream, report)
            }
        }
        Write(stream, "\n")
    }



    // MARK: .RunContext

    struct RunContext {

        let benchmark: KvBenchmark
        let label: String


        // MARK: Operations

        func run<I>(_ arguments: Argument..., for input: [I], reference referenceBlock: (I) -> Bool, subject subjectBlock: (I) -> Bool) {
            benchmark.run(label: label, arguments: .init(arguments), for: input, initial: false, reference: referenceBlock, subject: subjectBlock, resultAdd: !=/*XOR*/, resultSub: !=/*XOR*/)
        }


        func run<I, R>(_ arguments: Argument..., for input: [I], reference referenceBlock: (I) -> R, subject subjectBlock: (I) -> R)
        where R : FixedWidthInteger
        {
            benchmark.run(label: label, arguments: .init(arguments), for: input, initial: .zero, reference: referenceBlock, subject: subjectBlock, resultAdd: &+, resultSub: &-)
        }


        func run<I, R>(_ arguments: Argument..., for input: [I], reference referenceBlock: (I) -> R, subject subjectBlock: (I) -> R)
        where R : SIMD, R.Scalar : SIMDScalar & FixedWidthInteger
        {
            let add: (R, R) -> R = (&+)
            let sub: (R, R) -> R = (&-)

            benchmark.run(label: label, arguments: .init(arguments), for: input, initial: .zero, reference: referenceBlock, subject: subjectBlock, resultAdd: add, resultSub: sub)
        }


        func run<I, R>(_ arguments: Argument..., for input: [I], reference referenceBlock: (I) -> R, subject subjectBlock: (I) -> R)
        where R : BinaryFloatingPoint
        {
            let add: (R, R) -> R = (+)
            let sub: (R, R) -> R = (-)

            benchmark.run(label: label, arguments: .init(arguments), for: input, initial: .zero, reference: referenceBlock, subject: subjectBlock, resultAdd: add, resultSub: sub)
        }


        func run<I, R>(_ arguments: Argument..., for input: [I], reference referenceBlock: (I) -> R, subject subjectBlock: (I) -> R)
        where R : SIMD, R.Scalar : SIMDScalar & BinaryFloatingPoint
        {
            let add: (R, R) -> R = (+)
            let sub: (R, R) -> R = (-)

            benchmark.run(label: label, arguments: .init(arguments), for: input, initial: .zero, reference: referenceBlock, subject: subjectBlock, resultAdd: add, resultSub: sub)
        }

    }



    // MARK: .Argument

    enum Argument : Int {

        case i1, i2, i3, i4
        case u1, u2, u3, u4
        case f1, f2, f3, f4, f8, f16
        case d1, d2, d3, d4, d8


        var label: String {
            switch self {
            case .i1:
                return "i1"
            case .i2:
                return "i2"
            case .i3:
                return "i3"
            case .i4:
                return "i4"
            case .u1:
                return "u1"
            case .u2:
                return "u2"
            case .u3:
                return "u3"
            case .u4:
                return "u4"
            case .f1:
                return "f1"
            case .f2:
                return "f2"
            case .f3:
                return "f3"
            case .f4:
                return "f4"
            case .f8:
                return "f8"
            case .f16:
                return "f16"
            case .d1:
                return "d1"
            case .d2:
                return "d2"
            case .d3:
                return "d3"
            case .d4:
                return "d4"
            case .d8:
                return "d8"
            }
        }
    }



    // MARK: .Arguments

    struct Arguments : ExpressibleByArrayLiteral, Comparable {

        typealias Element = Argument


        let elements: [Element]


        init(_ elements: [Element]) { self.elements = elements }

        init(_ elements: Element...) { self.init(elements) }

        init(arrayLiteral elements: Element...) { self.init(elements) }


        var count: Int { elements.count }

        /// E.g. f4f1f1.
        var label: String {
            guard !elements.isEmpty else { return "" }

            return elements.lazy.map { $0.label }.joined()
        }


        // MARK: : Comparable

        static func <(lhs: Arguments, rhs: Arguments) -> Bool {
            do {
                let diff = lhs.count - rhs.count

                guard diff == 0 else { return diff < 0 }
            }

            let diff = zip(lhs.elements, rhs.elements)
                .lazy.map { $0.rawValue - $1.rawValue }
                .first { $0 != 0 }

            return diff != nil && diff! < 0
        }
    }



    // MARK: .Report

    private struct Report {

        let label: String
        let arguments: Arguments
        let timeMeasurement: TimeMeasurement?


        // MARK: Auxiliaries

        static func mdTableHeader() ->String { " " + Column.allCases.lazy.map({ $0.formattedHeader }).joined(separator: " | ") }

        static func mdTableAlignment() -> String { Column.allCases.lazy.map({ $0.formattedAlignment }).joined(separator: "|") }

        static func mdTableRow(label: String, arguments: Arguments, measurement: TimeMeasurement?) -> String {

            func Formatted(_ value: String?) -> String { value ?? "—" }

            func Formatted(_ value: Int?) -> String { Formatted(value.map { String(format: "%3d", $0) }) }

            func Formatted(ratio: Double?, plus: Bool = false) -> String { Formatted(ratio.map { String(format: "%\(plus ? "+" : "")7.2f%%", 100.0 * $0) }) }

            return " " + Column.subject.format(label)
            + " | "
            + Column.args.format(arguments.label)
            + " | "
            + Column.avg.format(Formatted(ratio: measurement?.average, plus: true))
            + " | "
            + Column.standardDeviation.format(Formatted(ratio: measurement?.standardDeviation))
            + " | "
            + Column.min.format(Formatted(ratio: measurement?.minimum, plus: true))
            + " | "
            + Column.max.format(Formatted(ratio: measurement?.maximum, plus: true))
            + " | "
            + Column.count.format(Formatted(measurement?.count))
        }

        func mdTableRow() -> String { Self.mdTableRow(label: label, arguments: arguments, measurement: timeMeasurement) }


        // MARK: .Column

        enum Column : CaseIterable {

            case subject, args, avg, standardDeviation, min, max, count

            var label: String {
                switch self {
                case .subject:
                    return "Subject"
                case .args:
                    return "Args"
                case .avg:
                    return "Avg."
                case .standardDeviation:
                    return "σ"
                case .min:
                    return "Min."
                case .max:
                    return "Max."
                case .count:
                    return "N"
                }
            }

            var width: Int {
                switch self {
                case .subject:
                    return 24
                case .args:
                    return 10
                case .avg, .standardDeviation, .min, .max:
                    return 9
                case .count:
                    return 4
                }
            }

            var alignment: Alignment {
                switch self {
                case .subject:
                    return .left
                case .args:
                    return .left
                case .avg, .standardDeviation, .min, .max, .count:
                    return .right
                }
            }

            var formattedHeader: String { alignment.format(label, width: width) }

            var formattedAlignment: String { alignment.tableColumnDeclaration(width: width) }

            func format(_ value: String) -> String { alignment.format(value, width: width) }


            // MARK: .Alignment

            enum Alignment {

                case `default`, left, centered, right

                func tableColumnDeclaration(width: Int) -> String {
                    let prefix, suffix: String

                    switch self {
                    case .`default`:
                        (prefix, suffix) = (" ", " ")
                    case .left:
                        (prefix, suffix) = (":", " ")
                    case .centered:
                        (prefix, suffix) = (":", ":")
                    case .right:
                        (prefix, suffix) = (" ", ":")
                    }

                    return prefix + String(repeating: "-", count: width) + suffix
                }

                func format(_ value: String, width: Int) -> String {
                    let space = Swift.max(0, width - value.count)

                    switch self {
                    case .`default`, .left:
                        return value + String(repeating: " ", count: space)
                    case .right:
                        return String(repeating: " ", count: space) + value
                    case .centered:
                        let halfSpace = space / 2
                        return String(repeating: " ", count: halfSpace) + value + String(repeating: " ", count: space - halfSpace)
                    }
                }

            }

        }

    }



    // MARK: .TimeMeasurement

    private struct TimeMeasurement : CustomStringConvertible {

        typealias Value = TimeInterval


        let minimum, maximum: Value
        let average, standardDeviation: Value

        let count: Int


        // MARK: : CustomStringConvertible

        var description: String {
            "(avg: \(average), σ: \(standardDeviation), bounds: [ \(minimum), \(maximum) ])"
        }


        // MARK: .Accumulator

        struct Accumulator {

            private var rangeStream = KvStatistics.MinMax<Value>.Stream()
            private var varianceStream = KvStatistics.Variance<Value>.Processor()


            // MARK: Operations

            var measurement: TimeMeasurement? {
                guard rangeStream.count > 0 else { return nil }

                return .init(minimum: rangeStream.minimum,
                             maximum: rangeStream.maximum,
                             average: varianceStream.average,
                             standardDeviation: varianceStream.standardDeviation,
                             count: rangeStream.count)
            }


            mutating func process(_ value: TimeInterval) {
                rangeStream.process(value)
                varianceStream.process(value)
            }

        }

    }

}
