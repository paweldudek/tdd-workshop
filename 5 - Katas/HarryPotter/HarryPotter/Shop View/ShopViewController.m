/*
 * Copyright 2014 Taptera Inc. All rights reserved.
 */


#import "ShopViewController.h"


@implementation ShopViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(didTapInView:)]];
}

- (void)didTapInView:(UITapGestureRecognizer *)gestureRecognizer {
    for (UIView *subview in self.view.subviews) {
        if ([subview isKindOfClass:[UITextField class]]) {
            UITextField *textField = (UITextField *) subview;
            [textField resignFirstResponder];
        }
    }
}

- (IBAction)calculateCartValue {

}

@end
