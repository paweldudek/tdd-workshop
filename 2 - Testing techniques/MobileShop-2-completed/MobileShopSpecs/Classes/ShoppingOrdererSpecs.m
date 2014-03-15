#import "ShoppingOrderer.h"
#import "ApiGateway.h"
#import "FakeApiGateway.h"
#import "ShoppingBasket.h"

SPEC_BEGIN(ShoppingOrdererSpec)

    describe(@"ShoppingOrderer", ^{
        __block ShoppingOrderer *shoppingOrderer;
        __block FakeApiGateway *apiGateway;
        beforeEach(^{
            apiGateway = [FakeApiGateway new];
            shoppingOrderer = [[ShoppingOrderer alloc] initWithApiGateway:(id) apiGateway];
        });

        describe(@"requesting order", ^{
            __block ShoppingBasket *basket;

            beforeEach(^{
                //Arrange
                basket = [ShoppingBasket new];
            });

            it(@"should create Order record", ^{

                //Act
                [shoppingOrderer requestOrderForShoppingBasket:basket
                                                    completion:nil];

                //Assert
                expect(apiGateway.createObjectType).to.equal(@"Order");
            });

            it(@"should callback success for completed creation", ^{
                __block BOOL isSuccess = NO;

                //Act
                [shoppingOrderer requestOrderForShoppingBasket:basket
                                                    completion:^(BOOL success) {
                                                        isSuccess = success;
                                                    }];

                //Simulate
                [apiGateway simulateSuccessResponse];

                //Assert
                expect(isSuccess).to.beTruthy();
            });

            it(@"should callback failure for failed creation", ^{
                __block BOOL isSuccess = NO;

                //Act
                [shoppingOrderer requestOrderForShoppingBasket:basket
                                                    completion:^(BOOL success) {
                                                        isSuccess = success;
                                                    }];

                //Simulate
                [apiGateway simulateFailedResponse];

                //Assert
                expect(isSuccess).to.beFalsy();
            });
        });
    });

SPEC_END
