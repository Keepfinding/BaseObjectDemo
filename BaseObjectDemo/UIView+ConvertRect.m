//
//  UIView+ConvertRect.m
//  BaseObjectDemo
//
//  Created by Stephen Hu on 2019/4/19.
//  Copyright © 2019 idress. All rights reserved.
//

#import "UIView+ConvertRect.h"

@implementation UIView (ConvertRect)

- (CGPoint)frameOriginFromView:(UIView *)view {
    
    return [self convertPoint:CGPointZero toView:view];
}

- (CGRect)frameFromView:(UIView *)view {
    
    return [self convertRect:self.bounds toView:view];
}
@end
