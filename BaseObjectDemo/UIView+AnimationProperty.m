//
//  UIView+AnimationProperty.m
//  BaseObjectDemo
//
//  Created by Stephen Hu on 2019/4/18.
//  Copyright © 2019 idress. All rights reserved.
//

#import "UIView+AnimationProperty.h"
#import <objc/runtime.h>

static char *_recognizerScale = "_recognizerScale";
static char *_recognizerAngle = "_recognizerAngle";
@implementation UIView (AnimationProperty)

#pragma mark - Scale.

- (void)setScale:(CGFloat)scale {
    
    objc_setAssociatedObject(self, _recognizerScale, @(scale), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    self.transform = CGAffineTransformMakeScale(scale, scale);
}

- (CGFloat)scale {
    
    NSNumber *scaleValue = objc_getAssociatedObject(self, _recognizerScale);
    return scaleValue.floatValue;
}

#pragma mark - Angle.

- (void)setAngle:(CGFloat)angle {
    
    objc_setAssociatedObject(self, _recognizerAngle, @(angle), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    self.transform = CGAffineTransformMakeRotation(angle);
}

- (CGFloat)angle {
    
    NSNumber *angleValue = objc_getAssociatedObject(self, _recognizerAngle);
    return angleValue.floatValue;
}

@end
