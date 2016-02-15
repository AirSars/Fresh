//
//  FGoodsDetailVC.m
//  Fresh
//
//  Created by NADA_BM on 15/12/22.
//  Copyright © 2015年 NADA_BM. All rights reserved.
//

#import "FGoodsDetailVC.h"
#import "UIView+BMLine.h"
#import "SDCycleScrollView.h"
#import "UIView+Addtions.h"
#import "UIImage+Addtions.h"

@interface FGoodsDetailVC ()

@end

@implementation FGoodsDetailVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.title=@"Fruits";
    [self setupUI];
}

-(void)setupUI
{
    //右边收藏
    UIImage *searchimage=[UIImage imageNamed:@"love"];
    UIBarButtonItem *barbtn=[[UIBarButtonItem alloc] initWithImage:nil style:UIBarButtonItemStyleDone target:self action:@selector(favourite)];
    barbtn.image=searchimage;
    self.navigationItem.rightBarButtonItem=barbtn;
    //左边按钮
    UIView *view=[[UIView alloc]initWithFrame:CGRectMake(-30, 0, 100, 64)];
    UIButton *back = [UIButton buttonWithType:UIButtonTypeCustom];
    [back setImage:[UIImage imageNamed:@"back"] forState:UIControlStateNormal];
    [back addTarget:self action:@selector(backAction) forControlEvents:UIControlEventTouchUpInside];
    back.frame=CGRectMake(0, 0, 50, 64);
    UIButton *backToHome = [UIButton buttonWithType:UIButtonTypeCustom];
    [backToHome setImage:[UIImage imageNamed:@"detail-home"] forState:UIControlStateNormal];
    [backToHome addTarget:self action:@selector(backToHomeAction) forControlEvents:UIControlEventTouchUpInside];
    backToHome.frame=CGRectMake(50, 0, 50, 64);
    [view addSubview:back];
    [view addSubview:backToHome];
    UIBarButtonItem *releaseButtonItem = [[UIBarButtonItem alloc] initWithCustomView:view];
    self.navigationItem.leftBarButtonItem = releaseButtonItem;
}

-(void)backAction
{
    [self.navigationController popViewControllerAnimated:YES];
}

-(void)backToHomeAction
{
    
}

-(void)favourite
{
    
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    [_detailView addLineWithType:0 color:nil position:BMLinePostionCustomBottom];
    [_bottomView addLineWithType:0 color:nil position:BMLinePostionCustomTop];
    [self setADImage];
}

-(void)setADImage
{
    SDCycleScrollView *view=[SDCycleScrollView cycleScrollViewWithFrame:CGRectMake(0, 0, _adView.width, _adView.height) imagesGroup:@[[UIImage imageWithContentFileName:@"05300439213381133523747871500"]]];
    view.pageControlAliment = SDCycleScrollViewPageContolAlimentRight;
    view.dotColor = [UIColor whiteColor]; // 自定义分页控件小圆标颜色
    //    view.placeholderImage = [UIImage imageNamed:@"placeholder"];
    [_adView addSubview:view];
}

#pragma mark - ButtonAction
-(void)buttonAction:(id)sender
{
    UIButton *btn=sender;
    switch (btn.tag) {
        case 0:
        {
            
        }
            break;
        case 1://购买按钮
        {
            
        }
            break;
        case 2://加入购物车
        {
            
        }
            break;
            
        default:
            break;
    }
}

@end
