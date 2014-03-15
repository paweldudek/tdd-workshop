#import "NSString+FirstTwoWordsSentenceCapitalizer.h"

#define EXP_SHORTHAND
#import "Expecta.h"

#define HC_SHORTHAND
#import <OCHamcrest/OCHamcrest.h>

#define MOCKITO_SHORTHAND
#import "OCMockito.h"

SPEC_BEGIN(NSStringFirstWordSentenceCapitalizerSpec)

describe(@"NSString+FirstTwoWordsSentenceCapitalizer", ^{

    context(@"when the string has only one word", ^{
        __block NSString *sentence;

        beforeEach(^{
            sentence = [@"fixture" stringByCapitalizingFirstTwoWords];
        });

        it(@"should return string with capitalized first two words", ^{
            expect(sentence).to.equal(@"Fixture Sentence text");
        });
    });

    context(@"when the string has three words", ^{

        __block NSString *sentence;

        beforeEach(^{
            sentence = [@"fixture sentence text" stringByCapitalizingFirstTwoWords];
        });

        afterEach(^{
            sentence = nil;
        });

        it(@"should return string with capitalized first two words", ^{
            expect(sentence).to.equal(@"Fixture Sentence text");
        });
    });
});

SPEC_END
