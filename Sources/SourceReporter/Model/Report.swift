//
//  Report.swift
//  swift-weak-self-check
//
//  Created by p-x9 on 2025/04/24
//
//

import Foundation

/// Represents a diagnostic report containing information about a specific issue or message.
///
/// A report includes the position in the source code where the message applies,
/// the type of the message (e.g., warning, error, note, remark),
/// and the descriptive content of the message.
public struct Report: Sendable, Codable, Equatable {
    /// Represents the location in a source file where a report applies.
    ///
    /// This includes the file path, line number, and column number if available.
    public struct Position: Sendable, Codable, Equatable {
        public let file: String?
        public let line: Int?
        public let column: Int?
    }

    /// The position in the source code to which the report refers.
    public let position: Position
    /// The type of the report, such as warning, error, note, or remark.
    public let type: ReportType
    /// The descriptive message content of the report.
    public let content: String
}
