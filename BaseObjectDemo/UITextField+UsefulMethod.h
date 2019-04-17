//
//  UITextField+UsefulMethod.h
//  BaseObjectDemo
//
//  Created by Stephen Hu on 2019/4/12.
//  Copyright © 2019 idress. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UITextField (UsefulMethod)
/**
 *  当前的字符串
 */
@property (nonatomic, strong) NSMutableString  *currentString;

/**
 *  密码键盘的特殊处理（在代理方法 textFieldDidBeginEditing: 中调用）
 */
- (void)secureTextFieldDidBeginEditing;

/**
 *  获取当前显示字符串（在代理方法 textField:shouldChangeCharactersInRange:replacementString: 中调用）
 */
- (NSString *)changeCharactersInRange:(NSRange)range replacementString:(NSString *)string;

/**
 *  添加AccessoryView(键盘上边一个button，点击后退出键盘)
 *
 *  @param title 按钮标题
 */
- (void)addInputAccessoryViewButtonWithTitle:(NSString *)title;
@end

NS_ASSUME_NONNULL_END
