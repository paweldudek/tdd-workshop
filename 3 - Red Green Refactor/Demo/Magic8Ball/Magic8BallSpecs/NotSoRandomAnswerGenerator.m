//  
//  Copyright (c) 2014 Aleksander Zubala All rights reserved.
//  


#import "NotSoRandomAnswerGenerator.h"


@implementation NotSoRandomAnswerGenerator

#pragma mark - Super override

- (NSString *)generateAnswer {
    return self.answerToGenerate;
}

@end