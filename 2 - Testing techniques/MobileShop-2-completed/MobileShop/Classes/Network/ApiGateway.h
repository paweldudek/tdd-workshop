//
// Copyright 2014 Taptera Inc. All rights reserved.
//


#import <Foundation/Foundation.h>


@interface ApiGateway : NSObject

- (void)createObjectWithType:(NSString *)objectType
                  properties:(NSDictionary *)properties
                  completion:(void (^)(NSError *))completion;

@end
