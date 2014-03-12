/*
 * Copyright 2014 Taptera Inc. All rights reserved.
 */


#import <Foundation/Foundation.h>


@interface ShopViewController : UIViewController

@property(nonatomic, retain) IBOutlet UITextField *philosopherCount;
@property(nonatomic, retain) IBOutlet UITextField *chamberCount;
@property(nonatomic, retain) IBOutlet UITextField *prisonerCount;
@property(nonatomic, retain) IBOutlet UITextField *gobletCount;
@property(nonatomic, retain) IBOutlet UITextField *phoenixCount;

@property(nonatomic, retain) IBOutlet UILabel *total;

-(IBAction)calculateCartValue;

@end
