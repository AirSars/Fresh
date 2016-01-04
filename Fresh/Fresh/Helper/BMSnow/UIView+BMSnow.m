//
//  BMSnow.m
//  CMCCMall
//
//  Created by NADA_BM on 15/10/29.
//  Copyright © 2015年 cmcc. All rights reserved.
//

#import "UIView+BMSnow.h"
#import <objc/runtime.h>

static void *kSnowLayerKey=@"snowLayerKey";
@implementation UIView (BMSnow)

-(void)addBackGroundWithSnow
{
    CAEmitterLayer *snowEmitter = [CAEmitterLayer layer];
    snowEmitter.emitterPosition = CGPointMake(self.bounds.size.width / 2.0, -30);
    snowEmitter.emitterSize		= CGSizeMake(self.bounds.size.width * 2.0, 0.0);;
    snowEmitter.emitterMode		= kCAEmitterLayerOutline;
    snowEmitter.emitterShape	= kCAEmitterLayerLine;
    
    CAEmitterCell *snowflake = [CAEmitterCell emitterCell];
    
    //========================可自定义区域========================//
    snowflake.birthRate		= 1.0;
    snowflake.lifetime		= 120.0;
    
    snowflake.velocity		= -10;
    snowflake.velocityRange = 10;
    snowflake.yAcceleration = 2;
    snowflake.emissionRange = 0.5 * M_PI;
    snowflake.spinRange		= 0.25 * M_PI;
    
    snowflake.contents		= (id) [[UIImage imageNamed:@"DazFlake"] CGImage];
    snowflake.color			= [[UIColor colorWithRed:0.600 green:0.658 blue:0.743 alpha:1.000] CGColor];
    
    snowEmitter.shadowOpacity = 1.0;
    snowEmitter.shadowRadius  = 0.0;
    snowEmitter.shadowOffset  = CGSizeMake(0.0, 1.0);
    snowEmitter.shadowColor   = [[UIColor whiteColor] CGColor];
    //========================================================================//
    
    
    snowEmitter.emitterCells = [NSArray arrayWithObject:snowflake];
    [self.layer insertSublayer:snowEmitter atIndex:0];
    objc_setAssociatedObject(self, kSnowLayerKey, snowEmitter, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

-(void)removeBackgroundWithSnow
{
    CAEmitterLayer *snowEmitter=objc_getAssociatedObject(self, kSnowLayerKey);
    if (snowEmitter) {
        [snowEmitter removeFromSuperlayer];
    }
}

@end
