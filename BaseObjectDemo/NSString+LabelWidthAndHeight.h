//
//  NSString+LabelWidthAndHeight.h
//  BaseObjectDemo
//
//  Created by Stephen Hu on 2019/4/16.
//  Copyright © 2019 idress. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (LabelWidthAndHeight)
/**
 根据给定的文字宽度求取高度

 @param attribute 字符串的属性 例如 attribute = @{NSFontAttributeName: [UIFont systemFontOfSize:18.f]}
 @param width 固定宽度
 @return 高度
 */
- (CGFloat)heightWithStringAttribute:(NSDictionary <NSString *, id> *)attribute fixedWidth:(CGFloat)width;

/**
 获取字符串的宽度

 @param attribute 字符串的属性
 @return 宽度
 */
- (CGFloat)widthWithStringAttribute:(NSDictionary <NSString *, id> *)attribute;

/**
 一行文字的高度

 @param attribute 字符串的属性
 @return 高度
 */
+ (CGFloat)oneLineOfTextHeightWithStringAttribute:(NSDictionary <NSString *, id> *)attribute;

#pragma mark - Font.

/**
  根据给定的文字宽度、和字体求取高度

 @param font 字体
 @param width 给定宽度
 @return 文字的高度
 */
- (CGFloat)heightWithStringFont:(UIFont *)font fixedWidth:(CGFloat)width;

/**
 根据字体获取文字的宽度

 @param font 字体
 @return 文字的宽度
 */
- (CGFloat)widthWithStringFont:(UIFont *)font;

/**
 根据字体获取一行文字的高度

 @param font 字体
 @return 高度
 */
+ (CGFloat)oneLineOfTextHeightWithStringFont:(UIFont *)font;
@end

NS_ASSUME_NONNULL_END
