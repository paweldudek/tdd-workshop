//
// Copyright 2014 Taptera Inc. All rights reserved.
//


#import "ShoppingBasketEditor.h"
#import "Product.h"
#import "ShoppingBasket.h"


@implementation ShoppingBasketEditor

- (void)addProduct:(Product *)product toShoppingBasket:(ShoppingBasket *)shoppingBasket {
    if (product == nil) {
        return;
    }
    if (shoppingBasket.products == nil) {
        shoppingBasket.products = @[];
    }

    shoppingBasket.products = [shoppingBasket.products arrayByAddingObject:product];
}

- (void)removeProduct:(Product *)product fromShoppingBasket:(ShoppingBasket *)shoppingBasket {
    if ([shoppingBasket.products containsObject:product]) {
        NSMutableArray *mutableProducts = [shoppingBasket.products mutableCopy];
        [mutableProducts removeObject:product];
        shoppingBasket.products = [NSArray arrayWithArray:mutableProducts];
    }
}

@end
