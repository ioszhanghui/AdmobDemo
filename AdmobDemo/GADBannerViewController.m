//
//  GADBannerViewController.m
//  AdmobDemo
//
//  Created by zhph on 2018/5/11.
//  Copyright © 2018年 正和普惠. All rights reserved.
//

#import "GADBannerViewController.h"
#import "GoogleMobileAds/GADBannerView.h"
#import "GoogleMobileAds/GADInterstitialDelegate.h"

@interface GADBannerViewController ()<GADBannerViewDelegate>

/*广告条*/
@property(nonatomic,strong)GADBannerView * bannerView;

@end

@implementation GADBannerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor  =[UIColor whiteColor];
    
    
    self.bannerView = [[GADBannerView alloc] initWithAdSize:kGADAdSizeBanner] ;
    /*adUnitID 是创建广告单元时，对应的广告单元ID*/
    self.bannerView.adUnitID = @"ca-app-pub-3940256099942544/2934735716";
    self.bannerView.delegate = self;
    [self.bannerView setRootViewController:self];
    [self.view addSubview:self.bannerView];
    [self.bannerView loadRequest: [GADRequest request]];
    //位置设置
    self.bannerView.center =self.view.center;
}

/*广告加载成功*/
- (void)adViewDidReceiveAd:(GADBannerView *)adView {
    NSLog(@"Received ad successfully");
}

/*广告加载失败*/
- (void)adView:(GADBannerView *)view didFailToReceiveAdWithError:(GADRequestError *)error {
    NSLog(@"Failed to receive ad with error: %@", [error localizedFailureReason]);
}

@end
