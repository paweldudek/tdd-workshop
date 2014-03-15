#import "BalanceCalculator.h"
#import "ShoppingBasket.h"
#import "Product.h"


SPEC_BEGIN(BalanceCalculatorSpec)

    describe(@"BalanceCalculator", ^{
        __block BalanceCalculator *balanceCalculatorSUT;

        beforeEach(^{
            balanceCalculatorSUT = [BalanceCalculator new];
        });

        describe(@"calculating balance", ^{
            __block ShoppingBasket *shoppingBasket;

            beforeEach(^{
                shoppingBasket = [ShoppingBasket new];
            });

            context(@"when busket is empty", ^{
                it(@"should return 0 (not nil)", ^{

                    NSNumber *netBalance = [balanceCalculatorSUT calculateNetBalanceForShoppingBasket:shoppingBasket];

                    expect(netBalance).to.equal(0);
                });
            });

            context(@"when busket has products", ^{
                __block Product *product1;
                __block Product *product2;

                beforeEach(^{
                    product1 = [[Product alloc] initWithName:@"Test 1" value:@111];
                    product2 = [[Product alloc] initWithName:@"Test 1" value:@33.5];
                    shoppingBasket.products = @[product1, product2];
                });

                it(@"should sum all products values", ^{

                    NSNumber *netBalance = [balanceCalculatorSUT calculateNetBalanceForShoppingBasket:shoppingBasket];

                    expect(netBalance).to.equal(144.5);
                });
            });
        });

        describe(@"calculating tax", ^{
            __block ShoppingBasket *shoppingBasket;

            beforeEach(^{
                shoppingBasket = [ShoppingBasket new];
            });

            context(@"when busket is empty", ^{
                it(@"should return 0 (not nil)", ^{

                    NSNumber *netBalance = [balanceCalculatorSUT calculateTaxForShoppingBasket:shoppingBasket
                                                                                   withTaxRate:@.23];

                    expect(netBalance).to.equal(0);
                });
            });

            context(@"when busket has products", ^{
                __block Product *product1;
                __block Product *product2;

                beforeEach(^{
                    product1 = [[Product alloc] initWithName:@"Test 1" value:@50];
                    product2 = [[Product alloc] initWithName:@"Test 1" value:@20];
                    shoppingBasket.products = @[product1, product2];
                });

                it(@"should return 0%", ^{

                    NSNumber *netBalance = [balanceCalculatorSUT calculateTaxForShoppingBasket:shoppingBasket
                                                                                   withTaxRate:@0];

                    expect(netBalance).to.equal(0);
                });

                it(@"should return 10%", ^{

                    NSNumber *netBalance = [balanceCalculatorSUT calculateTaxForShoppingBasket:shoppingBasket
                                                                                   withTaxRate:@.10];

                    expect(netBalance).to.equal(7);
                });
            });
        });
    });

SPEC_END
