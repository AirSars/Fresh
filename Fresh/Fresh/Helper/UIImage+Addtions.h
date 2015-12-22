//
//  UIImage+Addtions.h
//  SunFlower
//
//  Created by Pill.Gong on 5/4/15.
//  Copyright (c) 2015 Pill.Gong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (iSunFlower)

+ (UIImage *)getImageFromView:(UIView *)orgView;
+ (UIImage *)scale:(UIImage *)image toSize:(CGSize)size;
+ (UIImage *)fixOrientation:(UIImage *)aImage;

+ (UIImage *)imageWithContentFileName:(NSString *)imageName;

//部分拉伸图片方法（ios6以上支持）
+ (UIImage *)resizableImageName:(NSString *)imgName WithCapInsets:(UIEdgeInsets)capInsets;

+ (UIImage *)imageWithColor:(UIColor *)color size:(CGSize)size;
@end
