//
// Copyright 2014 Taptera Inc. All rights reserved.
//


#import "ShoppingOrderer.h"
#import "ShoppingBasket.h"
#import "ApiGateway.h"

NSString *const kShoppingOrdererOrderObjectType = @"Order";

@interface ShoppingOrderer ()
@property(nonatomic, strong) ApiGateway *gateway;
@end

@implementation ShoppingOrderer

- (id)initWithApiGateway:(ApiGateway *)gateway {
    self = [super init];
    if (self) {
        self.gateway = gateway;
    }
    return self;
}

- (void)requestOrderForShoppingBasket:(ShoppingBasket *)shoppingBasket
                           completion:(void (^)(BOOL))completion {
    [self.gateway createObjectWithType:kShoppingOrdererOrderObjectType
                            properties:nil
                            completion:^(NSError *error) {
                                BOOL success = error == nil;
                                completion(success);
                            }];
}

@end
