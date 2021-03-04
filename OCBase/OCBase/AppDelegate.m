//
//  AppDelegate.m
//  OCBase
//
//  Created by 杜志 on 2021/2/19.
//  Copyright © 2021 duzhi. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = UIColor.whiteColor;
    [self.window makeKeyAndVisible];
    self.window.rootViewController = [ViewController new];
    
    return YES;
}


@end
