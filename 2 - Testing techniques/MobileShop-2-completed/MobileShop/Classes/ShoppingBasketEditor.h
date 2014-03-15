//
// Copyright 2014 Taptera Inc. All rights reserved.
//


#import <Foundation/Foundation.h>

@class Product;
@class ShoppingBasket;


@interface ShoppingBasketEditor : NSObject

- (void)addProduct:(Product *)product toShoppingBasket:(ShoppingBasket *)shoppingBasket;

- (void)removeProduct:(Product *)product fromShoppingBasket:(ShoppingBasket *)shoppingBasket;

@end
