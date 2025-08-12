//
//  Reporter.swift
//
//
//  Created by p-x9 on 2024/06/04
//
//

import Foundation

/// A reporter that formats and outputs diagnostic messages in a style compatible with Xcode's console.
///
/// This reporter outputs messages using the `file:line:column: type: content` format,
/// which allows Xcode to recognize and link the messages to the corresponding source code locations.
public struct XcodeReporter: ReporterProtocol {
    public init() {}

    /// Outputs a formatted report message to the console in Xcode-compatible format.
    ///
    /// - Parameter report: The report instance containing the type, position, and content to display.
    public func report(
        _ report: Report
    ) {
        let type = report.type
        let position = report.position
        let content = report.content

        if let file = position.file {
            if let line = position.line {
                if let column = position.column {
                    print("\(file):\(line):\(column): \(type): \(content)")
                } else {
                    print("\(file):\(line): \(type): \(content)")
                }
            } else {
                print("\(file): \(type): \(content)")
            }
        } else {
            print("\(type): \(content)")
        }
    }
}
