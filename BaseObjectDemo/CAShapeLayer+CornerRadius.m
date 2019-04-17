//
//  CAShapeLayer+CornerRadius.m
//  UIImageRadius
//
//  Created by Stephen Hu on 2019/4/12.
//  Copyright © 2019 idress. All rights reserved.
//

#import "CAShapeLayer+CornerRadius.h"

@implementation CAShapeLayer (CornerRadius)

+ (CAShapeLayer *)shapeLayerWithFrame:(CGRect)frame corners:(UIRectCorner)corners radius:(CGFloat)radius {

    CGRect        bounds     = CGRectMake(0, 0, frame.size.width, frame.size.height);
    UIBezierPath *path       = [UIBezierPath bezierPathWithRoundedRect:bounds byRoundingCorners:corners cornerRadii:CGSizeMake(radius, radius)];
    CAShapeLayer *shapeLayer = [CAShapeLayer layer];
    shapeLayer.frame         = frame;
    shapeLayer.path          = path.CGPath;
    
    return shapeLayer;
}

@end
