//  
//  Copyright (c) 2014 Aleksander Zubala All rights reserved.
//  


#import "Magic8BallView.h"


@implementation Magic8BallView

#pragma mark - Object life cycle

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor blackColor];

        self.label = [UILabel new];
        self.label.textColor = [UIColor whiteColor];
        self.label.textAlignment = NSTextAlignmentCenter;
        self.label.text = NSLocalizedString(@"Ask me a question...", @"");
        [self addSubview:self.label];
    }
    return self;
}

#pragma mark - Layouts and drawing

- (void)layoutSubviews {
    [super layoutSubviews];
    self.label.frame = self.bounds;
}

@end