//
//  NSAttributedString+LabelWidthAndHeight.h
//  BaseObjectDemo
//
//  Created by Stephen Hu on 2019/4/16.
//  Copyright © 2019 idress. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <CoreText/CoreText.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSAttributedString (LabelWidthAndHeight)
/**
 根据给定宽度获取字符串的高度
 
 @param width 给定的宽度
 @return 高度
 */
- (CGFloat)heightWithFixedWidth:(CGFloat)width;

/**
 求取字符串的宽度

 @return 宽度
 */
- (CGFloat)width;

/**
 根据给定宽度获取coreText的高度

 @param width 给定宽度
 @return 高度
 */
- (CGFloat)coreTextHeightWithFixedWidth:(CGFloat)width;
@end

NS_ASSUME_NONNULL_END
