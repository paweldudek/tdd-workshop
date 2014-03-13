//
//  AppDelegate.m
//  Magic8Ball
//
//  Created by Aleksander Zubala on 13/03/14.
//  Copyright (c) 2014 Aleksander Zubala. All rights reserved.
//

#import "AppDelegate.h"
#import "Magic8BallViewController.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    self.window.rootViewController = [Magic8BallViewController new];
    [self.window makeKeyAndVisible];
    return YES;
}

@end
