// AppHarbrSDK contains Swift, so an Objective-C-only target must link the Swift
// runtime. Depending on this Swift target makes the toolchain link it, as one Swift
// source does in an Objective-C app.
public enum SwiftRuntimeLink {}
