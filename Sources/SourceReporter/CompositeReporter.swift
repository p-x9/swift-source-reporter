//
//  CompositeReporter.swift
//  swift-source-reporter
//
//  Created by p-x9 on 2025/08/12
//  
//

/// A reporter that forwards reports to multiple underlying reporters.
///
/// This allows you to combine multiple reporters (e.g., `XcodeReporter`, `CallbackReporter`)
/// and treat them as a single reporter instance.
public struct CompositeReporter: ReporterProtocol {
    /// The list of reporters to which reports will be forwarded.
    private let reporters: [any ReporterProtocol]

    /// Creates a new composite reporter.
    ///
    /// - Parameter reporters: The reporters to forward reports to.
    public init(_ reporters: [any ReporterProtocol]) {
        self.reporters = reporters
    }

    /// Creates a new composite reporter from a variadic list of reporters.
    ///
    /// - Parameter reporters: The reporters to forward reports to.
    public init(_ reporters: (any ReporterProtocol)...) {
        self.reporters = reporters
    }

    /// Forwards the given report to all underlying reporters.
    ///
    /// - Parameter report: The report instance to forward.
    public func report(_ report: Report) {
        for reporter in reporters {
            reporter.report(report)
        }
    }
}
