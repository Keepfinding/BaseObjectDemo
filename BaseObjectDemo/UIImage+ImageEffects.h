//
//  UIImage+ImageEffects.h
//  BaseObjectDemo
//
//  Created by Stephen Hu on 2019/4/17.
//  Copyright © 2019 idress. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (ImageEffects)

#pragma mark - Blur Image

/**
 模糊效果

 @return 模糊视图
 */
- (UIImage *)blurImage;

/**
 添加遮罩制作一张模糊视图

 @param maskImage 遮罩image
 @return 模糊视图
 */
- (UIImage *)blurImageWithMask:(UIImage *)maskImage;

/**
 根据模糊值制作一张模糊视图

 @param radius 模糊值
 @return 模糊视图
 */
- (UIImage *)blurImageWithRadius:(CGFloat)radius;

/**
 在指定的位置设置模糊视图

 @param frame 设置模糊区域
 @return 模糊视图
 */
- (UIImage *)blurImageAtFrame:(CGRect)frame;

#pragma mark - Grayscale Image

/**
 黑白效果

 @return 黑白image
 */
- (UIImage *)grayScale;

#pragma mark - Some Useful Method

/**
 使用给定的宽度缩放image

 @param width 给定的宽度
 @return 缩放后的image
 */
- (UIImage *)scaleWithFixedWidth:(CGFloat)width;

/**
 使用给定的高度缩放image

 @param height 给定的高度
 @return 缩放后的image
 */
- (UIImage *)scaleWithFixedHeight:(CGFloat)height;

/**
 平均颜色

 @return 平均颜色
 */
- (UIColor *)averageColor;

/**
 从指定位置裁切一块image

 @param frame 要裁切的位置
 @return 裁切下来的image
 */
- (UIImage *)croppedImageAtFrame:(CGRect)frame;
@end

