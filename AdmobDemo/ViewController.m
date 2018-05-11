//
//  ViewController.m
//  AdmobDemo
//
//  Created by zhph on 2018/5/11.
//  Copyright © 2018年 正和普惠. All rights reserved.
//

#import "ViewController.h"
#import "GoogleMobileAds/GADInterstitial.h"
#import "GoogleMobileAds/GADInterstitialDelegate.h"


#import "GADBannerViewController.h"

@interface ViewController ()<GADInterstitialDelegate>

@property(nonatomic, retain) GADInterstitial *interstitial;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.interstitial = [[GADInterstitial alloc] initWithAdUnitID:@"ca-app-pub-3329749237562404/1828095025"];
    self.interstitial.delegate = self;
    [self.interstitial loadRequest: [self createRequest]];
}

- (GADRequest *)createRequest {
    GADRequest *request = [GADRequest request];
    return request;
}

- (void)interstitialDidReceiveAd:(GADInterstitial *)interstitial {
    [interstitial presentFromRootViewController:self];
}
/*广告加载失败*/
- (void)interstitial:(GADInterstitial *)ad didFailToReceiveAdWithError:(GADRequestError *)error {
    NSLog(@"interstitial:didFailToReceiveAdWithError: %@", [error localizedDescription]);
}

/*加载广告完成*/
/// Tells the delegate that an interstitial will be presented.
- (void)interstitialWillPresentScreen:(GADInterstitial *)ad {
    NSLog(@"interstitialWillPresentScreen");
}

/**点击广告是否进入详情页**/
- (void)interstitialWillLeaveApplication:(GADInterstitial *)ad {
    NSLog(@"interstitialWillLeaveApplication");
}
/*广告将要消失 点击叉号*/
- (void)interstitialDidDismissScreen:(GADInterstitial *)ad {
    NSLog(@"interstitialDidDismissScreen");
}

/*广告已经消失*/
- (void)interstitialWillDismissScreen:(GADInterstitial *)ad {
    NSLog(@"interstitialWillDismissScreen");
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [super touchesBegan:touches withEvent:event];
    
    GADBannerViewController * VC = [[GADBannerViewController alloc]init];
    [self presentViewController:VC animated:YES completion:nil];

}

@end
