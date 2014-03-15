//
// Copyright 2014 Taptera Inc. All rights reserved.
//


#import "Product.h"


@implementation Product

- (id)initWithName:(NSString *)name value:(NSNumber *)value {
    self = [super init];
    if (self) {
        self.name = name;
        self.value = value;
    }
    return self;
}

@end
