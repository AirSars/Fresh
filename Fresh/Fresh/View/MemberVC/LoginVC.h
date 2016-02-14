//
//  LoginVC.h
//  Fresh
//
//  Created by NADA_BM on 15/12/24.
//  Copyright © 2015年 NADA_BM. All rights reserved.
//
#import <UIKit/UIKit.h>
#import "MyPageVC.h"

@interface LoginVC : UIViewController

@property (weak,nonatomic) IBOutlet UIButton *forgetPDBtn;
@property (weak,nonatomic) MyPageVC *myPageVC;

-(IBAction)buttonAction:(id)sender;

@end
