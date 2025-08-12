//
//  CallbackReporter.swift
//  swift-weak-self-check
//
//  Created by p-x9 on 2025/04/23
//
//

import Foundation

/// A reporter that outputs reports by invoking a user-provided callback.
///
/// This reporter allows you to handle diagnostic reports in a custom way,
/// such as logging them, displaying them in a UI, or storing them for later processing.
public struct CallbackReporter: ReporterProtocol {
    /// The closure type used for handling a `Report` instance.
    public typealias Callback = (Report) -> Void

    /// The stored callback that will be invoked when a report is issued.
    let callback: Callback

    /// Creates a new callback reporter.
    ///
    /// - Parameter callback: The closure to invoke when a report is issued.
    public init(callback: @escaping Callback) {
        self.callback = callback
    }

    /// Invokes the stored callback with the given report.
    ///
    /// - Parameter report: The report instance to pass to the callback.
    public func report(_ report: Report) {
        callback(report)
    }
}
