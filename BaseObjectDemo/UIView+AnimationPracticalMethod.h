//
//  UIView+AnimationPracticalMethod.h
//  BaseObjectDemo
//
//  Created by Stephen Hu on 2019/4/19.
//  Copyright © 2019 idress. All rights reserved.
//  这里可以添加一些实用的动画方法，可以随时添加新的自己觉得常用的view动画

#import <UIKit/UIKit.h>

@interface UIView (AnimationPracticalMethod)

/**
 改变view的alpha

 @param alpha 设置的alpha
 @param duration 动画时长
 @param animated 是否有动画
 */
- (void)alpha:(CGFloat)alpha duration:(NSTimeInterval)duration animated:(BOOL)animated;
@end

