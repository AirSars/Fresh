//
//  Defines.h
//  Fresh
//
//  Created by NADA_BM on 15/12/22.
//  Copyright © 2015年 NADA_BM. All rights reserved.
//

#ifndef Defines_h
#define Defines_h

//判断ios7
#define IOS7 ([[[UIDevice currentDevice] systemVersion] floatValue] >= 7.0)

//当前屏幕大小
#define SCREEN_SIZE   [[UIScreen mainScreen] bounds].size
#define KFrameWidth self.view.frame.size.width
#define KFrameHeight self.view.frame.size.height

//RGB取色值
#define RGBACOLOR(r,g,b,a) [UIColor colorWithRed:(r)/255.0f green:(g)/255.0f blue:(b)/255.0f alpha:(a)]

#define GREEN_COLOR [UIColor colorWithRed:103/255.0 green:187/255.0 blue:47/255.0 alpha:1]

#endif /* Defines_h */
