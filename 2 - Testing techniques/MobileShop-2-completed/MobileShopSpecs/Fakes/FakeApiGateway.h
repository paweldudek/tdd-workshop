//
// Copyright 2014 Taptera Inc. All rights reserved.
//


#import <Foundation/Foundation.h>


@interface FakeApiGateway : NSObject

@property(nonatomic, copy) NSString *createObjectType;

@property(nonatomic, strong) NSDictionary *createProperties;

@property(nonatomic, copy) void (^createCompletion)(NSError *);

- (void)createObjectWithType:(NSString *)objectType
                  properties:(NSDictionary *)properties
                  completion:(void (^)(NSError *))completion;

- (void)simulateSuccessResponse;

- (void)simulateFailedResponse;
@end
