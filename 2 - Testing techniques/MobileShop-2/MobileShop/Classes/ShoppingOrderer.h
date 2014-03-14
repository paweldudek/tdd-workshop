//
// Copyright 2014 Taptera Inc. All rights reserved.
//


#import <Foundation/Foundation.h>

@class ShoppingBasket;


@interface ShoppingOrderer : NSObject

- (void)requestOrderForShoppingBasket:(ShoppingBasket *)shoppingBasket
                           completion:(void (^)(BOOL))completion;

@end
