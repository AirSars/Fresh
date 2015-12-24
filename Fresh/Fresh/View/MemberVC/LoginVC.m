//
//  LoginVC.m
//  Fresh
//
//  Created by NADA_BM on 15/12/24.
//  Copyright © 2015年 NADA_BM. All rights reserved.
//

#import "LoginVC.h"

@interface LoginVC ()<RotationCircleDelegate>

@end

@implementation LoginVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [self setupUI];
}

-(void)setupUI
{
    _loginBtn.rotationDelegate = self;
}

#pragma mark - btnDelegate
-(void)onClickRotationButton:(RotationButton *)rButton ImageView:(UIImage *)rotationImage
{
    [rButton showCircleRotation];
}

@end
