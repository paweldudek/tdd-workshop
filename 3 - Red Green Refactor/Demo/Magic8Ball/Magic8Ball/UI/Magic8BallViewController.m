//  
//  Copyright (c) 2014 Aleksander Zubala All rights reserved.
//  


#import "Magic8BallViewController.h"
#import "Magic8BallView.h"
#import "AnswerGenerator.h"


@implementation Magic8BallViewController

#pragma mark - Object life cycle

- (id)init {
    self = [super init];
    if (self) {
        self.answerGenerator = [AnswerGenerator new];
    }
    return self;
}

#pragma mark - View life cycle

- (void)loadView {
    self.view = [Magic8BallView new];

}

#pragma mark - UIResponder override

- (void)motionEnded:(UIEventSubtype)motion withEvent:(UIEvent *)event {
    if (motion == UIEventSubtypeMotionShake) {
        Magic8BallView *magic8BallView = (Magic8BallView *) self.view;
        magic8BallView.label.text = [self.answerGenerator generateAnswer];
    }
}

@end