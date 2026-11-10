@import CloudXAppHarbrConnector;
@import CloudXAppHarbrConnectorPackage;
@import XCTest;

@interface CloudXAppHarbrConnectorObjCTests : XCTestCase
@end

@implementation CloudXAppHarbrConnectorObjCTests

- (void)testFrameworkIsLinked {
    XCTAssertEqualObjects(CLXAppHarbrConnectorVersion, @"1.38.3.0");
    XCTAssertNotNil(NSClassFromString(@"CLXAppHarbrConnector"));
}

@end
