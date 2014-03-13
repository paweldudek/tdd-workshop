//  
//  Copyright (c) 2014 ${ORGANIZATIONNAME} All rights reserved.
//  


#import <Cedar-iOS/Cedar-iOS.h>
#import "Magic8BallViewController.h"
#import "Magic8BallView.h"
#import "AnswerGenerator.h"
#import "NotSoRandomAnswerGenerator.h"

@interface Magic8BallViewControllerSpec : CDRSpec
@end

@implementation Magic8BallViewControllerSpec
- (void)declareBehaviors {
    describe(@"Magic8BallViewController", ^{

        __block Magic8BallViewController *viewController;

        beforeEach(^{
            viewController = [Magic8BallViewController new];
        });

        describe(@"once view is loaded", ^{

            beforeEach(^{
                [viewController loadView];
            });

            it(@"should have black background", ^{
                expect(viewController.view.backgroundColor).to.equal([UIColor blackColor]);

            });

            it(@"should have custom view set", ^{
                expect(viewController.view).to.beKindOf([Magic8BallView class]);
            });

            it(@"should display question", ^{
                Magic8BallView *magic8BallView = (Magic8BallView *) viewController.view;
                UILabel *label = magic8BallView.label;
                expect(label.text).to.equal(NSLocalizedString(@"Ask me a question...", @"Ask me a question..."));
            });
        });


        describe(@"answer generator", ^{

            it(@"should bet set", ^{
                AnswerGenerator *answerGenerator = viewController.answerGenerator;
                expect(answerGenerator).notTo.beNil();
            });
        });


        describe(@"device is shook", ^{

            __block NotSoRandomAnswerGenerator *notSoRandomAnswerGenerator;

            beforeEach(^{
                [viewController loadView];
                notSoRandomAnswerGenerator = [NotSoRandomAnswerGenerator new];
                notSoRandomAnswerGenerator.answerToGenerate = @"Fake answer";
                viewController.answerGenerator = notSoRandomAnswerGenerator;
            });

            subjectAction(^{
               [viewController motionEnded:UIEventSubtypeMotionShake withEvent:nil];
            });

            it(@"should display answer from generator", ^{
                Magic8BallView *magic8BallView = (Magic8BallView *) viewController.view;
                expect(magic8BallView.label.text).to.equal(notSoRandomAnswerGenerator.answerToGenerate);
            });

        });

    });
}
@end