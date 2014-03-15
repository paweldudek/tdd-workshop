//
// Copyright 2014 Taptera Inc. All rights reserved.
//


#import "BalanceCalculator.h"
#import "ShoppingBasket.h"
#import "Product.h"


@implementation BalanceCalculator

- (NSNumber *)calculateNetBalanceForShoppingBasket:(ShoppingBasket *)basket {
    double netBalance = 0;
    for (Product *product in basket.products) {
        netBalance += [product.value doubleValue];
    }
    return @(netBalance);
}

- (NSNumber *)calculateTaxForShoppingBasket:(ShoppingBasket *)basket withTaxRate:(NSNumber *)taxRate {
    NSNumber *netBalance = [self calculateNetBalanceForShoppingBasket:basket];
    return @([netBalance doubleValue] * [taxRate doubleValue]);
}

@end
