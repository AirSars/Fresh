//
//  FirstPageVC.m
//  Fresh
//
//  Created by NADA_BM on 15/12/22.
//  Copyright © 2015年 NADA_BM. All rights reserved.
//

#import "FirstPageVC.h"
#import "SDCycleScrollView.h"
#import "UIImage+Addtions.h"
#import "UIView+Addtions.h"
#import "FGoodsDetailVC.h"

@interface FirstPageVC ()<SDCycleScrollViewDelegate>

@end

@implementation FirstPageVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self.tabBarController.tabBar setHidden:NO];
}

-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    [self setupUI];
}

-(void)setupUI
{
    SDCycleScrollView *view=[SDCycleScrollView cycleScrollViewWithFrame:CGRectMake(0, 0, _adView.width, _adView.height) imagesGroup:@[[UIImage imageWithContentFileName:@"school_banner.jpg"],[UIImage imageWithContentFileName:@"school_banner.jpg"],[UIImage imageWithContentFileName:@"school_banner.jpg"],[UIImage imageWithContentFileName:@"school_banner.jpg"]]];
    view.pageControlAliment = SDCycleScrollViewPageContolAlimentRight;
    view.delegate = self;
    view.dotColor = [UIColor whiteColor]; // 自定义分页控件小圆标颜色
//    view.placeholderImage = [UIImage imageNamed:@"placeholder"];
    [_adView addSubview:view];
}

#pragma mark - SDCDelegate
-(void)cycleScrollView:(SDCycleScrollView *)cycleScrollView didSelectItemAtIndex:(NSInteger)index
{
    FGoodsDetailVC *vc=[[FGoodsDetailVC alloc]init];
    [self.navigationController pushViewController:vc animated:YES];
}


@end
