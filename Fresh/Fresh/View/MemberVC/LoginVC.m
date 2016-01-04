//
//  LoginVC.m
//  Fresh
//
//  Created by NADA_BM on 15/12/24.
//  Copyright © 2015年 NADA_BM. All rights reserved.
//

#import "LoginVC.h"
#import "UIView+BMSnow.h"

@interface LoginVC ()

@end

@implementation LoginVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    [self setupUI];
}

-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    [self.view addBackGroundWithSnow];
}

-(void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    [self.view removeBackgroundWithSnow];
}

-(void)setupUI
{
    

}

#pragma mark - ButtonAction
-(void)buttonAction:(id)sender
{
    UIButton *btn=sender;
    switch (btn.tag) {
        case 0://退出
        {
            [self dismissViewControllerAnimated:YES completion:^{
                
            }];
        }
            break;
            
        default:
            break;
    }
}


@end
