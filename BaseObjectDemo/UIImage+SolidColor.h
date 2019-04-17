//
//  UIImage+SolidColor.h
//  BaseObjectDemo
//
//  Created by Stephen Hu on 2019/4/17.
//  Copyright © 2019 idress. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (SolidColor)
/**
 生成一个指定颜色的image

 @param size image大小
 @param color 指定颜色
 @return image
 */
+ (UIImage *)imageWithSize:(CGSize)size color:(UIColor *)color;
@end

NS_ASSUME_NONNULL_END
