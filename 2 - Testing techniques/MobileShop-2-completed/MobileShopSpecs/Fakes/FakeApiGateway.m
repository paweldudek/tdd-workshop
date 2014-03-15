//
// Copyright 2014 Taptera Inc. All rights reserved.
//


#import "FakeApiGateway.h"


@implementation FakeApiGateway

- (void)createObjectWithType:(NSString *)objectType
                  properties:(NSDictionary *)properties
                  completion:(void (^)(NSError *))completion {
    self.createObjectType = objectType;
    self.createProperties = properties;
    self.createCompletion = completion;
}

- (void)simulateSuccessResponse {
    if (self.createCompletion) {
        self.createCompletion(nil);
    }
}

- (void)simulateFailedResponse {
    if (self.createCompletion) {
        NSError *error = [NSError errorWithDomain:@"FakeApiGateway" code:0 userInfo:nil];
        self.createCompletion(error);
    }
}
@end
