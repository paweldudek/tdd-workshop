//
// Copyright 2014 Taptera Inc. All rights reserved.
//


#import <Foundation/Foundation.h>

@class ShoppingBasket;


@interface BalanceCalculator : NSObject

- (NSNumber *)calculateNetBalanceForShoppingBasket:(ShoppingBasket *)basket;

- (NSNumber *)calculateTaxForShoppingBasket:(ShoppingBasket *)basket withTaxRate:(NSNumber *)taxRate;

@end
