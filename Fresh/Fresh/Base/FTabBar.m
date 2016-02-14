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
#import "UIImage+Addtions.h"
#import "UIView+BMLine.h"
#import "MyPageVC.h"

@interface FTabBar ()

@end

@implementation FTabBar

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self addRootController];
    UIView * mView=[[UIView alloc] initWithFrame:CGRectMake(0, 0, KFrameWidth, 48)];//这是整个tabbar的颜色
    self.tabBar.tintColor = GREEN_COLOR;
    [mView addLineWithType:BMLineTypeCustomDefault color:nil position:BMLinePostionCustomTop];
    [mView setBackgroundColor:[UIColor whiteColor]];
    [self.tabBar insertSubview:mView atIndex:0];
}

-(void)addRootController
{
    FirstPageVC *vc1=[[FirstPageVC alloc]initWithNibName:@"FirstPageVC" bundle:nil];
    vc1.title=@"Home";
    UINavigationController *nav1=[[UINavigationController alloc]initWithRootViewController:vc1];
    nav1.tabBarItem.title=@"Home";
    nav1.tabBarItem.image=[UIImage imageWithContentFileName:@"home"];
    nav1.tabBarItem.selectedImage=[UIImage imageNamed:@"homeax"];
    [self customNavigationBar:nav1];
    
    CategoryVC *vc2=[[CategoryVC alloc]initWithNibName:@"CategoryVC" bundle:nil];
    vc2.title=@"Category";
    UINavigationController *nav2=[[UINavigationController alloc]initWithRootViewController:vc2];
    nav2.tabBarItem.title=@"Category";
    nav2.tabBarItem.image=[UIImage imageWithContentFileName:@"category"];
    nav2.tabBarItem.selectedImage=[UIImage imageNamed:@"categoryax"];
    [self customNavigationBar:nav2];
    
    ShoppingCarVC *vc3=[[ShoppingCarVC alloc]initWithNibName:@"ShoppingCarVC" bundle:nil];
    vc3.title=@"My Cart";
    UINavigationController *nav3=[[UINavigationController alloc]initWithRootViewController:vc3];
    nav3.tabBarItem.title=@"My Cart";
    nav3.tabBarItem.badgeValue=@"10";
    nav3.tabBarItem.image=[UIImage imageWithContentFileName:@"my-cart"];
    nav3.tabBarItem.selectedImage=[UIImage imageNamed:@"my-cartax"];
    [self customNavigationBar:nav3];
    
    HelpVC *vc4=[[HelpVC alloc]initWithNibName:@"HelpVC" bundle:nil];
    vc4.title=@"Info";
    UINavigationController *nav4=[[UINavigationController alloc]initWithRootViewController:vc4];
    nav4.tabBarItem.title=@"Info";
    nav4.tabBarItem.image=[UIImage imageWithContentFileName:@"info"];
    nav4.tabBarItem.selectedImage=[UIImage imageNamed:@"infoax"];
    [self customNavigationBar:nav4];
    
    MyPageVC *vc5=[[MyPageVC alloc]initWithNibName:@"MyPageVC" bundle:nil];
    vc5.title=@"Fresh+";
    UINavigationController *nav5=[[UINavigationController alloc]initWithRootViewController:vc5];
    nav5.tabBarItem.title=@"My Account";
    nav5.tabBarItem.image=[UIImage imageWithContentFileName:@"my-account"];
    nav5.tabBarItem.selectedImage=[UIImage imageNamed:@"my-accountax"];
    [self customNavigationBar:nav5];
    
    self.viewControllers=@[nav1,nav2,nav3,nav4,nav5];
}

- (void)customNavigationBar:(UIViewController *)controller {
//    [controller.navigationController.navigationBar setTintColor:RGBACOLOR(255, 41, 97, 1.0)];
}

@end
