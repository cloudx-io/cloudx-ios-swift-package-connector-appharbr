# CloudX AppHarbr ad-quality connector Swift package

This repository distributes the AppHarbr ad-quality connector for the CloudX iOS SDK.

## Requirements

- iOS 13 or later
- Xcode 16 or later
- CloudX Core 3.11.0 or later

## Installation

Add this package in Xcode:

```text
https://github.com/cloudx-io/cloudx-ios-swift-package-connector-appharbr.git
```

Select an exact package version from the compatibility table. Add the
`CloudXAppHarbrConnector` product to the app target.

Add `-ObjC` to the app target's **Other Linker Flags**. The package uses this
flag to retain the CloudX registration code.

AppHarbr SDK contains Swift. An Objective-C-only app target needs at least one
Swift source file so Xcode links the Swift runtime.

| Package version | CloudX ad-quality connector | AppHarbr SDK |
| --- | --- | --- |
| `1380300.0.0` | `1.38.3.0` | `1.38.3` or later |

The package installs CloudX Core and AppHarbr SDK `1.38.3` or later. Initialize AppHarbr SDK as its own documentation describes. Import `CloudXCore` in the application. The ad-quality connector registers when the application loads.

## Versioning

CloudX ad-quality connector versions have four components. Swift package versions use three. The package tag joins the ad-quality connector components into the major number. For example, ad-quality connector `1.38.3.0` uses package version `1380300.0.0`.

## License

The CloudX ad-quality connector uses the Business Source License 1.1. See [LICENSE](LICENSE).
