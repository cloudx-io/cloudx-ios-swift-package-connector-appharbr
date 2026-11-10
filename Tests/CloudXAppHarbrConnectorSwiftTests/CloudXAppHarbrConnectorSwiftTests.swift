import CloudXAppHarbrConnector
import CloudXAppHarbrConnectorPackage
import XCTest

final class CloudXAppHarbrConnectorSwiftTests: XCTestCase {
    func testFrameworkIsLinked() {
        XCTAssertEqual(CLXAppHarbrConnectorVersion, "1.38.3.0")
        XCTAssertNotNil(NSClassFromString("CLXAppHarbrConnector"))
    }
}
