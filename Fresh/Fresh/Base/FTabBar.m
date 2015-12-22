//
//  FTabBar.m
//  Fresh
//
//  Created by NADA_BM on 15/12/22.
//  Copyright © 2015年 NADA_BM. All rights reserved.
//

#import "FTabBar.h"
#import "FirstPageVC.h"
#import "CategoryVC.h"
#import "ShoppingCarVC.h"
#import "HelpVC.h"
#import "MemberVC.h"
#import "UIImage+Addtions.h"
#import "UIView+BMLine.h"

@interface FTabBar ()

@end

@implementation FTabBar

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self addRootController];
    UIView * mView=[[UIView alloc] initWithFrame:CGRectMake(0, 0, KFrameWidth, 48)];//这是整个tabbar的颜色
    [mView addLineWithType:BMLineTypeCustomDefault color:nil position:BMLinePostionCustomTop];
    [mView setBackgroundColor:[UIColor whiteColor]];
    [self.tabBar insertSubview:mView atIndex:0];
}

-(void)addRootController
{
    FirstPageVC *vc1=[[FirstPageVC alloc]init];
    vc1.title=@"首页";
    UINavigationController *nav1=[[UINavigationController alloc]initWithRootViewController:vc1];
    nav1.tabBarItem.title=@"首页";
    nav1.tabBarItem.image=[UIImage imageWithContentFileName:@"1.png"];
    [self customNavigationBar:nav1];
    
    CategoryVC *vc2=[[CategoryVC alloc]init];
    vc2.title=@"分类";
    UINavigationController *nav2=[[UINavigationController alloc]initWithRootViewController:vc2];
    nav2.tabBarItem.title=@"分类";
    nav2.tabBarItem.image=[UIImage imageWithContentFileName:@"2.png"];
    [self customNavigationBar:nav2];
    
    ShoppingCarVC *vc3=[[ShoppingCarVC alloc]init];
    vc3.title=@"购物车";
    UINavigationController *nav3=[[UINavigationController alloc]initWithRootViewController:vc3];
    nav3.tabBarItem.title=@"购物车";
    nav3.tabBarItem.badgeValue=@"10";
    nav3.tabBarItem.image=[UIImage imageWithContentFileName:@"3.png"];
    [self customNavigationBar:nav3];
    
    HelpVC *vc4=[[HelpVC alloc]init];
    vc4.title=@"帮助";
    UINavigationController *nav4=[[UINavigationController alloc]initWithRootViewController:vc4];
    nav4.tabBarItem.title=@"帮助";
    nav4.tabBarItem.image=[UIImage imageWithContentFileName:@"4.png"];
    [self customNavigationBar:nav4];
    
    MemberVC *vc5=[[MemberVC alloc]init];
    vc5.title=@"我的";
    UINavigationController *nav5=[[UINavigationController alloc]initWithRootViewController:vc5];
    nav5.tabBarItem.title=@"我的";
    nav5.tabBarItem.image=[UIImage imageWithContentFileName:@"5.png"];
    [self customNavigationBar:nav5];
    
    self.viewControllers=@[nav1,nav2,nav3,nav4,nav5];
}

- (void)customNavigationBar:(UIViewController *)controller {
//    [controller.navigationController.navigationBar setTintColor:RGBACOLOR(255, 41, 97, 1.0)];
}

@end
