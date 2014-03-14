//
// Copyright 2014 Taptera Inc. All rights reserved.
//


#import <Foundation/Foundation.h>

@class ShoppingBasket;
@class ApiGateway;


@interface ShoppingOrderer : NSObject

- (void)requestOrderForShoppingBasket:(ShoppingBasket *)shoppingBasket
                           completion:(void (^)(BOOL))completion;

- (id)initWithApiGateway:(ApiGateway *)gateway;

@end
