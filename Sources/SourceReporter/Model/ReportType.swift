//
//  ReportType.swift
//
//
//  Created by p-x9 on 2024/06/04
//
//

import Foundation

/// Represents the type of a report message that can be output by the reporter.
public enum ReportType: String, Codable, Sendable {
    /// Indicates a non-fatal issue or potential problem that should be reviewed.
    case warning
    /// Indicates a serious issue that prevents successful execution or compilation.
    case error
    /// Provides additional information or context related to a warning or error.
    case note
    /// Offers a general comment or informational message, not tied to an issue.
    case remark
}
