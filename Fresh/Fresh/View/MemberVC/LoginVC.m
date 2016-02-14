//
//  LoginVC.m
//  Fresh
//
//  Created by NADA_BM on 15/12/24.
//  Copyright © 2015年 NADA_BM. All rights reserved.
//

#import "LoginVC.h"

@interface LoginVC ()

@end

@implementation LoginVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    [self setupUI];
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    self.navigationController.navigationBarHidden=YES;
}

-(void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    self.navigationController.navigationBarHidden=NO;
}

-(void)setupUI
{
    NSMutableAttributedString *str = [[NSMutableAttributedString alloc] initWithString:@"Forgot Password?"];
    NSRange strRange = {0,[str length]};
    [str addAttribute:NSUnderlineStyleAttributeName value:[NSNumber numberWithInteger:NSUnderlineStyleSingle] range:strRange];
    [str addAttribute:NSForegroundColorAttributeName value:[UIColor whiteColor] range:strRange];
    [_forgetPDBtn setAttributedTitle:str forState:UIControlStateNormal];

}

#pragma mark - ButtonAction
-(void)buttonAction:(id)sender
{
    UIButton *btn=sender;
    switch (btn.tag) {
        case 0://退出
        {
            [self.navigationController popViewControllerAnimated:YES];
        }
            break;
        case 1://普通登陆
        {
            _myPageVC.isLogin=1;
            [self.navigationController popViewControllerAnimated:YES];
        }
        default:
            break;
    }
}


@end
