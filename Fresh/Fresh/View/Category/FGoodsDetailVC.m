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
    self.title=@"商品详情";
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    [_detailView addLineWithType:0 color:nil position:BMLinePostionCustomBottom];
    [_favouriteView addLineWithType:0 color:nil position:BMLinePostionCustomLeft];
    [_bottomView addLineWithType:0 color:nil position:BMLinePostionCustomTop];
    [self setADImage];
}

-(void)setADImage
{
    SDCycleScrollView *view=[SDCycleScrollView cycleScrollViewWithFrame:CGRectMake(0, 0, _adView.width, _adView.height) imagesGroup:@[[UIImage imageWithContentFileName:@"school_banner.jpg"],[UIImage imageWithContentFileName:@"school_banner.jpg"]]];
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
