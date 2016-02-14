//
//  BasicVC.m
//  Fresh
//
//  Created by NADA_BM on 15/12/22.
//  Copyright © 2015年 NADA_BM. All rights reserved.
//

#import "BasicVC.h"

@interface BasicVC ()

@end

@implementation BasicVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //设置状态栏背景色为绿色
    UIView *statusBarView=[[UIView alloc] initWithFrame:CGRectMake(0, 0, SCREEN_SIZE.width, 20)];
    statusBarView.backgroundColor=GREEN_COLOR;
    [self.view addSubview:statusBarView];
    
    //设置导航栏颜色
    UINavigationBar *bar = [UINavigationBar appearance];
    //设置显示的颜色
    bar.barTintColor = GREEN_COLOR;
    //设置字体颜色
    bar.tintColor = [UIColor whiteColor];
    [bar setTitleTextAttributes:@{NSForegroundColorAttributeName : [UIColor whiteColor]}];
}


@end
