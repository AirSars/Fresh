//
//  LaunchVC.h
//  Fresh
//
//  Created by NADA_BM on 15/12/22.
//  Copyright © 2015年 NADA_BM. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum:NSInteger
{
    NewfeatureTypeFromeSetting,     //从设置界面进入该页
    NewfeatureTypeFromeWelcom,      //第一次安装的时候进入
} NewfeatureType;

@interface LaunchVC : UIViewController

@property(nonatomic,assign)NewfeatureType newfeatureType;

@end
