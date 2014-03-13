#import "Specs.h"

SPEC_BEGIN(ExampleSpec)

describe(@"Example specs on NSString", ^{

    it(@"lowercaseString returns a new string with everything in lower case", ^{
         expect([@"FOOBar" lowercaseString]).to.equal(@"foobara");
    });

    it(@"length returns the number of characters in the string", ^{
        expect([@"internationalization" length]).to.equal(20);
    });
    
    describe(@"isEqualToString:", ^{
        it(@"should return true if the strings are the same", ^{
            expect([@"someString" isEqualToString:@"someString"]).to.beTruthy();
        });

        it(@"should return false if the strings are not the same", ^{
            expect([@"someString" isEqualToString:@"anotherString"]).to.beFalsy();
        });
    });
    
    describe(@"NSNumbe", ^{
        
        __block NSNumber *number;
        
        describe(@"when created with the default constructor", ^{
            beforeEach(^{
                number = [[NSNumber alloc] init];
            });
            
            it(@"have 0 as contained int value", ^{
                expect([number integerValue]).to.equal(0);
            });
        });
        
        context(@"when constructed with an int", ^{
            beforeEach(^{
                number = [[NSNumber alloc] initWithInt:42];
            });
            
            it(@"have 42 as contained int value", ^{
                expect([number integerValue]).to.equal(42);
            });
        });
    });
});

SPEC_END

