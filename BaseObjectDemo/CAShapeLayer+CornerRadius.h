//
//  CAShapeLayer+CornerRadius.h
//  UIImageRadius
//
//  Created by Stephen Hu on 2019/4/12.
//  Copyright © 2019 idress. All rights reserved.
//  用shapelayer切圆角 可以选择切那个角

#import <QuartzCore/QuartzCore.h>
#import <UIKit/UIKit.h>

@interface CAShapeLayer (CornerRadius)

/**
 返回一个带有圆角的shapeLayer

 @param frame frame description
 @param corners 那几个角进行切圆角
 @param radius 圆角半径
 @return CAShapeLayer
 */
+ (CAShapeLayer *)shapeLayerWithFrame:(CGRect)frame corners:(UIRectCorner)corners radius:(CGFloat)radius;

@end
