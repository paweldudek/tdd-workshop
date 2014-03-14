#import "ShoppingBasketEditor.h"
#import "Product.h"
#import "ShoppingBasket.h"


SPEC_BEGIN(ShoppingBasketEditorSpec)

    describe(@"ShoppingBasketEditor", ^{
        __block ShoppingBasketEditor *shoppingBasketEditorSUT;

        beforeEach(^{
            shoppingBasketEditorSUT = [ShoppingBasketEditor new];
        });

        describe(@"adding product", ^{
            __block ShoppingBasket *shoppingBasket;

            beforeEach(^{
                shoppingBasket = [ShoppingBasket new];
            });

            context(@"to empty products list", ^{
                it(@"should add it to the products list", ^{
                    Product *product = [Product new];

                    [shoppingBasketEditorSUT addProduct:product toShoppingBasket:shoppingBasket];

                    expect(shoppingBasket.products.count).to.equal(1);
                    expect(shoppingBasket.products[0]).to.equal(product);
                });
            });

            context(@"to populated products list", ^{
                __block Product *existingProduct;
                beforeEach(^{
                    existingProduct = [Product new];
                    shoppingBasket.products = [NSArray arrayWithObject:existingProduct];
                });

                it(@"should append it to the end of products list", ^{
                    Product *product = [Product new];

                    [shoppingBasketEditorSUT addProduct:product toShoppingBasket:shoppingBasket];

                    expect(shoppingBasket.products.count).to.equal(2);
                    expect(shoppingBasket.products[1]).to.equal(product);
                });
            });

            context(@"adding NIL product", ^{
                it(@"should ignore operation", ^{

                    [shoppingBasketEditorSUT addProduct:nil toShoppingBasket:shoppingBasket];

                    //Should not throw an exception.
                });
            });

        });

        describe(@"removing product", ^{
            __block ShoppingBasket *shoppingBasket;
            __block Product *product;

            beforeEach(^{
                product = [Product new];
                shoppingBasket = [ShoppingBasket new];
            });

            context(@"when product present in product list", ^{
                beforeEach(^{
                    shoppingBasket.products = @[product];
                });

                it(@"should remove it from it", ^{
                    [shoppingBasketEditorSUT removeProduct:product fromShoppingBasket:shoppingBasket];

                    expect(shoppingBasket.products).notTo.contain(product);
                });
            });

            context(@"when product NOT present in product list", ^{
                __block Product *otherProduct;
                beforeEach(^{
                    otherProduct = [Product new];
                    shoppingBasket.products = @[otherProduct];
                });

                it(@"should not remove other products", ^{
                    [shoppingBasketEditorSUT removeProduct:product fromShoppingBasket:shoppingBasket];

                    expect(shoppingBasket.products).contain(otherProduct);
                });
            });
        });
    });

SPEC_END
