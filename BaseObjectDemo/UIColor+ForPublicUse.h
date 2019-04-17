//
//  UIColor+ForPublicUse.h
//  BaseObjectDemo
//
//  Created by Stephen Hu on 2019/4/12.
//  Copyright © 2019 idress. All rights reserved.
//  在项目中的固定颜色值，方便取用

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIColor (ForPublicUse)
+ (UIColor *)backgroundColor;
+ (UIColor *)lineColor;
@end

NS_ASSUME_NONNULL_END
