//
//  UIView+ConvenientMethod.h
//  BaseObjectDemo
//
//  Created by Stephen Hu on 2019/4/19.
//  Copyright © 2019 idress. All rights reserved.
//  便利构造方法，用于快速制作一个view，可持续拓展

#import <UIKit/UIKit.h>

@interface UIView (ConvenientMethod)

/**
 *  Create Line view.
 *
 *  @param frame Frame
 *  @param color Color
 *
 *  @return Line View.
 */
+ (UIView *)lineViewWithFrame:(CGRect)frame color:(UIColor *)color;

/**
 *  Create Line view.
 *
 *  @param frame Frame
 *  @param color Color
 *  @param tag   Tag
 *
 *  @return Line View.
 */
+ (UIView *)lineViewWithFrame:(CGRect)frame color:(UIColor *)color tag:(NSInteger)tag;
@end

