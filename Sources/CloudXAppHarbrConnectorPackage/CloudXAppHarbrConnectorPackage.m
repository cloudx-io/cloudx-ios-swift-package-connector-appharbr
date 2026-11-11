#import <CloudXAppHarbrConnector/CloudXAppHarbrConnector.h>

@interface CloudXAppHarbrConnectorPackageLoader : NSObject
@end

@implementation CloudXAppHarbrConnectorPackageLoader

+ (void)load {
    CloudXAppHarbrConnectorRegister();
}

@end
