# swift-source-reporter

A Swift package that provides a flexible and extensible framework for reporting diagnostic messages.

<!-- # Badges -->

[![Github issues](https://img.shields.io/github/issues/p-x9/swift-source-reporter)](https://github.com/p-x9/swift-source-reporter/issues)
[![Github forks](https://img.shields.io/github/forks/p-x9/swift-source-reporter)](https://github.com/p-x9/swift-source-reporter/network/members)
[![Github stars](https://img.shields.io/github/stars/p-x9/swift-source-reporter)](https://github.com/p-x9/swift-source-reporter/stargazers)
[![Github top language](https://img.shields.io/github/languages/top/p-x9/swift-source-reporter)](https://github.com/p-x9/swift-source-reporter/)

## Features

- **Reporter Protocol**: Define your own reporter by conforming to `ReporterProtocol`.
- **XcodeReporter**: Outputs messages in a format recognized by Xcode.
- **CallbackReporter**: Handle reports with custom closures for logging, UI, or other processing.
- **CompositeReporter**: Forward reports to multiple reporters at once.
- **Structured Report Model**: Includes file, line, column, type, and content.

## Usage

Import and use the reporters:

```swift
import SourceReporter

let reporter = XcodeReporter()
reporter.report(
    file: "main.swift",
    line: 10,
    column: 5,
    type: .warning,
    content: "This is a warning message."
)
// `file:line:column: type: content`
```

You can also use `CallbackReporter` or combine multiple reporters with `CompositeReporter`:

```swift
let callbackReporter = CallbackReporter { report in
    // Custom handling
    print("Received report: \(report)")
}

let composite = CompositeReporter(reporter, callbackReporter)
composite.report(
    file: "main.swift",
    line: 20,
    type: .error,
    content: "This is an error message."
)
```

## License

swift-source-reporter is released under the MIT License. See [LICENSE](./LICENSE)
