//
//  ZJTHelpler.m
//  zjtSinaWeiboClient
//
//  Created by Zhu Jianting on 12-3-8.
//  Copyright (c) 2012年 WS. All rights reserved.
//

#import "ZJTHelpler.h"


@implementation ZJTHelpler

+ (CAAnimation *)animationMoveFrom:(CGPoint) from To:(CGPoint) to Duration:(CGFloat) duration BeginTime:(CGFloat)beginTime //位置变化动画
{
	CAKeyframeAnimation *bounceAnimation = [CAKeyframeAnimation animationWithKeyPath:@"position"];	
	CGFloat animationDuration = duration;
	CGMutablePathRef thePath = CGPathCreateMutable();
	CGPathMoveToPoint(thePath, NULL, from.x, from.y);
	CGPathAddLineToPoint(thePath, NULL, to.x, to.y);
	bounceAnimation.path = thePath;
	bounceAnimation.duration = animationDuration;
    bounceAnimation.beginTime = beginTime;
	bounceAnimation.repeatCount=0;
	bounceAnimation.removedOnCompletion=NO;
	bounceAnimation.timingFunction=[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear];
	CGPathRelease(thePath);
	
	return bounceAnimation;
}

+ (CAAnimation *)animationWithScaleFrom:(CGFloat) from To:(CGFloat) to Duration:(CGFloat) duration BeginTime:(CGFloat)beginTime //大小变化动画
{    
    CABasicAnimation *theAnimation;    
    theAnimation=[CABasicAnimation animationWithKeyPath:@"transform.scale"];    
    theAnimation.duration=duration; 
    theAnimation.beginTime = beginTime;    
    theAnimation.repeatCount=0;    
    theAnimation.autoreverses=NO;    
    theAnimation.fromValue=[NSNumber numberWithFloat:from];    
    theAnimation.toValue=[NSNumber numberWithFloat:to];
    
    return theAnimation;
}



+ (CAAnimation *)animationWithOpacityFrom:(CGFloat) from To:(CGFloat) to Duration:(CGFloat) duration BeginTime:(CGFloat)beginTime //透明度变化动画
{    
    CABasicAnimation *theAnimation;    
    theAnimation=[CABasicAnimation animationWithKeyPath:@"opacity"];    
    theAnimation.duration=duration; 
    theAnimation.beginTime = beginTime;    
    theAnimation.repeatCount=0;    
    theAnimation.autoreverses=NO;    
    theAnimation.fromValue=[NSNumber numberWithFloat:from];    
    theAnimation.toValue=[NSNumber numberWithFloat:to];
    
    return theAnimation;
}

@end