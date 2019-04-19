//
//  UIView+ConvertRect.h
//  BaseObjectDemo
//
//  Created by Stephen Hu on 2019/4/19.
//  Copyright © 2019 idress. All rights reserved.
//  坐标转换

#import <UIKit/UIKit.h>

@interface UIView (ConvertRect)

/**
 以指定的view作为参考系(坐标系统中的x,y的起始值以指定的view开始计算),获取当前view相对于指定view的相对位移值
 
 @param view 指定的view
 @return 相对于指定view的point值
 */
- (CGPoint)frameOriginFromView:(UIView *)view;

/**
 以指定的view作为参考系(坐标系统中的x,y的起始值以指定的view开始计算),获取当前view相对于指定view的相对位移值
 
 @param view 指定的view
 @return 相对于指定view的frame值
 */
- (CGRect)frameFromView:(UIView *)view;
@end

