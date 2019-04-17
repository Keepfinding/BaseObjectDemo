//
//  UILabel+SizeToFit.h
//  BaseObjectDemo
//
//  Created by Stephen Hu on 2019/4/12.
//  Copyright © 2019 idress. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UILabel (SizeToFit)

/**
 根据文字内容自适应大小

 @param text 文字内容
 @param configBlock 配置信息
 */
- (void)sizeToFitWithText:(NSString *)text config:(void (^)(UILabel *label))configBlock;
/**
  根据属性文字内容自适应大小

 @param text 属性文本
 @param configBlock 配置信息
 */
- (void)sizeToFitWithAttributedText:(NSAttributedString *)text config:(void (^)(UILabel *label))configBlock;
@end

NS_ASSUME_NONNULL_END
