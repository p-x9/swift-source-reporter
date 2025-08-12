//
//  ReporterProtocol.swift
//  swift-weak-self-check
//
//  Created by p-x9 on 2025/04/20
//
//

import Foundation

/// Defines the interface for a reporter that can output diagnostic reports.
///
/// Conforming types are responsible for implementing the `report(_:)` method
/// to handle how a `Report` instance is presented or logged.
public protocol ReporterProtocol {
    /// Outputs the given report.
    ///
    /// - Parameter report: The report instance containing the position, type, and content of the message.
    func report(
        _ report: Report
    )
}

/// Provides a convenience method for creating and reporting a `Report`
/// using separate parameters for position, type, and content.
extension ReporterProtocol {
    /// Creates and outputs a `Report` from the provided parameters.
    ///
    /// - Parameters:
    ///   - file: The file path where the message applies.
    ///   - line: The line number in the file.
    ///   - column: The column number in the file.
    ///   - type: The type of the report (e.g., warning, error, note, remark).
    ///   - content: The descriptive message content.
    public func report(
        file: String? = nil,
        line: Int? = nil,
        column: Int? = nil,
        type: ReportType,
        content: String
    ) {
        self.report(
            .init(
                position: .init(
                    file: file,
                    line: line,
                    column: column
                ),
                type: type,
                content: content
            )
        )
    }
}
