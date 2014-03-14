//
// Copyright 2014 Taptera Inc. All rights reserved.
//


#import <Foundation/Foundation.h>


@interface Product : NSObject

@property(nonatomic, copy) NSString *name;

@property(nonatomic, strong) NSNumber *value;


- (id)initWithName:(NSString *)name value:(NSNumber *)value;

@end
