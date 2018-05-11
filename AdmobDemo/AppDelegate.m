//
//  AppDelegate.m
//  AdmobDemo
//
//  Created by zhph on 2018/5/11.
//  Copyright © 2018年 正和普惠. All rights reserved.
//

#import "AppDelegate.h"
#import "GoogleMobileAds/GADMobileAds.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
        // Initialize the Google Mobile Ads SDK.
    
    /*ApplicationID 是创建应用时所得*/
     [GADMobileAds configureWithApplicationID:@"ca-app-pub-3329749237562404~5910686551"];
    
    return YES;
}


@end
